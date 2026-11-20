# SD-primary boot: SD reserves system tracks, cold/warm boot persists to SD, SD booting

Reverse-engineered against the DRI CP/M 2.2 manual (gaby.de `cpm22htm/` appendix B/C/D/E
skeletal CBIOS / GETSYS·PUTSYS / cold-start loader): the system tracks must carry the **full
CCP+BDOS+CBIOS** image, not just CCP+BDOS, so a cold boot can reload the whole system. That
understanding drove the sizing of the reserved area and the BOOT/WBOOT persist path.

This is the implementation of the 5-part scope: SD-primary boot + storage. Both the SD-primary
and the legacy SPI-primary builds are assembled and verified in the simulator.

## What was done (all five objectives)

1. **Reserved system area on the SD (both volumes).** Each SD logical volume now reserves
   `SDSYS_OFF = 16` 512-byte sectors (8 KB = 2 CP/M tracks) at its region start to hold a bootable
   CP/M image. Because the BDOS does **not** reliably apply the DPB OFF field here, the reserved
   system-area offset AND the per-region offset are added at the CBIOS deblock layer (`SDMAP`),
   consistent with the existing two-drive region-offset approach. Both SD regions (drive A region 0
   and drive B region 1) reserve a system area, so either can be made bootable later.

2. **Cold/warm boot persists to the SD, not the RAM disk.** CBIOS `BOOT` now persists the **full**
   system image (CCP+BDOS+CBIOS, `CPMIMGLEN` bytes) to drive A's reserved SD system area
   (`SD_SETBLK0`/`SDWRIMG` + `SD_INCBLK`), and `WBOOT` reloads CCP+BDOS from it (`SDREADIMG`).
   The RAM-disk persist path is preserved behind the `CFG_SD_BUILD` build guard (SPI build keeps it).

3. **SD card booting.** `GWMON` gained an SD boot handler (`gwmon/sdboot.inc`, wired into `smbrevia.asm`)
   that carries its own self-contained SD init/read (it cannot use the CBIOS driver — that is what is
   being loaded), reads the image from the SD system area into 0xD000, then `JMP 0xE600`. The CBIOS
   BOOT self-provisions the card each cold boot, so a booted system always leaves a bootable image on
   the SD. With SD as the DEFAULT boot device, the command table maps **`b` -> SD boot** (primary)
   and **`s` -> SPI flash boot** (fallback). **Requires a Diamond bitstream rebuild** to bake the new
   GWMON (regenerated `rtl/boot_rom.mem` + `rtl/boot_rom.v` are committed).

4. **Drive-letter remap.** SD build: `A:`=SD region 0, `B:`=SD region 1, `C:`=SPI flash, `D:`=RAM
   disk. `SELDSK` returns the matching DPH; READ/WRITE dispatch routes SELBL 0/1 to the SD deblock,
   2 to the flash, 3 to the RAM disk. `SDMAP` adds the region+system offset for the SD drives.

5. **Customizable CBIOS (SPI vs SD builds).** The whole drive map / BOOT-WBOOT persist target /
   SDMAP offsets are guarded by `CFG_SD_BUILD`. a85 has no `-D` flag, so the mode is a source-level
   config include: `cpm/cbios_cfg_sd.inc` (SD primary) vs `cpm/cbios_cfg_spi.inc` (SPI primary),
   selected by swapping `cpm/cbios_cfg.inc`. The wrapper **`scripts/build_cbios.sh {sd|spi}`** copies
   the chosen config, assembles cbios, and regenerates the combined image + simulator `.mem`.

- **SPI backup/emergency CP/M:** `scripts/build_cbios.sh spi` builds the SPI-flash-primary
  image into **`cpm/brevia2_cpm_spi.{bin,hex,mem}`** (the SD default `cpm/brevia2_cpm.*` is
  left untouched, and the active config/CBIOS are restored to SD afterward).  Flash that to
  the SPI flash (via `diskutil C` XMODEM or the formatter) as a fallback boot image and boot
  it with GWMON `s`.  `make_combined_hex.py` and `build_cbios.sh` accept an output basename;
  the mode-specific listing is preserved as `cpm/cbios_{sd,spi}.prn` so a simulator harness
  can be run against the matching build (`CBPRN=cpm/cbios_spi.prn tb/test_drive_c.py ... cpm/brevia2_cpm_spi.bin`).

## Critical constants (must stay in lockstep everywhere)

- **`CPMIMGLEN = 0x2000`** — the image grew past the old 0x1E00. It must be a **multiple of 512**
  (the SD sector size) so BOOT/WBOOT persist it in whole SD sectors, and must cover the full CBIOS
  INCLUDING the variables (which now extend to 0xEEEB). Four owners, all updated:
  `cpm/cbios.asm`, `cpm/make_combined_hex.py`, `programs/diskutil.s` (EQU **and** the `MVI B,32`
  burn page count), `gwmon/smbrevia.asm`.
- **`SDSYS_OFF = 16`** — reserved SD system sectors per volume. Sized for the 16-sector image +
  headroom; adjusts the data/directory start in `SDMAP`.
- The image spans 0xD000-0xEFFF; the last 0x100 bytes overlap the head of `RMWBUF` (0xEF00) with
  0x00 padding, harmless (overwritten on the first disk RMW).

## Files changed

- `cpm/cbios.asm` — config include; constants (`CPMIMGLEN`, `SDSYS_OFF`); config-guarded BOOT/WBOOT
  (SD persist/reload), SELDSK, READ/WRITE dispatch, SDMAP offsets; new `SD_SETBLK0`/`SD_INCBLK`/
  `SDWRIMG`/`SDREADIMG` SD image I/O; rewritten media-descriptive DPH/DPB/ALV tables and buffers.
- `cpm/cbios_cfg.inc`, `cpm/cbios_cfg_sd.inc`, `cpm/cbios_cfg_spi.inc` — build config selectors.
- `cpm/make_combined_hex.py` — `CPMIMGLEN=0x2000`.
- `programs/diskutil.s` — `CPMIMGLEN` EQU + `MVI B,32` burn pages.
- `gwmon/smbrevia.asm`, `gwmon/sdboot.inc` — `s` SD-boot command.
- `gwmon/smbrevia.hex/.prn`, `rtl/boot_rom.mem`, `rtl/boot_rom.v` — regenerated GWMON/boot ROM.
- `tb/test_sd_boot.py` — new end-to-end regression for the SD-primary layout (boots, DIR/PIP on
  A:/B:, verifies CBIOS read-back AND raw card content byte-exact, verifies BOOT persists the image
  and WBOOT reloads it; `SD_BUSY` env summarises the card-programming-busy model, default 3000).
- `scripts/build_cbios.sh` — new build wrapper (sd|spi).
- `programs/sdtool.s` (+ `.com/.hex/.prn`) — the `F` formatter now skips the
  reserved system area: the directory/data are written at `REGBASE + SD_SYS`
  (region 0) and `REGBASE + 0x4000 + SD_SYS` (region 1); the system area is left
  blank for the boot image.  `SD_SYS` (default 16, must match `SDSYS_OFF`) is
  set to 0 for a legacy SPI-primary card.  `tb/sdtool_sim.py` updated to verify
  the post-system-area dir location (17-272 / 16401-16656).
- `cpm/brevia2_cpm.{hex,mem,bin}` — regenerated SD-primary image.

## Verification (simulator)

- `python3 tb/test_sd_boot.py 25000000` -> **PASS**. Boots to drive A (SD region 0, empty), `C:`
  switches to the flash which holds PIP.COM/ED1.COM, `PIP A:=C:*.*` and `PIP B:=C:*.*` copy both
  files to both SD volumes, DIR lists them; every copied file is **byte-exact** via the CBIOS
  read-back AND on the **raw SD card** (proving the `SDMAP` system+region offset math). BOOT persists
  the CP/M image to the SD system area (blocks 1-16) and WBOOT reloads CCP+BDOS byte-exact.
- GWMON `SDBOOT` executed directly in the simulator (`tb` harness) reads the SD system area into
  0xD000, jumps to the CBIOS, prints the banner and enters the CCP — the SD-boot path works.
- `python3 tb/test_drive_c.py 3000 50000000` (SPI build via `scripts/build_cbios.sh spi`) -> **PASS**;
  the legacy A=flash/B=RAM/C/D=SD layout is intact.
- Note: at BUSY=3000 the SPI-build PIP needs a generous step budget; the earlier "Bad Sector"
  failures were purely step-budget exhaustion, not a code defect (the identical SD busy/retry path
  passes in the SD build).

## Remaining (hardware)

- Rebuild the bitstream (Diamond) to bake the new GWMON with the SD-boot command
  (`rtl/boot_rom.mem` for the EBR pmi_rom variant / `rtl/boot_rom.v` for the LUT variant).
- Bring-up: `diskutil C` (XMODEM `cpm/brevia2_cpm.bin`) still boots and now self-provisions the SD
  system area via the CBIOS BOOT; then `b` at the GWMON prompt boots from the SD (the DEFAULT boot).
