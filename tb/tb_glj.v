`timescale 1ns/1ps
// tb_glj: full FSM trace of the mapped netlist around the OUT/JMP cycles.
// tstate one-hot: {ts6..ts0}; mcycle bits mc6..mc2 (mc1/mc0 optimized away,
// inferred: all-zero + m1_n low = fetch M1, all-zero + m1_n high = M2).
module tb_glj;
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

  wire mem_rd_x = ~u_dut.mreq_n & ~u_dut.rd_n;
  wire [6:0] ts_x = {u_dut.\u_cpu/i_tv80_core/ts_6 , u_dut.\u_cpu/i_tv80_core/ts_5 ,
                     u_dut.\u_cpu/i_tv80_core/ts_4 , u_dut.\u_cpu/i_tv80_core/ts_3 ,
                     u_dut.tstate_2, u_dut.\u_cpu/i_tv80_core/tstate_1 , u_dut.\u_cpu/i_tv80_core/ts_0 };
  wire [4:0] mc_x = {u_dut.\u_cpu/mc_6 , u_dut.\u_cpu/i_tv80_core/mc_5 ,
                     u_dut.\u_cpu/i_tv80_core/mc_4 , u_dut.\u_cpu/i_tv80_core/mc_3 ,
                     u_dut.\u_cpu/i_tv80_core/mc_2 };
  wire [3:0] ir_hi = {u_dut.\u_cpu/i_tv80_core/IR_7 , u_dut.\u_cpu/i_tv80_core/IR_6 ,
                      u_dut.\u_cpu/i_tv80_core/IR_5 , u_dut.\u_cpu/i_tv80_core/IR_4 };

  integer k = 0;
  always @(posedge u_dut.clk_op) begin
    k = k + 1;
    if (k >= 12 && k < 75)
      $display("k=%0d t=%0t A=%04x mr=%b io=%b wr=%b ts=%b mc=%b IRhi=%h dout=%b%b%b%b%b%b%b%b",
               k, $time, sram_addr[15:0], mem_rd_x, u_dut.iorq_n, u_dut.wr_n, ts_x, mc_x, ir_hi,
               u_dut.cpu_dout_7,u_dut.cpu_dout_6,u_dut.cpu_dout_5,u_dut.cpu_dout_4,
               u_dut.cpu_dout_3,u_dut.cpu_dout_2,u_dut.cpu_dout_1,u_dut.cpu_dout_0);
  end

  initial begin
    #200 rst_n = 1;
    #6000;
    $finish;
  end
endmodule
