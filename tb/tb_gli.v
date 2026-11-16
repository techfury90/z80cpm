`timescale 1ns/1ps
// tb_gli: capture the OUT machine cycle. During OUT (aIOA), A[15:8]=ACC=0xAA.
// Trigger on sram_addr[15:8]==0xAA and watch iorq_n/wr_n/mreq_n/rd_n/tstate.
module tb_gli;
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

  integer win = 0, armed = 0;
  // arm only after reset (avoid t=0 x-transition artifacts)
  always @(posedge u_dut.clk_op) begin
    if ($time > 1000000 && sram_addr[15:8] == 8'hAA && !armed) begin
      armed = 1; win = 0;
    end
    if (armed && win < 14) begin
      $display("w%0d t=%0t iorq_n=%b wr_n=%b mreq_n=%b rd_n=%b A=%04x dout=%02x ts2=%b mc6=%b",
               win, $time, u_dut.iorq_n, u_dut.wr_n, u_dut.mreq_n, u_dut.rd_n,
               sram_addr[15:0], {u_dut.cpu_dout_7,u_dut.cpu_dout_6,u_dut.cpu_dout_5,
                                 u_dut.cpu_dout_4,u_dut.cpu_dout_3,u_dut.cpu_dout_2,
                                 u_dut.cpu_dout_1,u_dut.cpu_dout_0},
               u_dut.tstate_2, u_dut.\u_cpu/mc_6 );
      win = win + 1;
      if (win == 14) armed = 0;
    end
  end

  initial begin
    #200 rst_n = 1;
    #30000;
    $display("--- done (30us) ---");
    $finish;
  end
endmodule
