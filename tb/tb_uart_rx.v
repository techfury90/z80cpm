`timescale 1ns/1ps
// Focused uart_rx test at 115200 baud: drive a full 8N1 frame on rxd and check
// that the receiver latches the correct byte (verifies k counter can span the
// whole 10-bit frame without overflowing).
module tb_uart_rx;
  reg  clk = 0, rst_n = 0, rxd = 1, rx_consume = 0;
  wire [7:0] rx_data;
  wire rx_avail;
  uart_rx u(.clk(clk), .rst_n(rst_n), .rxd(rxd),
            .rx_data(rx_data), .rx_avail(rx_avail), .rx_consume(rx_consume));
  localparam integer BAUD_DIV = 217;
  always #20 clk = ~clk;   // 25 MHz (40 ns period)

  task send_byte(input [7:0] b);
    integer i;
    begin
      rxd = 0;  repeat (BAUD_DIV) @(posedge clk);  // start bit
      for (i = 0; i < 8; i = i + 1) begin
        rxd = b[i];  repeat (BAUD_DIV) @(posedge clk);
      end
      rxd = 1;  repeat (BAUD_DIV) @(posedge clk);  // stop bit
    end
  endtask

  initial begin
    rst_n = 0; #200 rst_n = 1; #200;
    send_byte(8'h41);            // 'A'
    #2000;
    $display("rx_avail=%b rx_data=%02x", rx_avail, rx_data);
    if (rx_avail && rx_data == 8'h41) $display("PASS: uart_rx receives 0x41 at 115200");
    else                              $display("FAIL");
    // consume + send another
    rx_consume = 1; #200; rx_consume = 0; #200;
    send_byte(8'h5A);            // 'Z'
    #2000;
    $display("rx_avail=%b rx_data=%02x", rx_avail, rx_data);
    if (rx_avail && rx_data == 8'h5A) $display("PASS: uart_rx receives 0x5A at 115200");
    else                              $display("FAIL 2");
    $finish;
  end
endmodule
