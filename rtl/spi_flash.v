`timescale 1ns/1ps
// spi_flash -- I/O-mapped generic SPI mode-0 byte-engine controller.
//
// It drives the on-board SST25VF020 serial flash (the M7/CP/M drive A:), and is
// ALSO instantiated a second time as the dedicated SD-card SPI port on pins
// 31/32/35/36.  The engine is byte-generic; the two extra inputs (clock_free,
// prescale) are SD SPI-mode requirements that are hard-wired to their default
// values on the flash instance (so the flash path is byte-for-byte unchanged).
//
// The CPU drives the SST protocol at the BYTE level: this controller performs
// the bit-level clocking (8 bits, MSB-first, SCK = 12.5 MHz = 25 MHz / 2) while
// the software (first diskutil, later the CBIOS drive B: driver) owns the
// command framing (which opcode, how many address bytes, when to end CS#).
//
// I/O map (all decoded in the top level, rtl/z80cpm_brevia2.v):
//   0x50 = SPI_DATA   write = clock out a byte on MOSI (MSB first);
//                     read  = clock out 8 bits (0xFF) and return the byte
//                             clocked in on MISO.
//   0x51 = SPI_CTL    write bit0 = CS# (0 = select the flash low, 1 = release)
//   0x52 = SPI_STAT   read bit0 = transfer-busy (1 while a byte is clocked)
//
// HARDWARE WAIT: while a 0x50 access is in progress (busy), this module drives
// wait_req so the top stretches the CPU's I/O cycle.  The CPU samples the read
// data only when wait_n is high, so an IN 0x50 returns VALID received data and
// consecutive IN/OUT 0x50 accesses can be issued back-to-back with NO software
// busy polling or pipeline delay.  This is what makes the 8080 driver trivial.
//
// SPI mode-0 (CPOL=0, CPHA=0): SCK idles LOW; the flash is sampled on the SCK
// rising edge and data is changed on the SCK falling edge.  SCK and MOSI are
// only driven while CS# is low; MISO is sampled on the rising edge.
module spi_flash(
  input         clk,
  input         rst,
  input         cs,          // CS# value from 0x51 bit0 (0 = asserted/selected)
  input         rd_stb,      // io_rd strobe for 0x50
  input         wr_stb,      // io_wr strobe for 0x50
  input  [7:0]  din,         // byte to clock out on MOSI (write)
  input         clock_free,  // clock bit-frames even when CS# is high (SD SPI init)
  input  [5:0]  prescale,    // clock cycles per half-bit (1 = normal; 32 = ~390 kHz for SD init)
  output [7:0]  dout,        // byte clocked in from MISO (read)
  output        busy,        // 1 = a byte transfer is in progress
  output        wait_req,    // request CPU wait (stretch the 0x50 access)
  output        spi_sclk,
  output        spi_csn,
  output        spi_mosi,
  input         spi_miso
);
  reg [7:0] sh_out;   // shift-out register (MSB first on MOSI)
  reg [7:0] sh_in;    // shift-in register  (MSB first from MISO)
  reg [4:0] cnt;      // 0..17 across one byte (2 clocks per bit; 17 = terminal)
  reg       run;      // a byte transfer is in progress
  reg       sck;      // generated SCK (idles low)
  reg [7:0] dout_q;
  reg       go_stb_d; // delayed access strobe, for rising-edge detection

  wire go_stb = rd_stb || wr_stb;
  // CRITICAL: start a transfer only on the RISING EDGE of the 0x50 access strobe.
  // The top level stretches the CPU's I/O cycle (wait_req) while a byte transfer
  // is in progress, so rd_stb/wr_stb is a LEVEL that stays high for the whole
  // (wait-stretched) access.  Using the level directly re-triggers `start` the
  // instant `run` drops, so the engine free-runs and clocks MANY bytes per
  // logical 0x50 access -- the flash's read address then advances by ~3 instead
  // of 1 per byte the software reads (the "3k+1" / `01 04 07 0A 0D` sorrow).
  // Edge-detecting makes the engine clock EXACTLY one byte per 0x50 access.
  always @(posedge clk or posedge rst)
    if (rst) go_stb_d <= 1'b0;
    else     go_stb_d <= go_stb;
  wire go_stb_edge = go_stb & ~go_stb_d;   // 1-cycle pulse on the access strobe rise
  // A transfer starts on the access strobe rise.  Normal operation (flash,
  // clock_free=0) requires CS# low.  With clock_free=1 (SD SPI init) we also
  // clock with CS# high, because the SD spec requires >=74 clock pulses with
  // CS# high before CMD0.
  wire start  = go_stb_edge & ~run & (clock_free | ~cs);

  // Optional bit-clock prescaler.  SD SPI init must run at <=400 kHz (the
  // engine is fixed at 12.5 MHz), so software can set prescale=32 to drop the
  // bit rate to ~390 kHz, then return to 1 for normal-speed data I/O.
  // prescale=1 advances the state machine every clock (unchanged behaviour).
  reg  [5:0] pcount;
  wire       pstep = (pcount == (prescale - 6'd1));
  always @(posedge clk or posedge rst)
    if (rst)          pcount <= 6'd0;
    else if (start)   pcount <= 6'd0;
    else if (run)     pcount <= pstep ? 6'd0 : (pcount + 6'd1);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      sh_out <= 8'h00; sh_in <= 8'h00;
      cnt    <= 5'h00;
      run    <= 1'b0;
      sck    <= 1'b0;
      dout_q <= 8'h00;
    end else if (start) begin
      run    <= 1'b1;
      cnt    <= 5'h0;
      sck    <= 1'b0;
      sh_in  <= 8'h00;
      // Writing sends the byte on MOSI; a read clocks out 0xFF (MOSI don't-care).
      sh_out <= rd_stb ? 8'hFF : din;
    end else if (run && pstep) begin
      if (cnt == 5'd17) begin          // byte complete -> latch + idle SCK low
        run    <= 1'b0;
        sck    <= 1'b0;
        dout_q <= sh_in;
        cnt    <= 5'h0;
      end else if (cnt[0] == 1'b0) begin
        // Even counts 0,2,...,16: SCK LOW (falling edge).  Sample MISO (the
        // flash presents its output bit here) and advance the MOSI bit.
        // Sampling on the rising edge was ONE BIT LATE (read data came back as
        // `data << 1` on silicon) -- aligning to the falling edge fixes it.
        sck <= 1'b0;
        if (cnt != 5'h0) begin
          sh_in  <= {sh_in[6:0], spi_miso};   // capture the response bit
          sh_out <= {sh_out[6:0], 1'b0};      // advance MOSI for the next bit
        end
        cnt <= cnt + 5'h1;
      end else begin
        // Odd counts 1,3,...,15: SCK HIGH (rising edge).  The flash samples the
        // MOSI bit here (mode-0: master changes data on falling, sampled rising).
        sck <= 1'b1;
        cnt <= cnt + 5'h1;
      end
    end
  end

  assign busy     = run;
  assign wait_req = run;
  assign dout     = dout_q;
  assign spi_csn  = cs;                          // active-low chip select
  // With clock_free=1 (SD init) SCK must toggle and MOSI be driven even while
  // CS# is high (the SD card needs those pulses).  With clock_free=0 (flash)
  // preserve the original CS-gated behaviour exactly.
  assign spi_sclk = clock_free ? (sck & run)  : (sck & ~cs);
  assign spi_mosi = clock_free ? (run ? sh_out[7] : 1'b1)
                               : ((cs == 1'b0) ? sh_out[7] : 1'b1);
endmodule
