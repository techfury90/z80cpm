`timescale 1ns/1ps
module tb_gla;
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
    #40000;
    $display("rst_n=%b rst_n_c=%b tstate2=%b", u_dut.rst_n, u_dut.rst_n_c, u_dut.\u_cpu/tstate_2 );
    $display("clk_op_enable_207=%b", u_dut.\u_cpu/clk_op_enable_207 );
    $finish;
  end
endmodule
