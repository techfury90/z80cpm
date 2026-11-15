`timescale 1ns/1ps
module dbg2;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  integer m1=0;
  always @(negedge u_dut.m1_n) begin m1 = m1 + 1; if (m1<20) $display("M1 %0t A=%0h", $time, u_dut.A); end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n));
  initial $readmemh("programs/led.mem", u_dut.u_mem.mem);
  always #5 clk=~clk;
  initial begin
    #100 rst_n=1;
    #8000;
    $display("END led_reg=%0h halt_n=%b m1=%0d mcycle=%0d ts=%0d mreq_n=%b rd_n=%b",
             led_reg, halt_n, m1, u_dut.u_cpu.i_tv80_core.mcycle, u_dut.u_cpu.i_tv80_core.tstate,
             u_dut.mreq_n, u_dut.rd_n);
    $finish;
  end
  initial begin rst_n=0; end
endmodule
