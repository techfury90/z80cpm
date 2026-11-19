# SD-card boot — scope: make the SD the primary boot + storage device

Scope: analyze what it takes to **boot CP/M directly from the SD card** (instead of
the on-board SPI flash) and make the SD the primary storage.  This is analysis
only — no code was changed.  Today CP/M boots from the flash (drive A:, OFF=2
system area); the SD drives (C:/D:) are pure data with **no system tracks
reserved** (OFF=0).

## 0. Verdict

Three things are needed and none of them exists yet:
1. **Reserve a system area on the SD partition** (OFF > 0 so a CP/M boot image
   can live there) — the SD currently has OFF=0.
2. **A boot loader that can read the SD** — GWMON today only has the **flash**
   SPI boot path (`spiboot.inc`); it has no SD protocol code.  Because the SD
   driver lives in the CBIOS (which is the thing being loaded), the boot loader
   must carry its own minimal SD init/read.
3. **A way to get the CP/M image onto the SD system area** — today `diskutil C`
   burns it to the *flash*; the SD formatter (`sdtool`) only writes directory
   sectors, not the boot image.

It is a **moderate, well-contained change** (geometry + a GWMON SD boot routine +
formatter), and the architecture built over the last few sessions (region offset
at the CBIOS layer, the SD SPI driver) is exactly the foundation to build on.  It
is **NOT** a rework, but it does touch the bitstream (GWMON is in the LUT ROM),
so it needs a rebuild + re-flash.

## 1. Current boot path (what we'd be replacing/augmenting)

- The CP/M boot image (the combined CCP+BDOS+CBIOS, `cpm/brevia2_cpm.bin`,
  CPMIMGLEN = 0x1E00 = 7680 B) is stored on the **flash** at `0x0000` (flash
  drive A: system area, tracks 0-1 = `0x0000-0x1FFF`, OFF=2).  It fits with
  ~512 B spare.
- `diskutil C` (DO_BOOTCPM + DO_FLASH_BURN) loads the image over XMODEM into
  RAM at 0xD000 AND burns it to flash `0x0000` (30 pages), so GWMON `b` can boot
  it later.
- **GWMON `b`** (gwmon/spiboot.inc, BFOOT) reads CPMIMGLEN bytes from flash
  `CPMIMG=0x0000` into RAM 0xD000, magic-checks byte0==0xC3, then `JMP 0xE600`.
  It uses the **flash SPI port** (`0x50/0x51/0x52`, the IS25LD040).
- The **console UART** is 115200 (0x80/0x81).  The **SD** is on a *different*
  SPI port: `0x53` data / `0x54` ctl (bit0 CS#, bit1 slow ~390 kHz) / `0x55`
  status (bit0 busy), pins 31/32/35/36.

## 2. The three gaps, in detail

### 2.1 Reserve a system area on the SD partition  (geometry + formatter)

The SD partition (MBR type 0x53, partition 1 at LBA 1, 64 MB) currently has
**OFF=0** for both logical drives (C: region 0, D: region 1).  To host a boot
image it must reserve a **system area** ahead of the directory, exactly like the
flash (OFF=2).  The CP/M image is 0x1E00 = 7680 B = 15 SD sectors, so OFF=2
(2 tracks × 32 × 128 = 8 KB = 16 sectors) is ample.

Options for *where*:
- **(A) Reserve the system area on region 0 (drive C):** give drive C OFF>0,
  place the boot image at the partition start (SD sectors 1-16), and move drive
  C's directory/data after it.  Drive D (region 1) is unaffected (it starts at
  +0x4000 sectors, independent of C's system area).  This keeps the existing
  2-drive layout and only shifts region 0 in by ~16 sectors.
- **(B) Single SD boot drive (restructure):** drop the 2×8 MB split and make the
  SD ONE 8 MB drive (A:) with OFF=2.  Simplest boot story, but abandons the
  C:/D: split (and the 16 MB capacity) unless we re-add drives later.
- **(C) Separate boot partition:** a tiny dedicated MBR partition holding the
  CP/M image, with the CP/M data partition(s) untouched.  Most "PC-like" but
  more MBR bookkeeping; probably overkill.

**Recommendation for scoping:** keep the **2-drive layout (option A)** — reserve
the system area on region 0 only, so drive C becomes the bootable system drive
and drive D stays pure data.  This preserves the 16 MB capacity AND gives us a
bootable SD.  (The drive-letter remap in §4 is orthogonal.)

### 2.2 A boot loader that can read the SD  (GWMON)

GWMON `b` only speaks the **flash** SPI (via `spi.inc`).  To boot from the SD it
needs the **SD SPI protocol** on port 0x53/0x54/0x55:
- init: ≥74 clocks with CS high (slow clock), CMD0, CMD8, CMD55/ACMD41, CMD58
  (CCS/block addressing), CMD16;
- read: CMD17 (read block), 512-byte data + 2 CRC bytes;
- then copy the CP/M image (CPMIMGLEN bytes) from the SD system area
  (partition LBA 1 + region offset) into RAM 0xD000 and `JMP 0xE600`.

This mirrors the CBIOS `SD_INIT`/`SD_READBLK` but as a self-contained routine in
the monitor ROM.  **Size budget:** the boot ROM window is 0x0000-0x0FFF (4 KB);
GWMON is currently ~702 B, so there is plenty of room for an SD boot routine.
**Cost:** the bitstream (boot_rom.v / the EBR LUT ROM) must be regenerated +
rebuilt — same as any GWMON change.

An alternative that avoids touching GWMON's size: implement SD boot **inside the
flash-boot stub** as a chained boot (flash loads a tiny "SD boot loader" which
then reads the SD) — but that's more moving parts; extending GWMON `b` is
simpler.

### 2.3 Get the CP/M image onto the SD system area  (formatter/tool)

Today `diskutil C` burns the image to the *flash*.  For SD boot we need an
equivalent "persist the CP/M image to the SD system area" step.  Options:
- Extend **`sdtool`** with a new command (e.g. `B` boot-image) that takes an
  image (over the serial/XMODEM or a known block) and writes it to the SD system
  area (partition LBA + 0..15).
- Or extend **`diskutil`** to write the image to the SD in addition to (or
  instead of) the flash.
- The formatter (`sdtool F`) also needs to **account for the reserved system
  area**: when formatting region 0 with OFF>0, the directory must be written at
  the *post-system-area* offset, not the partition start.  If we keep region 0's
  directory at the partition start (OFF=0) and only *reserve* the boot image
  elsewhere, the geometry is simpler — but then the "system area" and the drive's
  data area overlap conceptually.  Decide this explicitly (see §5).

## 3. The chicken-and-egg (why this is non-trivial)

The SD driver (`SD_INIT`/`SD_READBLK`/…) lives in the **CBIOS**, which is part of
the image being loaded.  So the boot step can't call the CBIOS driver — **GWMON
must carry its own minimal SD read path.**  This is the reason SD boot needs a
GWMON change (and thus a bitstream rebuild), not just a CP/M-side change.

## 4. Drive-letter remap (SD primary)

The user's standing plan: "drive letters assigned **from A: onward for SD
partitions, then the SPI flash, then the RAM disk**."  Today it's A:=flash,
B:=RAM disk, C:/D:=SD.  Moving SD to primary means remapping **SELDSK codes to
DPHs** so the SD partitions become A:/B: (boot first), then flash, then RAM disk.
This is a SELDSK table change only (no SD driver change), and it can be done
independently of the boot work.  It does mean the flash/RAM-disk drives move to
new letters, so any hardcoded drive references in tools/config need review.

## 5. Open design decisions to pin before implementing

1. **System-area location:** reserve on region 0 (keep 2-drive, option A) vs
   restructure to a single boot drive (option B) vs separate boot partition (C).
2. **How the CBIOS deblock handles the reserved system area:** reuse the DPB
   OFF field, or continue the "region offset at the CBIOS layer" approach we
   adopted (the BDOS does NOT reliably apply OFF — see the two-drive lesson).
   Given that lesson, the system-track offset probably also belongs in SDMAP.
3. **Formatter/tool:** extend `sdtool` (new `B` command) vs `diskutil`, and how
   the image reaches the SD (XMODEM while booting? pre-baked?).
4. **Does the flash boot stay as a fallback?** (Recommend yes — keep flash `b`
   working co-existently for now; a failed SD boot should fall back to flash.)
5. **Capacity/geometry:** if we reserve system tracks on region 0, the "8 MB"
   drive shrinks by the system area (a rounding error).  Keep the 64 MB
   partition (48 MB still unused) so future drives have room.

## 6. What changes (summary by area)

| Area | Change |
|---|---|
| CBIOS deblock (SDMAP) | add a boot/system-area offset for the SD system drive (likely at the CBIOS layer, consistent with the region offset) |
| DPB (DPBC/DPBD) | OFF for the bootable SD drive > 0 (or handle in SDMAP); keep the 8 KB-block / 4096-entry geometry |
| GWMON `smbrevia.asm` | add an SD boot command (port 0x53/0x54/0x55) that inits the card, reads the image from the SD system area into 0xD000, jumps 0xE600; regenerate the LUT ROM |
| formatter (`sdtool`) | write the CP/M image to the SD system area (new `B` command) + format the directory at the post-system-area offset |
| SELDSK | remap drive letters (SD partitions → A:/B:, flash/RAM disk later) |
| bitstream | rebuild (GWMON LUT ROM change) |
| image / CPMIMGLEN | unchanged (0x1E00 image) — only its *storage location* moves to the SD |

## 7. Verification / milestones

1. **Milestone 1 (foundation):** reserve the system area on region 0 (or adopt
   option A) — update DPB + SDMAP + formatter so the SD system drive lays out
   system-tracks → directory → data.  Verify in the harness that the drive still
   mounts/reads/writes with the new offset.
2. **Milestone 2 (GWMON SD boot):** add the SD boot command to GWMON, regenerate
   the LUT ROM, rebuild the bitstream.  Verify it reads the image from the SD
   system area and cold-boots.  On the harness you can simulate the SD boot by
   pre-loading the image into the SD model's system area and driving GWMON's SD
   boot entry.
3. **Milestone 3 (image provisioning):** extend `sdtool`/`diskutil` to write the
   CP/M image to the SD system area.  Verify by booting from the SD, then
   `dir a:`/`stat` on the newly-booted system.
4. **Milestone 4 (drive-letter remap, optional/separate):** make SD the A: drive
   and remap flash/RAM disk later.

## 8. Risks / notes

1. **GWMON growth** — the new SD boot code needs to fit in the 4 KB boot ROM
   window; current headroom is large (~3.3 KB), so not a concern, but verify the
   assembled size.
2. **Bitstream rebuild** required for any GWMON change — this is the slow/awkward
   part (Diamond + re-flash), worth batching with other GWMON work.
3. **Adding system tracks shifts the drive geometry** — the format must match
   the DPB (same "formatter must match DPB" rule that bit us before), and the
   region-offset + system-offset must not double-count.
4. **The BDOS OFF unreliability** (from the two-drive work) — do NOT rely on the
   DPB OFF to place the system area; add it at the SDMAP layer, consistent with
   the region offset.
5. Keeping the flash boot as a fallback is strongly recommended so a bad SD boot
   never bricks the bring-up path.

## 9. Sources / references

- `cpm/SD-CARD-SUPPORT.md`, `cpm/SD-8MB-DRIVE.md`, `cpm/SD-MULTIDRIVE-OPT1.md`
  (the SD driver, 8 MB drive, and two-drive region-offset work).
- `gwmon/spiboot.inc` + `gwmon/smbrevia.asm` (the current flash `b` boot — the
  SD boot command would mirror this on port 0x53/0x54/0x55).
- `programs/diskutil.s` (DO_BOOTCPM/DO_FLASH_BURN — how the image is provisioned
  to flash today).
- `cpm/cbios.asm` (SD_INIT/SD_READBLK/SDMAP, the SD port map, the CBIOS-layer
  region offset).
