`timescale 1ns/1ps
// tb_glf: GL probe -- clock spacing, reset synchronizer behavior, internal
// reset net n38327 (LSR of the main FF bank) during the first ~100 us.
module tb_glf;
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

  always #10 clk_in = ~clk_in;   // 50 MHz input

  integer ci = 0;
  always @(posedge clk_in) begin
    if (ci < 6) $display("clk_in[%0d] t=%0t", ci, $time);
    ci = ci + 1;
  end

  integer step = 0;
  always @(posedge u_dut.clk_op) begin
    if (step < 40)
      $display("op[%0d] t=%0t rst_n_c=%b sync1=%b sync2=%b cnt3=%b rst(n38327)=%b A=%04x",
               step, $time, u_dut.rst_n_c, u_dut.rst_n_sync1, u_dut.rst_n_sync2,
               u_dut.rst_cnt_3, u_dut.n38327, sram_addr[15:0]);
    step = step + 1;
  end

  initial begin
    #200 rst_n = 1;
    #100000;
    $display("t=100us: sync2=%b cnt3=%b rst=%b rd_n=%b led=%b",
             u_dut.rst_n_sync2, u_dut.rst_cnt_3, u_dut.n38327, u_dut.rd_n, led);
    #100000;
    $display("t=200us: sync2=%b cnt3=%b rst=%b rd_n=%b led=%b",
             u_dut.rst_n_sync2, u_dut.rst_cnt_3, u_dut.n38327, u_dut.rd_n, led);
    $finish;
  end
endmodule
