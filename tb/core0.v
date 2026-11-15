`timescale 1ns/1ps
module core0;
  reg clk=0; reg reset_n=0; reg wait_n=1; reg int_n=1,nmi_n=1,busrq_n=1;
  wire [15:0] A; wire [7:0] do; wire m1_n,iorq,no_read,write,rfsh_n,halt_n,busak_n;
  reg [7:0] di=0;
  wire [6:0] mc, ts;
  tv80_core u(.reset_n(reset_n),.clk(clk),.cen(1'b1),.wait_n(wait_n),.int_n(int_n),
    .nmi_n(nmi_n),.busrq_n(busrq_n),.m1_n(m1_n),.iorq(iorq),.no_read(no_read),.write(write),
    .rfsh_n(rfsh_n),.halt_n(halt_n),.busak_n(busak_n),.A(A),.dinst(di),.di(di),.do(do),
    .mc(mc),.ts(ts),.intcycle_n(),.IntE(),.stop(),.pc());
  always #5 clk=~clk;
  initial begin
    $monitor("t=%0t reset=%b PC=%0h A=%0h mcycle=%0d ts=%0d m1_n=%b halt=%b ClkEn=%b BusAck=%b mcycles=%0d",
             $time, reset_n, u.PC, A, mc, ts, m1_n, halt_n, u.ClkEn, u.BusAck, u.mcycles);
    reset_n=0;
    #30 reset_n=1;
    #300 $finish;
  end
endmodule
