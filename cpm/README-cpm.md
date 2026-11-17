# CP/M 2.2 on the LatticeXP2 Brevia2 (TV80 Z80 softcore)

This directory contains a complete CP/M 2.2 system image plus its custom BIOS
(CBIOS) for the Brevia2 board.  It boots to a CP/M `A>` prompt on the serial
console, with the on-board ISSI IS25LD040 SPI flash (512 KB) presenting as
**drive A:** (the persistent boot drive) and the 64K I/O-mapped RAM disk
presenting as **drive B:** (volatile scratch).  `DIR`, `SAVE`, `TYPE`, `ERA`,
`REN`, etc. operate against those disks.

**Boot (after the FPGA is programmed with a GWMON that has the `b` command):**
1. Load diskutil (`L` + paste `programs/diskutil.hex`, or as you normally do),
   `G 1000`.
2. `S` — format the SPI flash (creates drive A:'s empty directory).
3. `C` — XMODEM-send `cpm/brevia2_cpm.bin`; diskutil now also burns that CP/M
   image to the flash system area (0x0000-0x1FFF), then cold-boots to `A>`.
4. On subsequent power-ups, just type **`b`** at the GWMON prompt (or re-run
   diskutil `C`) to boot CP/M from the SPI flash — no re-upload needed.
   `^C` warm start reloads CCP/BDOS from the RAM disk system tracks.

## Files

| File | Description |
|------|-------------|
| `cbios.asm` | 8080 CBIOS source (assembled with the a85 cross-assembler). |
| `cbios.hex` | The assembled CBIOS object (loaded at 0xE600). |
| `cpm22/ccp.bin` | DR CP/M 2.2 CCP binary (already built; loaded at 0xD000). |
| `cpm22/bdos.bin` | DR CP/M 2.2 BDOS binary (already built; loaded at 0xD800). |
| `brevia2_cpm.hex` | **The combined system image** (CCP + BDOS + CBIOS) in one Intel HEX file. **This is what you upload.** |
| `make_combined_hex.py` | Script used to build `brevia2_cpm.hex` from the three components. |
| `cbios.prn` | a85 listing of the CBIOS (for reference). |

## Loading and starting CP/M via GWMON-80

1. Connect a terminal to the Brevia2 serial console (UART at ports 0x80/0x81),
   **115200 baud, 8 data bits, no parity, 1 stop bit (8N1)**.
2. Reset the board and bring up the GWMON-80 monitor until its prompt appears.
3. At the monitor prompt type **`L`** (lowercase `l` also works), then paste the
   entire contents of **`brevia2_cpm.hex`**.  The monitor echoes each Intel HEX
   record and stores it at its address.  On a bad checksum it prints a "CSERR"
   error; a clean load returns you to the monitor prompt.
4. At the monitor prompt type **`G E600`** and press Enter.

That is it.  The CBIOS cold-boot routine runs: it banks out the monitor ROM,
writes the CCP and BDOS onto the RAM disk's system tracks, formats the RAM disk
user area, prints a banner, and enters the CCP.

### Expected output

```
(blank line)
CP/M 2.2 on Brevia2
CP/M port by Whale-Chan
A>
```

The `A>` is the CP/M command prompt.  Try `DIR` (should report "no file" on the
empty disk), then `SAVE 1 TEST.COM` after loading a program, etc.

## What the CBIOS does

See `cbios.asm` for full comments.  Key points:

- **Jump table** at 0xE600 with the standard 17 CP/M 2.2 entries
  (BOOT, WBOOT, CONST, CONIN, CONOUT, LIST, PUNCH, READER, HOME, SELDSK,
  SETTRK, SETSEC, SETDMA, READ, WRITE, SECTRAN, LISTST).
- **Console** (UART 0x80 status / 0x81 data, polled, 115200 8N1; baud-agnostic
  polled code):
  `CONST` returns 0xFF/0x00 on rx_avail (bit1); `CONIN` polls bit1 then reads
  0x81; `CONOUT` polls tx_busy (bit0) then writes 0x81.  `LIST`/`PUNCH`/`READER`
  map to the same console UART; `LISTST` always reports ready.
- **RAM disk** (ports 0x20 DATA / 0x21 ADDR low / 0x22 ADDR high, auto-increment
  on every 0x20 access) is drive A:.  `SELDSK` returns the drive A DPH for C=0
  and the drive B DPH for C=1; C>1 reports an error.  `READ`/`WRITE` dispatch on
  the selected drive: drive A moves exactly one 128-byte sector between the DMA
  buffer and the RAM disk, drive B goes through the SPI flash path (see below).
- **DPB geometry (drive A):** 128-byte sectors, SPT=32, 1K allocation blocks
  (BSH=3/BLM=7, EXM=0), DSM=55 (56 blocks = 56K user data), DRM=63 (64 directory
  entries, 2 directory blocks), CKS=0 (fixed media), OFF=2 (tracks 0-1 reserved
  for the system).  Only drive A: existed before drive B: was added.

## Drive B: (on-board ISSI IS25LD040 SPI flash)

The 512 KB SPI flash is presented as CP/M drive B:.  It is **persistent**
(unlike the volatile RAM disk), so files saved to B: survive a warm/cold start.
The shared SPI driver lives in `../spi.inc` (also included by `../programs/`
`diskutil.s`) so the physical protocol cannot drift between diskutil and the
CBIOS.

- **Layout** (matches `diskutil`'s `S` formatter and the drive B DPB):
  tracks 0-1 (0x0000-0x1FFF) are reserved for a future boot system (erased
  0xFF); the user data area starts at 0x2000.  Block 0 (0x2000-0x2FFF) is the
  directory (64 entries, first 2KB used); blocks 1-125 (0x3000-0x7FFFF) are
  file data.
- **DPB geometry (drive B):** 4KB allocation blocks (BSH=5/BLM=31, EXM=3),
  DSM=125 (126 blocks), DRM=63 (64 directory entries), CKS=0, OFF=2.  One CP/M
  block maps to exactly one 4KB flash erase sector.
- **Erase-before-write / RMW:** the flash only erases at 4KB granularity and
  programming can only clear bits (1→0), so every 128-byte WRITE performs a 4KB
  read-modify-write into the `RMWBUF` buffer at 0xEF00-0xFEFF (read the whole
  sector, overlay the record, erase the sector, page-program it back).  The
  buffer sits **above the whole CP/M system** (CCP@0xD000, BDOS@0xD800,
  CBIOS@0xE600), so no transient program can ever load over it -- this is why
  the system was moved down from 0xE400.  A dirty-sector cache is a later
  optimization.  Drive B: `READ` and `WRITE` both use the 24-bit address
  formula `addr = TRK*0x1000 + SECN*0x80` (the flash exceeds 16-bit
  addressing).

## Notes / assumptions

- **Track semantics (important).**  The DR CP/M 2.2 BDOS performs the
  block/sector translation itself and passes the *absolute* track to `SETTRK`
  (I verified this in `cpm22/bdos.asm`: the BDOS adds the DPB `OFF` value to the
  track before calling `SETTRK`).  Therefore the CBIOS `READ`/`WRITE` map an
  absolute `(track, sector)` directly to a RAM-disk byte address with
  `addr = (track*32 + sector)*128` and do **not** add `OFF` again.  The reserved
  tracks 0-1 are accessed only by the boot code (which stores/reloads the CCP
  and BDOS there); the BDOS starts its file area at track 2.
- **DPB layout / `AL0`/`AL1`.**  `DSM` is stored as a **word** in the DPB (not a
  byte) so that the BDOS's byte-for-byte copy of the DPB into its internal
  aligned structure comes out correctly.  The two directory blocks are at the
  start of the user data area (track 2, i.e. allocation blocks 0 and 1), so with
  the standard MSB-first allocation-map convention the DPB uses `AL0=0xC0`,
  `AL1=0x00`.  (`AL0=0x00, AL1=0xC0` would reserve blocks 8-9, leaving the real
  directory at block 0 unprotected and breaking `SAVE`.)
- **Auto-increment timing.**  Each `IN`/`OUT` to port `0x20` advances the RAM
  disk's internal address pointer by exactly one byte, so a 128-byte sector
  transfer is performed by setting the pointer once (0x21/0x22) and then doing
  128 sequential `0x20` accesses.  No per-byte re-addressing is needed.
- **Cold-boot disk format.**  The CBIOS writes the CCP (2048 bytes) at RAM-disk
  byte 0 and the BDOS (3584 bytes) at RAM-disk byte 0x0800 (system tracks 0 and
  1) so a warm start (`WBOOT`, vector at 0x0000) can reload them, then fills the
  user area (tracks 2-15) with 0xE5 so the directory is empty.
- **Re-assembling the CBIOS only** (if you change `cbios.asm` and want to
  rebuild everything): run
  `../scripts/a85/a85.exe cbios.asm -l cbios.prn -o cbios.hex`
  then `python make_combined_hex.py`.  (The a85 object option is `-o`, not `-O`.)
