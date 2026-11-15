`timescale 1ns/1ps
module dbg3;
  reg clk=0; reg rst_n; wire [7:0] led_reg;
  integer n=0;
  always @(negedge clk) begin
    n = n + 1;
    if (n < 40) $display("t=%0t mreq_n=%b rd_n=%b iorq_n=%b wr_n=%b m1_n=%b mcycle=%0d ts=%0d intcycle_n=%b iorq=%b",
      $time, u_dut.mreq_n, u_dut.rd_n, u_dut.iorq_n, u_dut.wr_n, u_dut.m1_n,
      u_dut.u_cpu.i_tv80_core.mcycle, u_dut.u_cpu.i_tv80_core.tstate,
      u_dut.u_cpu.i_tv80_core.intcycle_n, u_dut.u_cpu.i_tv80_core.iorq);
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(8'h00),.halt_n());
  initial $readmemh("programs/led.mem", u_dut.u_mem.mem);
  always #5 clk=~clk;
  initial begin rst_n=0; #100 rst_n=1; #3000; $finish; end
endmodule
