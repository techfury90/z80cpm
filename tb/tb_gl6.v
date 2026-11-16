`timescale 1ns/1ps
// Attempt: force the reset sync to release (rst_s=0) and see if the core runs.
// If it then writes 0xAA, the stuck reset (GSR/init issue) is the root cause.
module tb_gl6;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  always #10 clk_in = ~clk_in;

  initial begin
    #200 rst_n = 1;
    #2000 force u_dut.rst_s = 1'b0;   // force reset released
    #300000;
    $display("rst_s=%b A=%04x led=%b", u_dut.rst_s, sram_addr[15:0], led);
    if ((led & 8'h7F) == 8'h55) $display("PASS: with reset forced off, core writes 0xAA");
    else $display("still no write: led=%b", led);
    $finish;
  end
endmodule
