`timescale 1ns/1ps
// ram_disk -- I/O-mapped RAM disk over the SECOND 64K of the on-board 128K SRAM.
//
// The 128K SRAM is banked: bit16 of sram_addr selects the bank.
//   bank A (bit16=0), 0x0000-0xFFFF  : the Z80 machine (CPU memory map)
//   bank B (bit16=1), 0x10000-0x1FFFF: this RAM disk
//
// I/O interface (ports):
//   0x20 : DATA, read/write the RAM disk at the current address, then
//          AUTO-INCREMENT the address register.
//   0x21 : ADDRESS low byte  (write)
//   0x22 : ADDRESS high byte (write)
//
// The controller owns the shared SRAM bus only while a data access (0x20) is in
// progress; the machine's memory controller owns it otherwise. 'active' is high
// whenever the RAM disk is driving the bus (used by the top to mux the bus).
module ram_disk(
  input         clk,
  input         rst,
  input  [7:0]  cpu_dout,   // CPU data to write to the disk
  input         rd_data,    // io_rd strobe for data port   (0x20)
  input         wr_data,    // io_wr strobe for data port   (0x20)
  input         wr_a_lo,    // io_wr strobe for ADDR low    (0x21)
  input         wr_a_hi,    // io_wr strobe for ADDR high   (0x22)
  output [7:0]  dout,       // data read back to the CPU
  output [16:0] sram_addr,
  output        sram_cen, sram_oen, sram_wen,
  output [7:0]  sram_data_out,   // write-data onto the shared bus
  input  [7:0]  sram_data_in,    // read-data from the shared bus
  output        active           // 1 = this module owns the SRAM bus
);
  reg [15:0] addr = 16'h0000;
  wire       go = rd_data || wr_data;
  reg        go_d;
  // Advance the auto-increment pointer only at the END of a data access. The
  // TV80 I/O cycle asserts the rd/wr strobe for several clocks; incrementing per
  // clock would race the address ahead of the byte the CPU samples. Advancing on
  // the access's falling edge keeps the address (and read data) stable for the
  // whole access and moves the pointer exactly once per IN/OUT.
  wire       go_fall = (~go) & go_d;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      addr  <= 16'h0000;
      go_d  <= 1'b0;
    end else begin
      go_d  <= go;
      if (wr_a_lo) addr[7:0]  <= cpu_dout;
      if (wr_a_hi) addr[15:8] <= cpu_dout;
      if (go_fall) addr       <= addr + 16'h0001;   // auto-increment ONCE per access
    end
  end

  // Drive the SRAM bus for bank B (bit16 = 1) only while a data access is active.
  assign sram_addr      = {1'b1, addr};
  assign sram_cen       = ~go;
  assign sram_oen       = ~(go & rd_data);
  assign sram_wen       = ~(go & wr_data);
  assign sram_data_out  = cpu_dout;
  assign dout           = sram_data_in;
  assign active         = go;
endmodule
