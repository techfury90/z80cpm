`timescale 1ns/1ps
// Gate-level structural probe (no SDF). Q: is the core held in reset, or is
// its WAIT asserted, or does it lack a clock-enable? Probe the preserved
// hierarchy u_dut.u_cpu.i_tv80_core.*
module tb_gl;
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
    #500000;
    $display("rst_s=%b core.reset_n=%b core.wait_n=%b core.m1_n=%b",
             u_dut.rst_s,
             u_dut.u_cpu.i_tv80_core.reset_n,
             u_dut.u_cpu.i_tv80_core.wait_n,
             u_dut.u_cpu.i_tv80_core.m1_n);
    $display("A=%04x led=%b", sram_addr[15:0], led);
    $finish;
  end
endmodule
