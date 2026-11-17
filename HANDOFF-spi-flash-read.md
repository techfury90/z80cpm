# Handoff — M7 SPI Flash read path: ROOT CAUSE FOUND + FIXED (RTL engine over-clock)

**Status: RESOLVED in the simulator. Remaining step: rebuild the bitstream in
Diamond, flash it, re-upload diskutil, and re-run I/P/R/E on silicon.**

## Verdict

The READ bug was a **bug in the RTL read machinery (`rtl/spi_flash.v` byte
engine)** — NOT in the software. `programs/diskutil.s` frames the 0x03 Read
command, the JEDEC 0x9F ID read, and the RDSR poll correctly. No software change
was needed.

## Root cause (the engine free-runs / over-clocks)

`spi_flash.v` started a byte transfer on the **LEVEL** of the 0x50 access strobe:

    wire start = go_stb & ~cs & ~run;      // go_stb = rd_stb || wr_stb

The top level (`rtl/z80cpm_brevia2.v`) stretches the CPU's I/O cycle with the
engine's `wait_req` (`cpu_wait_n = sram_wait & ~spi_wait`), so `rd_stb`/`wr_stb`
is a **LEVEL that stays high for the entire wait-stretched access**. The instant
the engine completed a byte and dropped `run`, `start` re-fired on the SAME still-
high strobe, so the engine **re-triggered itself continuously**. Each logical
`IN/OUT 0x50` therefore clocked ~3 bytes instead of 1. The chip's read address
auto-increment ran ~3x faster than the software read, producing the observed
`01 04 07 0A 0D` (stride 3, "3k+1") and JEDEC `9D FF FF`.

Simulation evidence BEFORE the fix (full Z80, 16-byte bulk read @0x000000):
engine byte transfers = **52** (should be 20), SCK edges = **416** (should be 160),
flash model address = **0x30** (should be 0x10).

## The fix (rtl/spi_flash.v)

Start a transfer on the **RISING EDGE** of the access strobe, not its level, so the
engine clocks EXACTLY one byte per 0x50 access:

    reg go_stb_d;
    always @(posedge clk or posedge rst)
      if (rst) go_stb_d <= 1'b0;
      else     go_stb_d <= go_stb;
    wire go_stb_edge = go_stb & ~go_stb_d;   // 1-cycle pulse on access-strobe rise
    wire start = go_stb_edge & ~cs & ~run;

## The flash MODEL was also wrong (tb/sst25vf020_model.v) — it masked the bug

`mso <= resp_data` is a nonblocking read of the OLD `resp_data`, so the model
presented every byte ONE BYTE LATE (`BF BF 20` instead of `BF 20 02`). Because the
existing tests only asserted the FIRST byte of each transaction, this latent model
bug made the sim "pass" and hid the real engine over-clock. Fixed so `mso` is
driven with the NEW byte (the same value as `resp_data`).

## Simulation verification (after fix)

- `tb_spi_flash`: JEDEC reads `BF 20 02`; program/read/erase pass; a new held-strobe
  regression confirms a held 0x50 strobe clocks exactly **1** byte, not ~3.
- `tb_read2` (full Z80, 16-byte bulk read): engine did **20** transfers (not 52),
  **160** SCK edges (not 416), flash address advanced to **0x10** (not 0x30), and
  the SRAM read-back is `00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F` — no
  stride, no `data << 1`. PASS.
- `tb_flashtest`: PASS.

## What changed

- `rtl/spi_flash.v` — `start` now the rising edge of `go_stb` (1 byte/access).
- `tb/sst25vf020_model.v` — `mso` driven with the next byte, not the stale value.
- `tb/tb_spi_flash.v` — assert JEDEC bytes 1/2 (`20 02`); add held-strobe guard.
- `tb/tb_read2.v` + `programs/readtest.{s,hex,lst,mem}` — NEW end-to-end Z80
  regression reproducing the stride-3 bug and proving the fix (reads SRAM @0x2000,
  UART-baud independent).
- `programs/diskutil.s` — NOT changed (software was correct).

## How to verify on silicon

1. Rebuild the bitstream in Diamond (rtl/spi_flash.v changed), flash it.
2. Re-upload the reassembled `programs/diskutil.hex`, run `G 1000`.
3. `I` → `9D 40 13` (or the real ISSI device ID), PASS.
4. `P` then `R` → `00 01 02 ... 0F` (unshifted, no stride), PASS.
5. `E` → FF, PASS.

> Console UART baud was changed from 9600 to 38400. diskutil uses the UART
> status/data ports (0x80/0x81) with a tx-busy poll, so it is baud-agnostic; the
> change does not affect diskutil or the SPI path.

---
*(Original diagnostic content below, retained for reference.)*

---
## SECOND ISSUE (RESOLVED) — JEDEC ID 0x9F: chip is IS25LD040, and the read was CORRECT

After the over-clock fix, the READ (0x03) works on silicon (`00..0F`) and the JEDEC
ID `I` read returns `ID: 7F 9D 7E FF`. This is **not a misread** — it is exactly
the right answer for the part on the board:

- The flash is an **ISSI IS25LD040** (the markings were misread from IS25LQ040 /
  IS25LP040E). Per the IS25LD040 datasheet (JEDEC ID READ 0x9F, Table 11), the
  0x9F read shifts out, in this order: **second Manufacturer ID `7Fh` → first
  Manufacturer ID `9Dh` → Device ID `7Eh`**, i.e. the JEDEC stream is **`7F 9D 7E`**.
- The engine reads back `7F 9D 7E` (the trailing `FF` is just the ID looping, which
  the datasheet says continues until CE# rises). So the engine is **byte-faithful**
  — proven in sim: a model driven with `7F 9D 12 43` is read back as `7F 9D 12`.
- Crucially, the **IS25LD040 datasheet shows NO `tV` "half-cycle" delay** for the
  0x9F JEDEC read (that tV offset was a property of the IS25LP040E figure, which
  initially led us down the "no-delay shift" path). With no offset the data is
  available on the standard falling edge, so the engine reads it aligned and
  correctly.
- The `0x9F` command here is a 1-byte instruction (no dummy/address byte); the
  READ 0x03 carries 3 address bytes and needs no special handling.

`programs/diskutil.s` DO_ID now reads the 3 ID bytes and verifies the exact
IS25LD040 signature `7F 9D 7E` (was a loose `0x9D` scan). The `I` command will
report `ID: 7F 9D 7E` and PASS on the IS25LD040.

> The SST sim model presents the JEDEC ID at the first IN edge, so it reads
> cleanly; it is only a stand-in for the byte-engine framing, not a faithful
> IS25LD040 ID model, so do not use the sim's `BF 20 02` as the expected silicon ID.

## PnR setup violation (build/z80cpm.lpf) — fixed

The Diamond place & route flagged one `INPUT_SETUP PORT "sram_data*"` violation:
`sram_data[3] -> u_cpu/i_tv80_core/TmpAddr[3]`, 6.281 ns data path (6 logic levels,
65% route), -0.406 ns slack. Root cause: the constraint was `5.000 ns`, but the
on-board SRAM is an **IDT 71V124SA15 (15 ns access)** read through `sram_async`
with **no wait states** at 25 MHz. The read window is clk-to-out 15 ns + access
15 ns = 30 ns, so the data is valid only ~10 ns before the 40 ns `clk_op` edge.
The 5 ns set-up was simply too tight for the 6.28 ns pad->CPU path (which itself
fits the 40 ns period with deep margin). The preference was corrected to
`INPUT_SETUP PORT "sram_data*" 10.000000 ns` in both `build/z80cpm.lpf` and
`build/brevia2.lpf` (the real achievable window, consistent with the 15 ns clk-
to-out / access). Re-run place & route; the `sram_data` setup should now close.

> If the CPU clock is ever raised toward 50 MHz, re-check this pad->CPU path
> (registering `sram_data` or adding wait states would then be the right lever).

---
*(Original diagnostic content below, retained for reference.)*

---
*(Original diagnostic content below, retained for reference.)*

# Handoff — M7 SPI Flash: read path returns wrong data (diskutil read vs RTL read machinery)

**Task for the next worker:** Determine whether the SPI-flash READ problem on the
Brevia2 is a **software bug (programs/diskutil.s)** or a **bug in the RTL read
machinery (rtl/spi_flash.v byte engine)** — and fix it. The write side already
WORKS; the read side returns wrong data.

## Confirmed facts (do not re-litigate these)

- The on-board flash is an **ISSI IS25LP040E (512 KB)**, NOT the SST25VF020 the
  plan/demo assumed. JEDEC manufacturer = **0x9D**. Same standard command set
  (0x02 page/byte program, 0x20 4KB sector erase, 0x05 RDSR, 0x06 WREN, 0x9F
  JEDEC ID, 0x60 chip erase), so the diskutil command codes are compatible.
- **The flash IS correctly programmed with 00,01,02,...,0F at addresses 0x00000-0x0000F.**
  The Lattice demo SoC (proper SPI core, not ours) reads addresses `00000`..`00007`
  back as `00 01 02 03 04 05 06 07`. So the diskutil's **WRITE path works** and the
  flash content is verified good on silicon.
- **Our diskutil's READ is wrong.** After the diskutil **P**rograms the pattern and
  **R**eads it back, it reports:
  `Data: 01 04 07 0A 0D FF FF FF FF FF FF FF FF FF FF FF` then `Read-back MISMATCH`.
- Our diskutil's JEDEC **I** reads `ID: 9D FF FF` (manufacturer `9D` is now CORRECT
  after a recent RTL fix; the two ID bytes are wrong / `FF`).
- The `E` (erase) command passes: `Erase OK - sector reads all 0xFF`.

## The bug signature

`01 04 07 0A 0D` is `3k+1` (1,4,7,10,13). Since the flash truly contains
`00,01,02,...,0F`, the read displayed `01 04 07 0A 0D` == the flash contents at
**addresses 1, 4, 7, 10, 13** — i.e. the read is advancing by **3 bytes per access
starting from offset 1**, not 1 byte per access. Every read byte after the first is
landing on the wrong address.

The JEDEC `9D FF FF` is consistent with the same kind of mis-read (byte 0 = `9D`
correct; subsequent bytes = `FF`).

## Where to look (check these, in order)

1. **programs/diskutil.s** — `DO_READ` (sends 0x03 + 3-byte addr 0x000000, then a
   loop of 16 `IN SPI_DATA`), and the read helper `SPI_XMIT`/the `IN SPI_DATA` use.
   Verify the read command is framed exactly as the ISSI part requires and that the
   per-byte reads advance the flash address by exactly 1. Also re-check `DO_ID`
   (the 3-byte JEDEC read) and `SPI_WAIT` (the RDSR poll, which re-selects CS#).
2. **rtl/spi_flash.v** — the byte engine. It currently samples MISO on the SCK
   **falling** phase (a recent change; the previous rising-edge sampling read the
   first byte one bit late). Confirm the engine clocks **exactly 8 SCK edges per
   0x50 access** and does not over/under-clock, which would make the chip's read
   address auto-increment by a wrong stride. The byte counter `cnt` runs 0..17 and
   samples on even counts; re-verify the 8-bit framing vs the datasheet.
3. **tb/sst25vf020_model.v** — the behavioral flash model. It advances its read
   address by 1 per accessed byte; if the real chip advances by a different stride
   (or the engine clocks a different bit count), the sim passes while silicon
   fails — the model does NOT reproduce the `3k+1` symptom. Consider adding a
   `$display` of the model's read-address advance per byte to compare against what
   the engine actually clocks out.
4. The read is done as ONE bulk read (single 0x03 + addr, then 16 sequential bytes
   with CS# held low). The Lattice demo auto-tests with per-address reads. If
   bulk sequential reads are the problem, test a per-address read to isolate.

## Recent history (why the read "worked in sim but not silicon")

- Prior state: rising-edge MISO sampling → every byte read one bit late → stored
  `01` read as `02` (i.e. `data << 1`). Erase checks still "passed" because
  shifting all-ones `0xFF` yields `0xFF`.
- Fixed the engine to sample on the falling phase → the JEDEC manufacturer now
  reads `9D` correctly, and sim `tb_spi_flash`/`tb_flashtest` PASS.
- Silicon STILL misreads the program read-back (`01 04 07 0A 0D`), so there is a
  remaining framing/stride bug that the sim model does not reproduce.

## Files

- `programs/diskutil.s` (and regenerated `programs/diskutil.hex`/`.lst`)
- `rtl/spi_flash.v` (byte engine)
- `tb/sst25vf020_model.v`, `tb/tb_spi_flash.v`, `tb/tb_flashtest.v`
- `rtl/z80cpm_brevia2.v` (top; SPI ports 0x50 data / 0x51 CS# / 0x52 busy)
- Diamond project `build/z80cpm.ldf` + `build/*.lpf` (SPI pins csn=11,miso=16,mosi=15,sclk=13)

## How to verify the fix on silicon

1. Rebuild the bitstream in Diamond (the RTL changed), flash it.
2. Re-upload the reassembled `programs/diskutil.hex`, run `G 1000`.
3. `I` → must read `9D 40 13` (or the real device ID), PASS.
4. `P` then `R` → read-back must be `00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F` (unshifted, no stride), PASS.
5. `E` → FF, PASS.
