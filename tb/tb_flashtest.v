`timescale 1ns/1ps
// Simulate the SPI flash test end-to-end through the Z80 bus: stub boot_rom =
// JMP 0x1000, preload flashtest into SRAM (bank A) at 0x1000, and connect the
// sst25vf020_model to the top level's SPI pins.  The program reads the JEDEC ID
// and does a program/read/erase round trip via the byte-engine ports 0x50/0x51,
// exercising the top-level I/O decode AND the CPU wait-state stretching.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'h10 : 8'h00;
endmodule

module tb_flashtest;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [7:0] led;
  wire       spi_sclk, spi_csn, spi_mosi, spi_miso;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .spi_sclk(spi_sclk), .spi_csn(spi_csn),
                       .spi_mosi(spi_mosi), .spi_miso(spi_miso),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));
  wire f_csn_n = spi_csn;   // spi_csn is the top's active-low chip-select output
  sst25vf020_model u_sst(.spi_csn(f_csn_n), .spi_sclk(spi_sclk), .spi_mosi(spi_mosi),
                         .spi_miso(spi_miso));

  initial begin #1; $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/programs/flashtest.mem", u_sram.mem); end

  always #10 clk_in = ~clk_in;

  // capture UART output
  localparam [11:0] BP = 217;
  reg  [7:0] tx_mem[0:2047]; reg [11:0] tx_count = 0; reg tx_active = 0;
  reg [15:0] tx_ctr = 0; reg [3:0] tx_bit = 0; reg [7:0] tx_shift = 0; reg tx_prev = 1; integer i;
  always @(posedge u_dut.clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev===1 && uart_tx===0) begin tx_active<=1; tx_ctr<=0; tx_bit<=0; tx_shift<=0; end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit<8 && tx_ctr == ((tx_bit*BP)+BP+(BP/2))) begin tx_shift<={uart_tx,tx_shift[7:1]}; tx_bit<=tx_bit+1; end
      if (tx_ctr == (10*BP)) begin if(tx_count<2047) tx_mem[tx_count]<=tx_shift; tx_count<=tx_count+1; tx_active<=0; end
    end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #220000000;
    $display("=== SPI FLASH TEST console output (captured %0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n");
    $display("final PC=%04x", u_dut.u_cpu.i_tv80_core.PC);
    $finish;
  end
endmodule
