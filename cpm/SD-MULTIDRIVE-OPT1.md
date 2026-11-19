# Option 1 scope: 8 × 8 MB logical SD drives (C: → J:) = the full 64 MB

Scope: use the WHOLE 64 MB SD partition on stock CP/M 2.2 by exposing it as
**8 logical drives of 8 MB each** (C: through J:).  8 MB is the hard ceiling of
a *single* stock CP/M 2.2 drive (16-bit record counter), so the only
stock-BDOS way to reach 64 MB is multiple logical drives.  The DRI-sanctioned
limit is 16 drives (A:-P:), so 8 is fine.  This is the "keep the stock BDOS"
route; a replacement BDOS (ZRDOS/P2DOS) is the alternative.

THIS IS ANALYSIS ONLY — nothing was built or modified.  Code references are to
the current committed state (drive C: = 8 MB single-drive).

## 0. Summary verdict

The SD driver and deblock are **already capable** (16-bit TRK, 32-bit BLKN) —
no driver changes.  Multi-drive mapping is achievable with a **per-drive DPB
`OFF` field** (a clean, stock-BDOS mechanism) and **no CBIOS region-mapping
code**.  The work is mostly CBIOs *table* expansion (8 DPHs / 8 DPBs / 8 ALV
buffers), SELDSK extension, and a formatter that creates 8 regions.

**The ONE hard part is memory: 8 allocation-vector (ALV) buffers.**  The ALV is
a 1-bit-per-block bitmap the BDOS builds on drive login and keeps resident
while the drive is logged in.  At the current 4 KB block size each 8 MB drive
needs a 256-byte ALV → **2 KB for 8 drives**, and the free RAM below RMWBUF is
only ~250 bytes.  This needs a memory-map decision (see §3).  Everything else
is mechanical.

## 1. What needs NO change (the good news)

- **SD SPI driver** (SD_INIT / SD_SEND6 / SD_READBLK / SD_WRITEBLK / retry
  layer / SD_READY): unchanged.  It reads/writes arbitrary 512-byte blocks by
  32-bit block number (BLKN).
- **The deblock** (SDMAP / READS / WRITES): unchanged.  It maps a CP/M 128-byte
  record to `SD sector = SDPLBA + record/4`, offset `(record&3)*128`.  With
  `0xFF < record < 0x80000` (8 MB / per drive) the math is already 16/32-bit
  capable (built for the 8 MB drive in the previous milestone).
- **16-bit track plumbing** (TRK is DS 2, SETTRK stores the full BDOS BC word):
  already in place (commit a0a5693).  Required for a drive with >256 tracks;
  the absolute track reaches 16383 for drive J.
- **DPB geometry** (4 KB blocks: BSH=5/BLM=31/EXM=1/DSM=2047/DRM=255/AL0=0xC0):
  reused verbatim for every drive.  Only `OFF` differs.
- **Hardware / RTL / bitstream**: unchanged.

## 2. The mapping mechanism — per-drive DPB `OFF` (the clean path)

The DPB `OFF` field is "number of reserved tracks at the start", and the BDOS
**adds it to the track before calling SETTRK** (bdos.asm seek: `HL = curtrk +
offset` before `settrkf`).  So:

- Each of the 8 drives uses the SAME geometry but a **different `OFF = N*2048`**
  (tracks per 8 MB region at SPT=32; 8 MB / 4 KB per track = 2048 tracks).
  Drive C (region 0) OFF=0, D OFF=2048, E OFF=4096, ... J OFF=14336.
- The BDOS adds OFF, so SETTRK receives the **absolute** track (up to
  16383 for drive J).  The deblock computes `record = TRK*32 + SECN` (absolute),
  and `SD sector = SDPLBA + record/4` lands **in the correct 8 MB region** with
  no extra CBIOS code.  Baseline SDPLBA=1 (partition start) is unchanged and
  shared across drives.
- Drive N's directory (CP/M blocks 0-1, reserved via AL0=0xC0) is at absolute
  track `N*2048`, i.e. the region start — exactly where the formatter would put
  it.  **No CBIOS region logic is required.**

So the entire multi-drive feature reduces to: 8 DPHs, 8 DPBs (differing only in
OFF), 8 ALV buffers, 8 directory regions on the card, and a SELDSK extension.
This is elegant because the block/SD machinery already thinks in absolute
tracks.

> Verify during implementation: the BDOS applies OFF to DIRECTORY reads too
> (it must, since the directory is addressed by track/sector the same way).  If
> it does not, a custom SELDSK/region-offset would be needed instead — but the
> current single-drive CBIOs relies on the same OFF path and works, so this is
> expected to hold.

## 3. The memory challenge — 8 ALV buffers (the real work)

The BDOS builds a 1-bit-per-block ALV in the buffer each DPH points to, and
keeps it resident.  A drive stays "logged in" once accessed (CKS=0 → fixed
media → no re-scan).  So 8 drives × per-drive ALV size:

| block size | DSM per 8 MB | ALV per drive | 8 drives |
|---|---|---|---|
| 4 KB (BSH=5, current) | 2047 | 256 B | **2 KB** |
| 8 KB (BSH=6) | 1023 | 128 B | 1 KB |
| 16 KB (BSH=7) | 511 | 64 B | 512 B |

**Current free RAM:** the CBIOs variable block ends ~0xEE05; RMWBUF is
0xEF00-0xFEFF (4 KB, used for the drive-A flash write RMW *and* aliased as the
512-byte SD deblock buffer); GWMON is at 0xFF00.  Free RAM below RMWBUF is
**~251 bytes** (0xEE05-0xEF00).  That is not enough for even the 512 B (16 KB
blocks) case.

The ALVs cannot alias the RMWBUF **because the drive-A flash write RMW clobbers
the full 4 KB** (it reads a whole 4 KB erase-sector block, overlays, rewrites).
So the ALVs need dedicated memory.  Options, in rough order of appeal:

1. **Use larger CP/M blocks to shrink the ALV, and carve a dedicated ALV area.**
   With 16 KB blocks the 8 ALVs are 512 B total.  This fits IF a ~512 B
   dedicated region is reserved.  But even 512 B doesn't fit the current 251 B
   gap, so it also needs (2) or (3).  Cost: 16 KB minimum allocation granularity
   (fine for a bulk-storage drive, wasteful for many small files).
2. **Re-map the RMWBUF.**  The SD deblock only ever uses 512 B of RMWBUF; the
   drive-A flash RMW uses the whole 4 KB.  If the flash RMW buffer is moved or
   the deblock and ALVs are packed into the 4 KB thoughtfully (e.g. ALVs at a
   fixed high offset, flash RMW / SD deblock in the remainder), the ALVs could
   live inside RMWBUF without being clobbered.  Needs careful verification no
   drive-A write overlaps a live ALV.
3. **Grow the variable/system region.**  Bump CPMIMGLEN and relocate the ALV
   area below RMWBUF.  The image currently ends ~0xECF6 but CPMIMGLEN=0x1D00
   pads to 0xED00; RMWBUF at 0xEF00.  Growing the ALV area into 0xED00-0xEF00
   (512 B) needs the SD scratch vars (SDOFF/BLKN/SDCMDB/SDTRY) moved too, and is
   tight.  A larger bump would collide with RMWBUF.

**Recommendation for the analysis:** use **8 KB or 16 KB blocks** (ALVs shrink to
1 KB / 512 B) AND adopt option 2 (pack the ALVs into the 4 KB RMWBUF region at a
non-clobbered offset, or dedicate a small area).  This is the single decision
that needs to be pinned before implementation — everything else is mechanical.
If the ALV footprint is 512 B-1 KB, it is solvable; at 2 KB (4 KB blocks) it
does not fit the current map without a bigger re-org.

## 4. CBIOs changes required (mechanical, well-understood)

- **8 DPHs** (one per SD drive, C:-J:).  Each: XLT=0, 4 scratch words, DIRBUF
  (can be shared across all 8 — only one drive is operated on at a time, same
  as today where DPHC/DPHD already share DIRBUF), DPB (per-drive unique OFF),
  CSV (=0), ALV (per-drive dedicated buffer).
- **8 DPBs** — identical geometry, differing ONLY in `OFF` (0, 2048, ..., 14336).
  `OFF` is a 16-bit field; 14336 < 65535, so it fits.
- **8 ALV buffers** — the memory problem in §3.
- **SELDSK extension** — currently returns DPH for drives 0-3 (A-D); extend to
  return the per-drive DPH for drives 2-9 (C-J).  (Drive 0 flash, 1 RAM disk
  unchanged.)
- **READ/WRITE dispatch** — currently routes SELBL==2 (drive C) to the SD
  deblock.  Extend to route SELBL 2-9 (all 8 SD drives) to the same deblock.
  The deblock uses SDPLBA + absolute-record/4 and the per-drive OFF is already
  baked into the track, so ONE deblock handles all 8 drives.
- **BOOT** — the SD_INIT call is already in BOOT (current behavior).  No change.

## 5. Formatter (sdtool) changes

- The MBR partition is 64 MB (0x00020000 sectors).  8 × 8 MB = 64 MB, so the
  partition fits exactly 8 regions.  `sdtool F` must now format **8 regions**,
  each writing an 8 KB directory (16 sectors of 0xE5) at that region's offset
  (region N directory at partition LBA + N*16384 sectors).  Total: 8 × 16 = 128
  directory sectors (64 KB of 0xE5).
- Should verify each region's directory is empty (0xE5) and the region boundaries
  align, mirroring the single-drive format logic extended in a loop.  A helper
  to set region N's directory base (partition LBA + N*16384) is needed.
- Optional: a `dirmap`/`P`-style command to show the region layout, and a note
  that a drive is only usable after the BDOS logs it in (first access).

## 6. Testing / verification plan

- **Simulator**: extend `tb/test_drive_c.py` (or a new `test_multidrive.py`)
  to format 8 regions, boot, `DIR D:` / `PIP D:=C:*.*`, cross-drive copies,
  and verify each drive's region on the raw card (region base = partition LBA +
  N*16384; the double-DM deblock mapping must hold for each region).
- **On silicon**: `dir d:`/`e:`/... each show empty + full 8 MB free; `stat`
  lists all 8 drives; PIP between drives; and a raw card dump confirming each
  region's directory/data landed at the correct partition offset.

## 7. Key risks / open questions

1. **ALV memory** — the main decision (see §3).
2. **OFF applied to directory reads** — verify the BDOS adds OFF for directory
   access too (expected yes, since the current single-drive CBIOs relies on it).
3. **Double-DM across 8 drives** — already proven on silicon for one 8 MB drive;
   the same directory format applies per drive, but verify a multi-drive session
   (login/switch between drives) holds.
4. **Drive-letter reordering** (the user's eventual plan: SD partitions first as
   A: onward, then SPI flash, then RAM disk) is SEPARATE from this; option 1
   keeps A:=flash, B:=RAM disk, C:-J:=SD.  The reorder can be done later by
   re-mapping SELDSK codes to DPHs without touching the SD driver.

## 8. Effort shape

- Small: SD driver / deblock / DPB geometry (reuse).
- Medium: CBIOs tables (8 DPH/DPB/ALV), SELDSK, READ/WRITE dispatch, formatter.
- The one genuinely fiddly piece: the **ALV memory map** (§3).  Pin that first,
  then the rest is mechanical assembly + harness verification.

## 9. Alternatives (for completeness)

- **Replacement BDOS (ZRDOS/NOS/P2DOS)** — single drive up to ~512 MB, keeps
  the CBIOS, no multi-drive bookkeeping, but swaps the BDOS (Z-System).  Already
  researched (`cpm/ZSYSTEM-BRINGUP.md`).  Lower memory pressure (one ALV), no
  formatter region logic.
- **CP/M 3** — the proper, but banking-large-port, path (32 MB drives).

## Sources / references
- cpm/SD-8MB-DRIVE.md (the 8 MB single-drive milestone that this builds on).
- DRI CP/M 2.2 manual ch.6 (DPB OFF = reserved tracks, added to SETTRK; DPH
  structure with per-drive DIRBUF/DPB/CSV/ALV).
- comp.os.cpm (Allison): 8 MB/drive record-counter ceiling and the ≥16-drive
  multi-drive limit.
