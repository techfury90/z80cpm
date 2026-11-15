`timescale 1ns/1ps
module dbg_m3;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer w=0;
  always @(posedge clk) begin
    if (u_dut.io_wr) begin
      w=w+1;
      if (w<8) $display("IOW %0t A=%0h data=%0h", $time, u_dut.A, u_dut.cpu_dout);
    end
    if (u_dut.io_rd) begin
      $display("IOR %0t A=%0h", $time, u_dut.A);
    end
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  initial begin
    rst_n=0; #200 rst_n=1;
    #2000000;
    $display("END uart_tx=%b halt_n=%b ctrl=%0h tdre=%b tr_state=%0d w=%0d",
      uart_tx, halt_n, u_dut.u_acia.U_acia_6850_ctl.ctrl_reg,
      u_dut.u_acia.U_acia_6850_tx.tdre, u_dut.u_acia.U_acia_6850_tx.tr_state, w);
    $finish;
  end
endmodule
