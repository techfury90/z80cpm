`timescale 1ns/1ps
module dff2;
  reg clk=0; reg [3:0] q=0; reg [3:0] q2;
  always @(posedge clk) q <= #1 q+1;
  always @(posedge clk) q2 <= #1 q2+1;
  always #5 clk=~clk;
  initial begin $monitor("t=%0t clk=%b q=%0d q2=%0d",$time,clk,q,q2); #200 $finish; end
endmodule
