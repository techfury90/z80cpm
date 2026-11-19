# AGENTS.md — z80cpm (CP/M 2.2 on the Brevia2)

This file tells a working agent (human or AI) everything needed to safely build,
bring up, and debug **CP/M 2.2 on the Lattice Brevia2 FPGA board**. It is the
condensed load-bearing knowledge captured from the `cpm-brevia2` and
`verilog-fpga-learning` skills. Read it before touching anything; the repo's
`HANDOFF-*.md` / `PLAN-*.md` / `cpm/*.md` design docs carry the full depth and
are referenced inline.

> The repo root is **`z80cpm/`** and **everything below is relative to that
> root.** Historical board materials (datasheets, the Lattice Brevia2 user guide,
> `IDEA.md`, `ED.PLM.raw`) live in the parent `brevia2/` directory.

---

## 1. What this is

A Z80 soft-core SoC on the LatticeXP2 Brevia2 running **CP/M 2.2**:

- **CPU core:** TV80 (OpenCores, Obijuan/Guy Hutchison) — byte-wide bus, von
  Neumann; fetches 1 byte/cycle.
- **Memory model:** 128Kx8 SRAM. **Bank A** = CP/M memory; **Bank B** = volatile
  RAM disk driven as a peripheral (no MMU).
- **Disks:** Drive A: = on-board **ISSI IS25LD040 SPI flash** (256K "SSD"),
  persistent boot drive. Drive B: = volatile RAM disk (bring-up aid). Drive C: =
  SD card in SPI mode on a dedicated port (pins 31/32/35/36).
- **Monitor:** glitchwrks **GWMON-80** (8080 cross-assembled with `a85`,
  GPLv3), baked into the FPGA bitstream in **EBR block RAM**. It is the
  bring-up/debug monitor (`L` load, `G` go, `D` dump, `E` edit, `I`/`O` ports),
  **not** the CP/M image.
- **CP/M 2.2** is freeware; the **CBIOS is 100% ours** (this is the hard part).

## 2. Repo layout

```
z80cpm/
  rtl/            Verilog RTL (z80cpm_brevia2.v top, spi_flash.v, ...)
  cpm/            CP/M sources: cbios.asm, cpm22/ (BDOS/CCP), combined-hex builder,
                  CPM3-BANKING.md, SD-CARD-SUPPORT.md, SD-WRITE-PATH-FIX.md, ...
  gwmon/          GWMON-80 port (smbrevia2.asm, wbuart.inc, a85.sh)
  programs/       diskutil.s, sdtool.s, sdprobe.s, swled.s, diag.asm, DA/DU/SD.COM
  scripts/        a85/a85.exe (cross-assembler), intel_hex_to_mem.py, make_combined_hex.py
  tb/             iverilog testbenches + Python 8080 simulator harnesses
  refs/           reference docs (drive-a-geometry.md, sd-card-spi.md)
  sim.sh          helper script (see caveat in §5)
  spi.inc         SHARED SPI driver — at the REPO ROOT, INCL'd by diskutil AND cbios
  HANDOFF-*.md    post-mortems for each debug hunt (read before repeating a bug)
```

`spi.inc` is included by both `programs/diskutil.s` and `cpm/cbios.asm` — keep
all three in sync when it changes.

## 3. Assembler (a85) — CRITICAL rules

`scripts/a85/a85.exe` is a **native Windows binary** run from git-bash.

- **ALWAYS assemble from the repo root** — `cd z80cpm && scripts/a85/a85.exe
  programs/diskutil.s -o programs/diskutil.hex ...` — so that `INCL
  "spi.inc"` resolves to `z80cpm/spi.inc`. Building from `programs/` or `cpm/`
  **silently can't find spi.inc**, every SPI symbol (`SPI_SEL`/`SPI_PAGE`/
  `SPI_ERASE_SECT`/`FBADDR`) assembles undefined → `CD 00 00` (CALL 0x0000) →
  the drive/flash path dies at runtime while a85 still reports "No Errors".
- **a85 can't write to an MSYS `/tmp` path** (`-o /tmp/foo.hex` → "Fatal Error
  -- Object File Did Not Open"). Give a repo-relative or `C:/...` output path.
- **"No Errors" is not verification.** Read the `.lst` (ground truth: addresses
  AND opcode bytes). A non-zero error count is a pass-1 unresolved-references
  ledger. The original committed diskutil reports ~67 errors yet is fine because
  it was built from the root.
- **8080 label+opcode trap:** on a line with both a label and an opcode, put a
  **SPACE after the colon** (`NB_SHL2: DAD H`). `NB_SHL2:DAD H` assembles "no
  errors" but emits three `0x00` bytes and leaves forward refs resolved to
  0x0000. Verify in the `.lst`.
- a85 omits zero-filled bytes from the emitted HEX (no runs of 0x00 in a
  DS/padding/variable area). A component's HEX can have **internal gaps** — do
  not assert a byte-contiguous reassembly of the records. If you build a raw
  `.bin`, **pad every gap with 0x00 explicitly.**
- These sources are **CRLF**. A scripted edit matching `\n` silently does
  nothing. Use the `patch` tool (CRLF-aware), and after any scripted edit prove
  it landed (grep the new text AND check the image size/label address moved).
- **Loop/counter traps:** `LXI D,imm16` clobbers BOTH D and E — protect live
  counters with `PUSH D`/`POP D`. Always express hex constants as arguably
  intended (`ADI 10H` = 16, **not** `ADI 16H` = 22).

## 4. Verilog / simulator (iverilog) — CRITICAL rules

The project is **strict Verilog-2001**. Icarus must be invoked with
**`iverilog -g2001`** (NOT `-g2012`): the TV80 core output port is `do`, an SV
reserved word that `-g2012` rejects. No SystemVerilog anywhere in the Z80 tree —
no unpacked-array parameters, no `+:` part-selects, no `assign` to a `reg`, no
`'G'` char literals (use `8'h47`).

- **`timescale 1ns/1ps` on EVERY `.v`.** A `#`-delay with no timescale never
  fires under iverilog → bus strobes stay `x`, the core fetches NOPs.
- Use a **NEG-EDGE wrapper (`tv80n`-style)**, NOT `tv80s` (which registers
  strobes at posedge and races the core's sample).
- **Wait-state path is demand-pulled by the slave's ACK**, not a separate wait
  machine: `wait_n = ~(bus_op && ~wb_ack)`, and the async SRAM controller holds
  `wb_ack` LOW until the physical transaction completes. Combinational slaves
  ack same-cycle (no stretch).
- **Edge-detect every bus access once** (`acc_start = access && !prev`), never
  arm on the level `(stb && cyc)` — the bridge holds cyc/stb across the whole
  multi-T-state Z80 access, so level-arming latches a stale address (off-by-one).
- **Never commit a pending access in the same cycle you capture it** — that
  reads the previous cycle's value. Only launch from a `have_next` flag set ≥1
  cycle prior.
- **Model a slow device honestly** when verifying a wait-state controller: drive
  the bus with `z` until `T_AA`/`T_WP` elapses, else a "never waits" controller
  passes.
- To verify a wait/ack path, **model synchronous BRAM as combinational data +
  combinational ack** (`wire`, not a registered `reg` ack) — a registered,
  read-only ack in the RAM model makes writes (stack pushes) never ack and the
  CPU hangs.
- The TV80 brbridge must expose an **explicit I/O qualifier** (`wb_io` from
  `~iorq_n`); never decode I/O by address range (the Z80 stack occupies
  0xFFxx and would be blackholed).
- **Divided clock + posedge-latched reset = reset never takes.** Free-run the
  divider (never gate it on reset), synchronize the reset into the new domain,
  and initialize the divider reg (`= 1'b0;`) or it stays `x` forever.
- **Lattice Diamond does NOT infer a read-only block ROM from a bare
  `reg [7:0] rom[0:N]` + `initial $readmemh`** — it emits VDB-1002 and leaves
  the array undriven. Use the `pmi_rom` EBR primitive (see §6).

### tb_cpm boot simulation (verify the sign-on without hardware)

`tb/tb_cpm.v` preloads `cpm/brevia2_cpm.mem` (CCP@E400 + BDOS@EC00 + CBIOS@FA00)
into the SRAM model, boots via a stub `JMP 0xFA00`, and dumps the serial console.
**Compile by hand, excluding `rtl/boot_rom.v`** (tb declares its own boot stub):

```bash
export PATH=/c/iverilog/bin:$PATH
iverilog -g2001 -s tb_cpm -o sim/cpm.out $(ls rtl/*.v | grep -v boot_rom) \
  tb/pmi_pll_sim.v tb/tb_cpm.v && vvp sim/cpm.out
```

`pmi_pll` comes from `tb/pmi_pll_sim.v` (leave it out → "Unknown module type:
pmi_pll"). **ALWAYS regenerate `cpm/brevia2_cpm.mem` from the fresh hex first:**
`python scripts/intel_hex_to_mem.py cpm/brevia2_cpm.hex cpm/brevia2_cpm.mem` — a
stale `.mem` silently simulates the OLD image. The sim's tail window is fixed;
`reached CCP=1` in the log already proves the boot reached the CCP — grep for
your banner text rather than insisting on seeing `A>`.

## 5. Building the CP/M image

`cpm/make_combined_hex.py` emits `brevia2_cpm.hex`, `brevia2_cpm.mem`, **and** a
raw `brevia2_cpm.bin` (contiguous CCP+BDOS+CBIOS image, gap-padded with 0),
starting at 0xD000, up to CPMIMGLEN.

- **CPMIMGLEN is currently 0x1D00**, and it has **THREE owners** that must stay
  in sync: `cpm/make_combined_hex.py` (the pad length), `programs/diskutil.s`
  (the `EQU` **and** the DO_FLASH_BURN page count), and `gwmon/smbrevia.asm` +
  the bitstream ROM. If the CBIOS grows past CPMIMGLEN it is **silently
  truncated** by the `[:CPMIMGLEN]` slice — check the printed end address
  against RMWBUF at 0xEF00 before flashing (~0x260 bytes of headroom).
- The **burn page count is a separate hardcoded constant** from CPMIMGLEN. When
  the image length changes, bump `MVI B,<cpimglen/256>` in DO_FLASH_BURN too, or
  the flash keeps only the first 0x1A00 bytes and every CBIOS variable above
  0xEA09 reads back erased `0xFF` after a power-up flash boot (only visible on a
  cold flash boot, not via the `C` RAM path).
- `programs/a85/a85.exe` is used to (re)build the GWMON boot ROM. Building the
  bitstream revives the ROM, so if you change GWMON you must regenerate the
  LUT/mem and rebuild.
- **Assemble GWMON from the same root** (`gwmon/a85.sh`), then copy the
  generated `boot_rom.mem` (which the repo can do) before building the bitstream.

## 6. FPGA build (Lattice Diamond 3.14) — Windows only

The Brevia2 toolchain is Lattice **Diamond 3.14** on a Windows box (XP2 is
supported; free node-locked license for XP2 non-SERDES). No macOS native build.

- **Device:** `LFXP2-5E-6TN144C` (5K LUT, TQFP144). On-board FTDI FT2232H =
  USB-JTAG (no separate cable; Mini-USB powers + programs).
- **Ports/pins:** clk 50MHz = **pin 21** (dedicated clock input); reset =
  pin 19; LEDs D1..D8 = 46,45,44,43,40,39,38,37; pushbuttons SW3..SW6 =
  54,53,52,50; DIP SW1A..D = 58,57,56,55; UART TX = **pin 109**, UART RX =
  **pin 110**, **115200 8N1**.
- **LEDs and buttons are BOTH ACTIVE-LOW.** Invert both ways in RTL
  (`assign led = ~lite`, `motion = ~button`). Do **not** instantiate software
  debounce (on-board MAX6818 already HW-debounces the buttons; a software
  resets-to-0 causes a false pulse at power-up).
- **Boot ROM must live in ON-CHIP EBR**, not external SRAM. The Brevia2 external
  SRAM is volatile (empty at power-up) and there's no SSD loader, so the reset
  stub + GWMON (~483 bytes) MUST be baked into the bitstream in EBR block RAM.
  **VERIFIED 2026-11-19: the boot ROM in EBR does NOT need a wait state.** The
  XP2 EBR is configured with the DEFAULT **NOREG** register mode (see below),
  in which only the *address* is registered and the data output is a
  **read-through** (combinational off the registered address). The tv80/Z80 M
  read cycle presents the address during T1 and samples `di` at T2, giving a
  full clock for the EBR to register the address and present the read-through
  data — so `wait_n` is held HIGH throughout and GWMON boots to the identical
  banner. The old "boot-ROM WB slave must be a WAIT-STATE slave" note over-
  assumed **OUTREG** (pipelined) mode, which IS +1 full cycle and would need a
  wait. `pmi_regmode` must be **"noreg"** — do NOT add a wait unless you also
  switch to OUTREG.
- **Diamond pmi_rom init is read at SYNTHESIS time via a CWD-RELATIVE path.** The
  big trap is a **stale copy of the .mem in the Diamond build dir**: Diamond
  reads *that* instead of the one you just regenerated, so you chase a phantom
  RTL bug while the EBR holds the old content. Verify what actually got burned
  from the Diamond **outputs** (the generated `pmi_init_file` path, EBR contents)
  — never infer it. Copy the `.mem` into the exact directory Diamond's scuba
  step runs from.
- **The Programmer only sees the board if the on-board FTDI FT2232H enumerates as
  a Lattice FTDI JTAG cable** — install Diamond's bundled FTDI/driver and check
  Device Manager. This is the likeliest sticking point.
- **Pin constraints:** use the Spreadsheet GUI / a proper `.lpf`, never hand-edit
  a `.lpf` (bare `LOCATE COMP "port" SITE "NN";` + `IOBUF PORT "port"
  IO_TYPE=...;`, no BLK wrapper). After editing pins: File→Save, set the `.lpf`
  as Active Preference File, re-run the flow, re-program — else constraints
  silently don't apply ("LED comes on and stays on").
- **SRAM timing constraint:** the board SRAM is IDT 71V124SA15 (15 ns). `build/
  z80cpm.lpf` must use `INPUT_SETUP PORT "sram_data*" 10 ns` (not 5 ns) — a 5 ns
  constraint is too tight for the ~6.28 ns pad path and gives a false PnR
  setup error. If the CPU clock is raised toward 50 MHz, reconsider this path.

## 7. Bring-up sequence (how to boot CP/M)

The reliable on-board path:

1. Reset → GWMON-80 (in EBR) is at the prompt.
2. Boot the RAM-disk toolchain: `G 1000` → diskutil command `F` (format) → `U`
   (XMODEM-upload the `.COM` you need, wait for "Received").
3. `C` → XMODEM-send `cpm/brevia2_cpm.bin` (the **raw** contiguous image, NOT
   the `.hex`). diskutil writes it into machine RAM from 0xD000 then `JMP
   0xE600` into the CBIOS cold boot, which persists CCP/BDOS to the system
   tracks and enters the CCP. This makes diskutil a bootstrap — no need to
   re-upload CP/M after each power cycle.
4. You are now **in RAM** — test the new build there (`dir c:`, `PIP …`) with no
   reset.

- `cpm/brevia2_cpm.bin` starts at 0xD000. If already at the GWMON prompt,
  `g e600` re-enters the RAM image. **Do NOT use `b`** — that boots the FLASH
  copy, which may be an older/truncated image while you debug the wrong build.
- For real file transfer use **Martin's XMODEM.COM from inside CP/M**
  (`cpm/xmodem/XMODEM.COM`) — `XMODEM R FILE` / `XMODEM S FILE` — which pushes
  files onto the persistent flash drive A: directly. Using diskutil `U`/`D`
  (which target the volatile RAM disk) is only for bring-up.
- **The user drives the serial console directly** (their terminal holds COM4
  exclusively, so pyserial gets "access denied" while it's open). Hand the user
  exact keystrokes and read back their pasted output instead of opening the port.

## 8. CP/M disk geometry — the rules that bite

- **Directory-entry byte 0 is the USER number (0-31), never a drive number.**
  Wrong user byte → files invisible to `DIR` at user 0 but still consume space
  (ALV marks every non-0xE5 entry): "NO SPACE" on a disk that DIRs empty.
- **Extent capacity = 16 blocks per extent** at BSH=3 (1K blocks) = 16K. Extent
  N's allocation list must start at `base + N*16` **and** match where bytes were
  physically written.
- **Drive A: (flash) geometry:** 2K blocks / 128 entries (BSH=4, BLM=15, EXM=1,
  DSM=251, DRM=127, AL0=0xC0, ALVB=32 bytes). **Do not revert to the older 4K
  BSH=5/DSM=125/AL0=0x80** (which capped at 64 entries). Backups of the 4K build
  are in `backup-4k-cpm-20261117/`.
- **Drive B: (RAM disk) keeps OFF=2** so ^C warm start stays functional during a
  session; the flash (drive A) is the power-on boot store.
- **Drive C: (SD) uses OFF=0** (data partition; sdtool formats the directory at
  the partition start).
- **Drive-A flash geometry was changed 2026-11-17.** Never trust a stale `.prn`
  or a hardcoded address — reassemble and read the fresh listing.
- **Two-extent (≥16K) file math:** extent 1 must begin at `BLKNO+16` (**hex
  10H**), contiguous with extent 0's blocks. `ADI 16H` (=22, not 16) shifts
  extent 1's map across a 6-block gap while the data physically lands at
  BLKNO+16 → the file loads corrupted (only two-extent files exercise SETALLO2;
  e.g. MBASIC.COM corrupts while smaller files work).
- **The BDOS adds the DPB OFF to the track before calling SETTRK.** A custom BIOS
  READ/WRITE maps `(track*SPT + sector)*128` and must **not** re-add OFF.
- **The BDOS builds the allocation vector itself** on first login — a custom
  BIOS never zeroes/primes ALV (`DS n` uninit is fine).
- **DSM is 16-bit** → a single CP/M drive caps at ~128-512 MB. **But the BDOS
  disk math is 16-bit on the RECORD/sector counter**, so a logical drive caps at
  **65536×128 = 8 MB**; raising DSM alone does NOT pass it. To use >8 MB either
  use 8 MB logical drives (DRI-sanctioned, max 16 drives) or a replacement BDOS
  (ZRDOS/P2DOS/NOS/CP/M 3).
- **Hard blocker for >~1 MB:** `SETTRK` stores only the LOW byte of the BDOS BC
  track (`TRK` is `DS 1`); CP/M 2 passes the track as a WORD in BC. To grow past
  256 tracks you must make TRK 16-bit and store full BC. See
  `cpm/SD-8MB-DRIVE.md`.

## 9. SPI flash (drive A:) — WREN and erase rules

The on-board flash is the **ISSI IS25LD040** (JEDEC `0x9F` = `7F 9D 7E`), NOT
the IS25LP040E/LQ040 that earlier docs assumed. `0x9F` read is **not byte-aligned**
by this engine (prepends a `0x7F` continuation byte) — either scan for the `0x9D`
manufacturer or use the 0x90/0xAB command (3 dummy bytes).

- **WREN trap:** the IS25LD040 demands a WREN (0x06) + CS# toggle before EVERY
  program/erase opcode. `SPI_PROGBYTE`/`SPI_ERASE_SECT` did this, but an op like
  `SPI_PAGE` can silently be ignored → the flash stays erased 0xFF and a format
  "verify FAILED" while byte-prog passes. The sim model does a plain write (no
  WREN gating), so the sim passes and only silicon exposes the missing WREN.
- **Chip-erase race:** `0x60/C7h` is valid but LONG; during it every command
  except RDSR is ignored, so a page program right after a chip erase is dropped.
  For anything deterministic, loop **128 × sector erase (0x20)**, not one chip
  erase. Only the sector-erase path is safe.
- **SPI_PAGE advances HL by 256.** If a caller reuses one small source buffer
  across multiple page programs, it must re-point HL at the buffer every
  iteration, or pages 2..N write out-of-buffer garbage. (This bit the diskutil
  `S` formatter.)
- **SPI-engine critical pitfall:** `rtl/spi_flash.v` must start a byte transfer
  on the **rising edge** of the 0x50 access strobe, NOT its LEVEL (the top
  stretches the CPU cycle with `wait_req`, so the strobe is a held LEVEL). Fix:
  `go_stb_edge = go_stb & ~go_stb_d`. Symptom of the bug: the flash address
  auto-increments ~3× per access (stride-3 read-back).
- **SPI flash / SD instance separation:** the shared engine gained `clock_free`
  and `prescale` inputs used only by the SD instance. The **flash instance keeps
  `clock_free=0, prescale=1`** — never pass the SD flags to the flash instance.
- **diskutil FORMAT writes 0xE5 across the ENTIRE 64K bank-B RAM disk**, not just
  the 2K directory. `LXI B,0` = 65536; the loop writes before decrementing — that
  ordering is load-bearing, don't "fix" it.

## 10. SD card (drive C:, SPI mode, pins 31/32/35/36)

Port map (all wait-stretched, no busy polling): `0x53` = SD SPI data (r/w byte),
`0x54` = SD SPI ctl (bit0 = CS#, bit1 = slow clock ~390 kHz), `0x55` = SD SPI
status (bit0 = busy). Pins: sd_csn=31, sd_mosi=32, sd_sclk=35, sd_miso=36.
Full design: `cpm/SD-CARD-SUPPORT.md`; condensed depth: `refs/sd-card-spi.md`.

- **CP/M 128B-record ↔ SD 512B-sector deblocking is MANDATORY** (HSTSIZ=512/
  HSTBLK=4/SECMSK/SECSHF). Blocking/deblocking goes in the CBIOS under CP/M 2.2.
- **Partition = MBR** (LBA0: 4×16-byte entries at 446/462/478/494, `55 AA` at
  510). No standard MBR type for CP/M — designate by index or a custom type
  (sdtool uses 0x53). Offset every SD access by `partition_lba_start +
  host_sector`.
- **SDHC/SDXC init REQUIRES CMD8 (SEND_IF_COND) before ACMD41.** CMD0 →
  CMD55/ACMD41 alone leaves a modern card stuck in idle. Handshake: CMD0, CMD8
  (0x48 00 00 01 AA 87; consume 4-byte R7; an old SDSC replies 05h "illegal" =
  fine), then CMD55/ACMD41 poll.
- **SDHC/SDXC address in 512-byte BLOCK numbers** (CCS from CMD58/ACMD41); SDSC
  is byte-addressed. Support the block path.
- **`sdtool.s`** → `sdtool.com` (commands I init/info/test, P show MBR, C create
  an MBR with one CP/M partition type 0x53 LBA 1 64MB, F format). Geometry
  mirrors the flash conventions (SPT=32, 2K blocks BSH=4, DRM=127, AL0=0xC0).
- **FILL-BUFFER WRAP:** a 512-byte fill with `MVI B,0` wraps at 256 → only the
  first half is filled. For any >255-byte fill use a 16-bit count
  (`LXI B,512; DCX B; MOV A,B; ORA C; JNZ`). Symptom: phantom 'S~' dir entries.
- **Deblock shift must be `RAL`, never `RLC`.** The SD corruption bug was
  exactly this: `SDMAP` used `RLC` (circular) so records 2/3 of every 512B
  sector were deblocked one byte high. CP/M round-tripped its own writes and hid
  it. Use `XRA A` + `RAL`/`RAR`. **Never accept a CP/M-level round-trip as
  proof — do a card-content check** (a shared wrong offset always round-trips).
- **Busy/ready + retry:** a card still programming a block drives MISO low (or
  lets it float → reads 0xFF, indistinguishable from idle), so a command in that
  window is silently dropped. `READC`/`WRITEC` must retry the whole operation
  (SDTRIES=6) with `SD_RECOVER` (release CS, wait ~10ms via `SD_DELAY`, re-run
  `SD_INIT`) between attempts. A delay of ~1.6 ms is far too short (the retries
  burn out instantly). A BIOS must not report a transient as a hard error.
- **Modelling card busy in a simulator: TIME-based, never per-clocked-byte** (a
  per-byte counter can never drain once the driver stops clocking). Count
  emulated instructions (`steps < busy_until`). Random drops are a valid fault
  model; a periodic "drop every Nth" is not.
- **CBIOS drive-C is integrated** (commit e8ffe40): SELDSK C=2 → DPHC;
  READ/WRITE SELBL==2 → SD deblock path. The 512B sector buffer **aliases the
  RMWBUF region** (0xEF00) — drive-A flash and drive-C SD never run concurrently,
  so they safely share the 4KB area; that's why the SD needs no new memory and
  the CBIOS stays below 0xEFFF. The SD DPB (DPBC) uses the same single-DM 2K
  geometry as the flash but **OFF=0**.
- **CP/M 2.2 `errflg` prints the message then waits for a key** with the FCB/dir
  state mid-op; a cold boot is the only clean exit. A `00 F6 00 F6 ...` fill is
  RMWBUF (0xEF00-0xFEFF) residue — only a drive-A 4KB RMW fills that far up —
  not system corruption.

## 11. Debugging CP/M behavior on hardware

- **THE BDOS CLOBBERS REGISTERS ACROSS `CALL 5`.** Func 2 (console out) returns 0
  in A **and** clobbers B/HL; func 9 (print string) clobbered B and HL on this
  board. A print loop holding a byte-count in B or a pointer in HL across a
  CPUTC call deadlocks. Wrap with `PUSH`/`POP` or stash the value in a RAM byte
  (`DS 1`) — memory is immune to BDOS clobbering (`PUSH`/`POP` only helps if the
  clobbered register is the one you protect).
- **THIS PORT'S BDOS FUNC 6 CONVENTION IS THE INVERSE OF MOST REFERENCES.** In
  `cpm/cpm22/bdos.asm` func6 the mode comes from E: **E=0xFF = INPUT** (returns
  the actual char, or 0 if none, non-blocking), while **E=0xFE = STATUS** which
  returns **0 ALWAYS**. A non-blocking key poll MUST use `MVI E,0FFH`; using
  0FEH makes the loop never see a key and hang. Also: **use func 11 (CONBRK), not
  func 6**, for a non-blocking poll — func 6 can block in `dirinp`. Grep the
  actual bdos.asm — don't trust the common "func6 E=0xFE = input" claim.
- **Verify which build is actually running before debugging a symptom.** Print
  the assembled bytes at a symbol the NEW build introduced and have the user
  `d <addr> <addr+15>` it in GWMON after a reset (SRAM survives reset). A stale
  RAM or FLASH image produces faults that look exactly like fresh bugs.
- **Never hardcode CBIOS label addresses — parse the listing.** Every byte
  inserted anywhere in cbios.asm shifts the variable/DPB block. Generate a fresh
  `cpm/cbios.prn` (`scripts/a85/a85.exe cpm/cbios.asm -o cpm/cbios.hex -l
  cpm/cbios.prn` from the repo root) and pull symbols by name
  (`tb/cpmsys_sim.py`'s `SYM`/`V('SELBL')` parser is the ready-made helper). The
  BIOS jump table is 17× `JMP` at 0xE600 (+0 BOOT, +3 WBOOT, +24 HOME, +27
  SELDSK, +30 SETTRK, +33 SETSEC, +36 SETDMA, +39 READ, +42 WRITE, +48 SECTRAN).
  Two stable anchors: the jump table at 0xE600 and whatever `V('<label>')`
  returns from the current `.prn`.
- **Boot-address anchors:** CCP=0xD000 (was 0xE400), BDOS=0xD800, CBIOS=0xE600.
  GWMON owns 0xFF00-0xFFFF (CP/M must stay below 0xFF00). The 4KB RMW buffer is
  at 0xEF00-0xFEFF, above the whole system. diskutil keeps its own stack at
  0xE000 (TPA) — never 0xF000 (in the BDOS, corrupts CP/M's in-RAM image).
- **WBOOT (BIOS+3, page-zero 0x0000) MUST bank out the GWMON ROM** with
  `MVI A,01; OUT 30H` exactly like BOOT — otherwise `G FA03` after a reset runs
  WBOOT with the ROM still mapped in and the CCP/page-zero reads hit the monitor
  ROM.
- **CDRMAX / phantom dir entries:** `cdrmax` (DPH+2) is the directory-scan
  high-water mark; phantom (non-0xE5) entries pin it low, so `make` finds no
  empty slot and later writes fail with "NO SPACE" (masking a diskutil/geometry
  bug as NO SPACE). DIR also displays only cdrmax+1 entries. This can
  masquerade as a geometry bug — verify with dumps.
- **A read that works but reports garbage** (e.g. an LED mirror of the port read
  is right while the print after the call shows zeros) means the read is fine and
  the bug is in code that kept a value in a register across a `CALL 5` — don't
  re-derive the RTL or blame hardware.
- **Make ONE change at a time; when the symptom points at software, audit the
  .COM code path and stop re-deriving the RTL/assigns.** The user wants single
  targeted edits, not parallel refactors.

## 12. The Python 8080 simulator harnesses (fast verification loop)

Build a minimal Python 8080 interpreter + BDOS stub for new `.COM` tools and
**execute them end-to-end before uploading** — far faster than source reading and
catches register-clobbering, register-mapping, and divide bugs:

- `tb/cpmsys_sim.py` (full-enough 8080 core, ports 0x20/21/22 RAM disk,
  0x50/51/52 flash, 0x53/54/55 SD, 0x80/81 UART, writable SD model honouring
  programming busy) + `tb/test_drive_c.py` (boots the real CCP+BDOS+CBIOS image
  with a hand-built drive-A flash dir, runs `DIR C:` / `PIP C:=A:*.*`, reads the
  copied files back) + `tb/test_write.py` (128-record write/read sweep) +
  `tb/sdtool_sim.py` (regression-test sdtool).
- Plant a **HLT at 0xFC00** and a return address at 0xDFFE so CMD_QUIT's `RET`
  halts cleanly instead of running off through RAM. Beware: the 8080 emulator can
  swallow 0x76 (HLT = MOV M,M) if the MOV decoder runs first.
- **The BDOS/port stub must FAITHFULLY emulate the real quirks** (func 6 = 0xFF
  input / 0xFE status→0, func 9 clobbers B, func 2 returns 0 in A, func 11 for
  non-blocking). A stub that "does the right thing" lets the sim PASS a program
  that hangs on the real board.
- Convert the assembled `.hex` to a raw `.com` by parsing ONLY record-type-00
  records into an addr→byte dict and emitting contiguous bytes from the minimum
  address; verify the first instruction matches the `.lst`.
- **A PASS with no failing control proves nothing.** Run the same hostile
  scenario (busy window, drop rate, flaky MISO) against the new image (expect
  PASS) AND the previous image (expect failure) before claiming a fix works.

## 13. Key constants & addresses (verify from the listing, don't memorize)

| Name | Value / Location |
|---|---|
| `CPMIMG` | 0x0000 |
| `CPMIMGLEN` | 0x1D00 (3 owners — see §5) |
| CCP / BDOS / CBIOS | 0xD000 / 0xD800 / 0xE600 |
| BIOS jump table | 0xE600 (17× JMP) |
| RMW buffer | 0xEF00-0xFEFF |
| diskutil stack | 0xE000 |
| GWMON reserved | 0xFF00-0xFFFF |
| Console UART | **115200** 8N1 (BAUD_DIV 217) — **not** 9600 |
| flash JEDEC 0x9F | `7F 9D 7E` (ISSI IS25LD040) |
| SD SPI port | 0x53 data / 0x54 ctl / 0x55 status |
| RAM disk ports | 0x20 data, 0x21 addr-lo, 0x22 addr-hi |

## 14. Recommended verification flow (per change)

1. Assemble **from the repo root**. Check the `.lst` bytes at your change.
2. Regenerate the `.mem` from the fresh `.hex`. Simulate with the hand-compiled
   `tb_cpm` (or the Python harness for tools).
3. Byte-diff the new Intel HEX against the git HEAD image to prove nothing else
   moved; confirm each instruction's bytes.
4. For SD/flash changes, run the hostile simulator harness against both old and
   new images.
5. Flash and boot on real hardware; **verify the build is the one you think** by
   dumping a byte string the new build introduced.

## 15. Interacting with the project owner

- The owner drives the serial console directly; hand them exact keystrokes.
- Polarity is active-low on both LEDs and buttons — never trust a guess, confirm
  empirically; ask before wiring inputs.
- Confirm on a FRESH cold boot (diskutil `C`) before blaming a runtime behavior —
  a stuck transient can leave the system in a bad state a cold boot clears.
