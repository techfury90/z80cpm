`timescale 1ns/1ps
module dbg_m5d;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  wire [16:0] sram_addr; wire sram_cen,sram_oen,sram_wen; wire [7:0] sram_data;
  integer n=0;
  always @(posedge clk) begin
    if (u_dut.u_sram.state==2'd1) begin  // ST_ACCESS
      n=n+1; if (n<15) $display("ACC %0t addr=%0h cen=%b oen=%b sdata=%0h dd=%b dout=%0h cnt=%0d",
        $time, sram_addr, sram_cen, sram_oen, sram_data, u_sm.data_driven, u_sm.dout, u_dut.u_sram.cnt);
    end
  end
  z80_soc_sram u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),
    .uart_rx(uart_rx),.uart_tx(uart_tx),.sram_addr(sram_addr),.sram_cen(sram_cen),
    .sram_oen(sram_oen),.sram_wen(sram_wen),.sram_data(sram_data));
  sram_model u_sm(.addr(sram_addr),.cen(sram_cen),.oen(sram_oen),.wen(sram_wen),.data(sram_data));
  initial $readmemh("programs/sramtest.mem", u_sm.mem);
  always #5 clk=~clk;
  initial begin rst_n=0; #100 rst_n=1; #100000; $display("END"); $finish; end
endmodule
