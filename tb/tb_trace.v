`timescale 1ns/1ps
// Trace testbench: log every distinct PC + SP to a file, and capture the
// transition anywhere outside the CCP/BDOS/CBIOS regions.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'hFA : 8'h00;   // JMP 0xFA00
endmodule

module tb_cpm;
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
  initial begin #1; $readmemh("C:/Users/techf/Desktop/brevia2/z80cpm/cpm/brevia2_cpm.mem", u_sram.mem); end

  localparam [11:0] BP = 2604;   // 9600 baud @ 25 MHz
  always #10 clk_in = ~clk_in;

  reg  [7:0] tx_mem[0:4095]; reg [12:0] tx_count = 0; reg tx_active = 0;
  reg [15:0] tx_ctr = 0; reg [3:0] tx_bit = 0; reg [7:0] tx_shift = 0; reg tx_prev = 1; integer i;
  always @(posedge u_dut.clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev===1 && uart_tx===0) begin tx_active<=1; tx_ctr<=0; tx_bit<=0; tx_shift<=0; end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit<8 && tx_ctr == ((tx_bit*BP)+BP+(BP/2))) begin tx_shift<={uart_tx,tx_shift[7:1]}; tx_bit<=tx_bit+1; end
      if (tx_ctr == (10*BP)) begin if(tx_count<4095) tx_mem[tx_count]<=tx_shift; tx_count<=tx_count+1; tx_active<=0; end
    end
  end

  // ---- PC/SP trace to file ----
  integer f;
  reg [31:0] step = 0;
  reg [15:0] lastpc = 16'hFFFF;
  initial begin
    f = $fopen("C:/Users/techf/Desktop/brevia2/z80cpm/cp_trace.log", "w");
  end
  always @(posedge u_dut.clk) begin
    if (u_dut.u_cpu.i_tv80_core.PC != lastpc) begin
      $fwrite(f, "%d %04x %04x\n", step, u_dut.u_cpu.i_tv80_core.PC, u_dut.u_cpu.i_tv80_core.SP);
      lastpc <= u_dut.u_cpu.i_tv80_core.PC;
    end
    step <= step + 1;
  end

  reg reached_ccp = 0; reg reached_a = 0; reg [15:0] fp = 0;
  reg [7:0] rdmem[0:15]; integer rdi = 0;
  reg done = 0;
  reg [7:0] lastir = 8'hFF; integer k;
  reg [15:0] ipc[0:299]; reg [7:0] iir[0:299]; integer iidx = 0;
  reg seeking = 0; reg [15:0] seek_enter_sp = 0; integer tc_ = 0;
  always @(posedge u_dut.clk) begin
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hEFD1) begin
      if (!seeking) tc_ = tc_ + 1;
      seeking <= 1; seek_enter_sp <= u_dut.u_cpu.i_tv80_core.SP;
      $display("[seek #%0d enter] SP=%04x", tc_, u_dut.u_cpu.i_tv80_core.SP);
    end
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hF03B) begin
      $display("[seek #%0d jmp setsecf] SP=%04x  (delta %0d)  top-of-stack=%02x%02x%02x%02x%02x%02x", tc_,
               u_dut.u_cpu.i_tv80_core.SP, u_dut.u_cpu.i_tv80_core.SP - seek_enter_sp,
               u_sram.mem[u_dut.u_cpu.i_tv80_core.SP], u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+1],
               u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+2], u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+3],
               u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+4], u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+5]);
      seeking <= 0;
    end
  end
  reg [15:0] lastsp2 = 16'h0000; integer in_seek = 0;
  always @(posedge u_dut.clk) begin
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hEFD1) in_seek <= 1;
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hF03B) in_seek <= 0;
    if (in_seek && u_dut.u_cpu.i_tv80_core.SP != lastsp2) begin
      $display("[sp] PC=%04x op=%02x SP:%04x->%04x", u_dut.u_cpu.i_tv80_core.PC,
               u_sram.mem[u_dut.u_cpu.i_tv80_core.PC], lastsp2, u_dut.u_cpu.i_tv80_core.SP);
      lastsp2 <= u_dut.u_cpu.i_tv80_core.SP;
    end
  end
  always @(posedge u_dut.clk) begin
    if (u_dut.u_cpu.i_tv80_core.IR != lastir) begin
      ipc[iidx] = u_dut.u_cpu.i_tv80_core.PC;
      iir[iidx] = u_dut.u_cpu.i_tv80_core.IR;
      iidx = (iidx + 1) % 300;
      lastir <= u_dut.u_cpu.i_tv80_core.IR;
    end
    if (u_dut.u_cpu.i_tv80_core.PC >= 16'hE400 && u_dut.u_cpu.i_tv80_core.PC < 16'hEFFF) reached_ccp = 1;
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hE785) reached_a = 1;
    fp <= u_dut.u_cpu.i_tv80_core.PC;
    // when the CPU runs off into the TPA (the actual failure)
    if (!done && reached_ccp && u_dut.u_cpu.i_tv80_core.PC >= 16'h0100 && u_dut.u_cpu.i_tv80_core.PC < 16'hE400) begin
      $display("=== CRASH into region below E400 at PC=%04x SP=%04x ===",
               u_dut.u_cpu.i_tv80_core.PC, u_dut.u_cpu.i_tv80_core.SP);
      $display("--- last 60 instructions ---");
      for (k = iidx - 60; k < iidx; k = k + 1) begin : dloop
        integer j;
        j = (k % 300 + 300) % 300;
        $write("%04x:%02x  ", ipc[j], iir[j]);
      end
      $write("\n");
      // count pushes/pops/calls/rets in the captured trace
      begin : canon
        integer m, psh, pop, cal, ret;
        psh = 0; pop = 0; cal = 0; ret = 0;
        for (m = 0; m < 300; m = m + 1) begin
          case (iir[m])
            8'hC5,8'hD5,8'hE5,8'hF5: psh = psh + 1;
            8'hC1,8'hD1,8'hE1,8'hF1: pop = pop + 1;
            8'hCD: cal = cal + 1;
            8'hC9: ret = ret + 1;
          endcase
        end
        $display("PUSH=%0d POP=%0d CALL=%0d RET=%0d net(%d)=-1*(psh+cal)+pop+ret = %0d",
                 psh, pop, cal, ret, (pop+ret)-(psh+cal));
        for (m = 0; m < 60; m = m + 1) $write("%d ", iir[m]);
        $write("\n");
      end
      for (i = 16'hEF00; i < 16'hEF60; i = i + 1) $write("%02x ", u_sram.mem[i]);
      $write("\n");
      $display("--- regs low[0..7]=%02x %02x %02x %02x %02x %02x %02x %02x high[0..7]=%02x %02x %02x %02x %02x %02x %02x %02x ---",
               u_dut.u_cpu.i_tv80_core.i_reg.RegsL[0],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[1],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[2],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[3],
               u_dut.u_cpu.i_tv80_core.i_reg.RegsL[4],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[5],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[6],u_dut.u_cpu.i_tv80_core.i_reg.RegsL[7],
               u_dut.u_cpu.i_tv80_core.i_reg.RegsH[0],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[1],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[2],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[3],
               u_dut.u_cpu.i_tv80_core.i_reg.RegsH[4],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[5],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[6],u_dut.u_cpu.i_tv80_core.i_reg.RegsH[7]);
      done = 1;
    end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #68000000;
    $fclose(f);
    $display("=== CP/M console (%0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n");
    $display("reached CCP=%b  'A>'=%b  finalPC=%04x", reached_ccp, reached_a, fp);
    $finish;
  end
endmodule
