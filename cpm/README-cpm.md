# CP/M 2.2 on the LatticeXP2 Brevia2 (TV80 Z80 softcore)

This directory contains a complete CP/M 2.2 system image plus its custom BIOS
(CBIOS) for the Brevia2 board.  It boots to a CP/M `A>` prompt on the serial
console, with the 64K I/O-mapped RAM disk presenting as drive A:.  `DIR`,
`SAVE`, `TYPE`, `ERA`, `REN`, etc. operate against that RAM disk.

## Files

| File | Description |
|------|-------------|
| `cbios.asm` | 8080 CBIOS source (assembled with the a85 cross-assembler). |
| `cbios.hex` | The assembled CBIOS object (loaded at 0xFA00). |
| `cpm22/ccp.bin` | DR CP/M 2.2 CCP binary (already built; loaded at 0xE400). |
| `cpm22/bdos.bin` | DR CP/M 2.2 BDOS binary (already built; loaded at 0xEC00). |
| `brevia2_cpm.hex` | **The combined system image** (CCP + BDOS + CBIOS) in one Intel HEX file. **This is what you upload.** |
| `make_combined_hex.py` | Script used to build `brevia2_cpm.hex` from the three components. |
| `cbios.prn` | a85 listing of the CBIOS (for reference). |

## Loading and starting CP/M via GWMON-80

1. Connect a terminal to the Brevia2 serial console (UART at ports 0x80/0x81),
   **9600 baud, 8 data bits, no parity, 1 stop bit (8N1)**.
2. Reset the board and bring up the GWMON-80 monitor until its prompt appears.
3. At the monitor prompt type **`L`** (lowercase `l` also works), then paste the
   entire contents of **`brevia2_cpm.hex`**.  The monitor echoes each Intel HEX
   record and stores it at its address.  On a bad checksum it prints a "CSERR"
   error; a clean load returns you to the monitor prompt.
4. At the monitor prompt type **`G FA00`** and press Enter.

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

- **Jump table** at 0xFA00 with the standard 17 CP/M 2.2 entries
  (BOOT, WBOOT, CONST, CONIN, CONOUT, LIST, PUNCH, READER, HOME, SELDSK,
  SETTRK, SETSEC, SETDMA, READ, WRITE, SECTRAN, LISTST).
- **Console** (UART 0x80 status / 0x81 data, polled, 9600 8N1):
  `CONST` returns 0xFF/0x00 on rx_avail (bit1); `CONIN` polls bit1 then reads
  0x81; `CONOUT` polls tx_busy (bit0) then writes 0x81.  `LIST`/`PUNCH`/`READER`
  map to the same console UART; `LISTST` always reports ready.
- **RAM disk** (ports 0x20 DATA / 0x21 ADDR low / 0x22 ADDR high, auto-increment
  on every 0x20 access) is drive A:.  `SELDSK` returns the DPH for drive A and
  reports an error for every other drive.  `READ`/`WRITE` move exactly one
  128-byte sector between the DMA buffer and the RAM disk.
- **DPB geometry:** 128-byte sectors, SPT=32, 1K allocation blocks (BSH=3/BLM=7,
  EXM=0), DSM=55 (56 blocks = 56K user data), DRM=63 (64 directory entries,
  2 directory blocks), CKS=0 (fixed media), OFF=2 (tracks 0-1 reserved for the
  system).  Only drive A: exists.

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
