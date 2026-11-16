`timescale 1ns/1ps
// tb_glg: probe SLICE_110 (rst_n_sync FFs) internals + nets to find why
// sync1 never clocks in the mapped sim.
module tb_glg;
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

  integer k = 0;
  always @(posedge u_dut.clk_op) begin
    k = k + 1;
    if (k < 12 || (k % 25 == 0 && k < 400))
      $display("k=%0d t=%0t rst_n_c=%b n40342=%b GSRNET=%b | SL110: SRN=%b SR1=%b SR=%b LSR_sig=%b CE=%b CLK=%b D0=%b D1=%b QB0=%b QB1=%b | sync1=%b sync2=%b cnt3=%b n38327=%b",
               k, $time, u_dut.rst_n_c, u_dut.n40342, u_dut.GSR_INST.GSRNET,
               u_dut.SLICE_110.SRN, u_dut.SLICE_110.SR1, u_dut.SLICE_110.SR,
               u_dut.SLICE_110.LSR_sig, u_dut.SLICE_110.CE_sig, u_dut.SLICE_110.CLK_sig,
               u_dut.SLICE_110.D0_sig, u_dut.SLICE_110.D1_sig,
               u_dut.SLICE_110.QB0, u_dut.SLICE_110.QB1,
               u_dut.rst_n_sync1, u_dut.rst_n_sync2, u_dut.rst_cnt_3, u_dut.n38327);
  end

  initial begin
    #200 rst_n = 1;
    #20000;
    $display("--- end probe: sync1=%b sync2=%b cnt3=%b ---", u_dut.rst_n_sync1, u_dut.rst_n_sync2, u_dut.rst_cnt_3);
    $finish;
  end
endmodule
