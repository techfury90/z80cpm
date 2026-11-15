`timescale 1ns/1ps
module dbg3c;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer edges=0;
  reg prev=1'b1;
  always @(posedge clk) begin
    prev <= uart_tx;
    if (prev===1'b1 && uart_tx===1'b0) begin edges=edges+1; if (edges<4) $display("TXEDGE %0t", $time); end
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  initial begin
    rst_n=0; #200 rst_n=1;
    #6000000;
    $display("END edges=%0d halt_n=%b", edges, halt_n);
    $finish;
  end
endmodule
