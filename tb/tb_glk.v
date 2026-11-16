`timescale 1ns/1ps
// tb_glk: probe the mapped mcode decode outputs live: tstates (ts_d),
// mcycles_d, last_tstate, last_mcycle during MVI's M2 read vs RTL truth.
module tb_glk;
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

  wire [2:0] ts_d  = {u_dut.\u_cpu/i_tv80_core/tstates_2 , u_dut.\u_cpu/i_tv80_core/tstates_1 , 1'b0};
  wire [1:0] mcy_d = {u_dut.\u_cpu/i_tv80_core/mcycles_d_1 , u_dut.\u_cpu/i_tv80_core/mcycles_d_0 };
  wire [6:0] ts_x  = {u_dut.\u_cpu/i_tv80_core/ts_6 , u_dut.\u_cpu/i_tv80_core/ts_5 ,
                      u_dut.\u_cpu/i_tv80_core/ts_4 , u_dut.\u_cpu/i_tv80_core/ts_3 ,
                      u_dut.tstate_2, u_dut.\u_cpu/i_tv80_core/tstate_1 , u_dut.\u_cpu/i_tv80_core/ts_0 };
  wire [3:0] ir_hi = {u_dut.\u_cpu/i_tv80_core/IR_7 , u_dut.\u_cpu/i_tv80_core/IR_6 ,
                      u_dut.\u_cpu/i_tv80_core/IR_5 , u_dut.\u_cpu/i_tv80_core/IR_4 };

  integer k = 0;
  always @(posedge u_dut.clk_op) begin
    k = k + 1;
    if (k >= 13 && k < 35)
      $display("k=%0d t=%0t A=%04x IRhi=%h ts=%b ts_d~=%b mcy_d=%b lastT=%b lastM=%b mr=%b",
               k, $time, sram_addr[15:0], ir_hi, ts_x, ts_d, mcy_d,
               u_dut.\u_cpu/i_tv80_core/last_tstate , u_dut.\u_cpu/i_tv80_core/last_mcycle ,
               ~u_dut.mreq_n & ~u_dut.rd_n);
  end

  initial begin
    #200 rst_n = 1;
    #3000;
    $finish;
  end
endmodule
