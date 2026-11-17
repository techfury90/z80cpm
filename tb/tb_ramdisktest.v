`timescale 1ns/1ps
// Simulate the RAM-disk test: stub boot_rom = JMP 0x1000, preload ramdisktest
// into SRAM (bank A) at 0x1000, run it, and assert it writes+reads bank B
// (the RAM disk) correctly via the I/O ports.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'h10 : 8'h00;
endmodule

module tb_ramdisktest;
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
  initial begin #1; $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/programs/ramdisktest.mem", u_sram.mem);
    $display("mem[1000]=%02x mem[1001]=%02x mem[1002]=%02x (expect 31 00 ff = LXI SP)", u_sram.mem[16'h1000], u_sram.mem[16'h1001], u_sram.mem[16'h1002]); end

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

  integer wcount = 0, rcount = 0; reg [7:0] first_w, first_r; reg fw = 0, fr = 0;
  reg [15:0] rdat[0:9]; reg [15:0] raddr[0:9]; reg [7:0] rbd[0:9]; reg [15:0] rpc[0:9]; reg [7:0] rB[0:9]; reg [7:0] rC[0:9]; integer ri = 0;
  reg [15:0] pct[0:99]; integer pti = 0; reg trig = 0;
  always @(posedge u_dut.clk) begin
    if (u_dut.ram_wr) begin wcount = wcount + 1; if (!fw) begin first_w = u_dut.cpu_dout; fw = 1; end end
    if (u_dut.rd_stb) begin
      rcount = rcount + 1; if (!fr) begin first_r = u_dut.rd_dout; fr = 1; end
      if (ri < 10) begin rdat[ri] = u_dut.rd_dout; raddr[ri] = u_dut.u_rd.addr; rbd[ri] = u_dut.bus_din; rpc[ri] = u_dut.u_cpu.i_tv80_core.PC; rB[ri] = u_dut.u_cpu.i_tv80_core.RegBusB[15:8]; rC[ri] = u_dut.u_cpu.i_tv80_core.RegBusB[7:0]; ri = ri + 1; end
    end
    if (rcount >= 3) trig = 1;
    if (trig && pti < 100) begin pct[pti] = u_dut.u_cpu.i_tv80_core.PC; pti = pti + 1; end
  end

  reg [15:0] seq[0:3999]; integer si = 0; reg [15:0] lastpc = 16'hFFFF;
  always @(posedge u_dut.clk) begin
    if (u_dut.u_cpu.i_tv80_core.PC != lastpc && si < 4000) begin seq[si] = u_dut.u_cpu.i_tv80_core.PC; si = si + 1; lastpc = u_dut.u_cpu.i_tv80_core.PC; end
  end

  reg [7:0] xio[0:15]; reg [7:0] xrds[0:15]; reg [15:0] xaddr[0:15]; reg [7:0] xdin[0:15]; reg [7:0] xdout[0:15]; integer xi = 0; reg eerst = 0;
  always @(posedge u_dut.clk) begin
    if (!eerst && u_dut.rd_stb) eerst = 1;
    if (eerst && xi < 16) begin xio[xi] = u_dut.io_rd; xrds[xi] = u_dut.rd_stb; xaddr[xi] = u_dut.u_rd.addr; xdin[xi] = u_dut.bus_din; xdout[xi] = u_dut.rd_dout; xi = xi + 1; end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #25000000;
    $display("reads: n=%0d", ri);
    for (integer j = 0; j < ri && j < 6; j = j + 1)
      $display("  read[%0d] PC=%04x addr=%04x data=%02x B=%02x C=%02x", j, rpc[j], raddr[j], rbd[j], rB[j], rC[j]);
    $display("reads: n=%0d", ri);
    for (integer j = 0; j < ri && j < 6; j = j + 1)
      $display("  read[%0d] PC=%04x addr=%04x data=%02x B=%02x C=%02x", j, rpc[j], raddr[j], rbd[j], rB[j], rC[j]);
    $display("=== UART result (captured %0d bytes):", tx_count);
    for (integer j = 0; j < tx_count; j = j + 1) $write("%c", tx_mem[j]);
    $write("\n");
    $finish;
  end
endmodule
