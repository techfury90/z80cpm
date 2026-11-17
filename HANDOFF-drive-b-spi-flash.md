# Handoff — Add the SPI flash as CP/M drive B: (native 4K allocation)

> **SUPERSEDED (2026-11-17):** The SPI flash is now **drive A:** (the persistent
> boot drive) and the RAM disk is **drive B:** — the A:/B: swap + SPI-flash boot
> are implemented (see `cpm/README-cpm.md` and the cpm-brevia2 skill). Keep the
> **flash geometry** below (native 4K allocation, OFF=2, data at 0x2000) — it is
> unchanged; only the drive LETTER changed. The flash system area 0x0000-0x1FFF
> now holds the CP/M boot image provisioned by diskutil `C` / booted by GWMON `b`.
> This doc remains the authoritative reference for the SPI-flash geometry.

**Task for the next worker:** Add the on-board ISSI IS25LD040 SPI flash as CP/M
**drive B:**. The 64K RAM disk stays as drive A: for now; the flash will
eventually become the boot drive A: (this is why the layout below reserves system
tracks from the start). The user's explicit recommendation is to use the flash's
**native 4K page/sector size as the CP/M allocation (block) size**.

This document is the design handoff. Nothing here is implemented yet — the SPI
driver, the formatter, and the CBIOS drive-select/read/write code all still need
to be written/changed in the next phase.

> **IMPLEMENTATION COMPLETE** (committed in the next phase, see git log).
> drive B: is now implemented and verified:
> - **`spi.inc`** (repo root) — shared 24-bit-capable SPI driver (SPI_SEL/REL/
>   XMIT/WAIT, SPI_ADDR 24-bit send, SPI_PAGE, SPI_READBUF, SPI_ERASE_SECT)
>   included by BOTH `programs/diskutil.s` and `cpm/cbios.asm` so the protocol
>   cannot drift. diskutil's own SPI_SEL/REL/XMIT/WAIT were removed in favor of
>   this shared include.
> - **`programs/diskutil.s`** — `S` formatter rewritten: chip erase, then
>   page-program 0xE5 across the directory block at **0x2000-0x27FF** (8 x
>   256B pages; matches OFF=2), then **verifies** the directory reads all 0xE5
>   AND the reserved system area 0x0000-0x1FFF reads all 0xFF.
> - **`cpm/cbios.asm`** — SELECT/READ/WRITE dispatch on the selected drive;
>   SELDSK returns the drive B DPH for C=1; drive B READ = 24-bit flash read of
>   128 bytes; drive B WRITE = full 4KB read-modify-write into the RMW buffer at
>   0xEF00-0xFEFF, ABOVE the whole system (read sector, overlay record, erase
>   sector, program 16 x 256B pages).
>   New drive B DPH/DPB (BSH=5/BLM=31/EXM=3/DSM=125/DRM=63/AL0=0x80/OFF=2),
>   ALVB (16 bytes), CSVB, RECOFF.  The FLADDR 24-bit address split was
>   validated for all 4096 (track,sector) combinations; the RMW WRITEB/READB
>   paths were simulated end-to-end (write/readback, same-sector multi-record,
>   overwrite, max address 0x7FF80).  the whole system was MOVED DOWN (CCP 0xE400->0xD000, CBIOS 0xFA00->0xE600) so the
>   RMW buffer at 0xEF00-0xFEFF sits ABOVE it and no transient can load over it;
>   CBIOS now ends at 0xEA0C (fits, below GWMON's reserved 0xFF00).
> - Stale "9600" baud comments in `cbios.asm` and `README-cpm.md` fixed to
>   115200 (console code is baud-agnostic / polled).
>
> **Open questions, as resolved:** OFF=2 (reserve system tracks — chosen,
> forward-compatible with the future boot); DRM=63 (64 entries — chosen, enough
> to test); RMW-every-write (no dirty-sector cache — correct first, cache is a
> later optimization); RMW buffer placed at 0xEF00-0xFEFF, above the whole moved-down system
>   (CCP=0xD000), so transients (bounded by the CCP) can never load over it.)

---

## 1. Confirmed facts (do not re-litigate)

- **Flash = ISSI IS25LD040, 512 KB** (`0x80000` bytes): **128 x 4KB sectors**,
  **256-byte program pages** (a "page" = program granularity; a "sector" = the 4KB
  erase unit). JEDEC ID `7F 9D 7E` (verified on silicon via `diskutil I`).
- **SPI I/O ports**: `SPI_DATA = 0x50` (read clocks one byte in / write clocks one
  byte out, MSB-first); `SPI_CTL = 0x51` (bit0 = CS#: 0=select low, 1=release
  high); `SPI_STAT = 0x52` (bit0 = transfer busy; a busy poll is OPTIONAL because
  the RTL byte engine stretches the CPU wait during every 0x50 access).
- **The SPI byte engine (`rtl/spi_flash.v`) is fixed and verified.** diskutil's
  `I` (JEDEC ID = `7F 9D 7E`), `P`+`R` (program + read-back `00..0F`), `E` (erase),
  and `S` (format) all PASS on silicon. The over-clock bug and the IS25LD040 ID
  are closed. **Do not touch the RTL unless a new hardware bug shows up.**
- **Erase-before-write is mandatory.** The trail writes 1→0 only; restoring a bit
  to 1 requires erasing its whole 4KB sector first (the 0x20 sector erase, 4KB
  granularity, or 0x60 chip erase for a full format). Byte program alone can never
  set a 0 back to 1.
- **UART console is 115200 8N1** (RTL `BAUD_DIV=217`). The `cpm/cbios.asm` header
  comment and `cpm/README-cpm.md` still say 9600 — those are **stale**; the CBIOS
  console code is baud-agnostic (polled UART), so no code change is needed, just
  fix the comments while you're in there.
- **Existing CP/M 2.2 boot**: GWMON-80 `L` + paste `cpm/brevia2_cpm.hex`, then
  `G FA00`. CBIOS at `0xFA00`, BDOS at `0xEC00`, CCP at `0xE400`. Drive A: is the
  64K RAM disk (ports `0x20` data auto-increment / `0x21`+`0x22` address).

## 2. Design decisions

### 2.1 Allocation size = 4 KB (BSH=5, BLM=31)  — per the user's recommendation

Use **4 KB** as the CP/M allocation block (`BLS=4096`, `BSH=5`, `BLM=31`). Note the
terminology precisely: the flash's *program page* is 256 B, its *erase sector* is
4 KB. Matching the CP/M block to the **4 KB erase sector** is the right choice
because erase-before-write is mandatory at 4 KB granularity: **one CP/M block maps
to exactly one flash erase sector**, so writeback is a clean
read-modify-write of a single sector. (If you kept 1 KB blocks — as the current
RAM-disk formatter does — a single 4 KB erase would destroy up to four 1 KB blocks,
and the CBIOS would need to re-materialize all four, which is strictly worse.)

Do **not** use the 256 B page as the allocation: it is only the program
granularity, it does not match the erase sector, and it creates 2048 blocks
(ALV = 256 bytes) vs 128 blocks for 4 KB.

### 2.2 Flash drive B: geometry / DPB (forward-compatible with the future boot)

Reserve the first two "tracks" for the eventual CP/M system so the layout doesn't
change when the flash becomes drive A:. **SPT=32** keeps the addressing identical to
the RAM disk (one track = 32 x 128 = 4 KB = one block):

| Field | Value | Notes |
|-------|-------|-------|
| SPT   | 32    | sectors per track; one track = 4096 B = one block |
| BSH   | 5     | block shift -> 4 KB blocks (Table 6-8) |
| BLM   | 31    | block mask (Table 6-8) |
| EXM   | 3     | extent mask, BLS=4096 & DSM<256 (Table 6-9) |
| DSM   | 125   | max block number = 126 blocks in the data area (blocks 0..125) |
| DRM   | 63    | 64 directory entries (2 KB used, 1 x 4 KB block reserved) |
| AL0   | 0x80  | reserve block 0 (directory) — bit 0, high bit of AL0 |
| AL1   | 0x00  | |
| CKS   | 0     | fixed media -> no checksum vector |
| OFF   | 2     | reserve tracks 0-1 = 8 KB (`0x0000-0x1FFF`) for the future system |

**Layout (byte addresses):**
- `0x00000-0x01FFF` (8 KB, tracks 0-1): **reserved system** (erased 0xFF now; will
  hold CCP/BDOS/CBIOS when the flash becomes drive A:).
- `0x02000-0x7FFFF` (504 KB, tracks 2-127): data area = 126 blocks (0..125).
  - Block 0 (`0x02000-0x02FFF`): **directory** (reserved via AL0). The first 2 KB
    (`0x02000-0x027FF`) hold the 64 x 32-byte directory entries; the last 2 KB of
    the block are unused.
  - Blocks 1..125 (`0x03000-0x7FFFF`): **file data** (125 blocks = 500 KB usable).

Derived allocations for the CBIOS, per ch6 §6.10:
- ALV size = `(DSM/8)+1` = `(125/8)+1` = **16 bytes**.
- CSV size = 0 (CKS=0), so no checksum vector is stored.
- Directory buffer = 128 bytes (shared with the existing DIRBUF).

> **Why OFF=2 and not 0:** if you only want a throwaway data disk *now*, OFF=0 with
> the directory at `0x0000` is simpler and matches the current formatter. But the
> user said the flash will **eventually be drive A:**. Reserving the first 8 KB now,
> and putting the directory/data at `0x2000`, makes the flash boot-ready later
> without a reformat/data-loss. This is the recommended design.
>
> The one consequence: **`diskutil`'s `S` formatter must be updated** (see §4).

### 2.3 CBIOS changes (the bulk of the work)

The current CBIOS only knows the RAM disk. Changes required:

1. **`SELDSK`**: return the RAM-disk DPH for C=0, the **flash DPH** for C=1,
   and `HL=0000`/`A=0xFF` for C>1. The flash DPH points to its own DPB, ALV, and
   (shared) DIRBUF. Remember to save the selected drive (already done via `SELBL`).
2. **`READ` / `WRITE`**: dispatch on `SELBL`. Drive A: → existing RAM-disk path
   (`CALC`+`RAMPTR`). Drive B: → new flash path. Both drives use the *same*
   address formula `addr = track*4096 + sector*128` (SPT=32), so `CALC` is shared;
   only the device I/O differs.
3. **`SETTRK` / `SETSEC` / `SETDMA`**: unchanged — they store `TRK`/`SECN`/`DMA`
   for whichever drive is selected; the read/write dispatch uses them.
4. **Add the SPI driver** (see §2.4). The CBIOS cannot call `diskutil` (separate
   program), so the SPI routines must be **duplicated into the CBIOS or factored
   into a shared `.inc`** that both programs include. Recommend factoring a common
   `programs/spi.inc` (or `cpm/spi.inc`) so the driver cannot diverge.
5. **Add a 4 KB read-modify-write buffer** for erase-before-write (see §2.5).

### 2.4 The SPI driver the CBIOS needs

Reuse the proven routines from `programs/diskutil.s` (lines ~987-1064), but the
flash drive B: needs **full 24-bit addressing** (the flash is 512 KB, so addresses
exceed 64 KB). Two things to add/correct vs. the diskutil copy:

- **`SPI_PROGBYTE` in diskutil hard-codes `A23-A16 = 0`** (it only touches the
  <=64 KB test region). The CBIOS routine must send the real 24-bit address byte,
  split as `A23-A16 / A15-A8 / A7-A0`.
- **Add `SPI_PAGEPROG`** (opcode `0x02` + 24-bit addr + up to 256 bytes): program a
  whole 256-byte page in one command. `SPI_PROGBYTE` (4096 per-byte WREN/opcode/addr
  + RDSR-wait sequences for a 4 KB write) is functionally correct but painfully
  slow. Page program cuts a 4 KB sector rewrite to 16 commands instead of 4096.
  (If the buffer isn't 256-byte aligned, split the write at the page boundary —
  page program wraps within a page if it crosses it.)
- **Add `SPI_READBUF`** (opcode `0x03` + 24-bit addr + N bytes, CS# held low): bulk
  read. The diskutil `DO_READ` already uses this exact pattern for 16 bytes; the
  CBIOS needs the same for a 128-byte sector (READ) and a 4 KB block (RMW).
- **`SPI_ERASE_SECT`** (opcode `0x20` + 24-bit addr): erase one 4 KB sector.
- Keep `SPI_SEL` / `SPI_REL` / `SPI_WAIT` (RDSR poll) / `SPI_XMIT` as-is.

### 2.5 Erase-before-write: read-modify-write (RMW) at 4 KB granularity

Writing a single 128-byte CP/M sector into the flash requires the enclosing 4 KB
sector to be erased first. The robust, correct approach (and the one matching
ch6 §6.12 "Sector Blocking and Deblocking") is:

1. Compute the flash byte address of the 4 KB sector containing the record.
2. **Read** the entire 4 KB sector into the RMW buffer (opcode `0x03`).
3. **Overlay** the 128-byte DMA record into the buffer at the right offset.
4. **Erase** the 4 KB sector (opcode `0x20`).
5. **Program** the whole 4 KB buffer back (page program, 16 x 256 B).

Doing RMW on *every* write is correct and simplest for the first cut (correctness
first). It is slow (4 KB read + 4 KB write per 128 B write), but acceptable for a
CP/M data disk. A future optimization is to skip the read when the target block is
known erased (e.g., a fresh format), or to cache which sectors are already correct —
**not** needed for this phase.

**RMW buffer location:** **was** to be in the TPA, but the whole CP/M system was
later moved DOWN (CCP@0xD000, BDOS@0xD800, CBIOS@0xE600) so the 4KB RMW buffer
lives ABOVE it at `0xEF00-0xFEFF` (just below GWMON's reserved 0xFF00). Because
it is above the CCP, no transient program can ever load over it — this is the
whole reason for the relocation (a TPA-resident buffer at 0xD000 was clobbered by
memory-hungry transients like ED.COM during a drive-B write).

### 2.6 Good to know (pitfalls)

- **`diskutil` is a bootloader-style program, not part of CP/M.** It uses the same
  SPI ports and command set, but the CBIOS cannot call into it. Share code via an
  `.inc`, do not copy-paste and let them drift.
- **Directory offsets**: the diskutil **formatter** and the CBIOS **DPB** must agree
  that drive B: data starts at `0x2000` (OFF=2). If you choose OFF=0 instead, the
  directory is at `0x0000` and both places must match. Update both together.
- **`ALV` must be 16 bytes** for DSM=125. The existing RAM-disk ALV is 8 bytes. Do
  not reuse the same ALV buffer for both drives — each DPH points to its own ALV.
- **`DSM` is a WORD, `DRM` is a WORD** (the existing DPB already does this correctly
  — keep it). The BDOS copies the DPB byte-for-byte into its internal aligned
  structure, so a byte where a word is expected corrupts every later field.
- **The flash is not byte-rewritable in place.** The first write after a format is
  free (area is 0xFF); the *second* write to the same 4 KB sector needs the RMW
  erase. Don't optimize away the erase on re-write.
- **Baud**: terminal/console at 115200 8N1 for all `L`/`G`/diskutil testing. If the
  console garbles, the RTL `BAUD_DIV` and the terminal setting disagree — not a code
  bug.

## 3. Files

| Path | Description |
|------|-------------|
| `programs/diskutil.s` / `.hex` | The formatter (`S`) and SPI harness. **Update `DO_FMTFLASH`. Reassemble + re-upload.** |
| `programs/spi.inc` | *(recommended new)* shared SPI driver, included by both diskutil and cbios. |
| `cpm/cbios.asm` / `.hex` | CBIOS. **Add drive B: DPH/DPB + flash READ/WRITE + RMW. Reassemble.** |
| `cpm/make_combined_hex.py` | Builds `cpm/brevia2_cpm.hex` (CCP+BDOS+CBIOS). Run after reassembling cbios. |
| `cpm/brevia2_cpm.hex` | Combined CP/M image — **this is what you upload** via GWMON `L`. |
| `rtl/spi_flash.v` | The SPI byte engine — **already correct, do not change** unless a new hw bug appears. |
| `tb/` regression harnesses | `tb_read2.v`, `tb/tb_id_issi.v`, `sst_model_issi.v` etc. — re-run if you touch the RTL. |

## 4. Rebuild / verify steps (on silicon)

Assemble using the a85 cross-assembler (`scripts/a85/a85.exe`). Note: a85's object
option is lowercase `-o` (the CBIOS README warns it is `-o`, not `-O`).

1. **Reassemble diskutil** with the new 4 KB formatter:
   ```
   scripts/a85/a85.exe programs/diskutil.s -l programs/diskutil.lst -o programs/diskutil.hex
   ```
2. **Update + reassemble the CBIOS** (add drive B:, full 24-bit SPI addressing,
   RMW budget and buffer):
   ```
   scripts/a85/a85.exe cpm/cbios.asm -l cpm/cbios.prn -o cpm/cbios.hex
   cd cpm && python make_combined_hex.py
   ```
3. **Upload & boot**: GWMON `L` + paste `cpm/brevia2_cpm.hex`, then `G FA00` → CP/M `A>` at 115200.
4. **Format the flash**: run diskutil (`G 1000` after loading `programs/diskutil.hex`),
   press `S` → it must erase the chip and write the directory at `0x2000`.
5. **Verify the drive B: geometry** (the formatter must also validate):
   - Read back the directory region and confirm entries are 0xE5 at `0x2000`.
   - Confirm `0x0000-0x1FFF` is all 0xFF (reserved system, still erased).
6. **Test drive B: from CP/M** (a `B:` log-in, then file I/O):
   - `B:` → prompt changes to `B>`, `DIR` = "no file".
   - `SAVE 1 X.COM` (or load a file and SAVE) → `DIR` shows `X.COM`, then
     `ERA X.COM`, then `DIR` empty. This exercises the full READ + WRITE + RMW path.
   - **Cold-boot (`CTRL-C`) and re-`B:`**: because the flash is persistent, a file
     saved to B: must *survive* a warm/cold start (unlike the volatile RAM disk).
7. **Regression**: `I` must still read `7F 9D 7E`; `P`+`R` still `00..0F`.

## 5. Open questions for the next worker

- **OFF=2 (recommended) or OFF=0?** OFF=2 reserves 8 KB for the future boot and is
  forward-compatible; OFF=0 is a simpler throwaway data disk. Confirm with the user
  if you prefer OFF=0 and want to defer the system-track reservation.
- **Directory size**: DRM=63 (64 entries, recommended first cut) vs DRM=127 (128
  entries, uses the whole 4 KB directory block). 64 entries is enough to test; 128
  wastes nothing but is a larger directory.
- **RMW on every write vs a dirty-sector cache**: RMW-every-write is correct but
  slow. A cache is a later optimization, not needed for this phase.
- **Where the 4 KB RMW buffer lives** — **RESOLVED**: moved the whole CP/M system
  down (CCP@0xD000) and placed the buffer at `0xEF00-0xFEFF`, above the system and
  below GWMON's reserved 0xFF00, so no transient can ever collide with it.

---
*Prepared by Whale-Chan, after the SPI-flash read-path issues (over-clock + IS25LD040
ID) were resolved and committed (`516d981`), and the sram_data PnR setup violation was
closed (`c58911e`).*
