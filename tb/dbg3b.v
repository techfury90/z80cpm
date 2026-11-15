`timescale 1ns/1ps
module dbg3b;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer w=0;
  always @(posedge clk) begin
    if (u_dut.io_wr && (u_dut.A[5:0] <= 6'h21)) begin
      w=w+1;
      if (w<12) $display("IOW %0t A=%0h data=%0h tdre=%b tx_lock=%b tr_state=%0d data_reg=%0h cts=%b",
        $time, u_dut.A, u_dut.cpu_dout, u_dut.u_acia.U_acia_6850_tx.tdre,
        u_dut.u_acia.U_acia_6850_tx.tx_lock, u_dut.u_acia.U_acia_6850_tx.tr_state,
        u_dut.u_acia.U_acia_6850_tx.data_reg, u_dut.u_acia.U_acia_6850_tx.cts_n);
    end
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  initial begin
    rst_n=0; #200 rst_n=1;
    #6000000;
    $display("END tdre=%b tr_state=%0d uart_tx=%b", u_dut.u_acia.U_acia_6850_tx.tdre, u_dut.u_acia.U_acia_6850_tx.tr_state, uart_tx);
    $finish;
  end
endmodule
