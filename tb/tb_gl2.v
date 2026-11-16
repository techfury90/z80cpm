`timescale 1ns/1ps
// GATE-LEVEL post-map sim, INSTRUMENTED to find why the mapped netlist fails.
// Probes: does clk_op (PLL out) tick? What address is the core fetching
// (found via the SRAM address bus, which is combinationally = {0,A})?
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

  initial $sdf_annotate("z80cpm_impl1_mapvo.sdf", u_dut);

  always #10 clk_in = ~clk_in;   // 50 MHz input
  integer clk_edges = 0; reg clk_op_prev = 0;
  always @(u_dut.clk_op) begin
    if (u_dut.clk_op !== clk_op_prev) begin
      if (clk_op_prev === 1'b0 && u_dut.clk_op === 1'b1) clk_edges = clk_edges + 1;
      clk_op_prev = u_dut.clk_op;
    end
  end

  initial begin
    #200 rst_n = 1;
    #2000000;
    $display("clk_op_rising_edges=%0d  rst_n=%b", clk_edges, rst_n);
    $display("at end: A(addr)=%04x  led=%b", sram_addr[15:0], led);
    $finish;
  end

  integer s;
  initial begin
    #100000; s = sram_addr[15:0]; $display("t=100us A=%04x", s);
    #500000; s = sram_addr[15:0]; $display("t=600us A=%04x", s);
  end
endmodule
