`timescale 1ns/1ps
// uart_rx -- simple 8N1 receiver. Detects start bit, samples 8 data bits at
// mid-bit (LSB first), checks the stop bit, sets rx_avail. rx_consume clears it.
module uart_rx(
  input         clk,
  input         rst_n,
  input         rxd,
  output reg [7:0] rx_data,
  output reg    rx_avail,
  input         rx_consume
);
  localparam [11:0] BAUD_DIV = 2604;  // 25 MHz / 9600

  reg          rx_state;
  reg [15:0]    k     = 0;
  reg [3:0]    bitidx= 0;
  reg [7:0]    sr    = 0;
  reg          rxd_d = 1'b1;
  reg          start_ok = 1'b0;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      rx_state <= 1'b0; rx_avail <= 1'b0; k <= 0; bitidx <= 0; sr <= 0;
      rxd_d <= 1'b1; start_ok <= 1'b0;
    end
    else begin
      rxd_d <= rxd;
      if (rx_consume) rx_avail <= 1'b0;
      if (!rx_state) begin
        // Idle: wait for a start bit (falling edge of rxd).
        if (rxd_d === 1'b1 && rxd === 1'b0) begin
          rx_state <= 1'b1; k <= 0; bitidx <= 0; start_ok <= 1'b0;
        end
      end
      else begin
        k <= k + 1;
        // Confirm start bit is still low at mid-start.
        if (bitidx == 0 && k == (BAUD_DIV/2) && rxd === 1'b1) begin
          rx_state <= 1'b0;  // false start
        end
        // Sample each data bit at mid-bit. Data bit i is at (i+1.5)*BAUD_DIV.
        else if (bitidx < 8 && k == ((bitidx+1)*BAUD_DIV + BAUD_DIV/2)) begin
          sr[bitidx] <= rxd;
          bitidx <= bitidx + 1;
        end
        // Stop bit check.
        else if (bitidx == 8 && k == (9*BAUD_DIV + BAUD_DIV/2)) begin
          if (rxd === 1'b1) begin
            rx_data <= sr; rx_avail <= 1'b1;
          end
          rx_state <= 1'b0;
        end
      end
    end
  end
endmodule
