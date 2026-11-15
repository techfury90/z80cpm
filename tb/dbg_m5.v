`timescale 1ns/1ps
module dbg_m5;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sram_addr; wire sram_cen,sram_oen,sram_wen; wire [7:0] sram_data;
  integer k;
  z80_soc_sram u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),
    .uart_rx(uart_rx),.uart_tx(uart_tx),.sram_addr(sram_addr),.sram_cen(sram_cen),
    .sram_oen(sram_oen),.sram_wen(sram_wen),.sram_data(sram_data));
  sram_model u_sm(.addr(sram_addr),.cen(sram_cen),.oen(sram_oen),.wen(sram_wen),.data(sram_data));
  initial $readmemh("programs/sramtest.mem", u_sm.mem);
  always #5 clk=~clk;
  initial begin
    rst_n=0; #100 rst_n=1; #1500000;
    $display("program @0x0000:"); for(k=0;k<10;k=k+1) $write("%02x ", u_sm.mem[k]); $write("\n");
    $display("0x2000:"); for(k=0;k<8;k=k+1) $write("%02x ", u_sm.mem[16'h2000+k]); $write("\n");
    $display("0x4000:"); for(k=0;k<8;k=k+1) $write("%02x ", u_sm.mem[16'h4000+k]); $write("\n");
    $display("halt_n=%b", halt_n);
    $finish;
  end
endmodule
