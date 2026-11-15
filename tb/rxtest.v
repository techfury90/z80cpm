`timescale 1ns/1ps
module rxtest;
  reg clk=0; reg rst_n; reg rxd=1;
  wire [7:0] rx_data; wire rx_avail; reg consume=0;
  uart_rx uu(.clk(clk),.rst_n(rst_n),.rxd(rxd),.rx_data(rx_data),.rx_avail(rx_avail),.rx_consume(consume));
  always #5 clk=~clk;  // 100 MHz test clock
  task sendb; input [7:0] b; integer k,j;
    begin rxd=0; for(j=0;j<217;j=j+1)@(posedge clk);
      for(k=0;k<8;k=k+1) begin rxd=b[k]; for(j=0;j<217;j=j+1)@(posedge clk); end
      rxd=1; for(j=0;j<217;j=j+1)@(posedge clk); end
  endtask
  initial begin
    rst_n=0; #100 rst_n=1;
    sendb(8'h55);
    #1000;
    $display("avail=%b data=%0h", rx_avail, rx_data);
    if (rx_avail && rx_data==8'h55) $display("PASS");
    else $display("FAIL");
    $finish;
  end
endmodule
