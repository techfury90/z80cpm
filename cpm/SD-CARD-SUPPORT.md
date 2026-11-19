# SD-card support (SPI mode) for the Brevia2 — investigation & design

> **Implemented since this was written** (drive C:, deblocking, `sdtool.com`).
> For the WRITE-path bugs found on silicon and their fixes — deblock offset
> off-by-one, card-busy/ready handling, data-response checking, the retry layer,
> and the truncated flash burn — see **`cpm/SD-WRITE-PATH-FIX.md`**.
> Current build map, verification harness and rules for changing the path are
> all in that file.

Assumption in this document: the user has SPI-mode SD breakouts with pins
**3V3, CS, MOSI, CLK, MISO, GND** (pull-ups already on the breakouts), and the
Brevia2 has a proven SPI byte-engine already driving the on-board SST flash. We
want to add an SD card as (a) large CP/M mass storage and (b) with **MBR
partitioning** support. This is a feasibility + design writeup, not code yet.

## 0. Verdict

**Feasible and mostly a software problem.** The existing SPI engine is a
generic SPI mode-0 byte engine — exactly what an SD card in SPI mode needs. SD
in SPI mode is byte-framed, so we drive the whole protocol in software over the
existing 0x50/0x51/0x52 interface, just like we already do the flash. The RTL
delta is small (an SD chip-select + a slow-clock option for card init). The real
work is in the CBIOs: a deblocking driver that maps CP/M 128-byte records onto
512-byte SD sectors, plus an MBR partition parser. The two hard parts are (1)
card initialization clock timing and (2) CP/M 128B↔512B deblocking.

## 1. What we already have (reuse, don't rebuild)

`rtl/spi_flash.v` is a generic **SPI mode-0 byte engine** (I/O ports in the top
module):
- `0x50 = SPI_DATA` — write clocks a byte out on MOSI (MSB first); read clocks
  out 0xFF and returns the byte clocked in on MISO. The CPU's I/O cycle is
  **wait-stretched** while the byte transfers, so software needs NO busy poll
  and can issue back-to-back `IN/OUT 0x50`.
- `0x51 = SPI_CTL` — bit0 = CS# (0 = select, 1 = release).
- `0x52 = SPI_STAT` — bit0 = transfer-busy.
- SCK = 25 MHz / 2 = **12.5 MHz**, mode-0 (CPOL=0,CPHA=0), MSB-first, and it
  clocks EXACTLY one byte per 0x50 access (edge-detected, so no free-running).
- It drives the on-board flash on pins: `spi_sclk`=13, `spi_csn`=11,
  `spi_mosi`=15, `spi_miso`=16.

This engine transfers one byte at a time; the SD command framing (6-byte
command, R1/R2/R3 response, 512-byte data block) is all software over these
bytes. **We reuse the engine for the SD; we do not write a new SPI peripheral.**

## 2. Hardware integration

### 2.1 Voltage / level compatibility
The Brevia2 is a 3.3 V design (LVCMOS33 IOBUFs, 3.3 V SRAM/flash). SD breakouts
are 3.3 V, so **direct connection — no level shifting needed**. Pull-ups are
already on the breakouts (and SD requires pull-ups on the SPI inputs per spec).
SD power-up timing: wait ≥1 ms after 3.3 V settles before the first command.

### 2.2 Two wiring options
- **Option A — share the existing SPI bus (recommended, fewest pins):** connect
  the SD breakout's MOSI/CLK/MISO to the SAME pins as the flash
  (15/13/16) and give the SD its **own CS on a free FPGA I/O**. Two SPI slaves
  on one bus, never both selected. Requires only ONE new board pin (SD CS) and
  that the flash SPI pins are reachable on a header to tap.
- **Option B — dedicated second SPI port:** use a separate 4-pin set
  (new CLK/MOSI/MISO/CS) and a second engine instance. Cleaner isolation, no
  bus contention, but 4 new pins + duplicated cells.

**Board-pin investigation needed:** whether the SPI flash pins are broken out to
an accessible header (if yes, Option A is a one-wire tap; if not, we use Option
B or expose the pins). On a TQFP-144 there are free I/O pins, but the exact free
numbers and whether they're on a header must be checked against the Brevia2
board schematic / pinout. **Open item — verify before promising a wiring.**

### 2.3 RTL changes required
1. **Slow-clock for init.** SD init REQUIRES the SPI clock at **≤400 kHz** for
   the 74+ power-up clocks and the first commands (Spec §4.6.1 / app notes).
   Our engine is fixed at 12.5 MHz. Fix: add a clock-prescaler bit (e.g. a new
   `SPI_CTL` bit or a small divider) so software can drop SCK to ~26-390 kHz
   for init, then raise it to 12.5 MHz for data. Many cards tolerate 12.5 MHz
   at init, but it is NOT guaranteed — this is the top hardware risk.
2. **SD chip-select.** Add an `sd_csn` output (new pin) and an SD-CS control bit
   (either a second bit in 0x51 or a new port 0x53). The engine's `cs` gating
   must clock when EITHER the flash OR the SD is selected: pass `cs =
   spi_cs & sd_cs` (both active-low, never both asserted at once) and output
   the two CS pins separately.

Beyond that, the engine is byte-generic and already mode-0; no other SPI change
is needed to talk to an SD card.

## 3. SD SPI-mode protocol (the software we must write)

### 3.1 Card initialization (this is the delicate part)
Per the SD spec and every SD/SPI application note:
1. Delay ≥1 ms after power-up.
2. **CS high**, clock ≥74 cycles (clock out 0xFF bytes) — lets the card set up
   internal state. **Must be at ≤400 kHz.**
3. **CS low**, send **CMD0** `40 00 00 00 00 95`. The `95` CRC is mandatory here
   (the card is not in SPI mode yet and CRC checking is still on). Expect R1 =
   `01` (idle). If you read `FF` you must keep clocking and retry.
4. **CMD8** `48 00 00 01 AA 87` (SEND_IF_COND). Detects SD v2.0 cards; the
   `AA`check-pattern must echo back. v1.1 cards (<2 GB) may reply `05`/`0D`
   (illegal cmd) — that's acceptable, we just note it's an old card.
5. **CMD55** `77 00 00 00 00 65`, then **ACMD41** `69 40 00 00 00 77` — the
   `40 00 00 00` arg sets the **HCS bit** so we support **SDHC/SDXC**. Poll
   CMD55+ACMD41 until R1 = `00` (card out of idle). 
6. **CMD58** `7A 00 00 00 00 FD` (read OCR) — check the Card Capacity Status
   (**CCS bit 30**). CCS=1 → SDHC/SDXC → **addresses are BLOCK numbers** (not
   byte addresses), always 512-byte blocks. CCS=0 → standard capacity, byte
   addressing (divide address by 512 to get block). We must support the block
   addressing path (SDHC) since that's what the user will have.
7. **CMD16** (set block length) → 512. (Optional for SDHC which is fixed at 512,
   but harmless and needed for standard-capacity.)
8. Optionally CMD59 (CRC on/off) — leave CRC off for speed (default in SPI mode
   after CMD0).

### 3.2 Reading / writing a block
- **Read single block (CMD17):** send `51 00 00 00 BB 00` (command byte
  `0x40|17`, then the 32-bit block number), wait for R1=`00`, then wait for the
  **data token `FE`**, read **512 data bytes**, then read and discard **2 CRC
  bytes**. If the card returns a 1-byte error token (bits 0-4 set) instead of
  `FE`, handle the error.
- **Write single block (CMD24):** send `58 00 00 00 BB 00`, wait R1=`00`, send
  data token `FE`, send **512 data bytes**, send **2 CRC bytes** (0xFF ok if CRC
  off), then read the **data-response** byte (expect `05` = OK), then poll
  CMD13 / busy token until the card returns `00` (card is free). SD requires
  this busy-wait before the next command.
- **Multiple blocks (CMD18/CMD25)** exist for speed; for a first cut, single
  block (CMD17/CMD24) is simplest and fast enough.

### 3.3 Throughput
12.5 MHz SPI = ~1.5 MB/s raw; an SD sector (512 B) transfers in ~400 µs plus
command overhead. For a hobby CP/M system that is plenty. (We are NOT going to
max out the card.)

## 4. CP/M integration — the real work: 128B ↔ 512B deblocking

This is the crux and the largest software effort. Key fact: **CP/M addresses
everything in 128-byte records; the SD card only transfers 512-byte sectors.**
So the CBIOs MUST deblock.

### 4.1 The canonical approach (DRI CP/M 2.2 Appendix G / Scorpio News, "Blocking and Deblocking")
In CP/M 2.2, blocking/deblocking is implemented **in the BIOS**. The DRI
algorithm uses (from the actual CP/M 2.2 deblock source):
```
BLKSIZ = 2048            ; CP/M allocation size  (per-DPB block)
HSTSIZ = 512             ; HOST (SD) sector size
HSTBLK = HSTSIZ/128 = 4  ; CP/M sectors per host buffer
SECMSK = HSTBLK-1 = 3    ; mask to get the 128B slice within a host sector
SECSHF = 2               ; log2(HSTBLK); host sector = CP/M sector >> 2
```
The BIOS keeps a **512-byte deblock buffer** (and caches its drive/sector
identity). On a read: convert the requested CP/M 128B sector → host sector, and
if it's not the cached one, read the whole 512B host sector from the SD into
the deblock buffer, then return the requested 128B slice to the DMA address.
On a write: place the 128B record into the buffer and only write the 512B host
sector back when the buffer is complete / the sector changes (a dirty flag).

This is required **regardless of the DPB block size** — the BDOS always operates
on 128B records; only the BIOS buffer/cache silos them into 512B for the SD.

### 4.2 DPB / geometry
The DPB (Disk Parameter Block) describes the drive in **CP/M 128-byte sectors**,
independent of the physical 512B SD sector. The BDOS/BIOS translation (above)
handles the mismatch. So we size the DPB purely on how much of the partition we
want to expose, e.g.:
- BSH/BLM/EXM set the CP/M allocation block (2048/4096... bytes).
- **DSM is 16-bit** → max 65535 allocation blocks. With 2048 B blocks that's a
  ~128 MB drive ceiling under CP/M 2.2; with 4096-B blocks ~256 MB; with
  8192-B blocks ~512 MB. We must pick the DPB so the partition we expose fits
  the DSM ceiling. For large SD cards we expose a partition (or a capped
  region) within this limit. **This is a hard CP/M 2.2 constraint** — an SDXC
  card cannot be one giant unfragmented CP/M drive.
- `CKS=0` (fixed media, no directory check vector).
- The CBIOs READ/WRITE/SELDSK/HOME/SETTRK/SETSEC/SETDMA work in CP/M sector
  space and translate to SD block numbers via the deblock layer.

### 4.3 Where the SD drive letter lives
Today: `A:` = flash (512 KB), `B:` = RAM disk (bank B, now disposable). Options:
- Keep `A:` = flash as the boot/system drive and add SD as `B:` (large data
  drive). Lowest risk; the flash remains a working system disk.
- Or make SD the primary `A:` (bigger, better) and keep the flash as a boot
  fallback. Worth considering once SD is proven, since 512 KB is small.
The recommended first step is **SD as an additional drive** so we never risk the
working system.

## 5. Partitioning support (MBR)

Standard **Master Boot Record** partitioning (as used by every PC):
- LBA 0 (block 0) = the MBR: 446 bytes boot code, then **4 partition-table
  entries of 16 bytes each at offsets 446, 462, 478, 494**, then the signature
  `55 AA` at offset 510-511.
- Each 16-byte entry: `[0]` boot flag (80/00), `[1-3]` CHS first, `[4]` **type**,
  `[5-7]` CHS last, `[8-11]` **LBA start** (little-endian), `[12-15]` **# of
  512-byte sectors** (little-endian).
- The SD is accessed in **LBA/block** addressing (SDHC), so partition LBA values
  are actual 512-byte block numbers.

Our CBIOs would: read LBA 0, validate the `55 AA` signature, walk the partition
table, and use **one designated partition** as the CP/M drive. Every SD block
access becomes `(partition_lba_start + cp/m_host_sector)`. Multiple partitions
can be exposed as multiple CP/M drives or, if we add a FAT reader, as FAT
drives for PC interchange.

**Partition type for CP/M:** there is **no standard MBR type for CP/M** (CP/M
filesystem doesn't have a well-known type code — this is a known gap; hobbyists
usually pick a free/unused type or just designate by partition index). So we
must *decide* a convention. Reasonable options:
- Designate a partition by index (e.g. "the first non-empty partition") and
  label it in our tooling — simplest, no reliance on an assigned type code.
- Or reserve a type code (e.g. use an unused 0xXX) so the partition is
  self-describing.

The SD card can still be partitioned on a PC (to, e.g., put a FAT32 partition
for swapping files) while we use a distinct CP/M partition — this is the real
value of partitioning support and worth doing properly.

## 6. Formatter / tooling

We need to **create a CP/M filesystem on the SD partition**, not just read it.
Add to `diskutil` (or a dedicated program):
- `FORMAT n` for the SD drive: write a CP/M-compatible boot/directory/allocation
  structure over the partition region — an empty directory (the DPB's DRM/AL0/
  AL1), a zeroed allocation bitmap, per the DPB we chose.
- A `PART` / partition tool to read the MBR and show/report the partitions, and
  designate which one is CP/M.
- A CP/M-sector initializer that writes `55 AA` and a partition table if we are
  creating the MBR from the Brevia2 (or we pre-partition on a PC).

## 7. Risks / open items (honest list)

1. **Init-clock timing (medium).** The spec mandates ≤400 kHz for card init; our
   engine is 12.5 MHz. Adding a prescaler is easy, but if we skip it and some
   cards refuse to initialize, it's a silent failure at boot. **Plan: add the
   slow-clock mode up front.**
2. **Pin / breakout availability (unknown until checked).** Whether the SPI
   flash pins are on an accessible header determines Option A vs B. Verify
   against the Brevia2 board.
3. **Card compatibility (medium).** SDHC/SDXC vs SDSC (v1) block-vs-byte
   addressing; HCS/CCS handling; some cards are picky. Support both paths, and
   prefer real SDHC.
4. **CP/M 2.2 DSM ceiling (hard limit).** ~128-512 MB drive max depending on
   block size. We expose the SD as a partition within that ceiling, not the
   whole card. (If we ever move to CP/M 3, this constraint is largely gone.)
5. **Deblocking correctness (medium-high, but well-understood).** The DRI
   algorithm must be implemented carefully (buffer cache, dirty flag, write
   back on sector change). It's the most error-prone part but it's a known,
   documented algorithm.
6. **Block busy-wait (medium).** After a CMD24 write we must poll until the card
   is not busy or the next command fails. Must not hang.

## 8. Suggested milestones

1. **Hardware:** wire the SD (Option A preferred), add SD CS + slow-clock init
   option in the engine, pick an SD block number to test with. Verify in
   iverilog (testbench) that the CS mux and prescaler behave.
2. **SD bare-metal probe (like `swled`):** a small program that runs the full
   init sequence (CMD0/CMD8/ACMD41/CMD58/CMD16) and reads the **CID/CSD** or a
   known test block, printing the card info. This de-risks init before any CP/M
   integration.
3. **CBIOs SD drive with deblocking:** add SD as a drive using the DRI
   deblocking algorithm and a suitable DPB. Prove file read/write into the SD.
4. **Partitioning:** implement the MBR parser + LBA offset; read a
   PC-created partition table; designate the CP/M partition.
5. **Formatter + utilities:** a `FORMAT`/`PART` tool to create the CP/M
   filesystem/partition table on the SD, and CP/M tools to populate it.

## 9. Sources
- SD Card "Physical Layer Simplified Specification" and classic SD/SPI app notes
  (Renesas/MSP430 SD app note; STM32 SD-SPI notes): init ≤400 kHz, ≥74 clocks,
  CMD0 (CRC 0x95), CMD8, CMD55/ACMD41 (HCS), CMD58 (CCS), CMD16, CMD17/CMD24,
  `FE` data token, 512 B + 2 CRC bytes, error token.
- Digital Research "CP/M 2.2 Operating System Manual — Appendix G: Blocking and
  Deblocking Algorithms" — the deblocking algorithm and constants (BLKSIZ,
  HSTSIZ=512, HSTBLK=4, SECMSK, SECSHF) for BIOS-level deblocking.
- Scorpio News "Blocking and Deblocking" — CP/M 2.2 BIOS deblock buffer and the
  128B-record / physical-sector relationship.
- The IDEALINE "Disk Parameter Block" page — DPB fields (SPT, BSH, BLM, EXM, DSM,
  CKS, etc.) and how 128-byte records map to allocation blocks.
