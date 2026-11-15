`timescale 1ns/1ps
module dbg3f;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  integer sent=0;
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  // monitor RX
  reg [7:0] last_data=0; reg last_avail=0;
  always @(posedge clk) begin
    if (u_dut.u_rx.rx_avail && !last_avail) $display("RXAVAIL %0t data=%0h", $time, u_dut.u_rx.rx_data);
    if (u_dut.u_rx.rx_consume && u_dut.u_rx.rx_avail) $display("RXCONSUME %0t", $time);
    last_avail <= u_dut.u_rx.rx_avail;
  end
  task sendb; input [7:0] b; integer k;
    begin uart_rx=0; #8680; for(k=0;k<8;k=k+1) begin uart_rx=b[k]; #8680; end uart_rx=1; #8680; end
  endtask
  initial begin
    rst_n=0; #200 rst_n=1;
    #3000000;              // let message print
    $display("sending A"); sendb(8'h41);
    #3000000;
    $display("END uart_tx=%b halt_n=%b", uart_tx, halt_n);
    $finish;
  end
endmodule
