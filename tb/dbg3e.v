`timescale 1ns/1ps
module dbg3e;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer n=0; reg prev=1; integer last_t=0;
  always @(posedge clk) begin
    prev <= uart_tx;
    if (prev!==uart_tx) begin
      n=n+1;
      if (n<=25) $display("TXchg %0t val=%b dt=%0d", $time, uart_tx, $time-last_t);
      last_t=$time;
    end
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  initial begin rst_n=0; #200 rst_n=1; #30000000; $finish; end
endmodule
