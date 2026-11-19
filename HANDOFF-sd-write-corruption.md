# HANDOFF — SD drive C: WRITE path corruption — RESOLVED (verified on silicon)

Status 2026-11-18: fixed and confirmed on the board. `PIP C:=A:*.*` copies
cleanly, `dir c:` is stable, `SDTOOL F` formats in one pass.

**Authoritative reference for other agents: `cpm/SD-WRITE-PATH-FIX.md`**
(root causes with before/after code, current build map + addresses, GWMON dump
fingerprints, simulator harness and results, and the rules for changing this
path). This file is the investigation trail.

## What was actually wrong (one line each)

1. `SDMAP` built the deblock in-sector offset with `RLC` (circular) instead of
   `RAL` — records 2/3 of every 512-byte sector were written ONE BYTE HIGH.
   CP/M read back through the same wrong offset, so it hid the damage; the card
   was silently corrupt.
2. No card-ready handling: a programming card holds MISO low (or floats it), and
   `SD_SEND6` accepted the resulting `00h` as "R1 = OK", silently dropping the
   command. That is the `Bdos Err On C: Bad Sector`.
3. `SD_WRITEBLK` threw away the data-response token, so rejected writes looked
   successful.
4. One-shot error handling made any transient fatal. `READC`/`WRITEC` now retry
   the whole operation 6x with a ~10 ms wait + re-handshake between attempts
   (which also heals a boot-time `SD_INIT` failure — `BOOT` ignores its result).

Bonus find: `diskutil`'s flash burn programmed 26 pages (0x1A00) while
`CPMIMGLEN` is 0x1D00, so a power-up boot from flash ran a truncated CBIOS
(SPI primitives, drive-A code, DPH/DPB and all variables from 0xEA09 up were
never burned). Fixed to 29 pages.

Not bugs, despite appearances: the `00 F6` fill was RMWBUF residue (nothing
writes into the system — verified by trapping every store to CCP/CBIOS code), and
"CP/M got corrupted" was CP/M 2.2's `errflg` waiting on the console after the
error.

---


## UPDATE (retry layer) — the failure is intermittent: retry, don't poll harder

On the board `dir c:` failed **intermittently** even with the ready-wait. Cause:
a card that is still programming may hold MISO low **or let it float**, and a
floating MISO reads back as `0FFh` -- identical to idle. No amount of readiness
polling can rule out a command landing in that window; it is dropped silently.

Implemented (commit c32bc63 + 356b181):
- `READC`/`WRITEC` wrap the whole drive-C op, up to **6 attempts**.
- Between attempts `SD_RECOVER` releases CS, waits **`SD_RDLY` ~10 ms**, then
  re-runs the full `SD_INIT` handshake (this also heals an init that failed at
  boot -- BOOT ignores SD_INIT's return, so one bad handshake used to kill drive
  C for the session). `SD_DELAY` (1.6 ms) was too short; a 20k-instruction busy
  window outlived the entire retry budget.
- Scratch vars `SDCMDB`/`SDTRY` now sit at 0xED1A/0xED20 (above CPMIMGLEN, in
  the unused gap below RMWBUF). Image ends 0xECF2; ~13 bytes of code headroom
  left, so trim rather than grow.

Current fingerprint (`d e806 e815`): `3E 06 32 20 ED CD 4D E8 B7 CA 2E E8 CD 30 E8 B7`

Simulator results (`tb/test_drive_c.py <busy_instr> <steps> <drop> <mode>`), card
busy is now TIME-based and drops are random:

| image | busy | faults | result |
|---|---|---|---|
| pre-retry c38c8124 | 3000 | 10% drops + flaky MISO | FAIL (4/61 dropped kills it) |
| **7b30a3e8** | 3000 | 10% drops + flaky MISO | PASS (87/1020 dropped, byte-exact) |
| **7b30a3e8** | 20000 | 10% drops + flaky MISO | PASS (97/1035 dropped, byte-exact) |
| **7b30a3e8** | 3000 | none | PASS |

Model-fidelity lessons that cost time: busy must be time-based (a per-clock-byte
counter can never drain once the driver stops clocking), a periodic drop
injector is pathological (retry emits exactly N-1 commands -> same command
dropped forever), and CS# edges must abort the data phase or junk responses leak
across transactions.

---

# HANDOFF — SD drive C: WRITE path corruption (fresh investigation)

Goal: get the SD (drive C:) to a fully working CP/M disk.  READS and directory
listing now work, but WRITING (a PIP copy to C:) fails with "Bdos Err On C: Bad
Sector" and CORRUPTS the in-memory CP/M system.  This handoff is for a fresh
investigation — do not re-derive the format or the read path (those are done).

## Current state (WORKING — do not redo)
- SD card initializes (CMD0/CMD8/ACMD41), drive C: exists, `dir c:` shows clean
  "No File", `stat c:` reports ~500k free.  Reads and directory listing work.
- The format bug was FIXED (commit 0747595): sdtool's 'F' only filled 256 bytes
  of the 512-byte buffer (a `MVI B,0; DCR B` wrap), leaving the upper half of
  every directory sector as stale bytes -> phantom 'S~' dir entries.  Fixed to a
  16-bit count.  A clean format produces fully-0xE5 directory sectors.
- SD driver (SD_INIT/SD_SEND6/SD_WAITTKN/SD_READBLK/SD_WRITEBLK) + deblock were
  ported from the validated SDPROBE/SDTOOL; READS maps a 128-byte BDOS record to
  SD block (SDPLBA + rec/4) at byte offset (rec&3)*128.

## Remaining bug (NOT FIXED — investigate THIS)
- `pip`  `*c:=a:*.*`  copies a couple of files (PIP.COM, STAT.COM print
  "COPYING -") then dies with **"Bdos Err On C: Bad Sector"**.
- After that, CP/M is **corrupted** and needs a cold boot.  A copied file (PIP
  from C:) can SOMETIMES run from C:, i.e. some writes DO land.
- A memory dump around 0xF700-0xF9FF+ shows a **constant `00 F6 00 F6 ...` fill**
  (this is inside the **RMWBUF region 0xEF00-0xFEFF**).  The user recognized this
  "00 F6 fill" from **earlier SPI RMW-buffer-related clobbering** — a strong
  smell that the deblock/RMW buffer aliasing is involved.
- Hints from the user:
  - Reformatting in sdtool sometimes has to be done TWICE (the first 'F' can
    fail) — the write path is flaky.
  - After reboot + delete PIP's temp file + copy a new file -> corruption again.
  - "There seems to be a file size variable with PIP.  Maybe we do have a buffer
    conflict?"  (i.e. suspect a buffer/pointer collision with the Linux... rather
    a CP/M buffer/PIP internal variable.)
  - The cpuville page's notable bug is a **SECTRAN sector-translation mismatch**
    (directory reads land on the wrong sector due to a bad translation table).
    NOTE: our CBIOS SECTRAN is identity (no translation), so that specific bug
    LIKELY does NOT apply — but the analogous concern is the correctness of our
    deblock mapping; confirm it if the write still mismaps.

## Key technical facts
- Memory: CCP 0xD000, BDOS 0xD800, CBIOS 0xE600; CBIOS vars ~0xEB00-0xECA0
  (DIRBUF 0xEB82, DMA 0xEB53, SDOFF 0xEC94, BLKN 0xEC96, SDCMDB 0xEC9A).
- **RMWBUF 0xEF00-0xFEFF** — used by the flash drive-A write RMW (4KB), AND now
  ALIASED as the SD deblock sector buffer (512B).  Drive A writes and drive C
  accesses never occur at the same time, so the alias was assumed safe.
- SD deblock (cbios.asm READS/WRITES): record = TRK*32 + SECN;
  SD block = SDPLBA(1) + record/4;  in-sector offset = (record & 3) * 128.
  READ  = read 512B SD block into RMWBUF, copy 128B at offset -> DMA.
  WRITE = read 512B SD block into RMWBUF, overlay 128B from DMA at offset,
          write the 512B block back.
- SDPLBA = 1 (partition LBA from the sdtool MBR).  SD data 0x53, ctl 0x54
  (bit0 CS#, bit1 slow), status 0x55.  SD DPB: SPT=32, BSH=4 (2KB blocks),
  DSM=251 (single-DM), DRM=127, AL0=0xC0, OFF=0.  CPMIMGLEN 0x1D00 (image 7424B).

## Suspects to investigate (in priority order)
1. **The write-back / Bad Sector**: SD_WRITEBLK returns an error to the BDOS.
   Audit SD_WRITEBLK's data-response read (expect 0x05) and the busy-wait
   (`IN SD_DATA; ANI 01H; JNZ done`).  A wrong busy-poll (e.g. exiting on the
   data-response byte's bit0 instead of the actual busy state) or an error return
   would yield exactly "Bad Sector" on every write.  This is the most likely
   direct cause of the error message.
2. **RMWBUF aliasing -> system corruption**: The deblock writes into RMWBUF
   (0xEF00-0xFEFF).  That region is above the system (0xD000-0xECA0), so it
   should NOT corrupt CP/M — yet CP/M dies.  Two ways it could:
   (a) the SD op writes OUTSIDE RMWBUF (a bad address/offset) into the system;
   (b) the DMA pointer for the copy/overlay is wrong, so the CBIOS writes the
   record to a system-area address instead of the intended DMA/DIRBUF.
   Dump BOTH the system area (0xD000-0xECA0) and the RMWBUF region after a
   failed write to see the real extent of the clobber.
3. **The "00 F6" data**: determine whether the SD READ returns 0x00/0xF6 into
   RMWBUF (bad block/offset in the read) or the WRITE writes 0x00/0xF6 source
   bytes into RMWBUF.  0xF6 = ORI opcode / 0x00 = NOP — could be leftover code
   or file data.  Check the SD block contents on the card after a write vs what
   the CBIOS should have written.
4. **PIP buffer conflict (user's hint)**: check whether PIP's internal buffer or
   the file-size variable overlaps RMWBUF or a CBIOS buffer.  PIP runs in the TPA
   (loaded at 0x0100), so it shouldn't reach 0xEF00 unless its fcb/buffer or the
   DMA is positioned high.  Verify the DMA address PIP uses and the CBIOS DMA var.

## How to reproduce & instrument (on the board)
- Format the SD clean (sdtool `c` then `f`; may need the format twice per the
  flaky hint), then `pip *c:=a:*.*`.  After the "Bad Sector", use GWMON `d` to
  dump 0xD000-0xEFFF (system) and 0xF000-0xFEFF (RMWBUF) to find the clobber.
- Add PRTDBG-style trace (or a temporary print) in READS/WRITES/SD_WRITEBLK to
  log BLKN, SDOFF, the DMA pointer, and the SD_WRITEBLK return value at each step
  — the user's preferred loop is add-trace-prints-and-run.

## Related files
- cpm/cbios.asm — READS / WRITES / SDMAP / SD_READBLK / SD_WRITEBLK + DPBC.
- programs/sdtool.s, programs/sdprobe.s — SD drivers + format/MBR.
- tb/sdtool_sim.py — a WRITABLE SD model; EXTEND it to reproduce the write
  corruption (an SD_WRITEBLK that returns error / a bad offset) before touching
  the board.  This is the fastest way to reproduce a failing write.
- cpm/brevia2_cpm.bin (7424B) — the current boot image.

## Verdict / where I left off
READ the description of this bug as-is; the write path (SD_WRITEBLK error return
or the RMWBUF/DMA aliasing corruption) is the prime suspect.  The deblock
mapping and the read path are verified correct — do not re-audit them unless the
write evidence points there.
