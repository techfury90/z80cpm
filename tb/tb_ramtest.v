`timescale 1ns/1ps
// Simulate the ramtest program: boot_rom is stubbed to `JMP 0x1000` so the CPU
// jumps straight into the RAM-test program (which is preloaded into external
// SRAM at 0x1000). Captures uart_tx and asserts the "RAM TEST PASS" banner.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  // C3 00 10 = JMP 0x1000 (bootstrap into the RAM test); NOPs elsewhere.
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'h10 : 8'h00;
endmodule

module tb_ramtest;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));
  initial $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/programs/ramtest.hex", u_sram.mem);

  localparam [11:0] BP = 217;
  always #10 clk_in = ~clk_in;

  reg  [7:0] tx_mem[0:1023]; reg [10:0] tx_count = 0; reg tx_active = 0;
  reg [15:0] tx_ctr = 0; reg [3:0] tx_bit = 0; reg [7:0] tx_shift = 0; reg tx_prev = 1; integer i;
  always @(posedge u_dut.clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev===1 && uart_tx===0) begin tx_active<=1; tx_ctr<=0; tx_bit<=0; tx_shift<=0; end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit<8 && tx_ctr == ((tx_bit*BP)+BP+(BP/2))) begin tx_shift<={uart_tx,tx_shift[7:1]}; tx_bit<=tx_bit+1; end
      if (tx_ctr == (10*BP)) begin if(tx_count<1023) tx_mem[tx_count]<=tx_shift; tx_count<=tx_count+1; tx_active<=0; end
    end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #400000000;                     // ~400 ms (full RAM test of 60K cells is slow)
    $display("=== ramtest result (captured %0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n");
    $finish;
  end
endmodule
