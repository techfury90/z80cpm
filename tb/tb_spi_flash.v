`timescale 1ns/1ps
// tb_spi_flash -- prove the spi_flash byte engine works on the wire against the
// sst25vf020_model: JEDEC ID, byte program, read-back and sector erase.
//
// This drives the byte engine DIRECTLY (cs/rd_stb/wr_stb), not through the Z80,
// so it isolates the controller + flash model and validates the serial waveform
// and the SST command framing.  The full Z80-bus integration is validated by
// tb_flashtest.v / tb_cpm.v.
//
// NOTE: real SST25VF020 framing requires ONE command per CS# transaction
// (assert CS, send opcode+addr+data, release CS).  WREN is its own transaction.
module tb_spi_flash;
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

  always #20 clk = ~clk;            // 25 MHz

  task wait_done; begin
    wait (u_dut.run === 1'b1);      // transfer started
    wait (u_dut.run === 1'b0);      // transfer finished
  end endtask

  task txb(input [7:0] v, output reg [7:0] r);
    begin @(negedge clk); din = v; wr_stb = 1;
          @(negedge clk); wr_stb = 0; wait_done; r = u_dut.dout; end
  endtask
  task rxb(output reg [7:0] r);
    begin @(negedge clk); rd_stb = 1;
          @(negedge clk); rd_stb = 0; wait_done; r = u_dut.dout; end
  endtask

  reg [7:0] id0, id1, id2, r, rd0, rd1, rd2;
  integer errs = 0;
  task chk(input [7:0] got, input [7:0] exp, input [255:0] label);
    begin
      if (got !== exp) begin
        $display("  FAIL: %s got %02x expected %02x", label, got, exp);
        errs = errs + 1;
      end else $display("  PASS: %s = %02x", label, got);
    end
  endtask

  initial begin
    rst = 1; cs = 1; #80; rst = 0; #40;
    $display("=== SPI byte engine test ===");

    // ---- JEDEC ID (one transaction) ---- (first byte must be 0xBF)
    cs = 0; #10;
    txb(8'h9F, r);
    rxb(id0); rxb(id1); rxb(id2);
    cs = 1; #10;
    chk(id0, 8'hBF, "JEDEC manufacturer");
    $display("  JEDEC id = %02x %02x %02x", id0, id1, id2);

    // ---- Byte Program @ 0x000010 = 0xAA ----
    cs = 0; #10; txb(8'h06, r); cs = 1; #10;                 // WREN (own txn)
    cs = 0; #10;                                             // program txn
    txb(8'h02, r); txb(8'h00, r); txb(8'h00, r); txb(8'h10, r); txb(8'hAA, r);
    cs = 1; #10;

    // ---- Read back @ 0x000010: expect 0xAA ----
    cs = 0; #10;
    txb(8'h03, r); txb(8'h00, r); txb(8'h00, r); txb(8'h10, r);
    rxb(rd0); cs = 1; #10;
    chk(rd0, 8'hAA, "programmed byte read-back");

    // ---- Sector Erase the 4 KB sector containing 0x000010 ----
    cs = 0; #10; txb(8'h06, r); cs = 1; #10;                 // WREN
    cs = 0; #10;
    txb(8'h20, r); txb(8'h00, r); txb(8'h00, r); txb(8'h10, r);
    cs = 1; #10;
    wait (u_sst.busyd === 1'b0);

    // ---- Read back @ 0x000010 again: expect 0xFF (erased) ----
    cs = 0; #10;
    txb(8'h03, r); txb(8'h00, r); txb(8'h00, r); txb(8'h10, r);
    rxb(rd1); cs = 1; #10;
    chk(rd1, 8'hFF, "erased byte read-back");

    // ---- erase-before-write: program 0x00, read 0x00 (1->0 ok) ----
    cs = 0; #10; txb(8'h06, r); cs = 1; #10;
    cs = 0; #10;
    txb(8'h02, r); txb(8'h00, r); txb(8'h00, r); txb(8'h20, r); txb(8'h00, r);
    cs = 1; #10;
    cs = 0; #10;
    txb(8'h03, r); txb(8'h00, r); txb(8'h00, r); txb(8'h20, r);
    rxb(rd2); cs = 1; #10;
    chk(rd2, 8'h00, "program 00 -> read 00 (1->0 ok)");

    $display("=== RESULT: %0d errors ===", errs);
    if (errs == 0) $display("FLASH ENGINE TEST PASS");
    else           $display("FLASH ENGINE TEST FAIL");
    $finish;
  end
endmodule
