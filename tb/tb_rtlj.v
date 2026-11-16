`timescale 1ns/1ps
// tb_rtlj: RTL ground-truth trace matching tb_glj's mapped probes.
module tb_rtlj;
  reg clk_in = 0, rst_n = 0;
  reg [7:0] sw = 0; reg uart_rx = 1'b1;
  wire uart_tx; wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));

  always #10 clk_in = ~clk_in;

  integer k = 0;
  always @(posedge u_dut.clk) begin
    k = k + 1;
    if (k >= 2 && k < 40)
      $display("k=%0d t=%0t A=%04x iorq_n=%b wr_n=%b mreq_n=%b rd_n=%b ts=%b mc=%b mcy_d=%b ts_d=%b lastT=%b lastM=%b IR=%02x dout=%02x",
               k, $time, u_dut.A, u_dut.iorq_n, u_dut.wr_n, u_dut.mreq_n, u_dut.rd_n,
               u_dut.u_cpu.i_tv80_core.tstate, u_dut.u_cpu.i_tv80_core.mcycle,
               u_dut.u_cpu.i_tv80_core.mcycles_d, u_dut.u_cpu.i_tv80_core.tstates,
               u_dut.u_cpu.i_tv80_core.last_tstate, u_dut.u_cpu.i_tv80_core.last_mcycle,
               u_dut.u_cpu.i_tv80_core.IR, u_dut.cpu_dout);
  end

  initial begin
    #200 rst_n = 1;
    #4000;
    $finish;
  end
endmodule
