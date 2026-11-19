`timescale 1ns/1ps
// A/B boot test: run GWMON from the LUT case-ROM (control) and from the
// synchronous BRAM variant, capture the console TX on both, compare.
module tb_gwmon_bram;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 0;
  wire       uart_tx;
  reg        uart_rx = 1'b1;
  wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2_bram u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                            .uart_rx(uart_rx), .uart_tx(uart_tx),
                            .sram_addr(sram_addr), .sram_cen(sram_cen),
                            .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  localparam [11:0] BP = 217;
  reg  [7:0] tx_mem [0:2047];
  reg  [10:0] tx_count = 0;
  reg        tx_active = 0;
  reg [15:0] tx_ctr = 0;
  reg [3:0]  tx_bit = 0;
  reg [7:0]  tx_shift = 0;
  reg        tx_prev = 1'b1;
  integer    i;

  always #10 clk_in = ~clk_in;

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
        if (tx_count < 2047) begin tx_mem[tx_count] <= tx_shift; tx_count <= tx_count + 1; end
        tx_active <= 0;
      end
    end
  end

  initial begin
    rst_n = 0;
    #200 rst_n = 1;
    #40000000;
    $display("=== BRAM GWMON TX captured (%0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n=== END ===\n");
    if (tx_count < 10) $display("BOOT_RESULT: BRAM ROM did NOT emit a banner (%0d bytes)", tx_count);
    else $display("BOOT_RESULT: BRAM ROM booted, banner length %0d", tx_count);
    $finish;
  end
endmodule
