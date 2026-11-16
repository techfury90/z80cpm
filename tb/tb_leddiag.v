`timescale 1ns/1ps
// Diagnostic board-level sim for z80cpm_brevia2 with the stackless LED-blink
// boot program. Verifies two things independently:
//  1) the hardware heartbeat (led[7]) toggles  -> PLL clock is ticking + FPGA cfg
//  2) the CPU writes to I/O port 0x40 (led[6:0]) -> reset released + core decodes
// Neither depends on the external SRAM (the blink program is stackless).
module tb_leddiag;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  wire [7:0] led;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  always #10 clk_in = ~clk_in;   // 50 MHz input

  integer hb_toggles = 0, led_changes = 0;
  reg     hb_prev = 0;
  reg [6:0] led_prev = 0;
  always @(posedge u_dut.clk) begin
    if (hb_prev !== u_dut.led[7]) begin hb_toggles <= hb_toggles + 1; hb_prev <= u_dut.led[7]; end
    if (led_prev !== u_dut.led[6:0]) begin led_changes <= led_changes + 1; led_prev <= u_dut.led[6:0]; end
  end

  initial begin
    #200 rst_n = 1;
    #3000000;                      // run ~3 ms of sim
    $display("hb_toggles=%0d  led_changes=%0d  led=%b", hb_toggles, led_changes, led);
    if (hb_toggles > 2 && led_changes > 2)
      $display("PASS: heartbeat toggles (clock ticking) AND CPU drives LED port (reset released + decode ok)");
    else
      $display("FAIL: hb_toggles=%0d led_changes=%0d", hb_toggles, led_changes);
    $finish;
  end
endmodule
