`timescale 1ns/1ps
module tb_gl8;
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
  integer step = 0;
  always @(negedge u_dut.clk_op) begin
    if (step % 8 == 0)
      $display("step%0d A=%04x rd_n=%b mreq_n=%b cen=%b", step, sram_addr[15:0],
               u_dut.rd_n, u_dut.mreq_n, u_dut.sram_cen);
    step = step + 1;
  end
  initial begin
    #200 rst_n = 1;
    #2000000;
    $display("final: A=%04x led=%b", sram_addr[15:0], led);
    $finish;
  end
endmodule
