`timescale 1ns/1ps
// tb_dir -- Reproduce the "phantom directory" DIR output by pre-filling the RAM
// disk (bank B) directory area exactly as diskutil's FORMAT leaves it, then
// cold-boot CP/M and inject "DIR\r" on the console. Log every BIOS READ and the
// bytes it loads so we can see which physical (track,sector) the BDOS reads and
// what bytes it sees.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  assign dout = (addr_in==16'h0000)?8'hC3 :
                (addr_in==16'h0001)?8'h00 :
                (addr_in==16'h0002)?8'hE6 : 8'h00;   // JMP 0xE600
endmodule

module tb_dir;
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

  localparam [11:0] BP = 217;                 // 115200 baud @ 25MHz
  always #10 clk_in = ~clk_in;

  // ---- UART TX capture (console output from DUT) ----
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

  // ---- pre-fill the RAM disk directory area (bank B base = 0x10000) ----
  // Exactly what the patched diskutil FORMAT produces: 0xE5 across the WHOLE 64K.
  integer k;
  initial begin
    for (k = 0; k < 65536; k = k + 1) u_sram.mem[17'h10000 + k] = 8'hE5;
    // Plus one real file TEST.TXT at dir slot 0, RC=1, block 2.
    u_sram.mem[17'h10000 + 16'h2000] = 8'h00;              // user 0
    u_sram.mem[17'h10000 + 16'h2001] = 8'h54; u_sram.mem[17'h10000+16'h2002]=8'h45;
    u_sram.mem[17'h10000 + 16'h2003] = 8'h53; u_sram.mem[17'h10000+16'h2004]=8'h54;
    u_sram.mem[17'h10000 + 16'h2005] = 8'h20; u_sram.mem[17'h10000+16'h2006]=8'h20;
    u_sram.mem[17'h10000 + 16'h2007] = 8'h20; u_sram.mem[17'h10000+16'h2008]=8'h20;
    u_sram.mem[17'h10000 + 16'h2009] = 8'h54; u_sram.mem[17'h10000+16'h200A]=8'h58;
    u_sram.mem[17'h10000 + 16'h200B] = 8'h54;
    u_sram.mem[17'h10000 + 16'h200F] = 8'h01;              // RC=1
    u_sram.mem[17'h10000 + 16'h2010] = 8'h02;              // block 2
  end

  // ---- UART RX driver: after '>' seen, send "DIR\r" ----
  reg [7:0] dmsg [0:3];
  reg       rx_busy = 0; reg [15:0] rx_ctr = 0; reg [3:0] rx_bit = 0; reg [7:0] rx_byte = 0;
  reg [2:0] rxs = 0; reg [14:0] st = 0; reg started = 0;
  initial begin dmsg[0]="D"; dmsg[1]="I"; dmsg[2]="R"; dmsg[3]=8'h0D; end
  always @(posedge u_dut.clk) begin
    if (!started) begin
      if (tx_count[12:0] > 0 && tx_mem[tx_count[12:0]-1] == 8'h3E) started <= 1;
    end else if (rxs < 4) begin
      if (!rx_busy) begin
        st <= st + 1;
        if (st == 4000) begin rx_busy <= 1; rx_ctr <= 0; rx_bit <= 0; rx_byte <= dmsg[rxs]; uart_rx <= 0; st <= 0; end
      end else begin
        st <= st + 1;
        rx_ctr <= rx_ctr + 1;
        if (rx_bit == 0 && rx_ctr == BP) begin uart_rx <= rx_byte[0]; rx_byte <= {rx_byte[7:1],1'b0}; rx_bit <= 1; end
        else if (rx_bit>=1 && rx_bit<8 && rx_ctr == ((rx_bit*BP)+BP)) begin uart_rx <= rx_byte[0]; rx_byte <= {rx_byte[7:1],1'b0}; rx_bit <= rx_bit+1; end
        else if (rx_bit == 8 && rx_ctr == ((8*BP)+BP)) begin uart_rx <= 1'b1; rx_bit <= 9; end
        else if (rx_bit == 9 && rx_ctr == ((10*BP)+BP)) begin rx_busy <= 0; rxs <= rxs+1; rx_ctr <= 0; end
      end
    end
  end

  // ---- Observe BIOS READ calls (READ entry = 0xFB4F, RET = 0xFB66) ----
  reg [7:0] rd_t=0, rd_s=0; reg [15:0] rd_dma=0;
  reg [7:0] rdb[0:127]; integer rdbi = 0;
  reg [7:0] last_t=0; reg [7:0] last_s=0; reg [15:0] last_dma=0;
  always @(posedge u_dut.clk) begin
    if (u_dut.u_rx.rx_avail) $display("DUT RX byte=%02x '%c'", u_dut.u_rx.rx_data, u_dut.u_rx.rx_data);
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hFB4F) begin
      rd_t <= u_sram.mem[16'hFBC4];
      rd_s <= u_sram.mem[16'hFBC5];
      rd_dma <= {u_sram.mem[16'hFBC7], u_sram.mem[16'hFBC6]};
      rdbi <= 0;
    end
    if (u_dut.u_cpu.i_tv80_core.PC == 16'hFB66) begin
      if (rdbi == 0) begin
        last_t <= rd_t; last_s <= rd_s; last_dma <= rd_dma;
        for (i = 0; i < 128; i = i + 1) rdb[i] <= u_sram.mem[16'h0080 + i];
        rdbi <= 1;
      end
    end
  end

  initial begin
    rst_n = 0; #200 rst_n = 1;
    #200000000;
    $display("=== CP/M console (%0d bytes):", tx_count);
    for (i = 0; i < tx_count; i = i + 1) $write("%c", tx_mem[i]);
    $write("\n");
    $display("Last READ: track=%02x sec=%02x dma=%04x", last_t, last_s, last_dma);
    $write("DMA bytes: ");
    for (i = 0; i < 64; i = i + 1) $write("%02x ", rdb[i]);
    $write("\n");
    $finish;
  end
endmodule
