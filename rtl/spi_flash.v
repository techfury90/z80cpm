`timescale 1ns/1ps
// spi_flash -- I/O-mapped SPI byte-engine controller for the on-board
// SST25VF020 serial flash (256 KB) -- the M7 solid-state disk on the Brevia2.
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
  reg [4:0] cnt;      // 0..16 across one byte (2 clocks per bit; 16 = terminal)
  reg       run;      // a byte transfer is in progress
  reg       sck;      // generated SCK (idles low)
  reg [7:0] dout_q;

  wire go_stb = rd_stb || wr_stb;
  // Start a transfer on a 0x50 access only while the flash is selected (CS# low).
  wire start  = go_stb & ~cs & ~run;

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
    end else if (run) begin
      if (cnt == 5'd16) begin          // byte complete -> latch + idle SCK low
        run    <= 1'b0;
        sck    <= 1'b0;
        dout_q <= sh_in;
        cnt    <= 5'h0;
      end else if (cnt[0] == 1'b0) begin
        // Even clock: SCK low.  Present the current MSB, then shift for the
        // next bit (data changes on the falling edge in mode 0).
        sck <= 1'b0;
        if (cnt != 5'h0) sh_out <= {sh_out[6:0], 1'b0};
        cnt <= cnt + 5'h1;
      end else begin
        // Odd clock: SCK high (rising edge).  Sample MISO MSB-first.
        sck  <= 1'b1;
        sh_in <= {sh_in[6:0], spi_miso};
        if (cnt == 5'd15) cnt <= 5'd16;   // 8th bit sampled -> next clock finishes
        else              cnt <= cnt + 5'h1;
      end
    end
  end

  assign busy     = run;
  assign wait_req = run;
  assign dout     = dout_q;
  assign spi_csn  = cs;                          // active-low chip select
  assign spi_sclk = sck & ~cs;                   // SCK toggles only while selected
  assign spi_mosi = (cs == 1'b0) ? sh_out[7] : 1'b1;   // drive MOSI only when selected
endmodule
