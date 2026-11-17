`timescale 1ns/1ps
// Board-level sim: boot z80cpm_brevia2 (console program in boot ROM, stack in
// external SRAM), decode uart_tx, and assert it prints "Hello from Z80!\r\n".
module tb_z80cpm_brevia2;
  reg        clk_in = 0;
  reg        rst_n = 0;
  reg  [7:0] sw = 8'h00;
  wire [7:0] led;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  reg  [7:0] tx_mem [0:255];
  reg  [8:0] tx_count = 0;
  reg        tx_active = 0;
  reg [15:0] tx_ctr = 0;
  reg [3:0]  tx_bit = 0;
  reg [7:0]  tx_shift = 0;
  reg        tx_prev = 1'b1;
  integer    k;
  integer    found_msg = 0;
  integer    i;
  localparam [11:0] BP = 217;   // clk cycles per bit @ 115200

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  initial begin
    $dumpfile("sim/brevia2.vcd"); $dumpvars(0, tb_z80cpm_brevia2);
    for (i = 0; i < 256; i = i + 1) tx_mem[i] = 8'h00;
  end

  always #10 clk_in = ~clk_in;    // 50 MHz input -> cpu_clk 25 MHz

  // Decode uart_tx on the CPU clock (25 MHz).
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
        if (tx_count < 255) begin tx_mem[tx_count] <= tx_shift; tx_count <= tx_count + 1; end
        tx_active <= 0;
      end
    end
  end

  initial begin
    rst_n = 0;
    #200 rst_n = 1;
    wait (tx_count >= 17);     // "Hello from Z80!\r\n" = 17 bytes
    #100000;
    $display("halft=%b tx_count=%0d", 1, tx_count);
    for (k = 0; k < tx_count; k = k + 1) $write("%02x ", tx_mem[k]);
    $write("\n");
    for (k = 0; k + 15 < tx_count; k = k + 1) begin
      if (tx_mem[k]==8'h48 && tx_mem[k+1]==8'h65 && tx_mem[k+2]==8'h6c &&
          tx_mem[k+3]==8'h6c && tx_mem[k+4]==8'h6f && tx_mem[k+5]==8'h20 &&
          tx_mem[k+6]==8'h66 && tx_mem[k+7]==8'h72 && tx_mem[k+8]==8'h6f &&
          tx_mem[k+9]==8'h6d && tx_mem[k+10]==8'h20 && tx_mem[k+11]==8'h5a &&
          tx_mem[k+12]==8'h38 && tx_mem[k+13]==8'h30 && tx_mem[k+14]==8'h21)
        found_msg = 1;
    end
    if (found_msg) $display("PASS: board top boots console from boot ROM + SRAM stack"); 
    else $display("FAIL: found_msg=%0d", found_msg);
    #100 $finish;
  end

  initial begin
    #4000000;
    $display("WATCHDOG: tx_count=%0d", tx_count);
    $finish;
  end
endmodule
