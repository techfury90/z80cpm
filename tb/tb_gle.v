`timescale 1ns/1ps
// tb_gle: gate-level post-map sim, combined FSM trace + LED verdict.
// Pass criterion: led[6:0]=01010101 (0x55) == core wrote 0xAA to port 0x40,
// and u_cpu tstate_2/mc_6 advance with rd_n pulsing (FSM actually clocks).
module tb_gle;
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

  // NOTE: no $sdf_annotate -- we simulate against the FUNCTIONAL xp2 library
  // (build/xp2_func: specify blocks stripped because iverilog does not drive
  // the $setuphold *_dly sample nets; SDF timing is not the point here).
  // The netlist is still the REAL post-map netlist.

  always #10 clk_in = ~clk_in;   // 50 MHz input

  // FSM trace: first 24 clk_op edges after reset release must show tstate/mc
  // advancing and rd_n asserting (a fetch).
  integer step = 0;
  always @(posedge u_dut.clk_op) begin
    if (step < 24)
      $display("step%0d t=%0t sync2=%b cnt3=%b tstate_2=%b mc_6=%b rd_n=%b mreq_n=%b A=%04x",
               step, $time, u_dut.rst_n_sync2, u_dut.rst_cnt_3, u_dut.tstate_2,
               u_dut.\u_cpu/mc_6 , u_dut.rd_n, u_dut.mreq_n, sram_addr[15:0]);
    step = step + 1;
  end

  // rd_n falling-edge counter (any fetch strobes it)
  integer rd_pulses = 0;
  always @(negedge u_dut.rd_n) rd_pulses = rd_pulses + 1;

  initial begin
    #200 rst_n = 1;
    #2000000;                       // ~2 ms of 50 MHz: >25k clk_op cycles
    $display("led=%b rd_pulses=%0d  (expect led[6:0]=01010101, rd_pulses>0)", led, rd_pulses);
    if ((led & 8'h7F) == 8'h55 && rd_pulses > 0)
      $display("PASS: mapped netlist clocks the core, executes OUT 40, latches 0xAA");
    else
      $display("FAIL: mapped netlist still dead (led=%b rd_pulses=%0d)", led, rd_pulses);
    $finish;
  end
endmodule
