# Swap A:/B: and Boot CP/M from SPI Flash — Implementation Plan

> **For Hermes:** use subagent-driven-development to implement this plan task-by-task.

**Goal:** Make the on-board ISSI IS25LD040 SPI flash the CP/M **boot device and drive A:** (persistent, survives power-off), demote the volatile RAM disk to drive B:, add a **`b` GWMON-80 command** that boots CP/M from the SPI flash (mirroring the `B`/`b` flash-boot command other SM/ROMWBW targets already have), and extend **diskutil's `C` (cold boot over XMODEM)** to also write the CP/M image onto the SPI flash so the flash is self-provisioned (no GWMON `L`+paste-hex needed to re-boot after power loss).

**Architecture:** The CP/M system image (`cpm/brevia2_cpm.bin`, 6649 bytes = CCP+BDOS+CBIOS, assembles at 0xD000/0xD800/0xE600) is stored in the SPI flash's reserved **system area (0x0000–0x1FFF, 8 KB** — already reserved by the drive-B DPB `OFF=2` and erased 0xFF by diskutil `S`). Two provisioning paths write it there:
1. **GWMON `b`** reads the flash system area via the SPI ports (0x50/0x51/0x52) into machine RAM at 0xD000, then `JMP 0xE600` (CBIOS cold boot) → `A>`.
2. **diskutil `C`** XMODEM-receives the image into machine RAM at 0xD000 (existing path) **and additionally erases + page-programs the same image to the flash system area**, then cold-boots. After this one-time self-provisioning, power-off/power-on needs only GWMON `b`.

The CBIOS drive mapping is swapped so SELDSK C=0 → **flash DPH (drive A:)**: BSH=5/BLM=31/EXM=3/DSM=125/DRM=63/AL0=0x80/AL1=0/CKS=0/OFF=2; C=1 → **RAM-disk DPH (drive B):** the old drive-A geometry (BSH=3/BLM=7/EXM=0/DSM=55/DRM=63/AL0=0xC0/CKS=0/OFF=2). READ/WRITE branch on `SELBL` flipped accordingly, and BOOT/WBOOT system persistence now targets the **flash** system area instead of the RAM disk.

**Tech Stack:** 8080/Z80 assembly (a85 cross-assembler for cbios.asm/diskutil.s/smbrevia.asm), AS macro assembler for the stock BDOS/CCP, `make_combined_hex.py` (Python) to pack the image, IS25LD040 SPI protocol via the shared `spi.inc`, GWMON-80 serial monitor (SM-project structure).

---

## Current context / assumptions

- **Drive A: = RAM disk** (bank B, 64K, ports 0x20/0x21/0x22, 1K blocks, OFF=2). **Drive B: = SPI flash IS25LD040** (512 KB, ports 0x50/0x51/0x52, 4K blocks, OFF=2) — the design in `HANDOFF-drive-b-spi-flash.md`, implemented at commit `1f8bbb1`. System relocation at commit `b2bb81b` put CCP=0xD000/BDOS=0xD800/CBIOS=0xE600-0xEA0C, with the 4 KB drive-B RMW buffer at 0xEF00-0xFEFF.
- **CBIOS** `cpm/cbios.asm`: SELDSK maps C=0→`DPH` (RAM disk), C=1→`DPHB` (flash); READ/WRITE dispatch on `SELBL` (0=RAM disk path, else flash path); BOOT/WBOOT persist CCP/BDOS to the **RAM-disk** system tracks (SYSCPP=0, SYSBDS=0x800) via RAMWR/RAMRD.
- **diskutil** `programs/diskutil.s`: `C` (DO_BOOTCPM) XMODEM-receives `brevia2_cpm.bin` into machine RAM at 0xD000 then `JMP 0xE600`. `S` formatter erases the whole flash and writes the dir at 0x2000; system area 0x0000-0x1FFF left 0xFF.
- **GWMON-80** `gwmon/smbrevia.asm`: SM-project monitor at ORG 0x0 (boot ROM 0x0000-0x0FFF, machine RAM 0x1000-0xFFFF). Command table in `gwmon/scmdstd.inc` (lowercase letters → routine), terminated by `gwmon/scmdnull.inc`. Other targets add a flash-boot `b` command between the two (e.g. `gwmon/sm8085r4.asm` uses `bflash.inc` + a `BTMOVR` mover).
- **Boot flow today:** GWMON `L`+paste-hex (fickle) OR diskutil `C`+XMODEM → machine RAM → CBIOS BOOT → CCP. There is no flash auto-boot.
- The **spi.inc** shared driver (repo root, INCL'd by diskutil & cbios) already provides SPI_SEL/REL/XMIT/WAIT, SPI_ADDR (24-bit), SPI_PAGE (0x02, 256 B from (HL)), SPI_READBUF (0x03, BC bytes to (DE)), SPI_ERASE_SECT (0x20). A fresh flash read/erase/program requires a **WREN (0x06) preamble per op** (see cpm-brevia2 skill WREN trap).

---

## Proposed approach

Keep the existing running-location invariant (CP/M still runs at CCP=0xD000, system never moves) and the existing cold-boot entry (0xE600). The change is purely *where the boot image is stored* (flash instead of RAM disk) and *which drive is which*. The flash system area becomes the canonical persistent CP/M image store; GWMON `b` and diskutil `C` both know where it is; the CBIOS swap of SELDSK/READ/WRITE/DPH makes the flash drive A: and the RAM disk drive B:.

Do **NOT** move the system or the RMW buffer — the buffer stays at 0xEF00 above the system; only its owning drive changes (it now serves drive B = RAM disk? no — RMW belongs to the flash writes, which are now drive A). **RMW buffer stays with the flash-owning drive** (drive A after the swap).

---

## Step-by-step plan

### Task 1: Reserve + define the flash CP/M boot-area layout (doc + constants)

**Objective:** Nail the flash system-area offset/length constants so both diskutil and GWMON agree.

**Files:** `cpm/cbios.asm` (header consts), `programs/diskutil.s` (consts), `HANDOFF-drive-b-spi-flash.md` (update).

- Define consistently: `FBSYS = 0x0000`, `FBSYSEND = 0x1FFF` (8 KB system area), `CPMIMG = 0x0000` (offset of the CP/M image in flash), `CPMIMGLEN = 0x1A00` (CEIL(6649/128)*128 = 0x1A00; pad the tail to a 128-byte boundary, fill 0xFF/0x00 — pick 0x00 to match a zeroed image tail).
- Assert the combined image (`cpm/brevia2_cpm.bin`, CCP+BDOS+CBIOS) length ≤ 0x1A00 and that the image does not spill past 0x1FFF.
- **Verification:** `python scripts/*` — compute `len(open('cpm/brevia2_cpm.bin','rb').read())` and assert ≤ 0x1A00; confirm `0x0000+0x1A00 <= 0x2000`.

### Task 2: GWMON-80 `b` command + SPI-flash boot loader

**Objective:** Add a `b` command to the Brevia2 monitor that reads the CP/M image from the flash into machine RAM at 0xD000 and cold-boots.

**Files:** Create `gwmon/spiboot.inc`; modify `gwmon/smbrevia.asm`.

**Step 1 — write `gwmon/spiboot.inc`** (analogous to `bflash.inc`, but IS25LD040 via ports 0x50/0x51/0x52). It must:
- `BFLSH: db 'b'` … `dw BFOOT` — the command-table entry is added in smbrevia.asm, not here; this file carries the handler `BFOOT` and read helpers.
- SPI primitives (self-contained; do NOT depend on the monitor's register state): `SPI_SEL`/`SPI_REL` (CS# via port 0x51 bit0), `SPI_XMIT` (MSB-first 8-bit exchange on 0x50, poll 0x52 busy), `SPI_READBUF`-like loop reading 128-byte records.
- `BFOOT:` reset CS#, send READ opcode 0x03 + 24-bit address facimile (use the same byte split as cbios `FLADDR`: byte2=addr>>16, byte1=addr>>8, byte0=addr&0xFF), then read `CPMIMGLEN` bytes into machine RAM starting at 0xD000, then `JMP 0xE600`.
- **Constraint:** GWMON is burned into ROM at 0x0000-0x0FFF and runs from ROM; the SPI read code executes there and writes to RAM — no RAM shadow/mover needed (unlike bflash.inc, which moves to 0x8000 for a paged-ROM monitor). If you must keep the monitor small, note the single-page/whole-buffer rule (see skill).
- The monitor does not currently include `spi.inc`; either `INCLUDE '../spi.inc'` from the monitor (repo-root relative like cbios does) to reuse SPI_READBUF, or write the ~30-line read loop inline. Prefer reusing `spi.inc` (DRY) if the include path resolves for the smbrevia build; else duplicate the minimal read-only subset.

**Step 2 — modify `gwmon/smbrevia.asm`**: between `INCLUDE 'scmdstd.inc'` and `INCLUDE 'scmdnull.inc'`, add the command-table entry and handler:
```
; b -- boot CP/M from the IS25LD040 SPI flash
BFLSH:  db 'b'
        dw  BFOOT
```
and `INCLUDE 'spiboot.inc'` (provides `BFOOT`). Keep `scmdnull.inc` as the terminator.

**Step 3 — assemble the monitor and verify `b` is in the table.**
Run the gwmon build (in `gwmon/`): `../scripts/a85/a85.exe smbrevia.asm -l smbrevia.prn -o smbrevia.hex` (confirm the actual build command in Makefile first; a85 doc'd in cpm-brevia2 skill). Verify `smbrevia.prn` shows `BFLSH` with `62 20 00`-style bytes (`db 'b'`, `dw BFOOT`) in the command table.

**Step 4 (verify on board):** upload the new GWMON, power-on → monitor prompt; on a flash that has *not* been provisioned yet, `b` should read 0xFF (image garbled, since system area is erased) → expect garbage/reboot. Provision first (Task 3) then `b` → `A>`.

### Task 3: diskutil `C` — also write the CP/M image to the flash system area

**Objective:** Make diskutil `C` self-provision the flash so it can boot without another XMODEM upload.

**Files:** `programs/diskutil.s` (DO_BOOTCPM), `programs/spi.inc` (if any helper is missing).

**Step 1:** after `BCP_EOT` receives the image into machine RAM at 0xD000 (BCPADDR now = 0xD000+len), before `JMP 0xE600H`, add a call to a new `DO_FLASH_BURN`:
- Erase 0x2000 bytes: loop 8× `SPI_ERASE_SECT` at flash 0x0000, 0x1000, … (0x2000 is two 4KB sectors; but the dir starts at 0x2000 — **do NOT erase 0x2000-0x2FFF, only 0x0000-0x1FFF**).
- Page-program the image from machine RAM 0xD000 to flash 0x0000: 8× `SPI_PAGE` (256 B each), re-pointing `HL=0xD000` each iteration (see skill's `SPI_PAGE ADVANCES HL` trap) and bumping FBADDR+1 by 1 per page.
- Prefix every erase/program with **WREN (0x06) + CS# toggle** (see skill WREN trap).
- Print a `FLASH BOOT OK`/`FLASH BOOT FAIL` marker so the user can confirm without a dump.

**Step 2 (verify on board):** reset → `G 1000` → `C` (XMODEM `brevia2_cpm.bin`) → observe the new flash-burn message → CP/M boots to `A>`. Then reset → GWMON `b` → must boot to `A>` **from the flash** (this is the proof the flash image was written). Also `I` (flash ID) / `B 2000` (dir) still sane.

### Task 4: CBIOS A:/B: swap

**Objective:** Make SELDSK/READ/WRITE/DPH map drive A: = flash (persistent 4K), drive B: = RAM disk (volatile 1K); point BOOT/WBOOT system persistence at the flash.

**Files:** `cpm/cbios.asm`.

- **SELDSK:** C=0 → return `DPH` (now the FLASH DPH); C=1 → return `DPHB` (now the RAM-disk DPH). Swap the two `LXI H,DPH*` branches and the `SELD0`/`SELD1` comments.
- **DPH/DPB:** move the flash DPH (currently `DPHB`, 4K geometry BSH=5/BLM=31/EXM=3/DSM=125/DRM=63/AL0=0x80/CKS=0/OFF=2, DIRBUF shared) to the drive-A slot; move the RAM-disk DPH (currently `DPH`, 1K geometry BSH=3/BLM=7/EXM=0/DSM=55/DRM=63/AL0=0xC0/CKS=0/OFF=2, DIRBUF=DIRBUF) to the drive-B slot. Update the labels/comments. The ALV sizes change sides too (flash ALV 16 bytes, RAM ALV 8 bytes). The RMW buffer (0xEF00) still belongs to the flash-owning drive.
- **READ/WRITE dispatch:** `LDA SELBL; ORA A; JNZ` — flip so `SELBL==0` (drive A) takes the **flash/READB/WRITEB** path and nonzero (drive B=RAM disk) takes the **CALC/RAMPTR** path. Rename `READB`/`WRITEB` semantics to the drive-A path.
- **BOOT/WBOOT:** replace the RAM-disk-system persistence (RAMWR/RAMRD to SYSCPP/SYSBDS) with flash writes/reads to the flash system area 0x0000/0x0800 (or simply load from the image already in RAM). BOOT writes CCP→flash 0x0000 (2048 B) + BDOS→flash 0x0800 (3584 B) and WBOOT reads them back. Since the flash persists, this makes WBOOT functional across ^C without re-provisioning. (The RAM disk no longer needs a system track; drive B starts at OFF=2 only for symmetry — or set drive-B OFF=0 since the RAM disk has no reserved system tracks anymore; decide and document.)
- Update the `cbios.asm` header comment (drive A/B descriptions) and the flash-layout comment (boot image now in 0x0000-0x1FFF).

**Task 4 verify:** reassemble cbios (`../scripts/a85/a85.exe cbios.asm ...`), rebuild `brevia2_cpm.bin` (`python make_combined_hex.py`), re-provision via diskutil `C`, then: `DIR` shows flash contents; `B:` (now RAM disk) works; `SAVE`/files survive a power-off on A: (flash persistence) and NOT on B: (volatile); `STAT` geometry is sane.

### Task 5: Rebuild everything + update tb/sim + docs

**Files:** `cpm/make_combined_hex.py`, `tb/*.v`, `cpm/README-cpm.md`, `HANDOFF-*.md`, `cpm-brevia2` skill.

- Regenerate `cpm/brevia2_cpm.hex/.bin/.mem` from the updated cbios.asm; confirm `make_combined_hex.py` asserts CBIOS starts at 0xE600 and the image is contiguous (it should be unchanged by the swap, but re-run).
- Re-generate `cpm/brevia2_cpm.mem` (`scripts/intel_hex_to_mem.py`) and re-run the `tb_cpm` boot sim for regression (system addresses unchanged).
- Update `cpm/README-cpm.md`: drive A = SPI flash (persistent, boot device), drive B = RAM disk; boot via GWMON `b` (after one-time diskutil `C` provisioning).
- Update the cpm-brevia2 skill: document the flash boot layout, GWMON `b`, diskutil `C` self-provisioning, and the new drive A/B geometry.

### Task 6: Commit per task (frequent commits)

Commit after each task with a `type:` message (e.g. `feat(gwmon): add b command …`). Keep the `build/impl1/*` FPGA synthesis noise out (it is unrelated); stage only the touched source/docs.

---

## Files likely to change

| File | Change |
|---|---|
| `gwmon/spiboot.inc` | **Create** — IS25LD040 boot loader + `b` handler |
| `gwmon/smbrevia.asm` | Add `b` command-table entry + INCLUDE spiboot.inc |
| `programs/diskutil.s` | `C` also burns the CP/M image to flash system area |
| `cpm/cbios.asm` | SELDSK/READ/WRITE/DPH A/B swap; BOOT/WBOOT target flash |
| `cpm/make_combined_hex.py` | (verify only) regenerated image unchanged |
| `cpm/brevia2_cpm.hex/.bin/.mem` | regenerated artifacts |
| `tb/*.v` | verify system-address expectations unchanged |
| `cpm/README-cpm.md`, `HANDOFF-drive-b-spi-flash.md` | docs |
| `cpm-brevia2` skill | flash-boot / geometry notes |

---

## Tests / validation

1. **GWMON assembles** with `b` in the command table (`.prn` shows `62 00 <BFOOT>`); no stray zero-fill (see a85 label pitfall).
2. **diskutil `C`** XMODEM-provisions the flash; prints a flash-burn OK; CP/M reaches `A>`.
3. **GWMON `b`** after a power cycle boots CP/M from the flash to `A>` (the key acceptance test — proves flash boot without XMODEM).
4. **A:/B: swap sanity:** `DIR` on A: = flash files; `B:` switches; `B:` = RAM disk (volatile); `SAVE`/create on A: survives power-off.
5. **^C warm boot** still reloads (WBOOT from flash system area now) and both drives stay functional (re-verify the handoff regression isn't reintroduced).
6. **`tb_cpm` sim** still reaches CCP with system addresses unchanged.

---

## Risks, tradeoffs, and open questions

- **WREN/erase-idempotency:** every flash erase/program needs a WREN preamble and a full erase before a write (no bit-set-in-place). `diskutil C` must erase the two system sectors before programming, or the image may be written over 0xFF. The RMW subtlety of the flash as drive A is same as today's drive B — the 4 KB RMW buffer at 0xEF00 is now owned by drive A's writes; confirm it is still out of every transient's reach (it is, above the system).
- **Do we keep the RAM-disk system track at all?** After the swap, the flash owns boot persistence, so the RAM disk's reserved tracks 0-1 can be repurposed as user space (set drive-B `OFF=0`) OR kept for symmetry (`OFF=2`). **Open question — default to `OFF=0`** to reclaim 8 KB of the volatile RAM disk, but verify the BDOS/diskutil don't assume a 2-track reserved area anywhere.
- **GWMON `b` and the monitor's ROM size / include path:** `spi.inc` lives at the repo root; confirm the smbrevia build can `INCLUDE` it (CWD-relative). Otherwise inline the minimal read-only SPI subset (DRY prefers reuse; correctness prefers not to over-couple the monitor to diskutil's full driver).
- **Flash corrupted / not yet provisioned:** `b` on an erased 0xFF system area will `JMP 0xE600` into garbage (0xFF=RST38, `JMP` target 0xE600-0xEA0C mostly 0xFF) → won't reach `A>`. Decide whether `b` should check for a magic byte (e.g. first CCP byte `C3` at flash 0x0000) and print `NO CP/M ON FLASH` if absent — **recommend yes** (cheap, avoids a confusing hang).
- **Image tail padding:** the image (6649 B) is not a multiple of 128/256; pad the flash copy and the RAM load with 0x00 (or 0xFF) to the next page boundary so `b`/diskutil can read a clean page count. Confirm the CCP tail (0x0000-0x07FF) isn't sensitive to padding.
- **SCOPE:** this is a sizable CBIOS change. If you want a smaller first cut, land **GWMON `b` + diskutil `C` flash-burn FIRST** (Tasks 1-3) while keeping A:=RAM disk / B:=flash, verify flash boot works, then do the actual A/B swap (Task 4) as a separate commit. The user framed them together; both are valid — decide based on appetite for risk.

## Suggested work order (for subagent-driven-development)

1. Tasks 1 → 2 (flash layout consts + GWMON `b`). Verify GWMON assembles.
2. Task 3 (diskutil `C` flash-burn) → on-board verify `b` boots from flash (A/B not yet swapped).
3. Task 4 (CBIOS A/B swap) → rebuild + re-provision + on-board A/B verification.
4. Task 5 (docs/sim/regression) → Task 6 (commits).
