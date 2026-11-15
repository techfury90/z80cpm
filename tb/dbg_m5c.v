`timescale 1ns/1ps
module dbg_m5c;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sram_addr; wire sram_cen,sram_oen,sram_wen; wire [7:0] sram_data;
  integer fetches=0; integer m1=0;
  always @(negedge u_dut.m1_n) begin m1=m1+1; if (m1<15) $display("M1 %0t A=%0h rdata=%0h wait=%b", $time, u_dut.A, u_dut.mem_rdata, u_dut.u_sram.wait_n); end
  z80_soc_sram u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),
    .uart_rx(uart_rx),.uart_tx(uart_tx),.sram_addr(sram_addr),.sram_cen(sram_cen),
    .sram_oen(sram_oen),.sram_wen(sram_wen),.sram_data(sram_data));
  sram_model u_sm(.addr(sram_addr),.cen(sram_cen),.oen(sram_oen),.wen(sram_wen),.data(sram_data));
  initial $readmemh("programs/sramtest.mem", u_sm.mem);
  always #5 clk=~clk;
  initial begin rst_n=0; #100 rst_n=1; #200000; $display("END m1=%0d 0x2000=%0h", m1, u_sm.mem[16'h2000]); $finish; end
endmodule
