`timescale 1ns/1ps
// tb_read2 -- run readtest.s (single 0x03 READ at 0x000000 + 16 sequential IN
// 0x50) through the full Z80 SoC, with the model seeded 00..0F.  Reads the
// 16 stored result bytes straight out of SRAM @0x2000 (deterministic, no UART
// capture).  Logs the engine byte count + model address advance to expose
// over-clock / free-run.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'h10 : 8'h00;
endmodule

module tb_read2;
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
  wire f_csn_n = spi_csn;
  sst25vf020_model u_sst(.spi_csn(f_csn_n), .spi_sclk(spi_sclk), .spi_mosi(spi_mosi),
                         .spi_miso(spi_miso));

  integer i;
  initial begin #1; $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/programs/readtest.mem", u_sram.mem); end

  always #10 clk_in = ~clk_in;

  integer eng_bytes = 0;
  integer sck_edges = 0;
  reg run_prev = 1'b0;
  always @(posedge u_dut.u_spi.run) eng_bytes = eng_bytes + 1;
  always @(posedge spi_sclk) sck_edges = sck_edges + 1;

  integer l;
  initial begin
    for (l = 0; l < 16; l = l + 1) u_sst.mem[l] = l[7:0];
    $display("seeded flash[0..15] = 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f");
    rst_n = 0; #200 rst_n = 1;
    #3000000;
    $display("read-back bytes at SRAM 0x2000:");
    $write("  ");
    for (l = 0; l < 16; l = l + 1) $write("%02x ", u_sram.mem[16'h2000 + l]);
    $write("\n");
    $display("engine byte transfers (run->) = %0d", eng_bytes);
    $display("SCK rising edges = %0d", sck_edges);
    $display("model aaddr after read = %06x", u_sst.aaddr);
    $finish;
  end
endmodule
