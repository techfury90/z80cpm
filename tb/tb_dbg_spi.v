`timescale 1ns/1ps
module tb_dbg_spi;
  reg        clk = 0, rst = 1;
  reg        cs = 1, rd_stb = 0, wr_stb = 0;
  reg  [7:0] din = 0;
  wire [7:0] dout;
  wire       busy, wait_req;
  wire       spi_sclk, spi_csn, spi_mosi, spi_miso;
  spi_flash u_dut(.clk(clk), .rst(rst), .cs(cs), .rd_stb(rd_stb), .wr_stb(wr_stb),
                  .din(din), .dout(dout), .busy(busy), .wait_req(wait_req),
                  .spi_sclk(spi_sclk), .spi_csn(spi_csn), .spi_mosi(spi_mosi),
                  .spi_miso(spi_miso));
  sst25vf020_model u_sst(.spi_csn(spi_csn), .spi_sclk(spi_sclk), .spi_mosi(spi_mosi),
                         .spi_miso(spi_miso));
  always #20 clk = ~clk;

  task wait_done; begin wait (u_dut.run===1'b1); wait (u_dut.run===1'b0); end endtask
  task txb(input [7:0] v, output reg [7:0] r);
    begin @(negedge clk); din=v; wr_stb=1; @(negedge clk); wr_stb=0; wait_done; r=u_dut.dout; end
  endtask
  task rxb(output reg [7:0] r);
    begin @(negedge clk); rd_stb=1; @(negedge clk); rd_stb=0; wait_done; r=u_dut.dout; end
  endtask

  reg [7:0] id0,id1,id2, r;
  integer k;
  initial begin
    rst=1; cs=1; #80; rst=0; #40;
    $display("time  sclk mosi miso  cs   run");
    cs=0; #10;
    txb(8'h9F,r);
    rxb(id0); rxb(id1); rxb(id2);
    cs=1; #10;
    $display("JEDEC final: %02x %02x %02x  (engine dout during reads above)", id0,id1,id2);
    $finish;
  end
  // monitor every transition of spi_sclk across the whole window
  always @(spi_sclk or spi_csn or spi_miso or spi_mosi) begin
    $display("%0t  sclk=%b mosi=%b miso=%b csn=%b  run=%b dout=%02x",
             $time, spi_sclk, spi_mosi, spi_miso, spi_csn, u_dut.run, u_dut.dout);
  end
endmodule
