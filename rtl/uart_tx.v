`timescale 1ns/1ps
// uart_tx -- simple 8N1 transmitter. 1 byte per tx_start; polls via tx_busy.
// Bit period = BAUD_DIV clk cycles. LSB first.
module uart_tx(
  input         clk,
  input         rst_n,
  input  [7:0]  tx_data,
  input         tx_start,
  output reg    tx_busy,
  output reg    txd
);
  localparam [11:0] BAUD_DIV = 1302;  // 25 MHz / 9600

  reg [11:0]  k     = 0;
  reg [3:0]  bitcnt= 0;   // 0=start, 1..8=data, 9=stop
  reg [7:0]  sr    = 0;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      tx_busy <= 1'b0; txd <= 1'b1; k <= 0; bitcnt <= 0; sr <= 0;
    end
    else if (!tx_busy && tx_start) begin
      tx_busy <= 1'b1; sr <= tx_data; bitcnt <= 0; k <= 0; txd <= 1'b0; // start bit
    end
    else if (tx_busy) begin
      if (k == BAUD_DIV-1) begin
        k <= 0; bitcnt <= bitcnt + 1;
        case (bitcnt)
          0,1,2,3,4,5,6,7: begin txd <= sr[0]; sr <= {1'b0, sr[7:1]}; end  // data bits (LSB first)
          8: txd <= 1'b1;                                                // stop bit
          default: tx_busy <= 1'b0;                                      // finished
        endcase
      end
      else k <= k + 1;
    end
  end
endmodule
