`timescale 1ns/1ps
module dbg_board;
  reg clk_in=0; reg rst_n=0; reg [7:0] sw=0; wire [7:0] led;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sa; wire sc,so,sww; wire [7:0] sd;
  integer m1=0;
  always @(negedge u_dut.m1_n) begin m1=m1+1; if(m1<10) $display("M1 %0t A=%0h bus=%0h rom=%b rd=%b", $time, u_dut.A, u_dut.bus_din, u_dut.rom_active, u_dut.mem_rd); end
  z80cpm_brevia2 u_dut(.clk_in(clk_in),.rst_n(rst_n),.led(led),.sw(sw),.uart_rx(uart_rx),.uart_tx(uart_tx),
    .sram_addr(sa),.sram_cen(sc),.sram_oen(so),.sram_wen(sww),.sram_data(sd));
  sram_model u_sm(.addr(sa),.cen(sc),.oen(so),.wen(sww),.data(sd));
  always #10 clk_in=~clk_in;
  initial begin
    rst_n=0; #200 rst_n=1;
    #2000000;
    $display("END m1=%0d rst=%b cpu_clk=%b", m1, u_dut.rst, u_dut.cpu_clk);
    $finish;
  end
endmodule
