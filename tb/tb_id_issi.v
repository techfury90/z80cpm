`timescale 1ns/1ps
// tb_id -- JEDEC ID read (0x9F) through the full Z80 SoC, faithful negedge model.
// Reads the 3 stored ID bytes straight out of SRAM @0x2000 (baud independent).
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'h10 : 8'h00;
endmodule

module tb_id_issi;
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
  sst_model_issi u_sst(.spi_csn(f_csn_n), .spi_sclk(spi_sclk), .spi_mosi(spi_mosi),
                          .spi_miso(spi_miso));

  integer i;
  initial begin #1; $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/programs/idtest.mem", u_sram.mem); end

  always #10 clk_in = ~clk_in;

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #1200000;
    $display("JEDEC ID bytes read (SRAM 0x2000):");
    $write("  ");
    for (i = 0; i < 3; i = i + 1) $write("%02x ", u_sram.mem[16'h2000 + i]);
    $write("\n");
    $finish;
  end
endmodule
