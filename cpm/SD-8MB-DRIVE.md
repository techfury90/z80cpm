# SD drive C: → single 8 MB logical drive (reaching the CP/M 2.2 ceiling)

Scope: grow drive C: from the current 504 KB (2K-block single-DM) to the largest
size a **single stock CP/M 2.2 drive can be: 8 MB**.  This stops short of a
replacement BDOS / multi-drive split; those are the follow-on options and are
described at the end.  This is a scoping + implementation plan, and it is
SANCTIONED by the stock CP/M 2.2 architecture (no BDOS changes).

## 0. The hard limit that forces this design

**CP/M 2.2's internal disk math is 16-bit on the RECORD/sector counter, not the
block counter.**  The record number (each 128 bytes) is a 16-bit value, so a
single logical drive is capped at `65536 × 128 = 8192 KiB = 8 MB`.  Evidence:

- DRI *CP/M 2.2 Manual* (Ch.1): "one to sixteen logical drives, **each
  containing up to eight megabytes**."
- comp.os.cpm (Allison, the CP/M authority): "it's 65525*128 or 8mb... the
  limit is the total number of sectors not the total number of allocation
  blocks."  "Try a larger disk... you get wrap around [file corruption]."
- DRI manual Table 6-5 (SETTRK): track is in **BC, 0-65535** for nonstandard
  disk subsystems — i.e. the BDOS addresses 16-bit records per drive.

Consequences:
- **8 MB is the maximum usable single logical drive under stock CP/M 2.2.**  A
  64 MB partition needs EITHER multiple 8 MB logical drives (the DRI-sanctioned
  approach) OR a replacement BDOS (ZRDOS/P2DOS/NOS/SUPRBDOS or CP/M 3).  Both
  are out of scope here; this doc targets ONE 8 MB drive.
- Raising DSM (block count) alone does NOT get you past 8 MB — the block math
  isn't the limit, the record counter is.  (Our current comment "don't raise DSM
  past 255" was about single-DM, which is the *wrong* concern for size; the
  record counter is the real wall.)

## 1. Chosen geometry for an 8 MB C: (concrete DPB)

Keep the sector-level deblock unchanged (records ↔ 512 B SD sectors).  Only the
DPB / track handling / formatter change.  Recommendation:

| DPB field | value (8 MB, 2 KB blocks) | note |
|---|---|---|
| SPT | 32 | keep; matches the `*32` in SDMAP |
| BSH | 4 | block shift → 2 KB blocks |
| BLM | 15 | block mask |
| EXM | 0 | **must change** — for DSM>255, BLS=2048 → EXM=0 (was 1 in single-DM) |
| DSM | 4095 | 8 MB / 2 KB − 1 = 4095 (>255 → **double-DM**) |
| DRM | 255 (256 entries) | optional; see §3. AL0/AL1 reserve 4 dir blocks |
| AL0 / AL1 | 0xF0 / 0x00 | reserve directory blocks 0-3 (256 entries × 32 B = 8 KB = 4×2 KB) |
| CKS | 0 | fixed media |
| OFF | 0 | data partition, no system tracks (matches sdtool) |

Capacity check: `BLS × (DSM+1) = 2048 × 4096 = 8,388,608 B = 8 MB`, i.e. exactly
`65536` records — the 16-bit ceiling.  Usable data = that minus the 4 reserved
directory blocks (and no system tracks), i.e. `dir c:` / `stat` would show
slightly under 8 MB free.

**Double-DM is a fully standard, stock-BDOS-supported feature.**  With DSM>255
the BDOS switches directory block pointers from 8-bit to 16-bit automatically.
It is NOT a hack; it is exactly how DRI built >256-block drives.  We just have
to present the DPB correctly and size the ALV.

## 2. CODE CHANGES (this is the real work; ordered)

### 2.1 [REQUIRED] 16-bit track — the linchpin
Our `TRK` is `DS 1` and `SETTRK` does `MOV A,C / STA TRK` (8-bit).  For 8 MB the
BDOS passes tracks up to 2047 in **BC**; we currently DROP the high byte.
- Change `TRK: DS 1` → `TRK: DS 2`.
- `SETTRK` must store the full 16-bit BC:
  ```
  SETTRK:  MOV A,C ; STA TRK   ; low byte
           MOV A,B ; STA TRK+1 ; high byte
           RET
  ```
- `HOME` must zero BOTH bytes (`STA TRK` and `STA TRK+1`), since a prior drive-C
  high track could leave a stale high byte (a latent bug even today).
- **SDMAP / the SD deblock** must read TRK as a 16-bit word and multiply by SPT:
  currently `LDA TRK; MOV L,A; MVI H,0; DAD H ×5`.  Change to `LHLD TRK;
  DAD H ×5; ...` so `record = TRK*SPT + SECN` can reach 65535.  The rest of the
  deblock (record→block `>>2`, offset `(record&3)*128`, BLKN 32-bit) is already
  16/32-bit capable and needs no change.
- **CALC** (drive B RAM disk) and **FLADDR** (drive A flash) also read `LDA TRK`.
  Drives A/B stay < 256 tracks so the low byte is sufficient, but change them to
  read the full word for correctness once TRK is 16-bit (or rely on high byte
  being 0 for A/B — verify; a stale high byte from a prior C access could
  otherwise break a B/A access).

### 2.2 [REQUIRED] double-DM DPB + EXM
`DPBC` becomes the table in §1 (EXM 1→0, DSM 251→4095, DRM/AL0/AL1 as chosen).
`DPHD` (future partition 2) may share it for now.

### 2.3 [REQUIRED] ALV buffer resize
`ALVC` is currently `DS 32` (for DSM=251).  For DSM=4095 it must be `(DSM+1)/8
= 512` bytes.  **Memory placement is the real constraint** (see §4).  Note: our
working drive uses a single-copy ALV (32 B for DSM=251 worked), so use the
single-copy formula `(DSM+1)/8`, NOT the idealine "2×" figure — but verify this
assumption before committing memory (see §5 risks).

### 2.4 [REQUIRED] formatter
`sdtool`'s `F` (and any `diskutil` SD path) must write the new geometry: clear
the directory area (0xE5) sized for DRM/AL0 reserves, and the allocation map.
Currently it writes 8 sectors (4 KB) as the directory; for DRM=255 that becomes
16 sectors (8 KB).  Update the block count and, if needed, the partition-size
checks so the format spans the full 8 MB region (currently ~504 KB).

### 2.5 [OPTIONAL / perf] deblock sector caching
Our READS/WRITES re-read the whole 512 B SD sector for every 128 B record (no
cache).  This is 4× SD I/O for any access.  Correct but slow; on 8 MB the cost
is visible (esp. directory scans / file copies).  A DRI-style sector cache (host
sector + dirty flag) is a later optimization; not required for correctness.

## 3. Directory sizing choice
DRM=127 (128 entries = 2 KB dir = 2 blocks, AL0=0xC0) is the minimum and matches
the current formatter; on an 8 MB data drive it's very few files.  DRM=255 (256
entries = 8 KB dir = 4 blocks, AL0=0xF0) is a reasonable bump.  The bigger the
directory, the more of the 8 MB goes to directory blocks (CKS=0 so no checksum
cost).  Pick DRM=255 to start; it can be changed by reformatting (drive C data
is currently empty anyway).

## 4. Memory plan (the genuine constraint)
Current layout (SD-WRITE-PATH-FIX.md §4): image ends ~0xECF2; CPMIMGLEN=0xED00;
SD scratch ~0xED14-0xED20; RMWBUF 0xEF00-0xFEFF (4 KB, aliased as the 512 B
deblock buffer).  The ALV needs 512 B dedicated runtime memory that the BDOS
keeps while the drive is logged in — it CANNOT alias the clobbered deblock
buffer.

Options, in order of preference:
1. Use the free gap 0xED00-0xEEFF (~0x200 = 512 B) — but that only holds 512 B
   and the SD scratch currently lives there; may need to relocate scratch.
2. Reduce the deblock footprint: the SD deblock only ever uses the first 512 B
   of RMWBUF, and the flash drive-A RMW uses the whole 4 KB only during A writes
   (which never coincide with a logged-in ALV read).  If A-writes and the C ALV
   don't overlap in time, place the 512 B ALVC inside the top of RMWBUF.  RISK:
   drive A write RMW clobbers it.  Verify no A-write occurs while C's ALV is
   live.
3. Shrink the ALV by using 4 KB blocks (BSH=5: DSM=2047, ALV=256 B) or 8 KB
   blocks (BSH=6: DSM=1023, ALV=128 B) — at the cost of 4 KB / 8 KB minimum
   allocation granularity.  For a data drive this may be acceptable and is the
   SIMPLEST memory solution.  **Recommendation if memory is tight: 4 KB blocks
   (ALV=256 B), EXM=1, DRM=127/255.**  If you want 2 KB granularity, solve the
   memory (option 1 or 2).

Given the tight budget, the pragmatic recommendation is **4 KB blocks** for the
first 8 MB build (256-byte ALV fits in the scratch gap), then revisit 2 KB
granularity once we have a clean memory map.

## 5. Risks / things to verify before silicon
1. **16-bit SETTRK is untested on our system** — confirm after the change that
   drive C really receives multi-byte tracks (a quick set of reads past 64K and
   past 1 MB).  This is the change most likely to be silently wrong (the low-byte
   truncation currently *works* for 504 KB and would only manifest past 256
   tracks / 1 MB).
2. **Double-DM behavior under our BDOS** — stock CP/M 2.2 supports it, but ours
   is unproven with DSM>255.  Verify a file >1 block and >1 extent round-trips
   and that a card-content check matches (not just a CP/M round-trip — the
   directory entry format differs in double-DM).
3. **ALV size assumption** — our 32 B ALV for DSM=251 implies single-copy; if the
   BDOS actually needs 2×, the 4 KB-block plan's 256 B is still safe but the
   2 KB-block 512 B might not be.  Confirm by checking the BDOS's ALV write
   bounds (or just use a 2×-safe size if memory allows).
4. **EXM value** — get the DSM>255 EXM right for the chosen block size (per the
   DR guide: 2 KB→0, 4 KB→1, 8 KB→3).  A wrong EXM corrupts multi-extent files.
5. **Perf without caching** — 4× SD I/O is correct but slow; acceptable for the
   first build, note it.

## 6. Milestones
1. 16-bit TRK + SETTRK + HOME + SDMAP/CALC/FLADDR reads.  Assemble + bootstrap
   sim.  Confirm `stat c:` / reads still work at the same 504 KB first (no size
   change yet) — proves the 16-bit track plumbing didn't break the small drive.
2. Switch DPBC to the 8 MB double-DM table + resize ALVC (using the 4 KB-block
   geometry if memory forces it).  Update sdtool `F` to format 8 MB.
3. Extend the simulator (`tb/test_drive_c.py`) with an 8 MB geometry and a
   double-DM model; verify DIR/PIP/stat + a card-content check.
4. On silicon: format 8 MB, `dir c:`, PIP a large file (>1 block, >1 extent),
   `stat`, and a host-side card-content rebuild to confirm the double-DM layout
   is written correctly.
5. (Later / out of scope) sector caching; then the 64 MB goal via either 8×8 MB
   logical drives or a replacement BDOS.

## 7. Sources
- DRI CP/M 2.2 Manual ch.1 (8 MB/drive) and ch.6 Table 6-5 (SETTRK BC 0-65535):
  http://www.cpm.z80.de/manuals/archive/cpm22htm/ch1.htm , .../ch6.htm
- seasip CP/M archive — disc formats (DPB, double/16-bit block pointers) and
  BIOS (SETTRK/SETSEC are words under CP/M 2): https://www.seasip.info/Cpm/format22.html , https://www.seasip.info/Cpm/bios.html
- idealine DPB reference — BLS/BSH/BLM/EXM tables incl. the DSM>255 EXM column
  and ALV sizing: https://www.idealine.info/sharpmz/dpb.htm
- comp.os.cpm "Maximum CP/M-80 2.2 volume size?" (Allison) — the 8 MB record
  counter limit and the multi-drive / P2DOS paths:
  https://groups.google.com/g/comp.os.cpm/c/rFagrp7WT9E
- RC2014 CP/M 2.2 CBIOS (16-bit `settrk: ld (sektrk),bc`) as a working example.
