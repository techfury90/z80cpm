`timescale 1ns/1ps
// Board-level sim: run GWMON-80 from boot ROM and capture what it transmits
// on the uart_tx console, to confirm the monitor boots and prints its banner.
module tb_gwmon;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  wire       uart_tx;
  reg        uart_rx = 1'b1;
  wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  localparam [11:0] BP = 217;   // clk cycles per bit @25MHz/115200
  reg  [7:0] tx_mem [0:1023];
  reg  [10:0] tx_count = 0;
  reg        tx_active = 0;
  reg [15:0] tx_ctr = 0;
  reg [3:0]  tx_bit = 0;
  reg [7:0]  tx_shift = 0;
  reg        tx_prev = 1'b1;
  integer    i;

  always #10 clk_in = ~clk_in;   // 50 MHz -> PLL 25 MHz

  always @(posedge u_dut.clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev === 1'b1 && uart_tx === 1'b0) begin
        tx_active <= 1'b1; tx_ctr <= 0; tx_bit <= 0; tx_shift <= 0;
      end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit < 8 && tx_ctr == ((tx_bit * BP) + BP + (BP/2))) begin
        tx_shift <= {uart_tx, tx_shift[7:1]}; tx_bit <= tx_bit + 1;
      end
      if (tx_ctr == (10 * BP)) begin
        if (tx_count < 1023) begin tx_mem[tx_count] <= tx_shift; tx_count <= tx_count + 1; end
        tx_active <= 0;
      end
    end
  end

  initial begin
    rst_n = 0;
    #200 rst_n = 1;
    // let GWMON cold-start and print its banner, then it waits for a command
    #40000000;                      // ~40 ms (115200 baud ~0.09ms/char)
    $display("=== GWMON TX captured (%0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) begin
      $write("%c", tx_mem[i]);
    end
    $write("\n=== END ===\n");
    $finish;
  end
endmodule
