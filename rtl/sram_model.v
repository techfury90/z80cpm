`timescale 1ns/1ps
// sram_model -- behavioral async SRAM (bank A, 128K x 8), IDT 71V124SA15.
// For this test we model the read as INSTANT (combinational) because the 15 ns
// access fits within a 25 MHz (40 ns) cycle, so no wait/nursing is required.
module sram_model(
  input  [16:0] addr,
  input         cen,
  input         oen,
  input         wen,
  inout  [7:0]  data
);
  reg [7:0] mem [0:131071];
  integer   i;
  reg       rd;
  reg [7:0] dout = 8'h00;
  assign data = rd ? dout : 8'bz;

  initial begin
    for (i = 0; i < 131072; i = i + 1) mem[i] = 8'h00;
  end

  always @(addr or cen or oen or wen) begin
    if (!cen && !oen) begin rd = 1'b1; dout = mem[addr]; end   // combinational read
    else begin rd = 1'b0; end
    if (!cen && !wen) mem[addr] = data;                         // combinational write
  end
endmodule
