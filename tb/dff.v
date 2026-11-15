`timescale 1ns/1ps
module dfftest;
  reg clk=0; reg d=0; reg [3:0] q=0;
  always @(posedge clk) q <= q+1;
  always #5 clk = ~clk;
  initial begin
    $monitor("t=%0t clk=%b q=%0d", $time, clk, q);
    #200 $finish;
  end
endmodule
