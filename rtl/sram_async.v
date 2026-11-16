`timescale 1ns/1ps
// sram_async -- async SRAM controller (bank A) for the IDT 71V124SA15 (15 ns).
// At 25 MHz (40 ns cycle) the 15 ns access fits within the cycle, so no wait
// states are required: the address and data are driven combinationally from the
// CPU bus and read data is presented straight through.
module sram_async(
  input         clk,
  input         rst_n,
  input  [15:0] addr,
  input         mem_rd,
  input         mem_we,
  output        wait_n,
  output [7:0]  rdata,
  output [16:0] sram_addr,
  output        sram_cen,
  output        sram_oen,
  output        sram_wen,
  input  [7:0]  sram_data_in
);
  wire go = mem_rd | mem_we;

  assign sram_addr = {1'b0, addr};   // bank A (bit16=0)
  assign wait_n    = 1'b1;           // no wait at 25 MHz
  assign rdata     = sram_data_in;   // read data comes from the shared bus
  assign sram_cen  = ~go;
  assign sram_oen  = ~(go & ~mem_we);
  assign sram_wen  = ~(go & mem_we);
endmodule
