`timescale 1ns/1ps
// tb_glm: dump every mcode input around the mid-cycle decode flip.
module tb_glm;
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

  wire [6:0] ts_x  = {u_dut.\u_cpu/i_tv80_core/ts_6 , u_dut.\u_cpu/i_tv80_core/ts_5 ,
                      u_dut.\u_cpu/i_tv80_core/ts_4 , u_dut.\u_cpu/i_tv80_core/ts_3 ,
                      u_dut.tstate_2, u_dut.\u_cpu/i_tv80_core/tstate_1 , u_dut.\u_cpu/i_tv80_core/ts_0 };
  wire [3:0] ir_hi = {u_dut.\u_cpu/i_tv80_core/IR_7 , u_dut.\u_cpu/i_tv80_core/IR_6 ,
                      u_dut.\u_cpu/i_tv80_core/IR_5 , u_dut.\u_cpu/i_tv80_core/IR_4 };

  integer k = 0;
  always @(posedge u_dut.clk_op) begin
    k = k + 1;
    if (k >= 13 && k < 34)
      $display("k=%0d ts=%b IRhi=%h | ISet=%b%b F=%b%b%b%b%b%b%b%b mc2=%b mc3=%b mcy_d=%b%b",
               k, ts_x, ir_hi,
               u_dut.\u_cpu/i_tv80_core/ISet_1 , u_dut.\u_cpu/i_tv80_core/ISet_0 ,
               u_dut.\u_cpu/i_tv80_core/F_7 , u_dut.\u_cpu/i_tv80_core/F_6 ,
               u_dut.\u_cpu/i_tv80_core/F_5 , u_dut.\u_cpu/i_tv80_core/F_4 ,
               u_dut.\u_cpu/i_tv80_core/F_3 , u_dut.\u_cpu/i_tv80_core/F_2 ,
               u_dut.\u_cpu/i_tv80_core/F_1 , u_dut.\u_cpu/i_tv80_core/F_0 ,
               u_dut.\u_cpu/i_tv80_core/mc_2 , u_dut.\u_cpu/i_tv80_core/mc_3 ,
               u_dut.\u_cpu/i_tv80_core/mcycles_d_1 , u_dut.\u_cpu/i_tv80_core/mcycles_d_0 );
  end

  initial begin
    #200 rst_n = 1;
    #3000;
    $finish;
  end
endmodule
