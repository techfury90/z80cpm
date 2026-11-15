`timescale 1ns/1ps
module dbg_m2;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  integer rd=0;
  always @(posedge clk) begin
    if (u_dut.mem_rd) begin
      rd = rd + 1;
      if (rd < 40) $display("MEMRD %0t A=%0h dout=%0h", $time, u_dut.A, u_dut.mem_dout);
    end
    if (u_dut.io_wr) $display("IOWR %0t A=%0h cpu_dout=%0h", $time, u_dut.A, u_dut.cpu_dout);
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n));
  initial $readmemh("programs/led.mem", u_dut.u_mem.mem);
  always #5 clk=~clk;
  initial begin
    rst_n=0; #100 rst_n=1;
    #6000;
    $display("END led_reg=%0h halt_n=%b", led_reg, halt_n);
    $finish;
  end
endmodule
