`timescale 1ns/1ps
module tb_p;
  reg clk_in=0; reg rst_n=0; reg [7:0] sw=0; reg uart_rx=1; wire uart_tx; wire[7:0] led;
  wire[16:0] sa; wire c,o,w; wire[7:0] sd;
  z80cpm_brevia2 u_dut(.clk_in(clk_in),.rst_n(rst_n),.led(led),.sw(sw),.uart_rx(uart_rx),.uart_tx(uart_tx),
     .sram_addr(sa),.sram_cen(c),.sram_oen(o),.sram_wen(w),.sram_data(sd));
  sram_model u_sram(.addr(sa),.cen(c),.oen(o),.wen(w),.data(sd));
  always #10 clk_in=~clk_in;
  initial begin #200 rst_n=1; #200;
    $display("rst_n_c=%b rst_n_N_66=%b rst_m=%b", u_dut.rst_n_c, u_dut.rst_n_N_66, u_dut.rst_m);
    $finish; end
endmodule
