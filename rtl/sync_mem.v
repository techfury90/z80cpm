`timescale 1ns/1ps
// sync_mem -- synchronous byte-wide RAM model (bank A), combinational read.
// No wait states: data is presented combinationally from the address. The
// registered write path exists so this model is NOT write-only (a model that
// only inits and never commits writes silently blackholes the stack).
module sync_mem(
  input         clk,
  input  [15:0] addr,
  input  [7:0]  wdata,
  input         we,
  output [7:0]  rdata
);
  reg [7:0] mem [0:65535];
  integer   i;
  initial begin
    for (i = 0; i < 65536; i = i + 1) mem[i] = 8'h00;
  end
  assign rdata = mem[addr];
  always @(posedge clk)
    if (we) mem[addr] <= wdata;
endmodule
