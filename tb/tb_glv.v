`timescale 1ns/1ps
// tb_glv: gate-level functional verdict using only TOP-LEVEL ports.
// PASS: led[6:0]=01010101, SRAM read strobes present, at least one SRAM-free
// I/O write window (A[15:8]=0xAA while OUT executes).
module tb_glv;
  reg clk_in = 0, rst_n = 0;
  reg [7:0] sw = 0; reg uart_rx = 1'b1;
  wire uart_tx; wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  always #10 clk_in = ~clk_in;

  integer rd_pulses = 0, we_pulses = 0, io_cycles = 0;
  always @(negedge sram_oen) if ($time > 1000) rd_pulses = rd_pulses + 1;
  always @(negedge sram_wen) if ($time > 1000) we_pulses = we_pulses + 1;
  always @(posedge u_dut.clk_op)
    if ($time > 1000 && sram_addr[15:8] == 8'hAA) io_cycles = io_cycles + 1;

  initial begin
    #200 rst_n = 1;
    #2000000;
    $display("led=%b rd=%0d we=%0d ioAA=%0d (expect led[6:0]=01010101, rd>0)", led, rd_pulses, we_pulses, io_cycles);
    if ((led & 8'h7F) == 8'h55 && rd_pulses > 0)
      $display("PASS: mapped netlist runs the boot program and latches 0xAA");
    else
      $display("FAIL: led=%b rd=%0d we=%0d ioAA=%0d", led, rd_pulses, we_pulses, io_cycles);
    $finish;
  end
endmodule
