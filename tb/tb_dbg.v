`timescale 1ns/1ps
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

  localparam [11:0] BP = 2604;
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

  integer k;
  reg reached_ccp = 0; reg reached_a = 0; reg [15:0] fp = 0; reg done = 0;
  reg [15:0] sp_at_callsd = 16'hFFFF;   // SP right after call seek_dir pushes return
  reg [15:0] cur_sp;
  always @(posedge u_dut.clk) begin
    cur_sp <= u_dut.u_cpu.i_tv80_core.SP;
    // call seek_dir is at F22B (CALL EFC3); the return F22E is pushed onto stack.
    // Capture SP on the cycle AFTER the CALL to capture the pushed return address.
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hF22E) begin
      $display("[call seek_dir pushed] now-at-F22E SP=%04x top=%02x%02x",
               u_dut.u_cpu.i_tv80_core.SP,
               u_sram.mem[u_dut.u_cpu.i_tv80_core.SP], u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+1]);
    end
    // The setsec RET instruction is the opcode C9 at address FB1F (setsec: mov a,c; sta; ret)
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hFB1F && !done) begin
      $display("[setsec RET executes] SP=%04x retval=%02x%02x",
               u_dut.u_cpu.i_tv80_core.SP,
               u_sram.mem[u_dut.u_cpu.i_tv80_core.SP], u_sram.mem[u_dut.u_cpu.i_tv80_core.SP+1]);
    end
    if (u_dut.u_cpu.i_tv80_core.PC >= 16'hE400 && u_dut.u_cpu.i_tv80_core.PC < 16'hEFFF) reached_ccp = 1;
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hE785) reached_a = 1;
    fp <= u_dut.u_cpu.i_tv80_core.PC;
    if (!done && reached_ccp && u_dut.u_cpu.i_tv80_core.PC >= 16'h0100 && u_dut.u_cpu.i_tv80_core.PC < 16'hE400) begin
      $display("=== CRASH into TPA at PC=%04x SP=%04x ===", u_dut.u_cpu.i_tv80_core.PC, u_dut.u_cpu.i_tv80_core.SP);
      $display("--- stack 0xEF20-0xEF50 ---");
      for (k = 16'hEF20; k < 16'hEF50; k = k + 1) $write("%02x ", u_sram.mem[k]);
      $write("\n");
      done <= 1;
    end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #68000000;
    $display("=== CP/M console (%0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n");
    $display("reached CCP=%b '%s' finalPC=%04x", reached_ccp, (reached_a?"A>":""), fp);
    $finish;
  end
endmodule
