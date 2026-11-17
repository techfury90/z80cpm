r`timescale 1ns/1ps
// uart_rx -- simple 8N1 receiver, hardened: the async rxd is 2-flop synchronized
// (rxd_s0/rxd_s1) before sampling to kill metastability, per Lattice rxcver.v.
module uart_rx(
  input         clk,
  input         rst_n,
  input         rxd,
  output reg [7:0] rx_data,
  output reg    rx_avail,
  input         rx_consume
);
  localparam [11:0] BAUD_DIV = 1302;  // 25 MHz / 19200

  reg          rx_state;
  reg [15:0]    k     = 0;
  reg [3:0]    bitidx= 0;
  reg [7:0]    sr    = 0;
  reg          rxd_s0 = 1'b1, rxd_s1 = 1'b1;   // 2-flop async->sync synchronizer

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      rx_state <= 1'b0; rx_avail <= 1'b0; k <= 0; bitidx <= 0; sr <= 0;
      rxd_s0 <= 1'b1; rxd_s1 <= 1'b1;
    end
    else begin
      rxd_s0 <= rxd;        // sync stage 1
      rxd_s1 <= rxd_s0;     // sync stage 2 (metastability-free; use this)
      if (rx_consume) rx_avail <= 1'b0;
      if (!rx_state) begin
        // Idle: wait for the start bit (falling edge of the synchronized rxd).
        if (rxd_s0 === 1'b0 && rxd_s1 === 1'b1) begin
          rx_state <= 1'b1; k <= 0; bitidx <= 0;
        end
      end
      else begin
        k <= k + 1;
        // Verify the start bit is still low at mid-start; if high, it was a false start.
        if (bitidx == 0 && k == (BAUD_DIV/2) && rxd_s1 === 1'b1) begin
          rx_state <= 1'b0;
        end
        // Sample each data bit at mid-bit. Data bit i is at (i+1.5)*BAUD_DIV.
        else if (bitidx < 8 && k == ((bitidx+1)*BAUD_DIV + BAUD_DIV/2)) begin
          sr[bitidx] <= rxd_s1;
          bitidx <= bitidx + 1;
        end
        // Stop bit check; accept the byte only if the stop bit is high.
        else if (bitidx == 8 && k == (9*BAUD_DIV + BAUD_DIV/2)) begin
          if (rxd_s1 === 1'b1) begin
            rx_data <= sr; rx_avail <= 1'b1;
          end
          rx_state <= 1'b0;
        end
      end
    end
  end
endmodule
