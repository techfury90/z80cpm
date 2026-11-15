`timescale 1ns/1ps
module ob0;
  reg clk=0, reset_n=0, wait_n=1, int_n=1, nmi_n=1, busrq_n=1, cen=1;
  reg [7:0] di=0;
  wire [15:0] A; wire [7:0] dout;
  wire m1_n,mreq_n,iorq_n,rd_n,wr_n,rfsh_n,halt_n,busak_n;
  tv80s u(.reset_n(reset_n),.clk(clk),.cen(cen),.wait_n(wait_n),.int_n(int_n),.nmi_n(nmi_n),
    .busrq_n(busrq_n),.m1_n(m1_n),.mreq_n(mreq_n),.iorq_n(iorq_n),.rd_n(rd_n),.wr_n(wr_n),
    .rfsh_n(rfsh_n),.halt_n(halt_n),.busak_n(busak_n),.A(A),.di(di),.dout(dout));
  always #5 clk=~clk;
  initial begin
    $monitor("t=%0t reset=%b A=%0h m1_n=%b halt=%b", $time, reset_n, A, m1_n, halt_n);
    reset_n=0; #30 reset_n=1; #300 $finish;
  end
endmodule
