`timescale 1ns/1ps
// tb_glh: does the mapped core strobe wr_n/iorq_n for OUT 0x40, and what does
// the led_reg FF (CE/D) see?
module tb_glh;
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

  integer wr_pulses = 0, iorq_low = 0;
  always @(negedge u_dut.wr_n)  wr_pulses  = wr_pulses + 1;
  always @(negedge u_dut.iorq_n) iorq_low = iorq_low + 1;

  // capture one full loop iteration around an iorq_n falling edge
  integer win = 0, armed = 0;
  always @(negedge u_dut.iorq_n) begin armed = 1; win = 0; end
  always @(posedge u_dut.clk_op) begin
    if (armed && win < 10) begin
      $display("w%0d t=%0t iorq_n=%b wr_n=%b A=%04x dout=%b%b%b%b%b%b%b%b led_reg6..0=%b%b%b%b%b%b%b rst=%b",
               win, $time, u_dut.iorq_n, u_dut.wr_n, sram_addr[15:0],
               u_dut.cpu_dout_7, u_dut.cpu_dout_6, u_dut.cpu_dout_5, u_dut.cpu_dout_4,
               u_dut.cpu_dout_3, u_dut.cpu_dout_2, u_dut.cpu_dout_1, u_dut.cpu_dout_0,
               u_dut.led_reg_6, u_dut.led_reg_5, u_dut.led_reg_4,
               u_dut.led_reg_3, u_dut.led_reg_2, u_dut.led_reg_1, u_dut.led_reg_0,
               u_dut.n38327);
      win = win + 1;
      if (win == 10) armed = 0;
    end
  end

  initial begin
    #200 rst_n = 1;
    #50000;
    $display("t=50us: wr_pulses=%0d iorq_low=%0d led_reg_6=%b led=%b",
             wr_pulses, iorq_low, u_dut.led_reg_6, led);
    $finish;
  end
endmodule
