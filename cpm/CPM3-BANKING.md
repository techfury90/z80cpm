# CP/M 3 (CP/M Plus) banked-memory & BIOS specs — reference for the Brevia2

Goal: nail down the exact target before porting CP/M 3 to the Brevia2, with
the eventual aim of a banked system. Sources are the original Digital Research
manuals / BIOS source; the authoritative files are cited inline.

## 1. The banked memory model (CP/M 3 System Guide §1.4, §1.5, §3.5)

A banked CP/M 3 system does NOT have a single 64K address space. It is split
into:

- **Common memory** — a region in the TOP of the address space that is ALWAYS
  enabled and addressable regardless of which bank is selected. It holds the
  *resident* (common) portion of the BDOS/BIOS and everything that must always
  be reachable. Must be contiguous. Typical size 16K, can be 4K-32K. Per the
  System Guide, the common region must be large enough for "a 1.5K BDOS and the
  common part of your customized BIOS."
- **Bank 0 (system bank)** — in context at cold start. Holds the *banked*
  portion of the BDOS/BIOS (the DSEG code/data) and the directory buffers.
  Must have at least 11K of the OS.
- **Bank 1 (transient program bank)** — the TPA. MUST be contiguous from
  0x0000 to the base of common memory, and contains Page Zero.
- **Banks 2+** — optional; need not begin at 0 nor be contiguous. Used for
  performance (hash tables, buffer pools, extra TPA-ish space).

Requirements & constraints (System Guide §1.7.1):
- CPU: 8080 / 8085 / Z80.
- **Minimum two banks** (Bank 0 + Bank 1), **up to 16 banks**.
- **Top 4K-32K must be common memory**; Bank 1 contiguous 0x0000 → common base.
  Suggested: "two banks of 48K RAM each, with the top 16K in common memory."
- Banked systems support a **TPA of 60K or more** (because the OS bulk lives in
  Bank 0, not in the TPA window) vs. 52-54K for nonbanked.

What must stay in COMMON memory (§3.5): the BIOS stack, the BIOS jump vector,
the Disk Parameter Blocks, the memory-management routines, the CHRTBL, all
character-I/O routines, and portions of the disk-I/O routines.

## 2. The 33-entry CP/M 3 BIOS jump vector (System Guide Table 2-1)

Entry 0-16 are the familiar ones; CP/M 3 ADDS 17-32. You must emit ALL 33
entries (non-implemented ones can be a bare `RET`), though the BDOS only needs
BOOT, WBOOT, CONST, CONIN, CONOUT, HOME, SELDSK, SETTRK, SETSEC, SETDMA, READ,
WRITE, SECTRN, MULTIO, FLUSH to operate.

| # | Entry    | Input / Output |
|---|----------|----------------|
| 0 | BOOT     | cold start; init page zero, jump to CCP |
| 1 | WBOOT    | warm start |
| 2 | CONST    | A=0FF h ready / 00 not |
| 3 | CONIN    | A = char |
| 4 | CONOUT   | C = char |
| 5 | LIST     | C = char |
| 6 | AUXOUT   | C = char |
| 7 | AUXIN    | A = char |
| 8 | HOME     | |
| 9 | SELDSK   | C=drive; HL=DPH addr; E=init flag; HL=0 if invalid |
|10 | SETTRK   | BC=track |
|11 | SETSEC   | BC=sector |
|12 | SETDMA   | BC=.DMA |
|13 | READ     | A=0 ok / 1 err / 0FF media change |
|14 | WRITE    | C=deblk code; A=0 ok /1 phys /2 R/O /0FF media |
|15 | LISTST   | A=ready |
|16 | SECTRN   | BC=log, DE=table; HL=phys |
|17 | CONOST   | A=output ready |
|18 | AUXIST   | A=input ready |
|19 | AUXOST   | A=output ready |
|20 | DEVTBL   | HL=chrtbl addr |
|21 | DEVINI   | C=dev 0-15 |
|22 | DRVTBL   | HL=drvtbl addr / 0FFFF / 0FFFE |
|23 | MULTIO   | C=mult sec count |
|24 | FLUSH    | A=0 ok /1 /2 R/O |
|25 | MOVE     | HL=dest, DE=src, BC=count; HL&DE -> next bytes |
|26 | TIME     | C=0 get / 0FF set; HL&DE preserved |
|27 | SELMEM   | A=bank          <<< bank select (code/execution) |
|28 | SETBNK   | A=bank          <<< DMA bank for disk I/O |
|29 | XMOVE    | B=dest bank, C=src bank  <<< interbank move |
|30 | USERF    | OEM reserved (called via BDOS func 50) |
|31 | RESERV1  | future |
|32 | RESERV2  | future |

## 3. The four memory-management BIOS functions (System Guide §3.4.4)

Only present in a banked environment (SELMEM / SETBNK / XMOVE); MOVE is always
present.

- **MOVE (25):** block move. `BC=count, DE=src, HL=dest`. On return HL and DE
  point to the next bytes. NOTE args are reversed from the Z80 `LDIR` — you
  must `XCHG` on both sides. The BDOS calls this for all large memory copies.
- **SELMEM (27):** select the CURRENT memory bank for further instruction
  execution / buffer references. `A=bank`. **Must preserve/restore all
  registers except A.**
- **SETBNK (28):** specify the bank the next disk READ/WRITE must use for DMA.
  `A=bank`. The BDOS calls SETBNK before EVERY READ/WRITE. The BDOS does not
  reference banks other than 0 or 1 unless a BCB `BANK` field says otherwise.
- **XMOVE (29):** `B=dest bank, C=src bank`; affects ONLY the following MOVE
  call, and that MOVE moves at most 128 bytes. Only needed if you want data
  buffers in a non-common bank (interbank block moves). If not implemented,
  the entry must be a `RET`.

How the BDOS uses them (System Guide §2.6):
- BDOS does its own memory-to-memory copies via MOVE.
- BDOS calls XMOVE to set the source/dest banks for an interbank MOVE (only if
  you put data buffers outside common memory).
- BDOS calls SELMEM whenever it must execute/access code in a bank other than
  the current one.
- BDOS calls SETBNK before disk READ/WRITE. The disk-I/O routine must save the
  current bank, select the DMA bank (the one SETBNK saved), do the I/O, then
  reselect the original bank. Bank 0 is in context when the BDOS calls the
  disk I/O routines.

## 4. Which bank is in context for each BIOS call (System Guide §3.5)

- **Bank 0 only:** BOOT, DRVTBL, HOME, SELDSK, SETTRK, SETSEC, SETDMA, READ,
  WRITE, SECTRN, MULTIO, FLUSH, MOVE, SETBNK.
- **Bank 0 OR Bank 1:** WBOOT, DEVTBL, DEVINI, CONST, CONIN, CONOUT, LIST,
  AUXOUT, AUXIN, LISTST, CONOST, AUXIST, AUXOST, SELMEM, TIME.

If the disk controller only transfers into the currently-selected bank, the
transfer-initiation code MUST be in common memory and must: (1) select the DMA
bank SETBNK saved, (2) perform physical I/O, (3) reselect Bank 0, (4) return.

## 5. Page Zero & the CALL 5 entry in a banked system

In banked mode the BDOS lives in Bank 0, so a transient cannot `CALL 5` straight
into it. The BOOT routine must set:
- `0x0000` = `JMP` to BIOS warm-start entry (BIOS base + 3).
- `0x0005` = `JMP @MXTPA`, the address of the BDOS/system-call entry. `@MXTPA`
  is a System Control Block (SCB) field pointing to a Bank-1 trampoline that
  banks in the BDOS.

The C128 CP/M Plus BIOS root module (see devili.iki.fi) does exactly this in
`set$jumps`:
```
 if banked
   mvi a,1
   call ?bnksl        ; select Bank 1 (TPA) before touching page zero
 endif
 mvi a,JMP
 sta 0 ; sta 5
 lxi h,?wboot ; shld 1
 lhld @MXTPA  ; shld 6
```
and `bnksel`/`?bank` implement the physical bank switch, tracking the current
bank in `@cbnk`. The BIOS stack must be in common memory (so it can make BDOS
calls).

## 6. Building a banked BIOS (System Guide §3.6)

- Use DRI's **RMAC** (relocatable macro assembler) to assemble the BIOS into a
  `.REL`; **LINK-80** with the `[B]` option to build `BNKBIOS3.SPR`. The linker
  puts **CSEG** (common/resident) code and data FIRST, then **DSEG** (banked)
  code and data, aligns the DSEG to a page boundary, and records the CSEG
  length in the SPR header page.
- **GENCPM** then combines your BNKBIOS3.SPR + the banked BDOS SPR + the SCB
  into the CP/M system image (`CPM3.SYS`), which CPMLDR boots.
- So the BIOS is split into CSEG (must be in common) and DSEG (may be banked
  into Bank 0). For a simple port you can leave everything in CSEG/common and
  skip banking — see §8.

## 7. What this means for the Brevia2 (hardware)

- We have ONE 128K SRAM (17-bit address), currently Bank A (machine 64K, direct
  A[15:0]) + Bank B (64K, behind the 0x20/0x21/0x22 RAM-disk window).
- To do CP/M 3 banked we need a **bank-select** mechanism that maps a region of
  the CPU address space to a selectable SRAM region, while a fixed TOP region
  stays always-mapped (common). The existing `rd_active` SRAM-bus mux in
  `rtl/z80cpm_brevia2.v` is the seed of this — it already arbitrates who owns
  the SRAM bus between machine address and the bank window.
- Minimal viable config with our 128K: e.g. **top 16K common + two banked
  regions**. With 128K total we comfortably fit "two banks" + common. (DRI's
  suggested example is 2×48K banks + 16K common = 112K, which fits in our 128K,
  leaving headroom.) We do NOT have more SRAM on the board, so we're capped at
  2 real banks + common — that is the CP/M 3 *minimum* configuration.
- The bank-select write to the SRAM mux (driving the high address bits) is the
  hardware work; everything else in §1-6 is the software.

## 8. Recommended path (from DRI's own guidance)

The System Guide §1.4 explicitly recommends: **build and debug NONBANKED CP/M 3
first** — leave the whole BIOS in common memory, get a working system, THEN
create the banked version. This is the pragmatic route:
- **Step 1 — nonbanked CP/M 3:** same shape as our current CP/M 2.2 (single
  memory, CCP/BDOS/BIOS in high memory, TPA below). We reuse our existing
  UART/SPI/flash CBIOS disk+console drivers; the work is the 33-entry vector,
  the SCB, the boot/page-zero init, and GENCPM. This alone gets us CP/M 3
  features (passwords, extended error messages, better editor/utilities)
  without any bank hardware.
- **Step 2 — banked CP/M 3:** add the bank-select RTL (a port + mux), then move
  the OS DSEG into Bank 0 and add SELMEM/SETBNK/XMOVE (or RET stubs for XMOVE),
  keep the disk/console code in common, and build BNKBIOS3.SPR through
  RMAC/LINK-80/GENCPM. Then we get the ~60K+ TPA.

## Sources
- Digital Research, "CP/M Plus (CP/M Version 3) Operating System System Guide"
  (Jan/Jul 1983) — banked/nonbanked model, memory requirements, 33-entry jump
  vector, memory-select/move functions, banking considerations.
  (mirror: s100computers.com/.../CPM3%20System%20Guide.pdf)
- Digital Research, "CP/M 3 Programmer's Guide" (banked memory organization).
- Commodore 128 CP/M Plus BIOS root module — concrete `set$jumps` / `bnksel` /
  `?bank` bank-switch implementation (devili.iki.fi .../C128/CPM/cxkrnl.html).
- DRI sample BIOS (bios3.asm / bioskrnl.asm) — the actual 33-jump vector and
  banked BDOS/BIOS conventions (df.lth.se cpm3 archive).
