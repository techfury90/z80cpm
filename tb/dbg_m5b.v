`timescale 1ns/1ps
module dbg_m5b;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sram_addr; wire sram_cen,sram_oen,sram_wen; wire [7:0] sram_data;
  integer n=0;
  always @(posedge clk) begin
    if (u_dut.mem_we) begin
      n=n+1; if (n<12) $display("WE %0t addr=%0h wdata=%0h cen=%b wen=%b oen=%b sdata=%0h st=%0d",
        $time, u_dut.A, u_dut.cpu_dout, sram_cen, sram_wen, sram_oen, sram_data, u_dut.u_sram.state);
    end
  end
  z80_soc_sram u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),
    .uart_rx(uart_rx),.uart_tx(uart_tx),.sram_addr(sram_addr),.sram_cen(sram_cen),
    .sram_oen(sram_oen),.sram_wen(sram_wen),.sram_data(sram_data));
  sram_model u_sm(.addr(sram_addr),.cen(sram_cen),.oen(sram_oen),.wen(sram_wen),.data(sram_data));
  initial $readmemh("programs/sramtest.mem", u_sm.mem);
  always #5 clk=~clk;
  initial begin rst_n=0; #100 rst_n=1; #50000; $display("0x2000=%0h", u_sm.mem[16'h2000]); $finish; end
endmodule
