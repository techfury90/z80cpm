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
