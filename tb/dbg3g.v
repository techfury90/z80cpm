`timescale 1ns/1ps
module dbg3g;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer n=0; reg prev=1;
  always @(posedge clk) begin
    prev <= uart_rx;
    if (prev===1 && uart_rx===0) begin n=n+1; if(n<3) $display("RXD edge %0t",$time); end
  end
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  always @(posedge clk) if (u_dut.u_rx.rx_state!==1'b0) $display("RXST %0t st=%b k=%0d bit=%0d avail=%b", $time, u_dut.u_rx.rx_state, u_dut.u_rx.k, u_dut.u_rx.bitidx, u_dut.u_rx.rx_avail);
  task sendb; input [7:0] b; integer k;
    begin uart_rx=0; #8680; for(k=0;k<8;k=k+1) begin uart_rx=b[k]; #8680; end uart_rx=1; #8680; end
  endtask
  initial begin
    rst_n=0; #200 rst_n=1; #3000000;
    sendb(8'h41);
    #3000000; $display("END avail=%b data=%0h", u_dut.u_rx.rx_avail, u_dut.u_rx.rx_data); $finish;
  end
endmodule
