`timescale 1ns/1ps
module dbg_m6;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sram_addr; wire sram_cen,sram_oen,sram_wen; wire [7:0] sram_data;
  integer k; integer m1=0; integer we=0;
  reg [15:0] prevA=0;
  always @(negedge u_dut.m1_n) begin
    m1=m1+1;
    if (m1<14) $display("M1 %0t A=%0h rdata=%0h", $time, u_dut.A, u_dut.mem_rdata);
  end
  always @(posedge clk) begin
    if (u_dut.mem_we) begin we=we+1; if (we<8) $display("WE %0t A=%0h data=%0h", $time, u_dut.A, u_dut.cpu_dout); end
  end
  z80_soc_sram u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),
    .uart_rx(uart_rx),.uart_tx(uart_tx),.sram_addr(sram_addr),.sram_cen(sram_cen),
    .sram_oen(sram_oen),.sram_wen(sram_wen),.sram_data(sram_data));
  sram_model u_sm(.addr(sram_addr),.cen(sram_cen),.oen(sram_oen),.wen(sram_wen),.data(sram_data));
  initial $readmemh("programs/sramtest.mem", u_sm.mem);
  always #5 clk=~clk;
  initial begin rst_n=0; #100 rst_n=1; #1500000;
    $write("0x2000: "); for(k=0;k<8;k=k+1) $write("%02x ", u_sm.mem[16'h2000+k]); $write("\n");
    $display("m1=%0d we=%0d", m1, we); $finish; end
endmodule
