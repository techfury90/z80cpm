`timescale 1ns/1ps
// z80cpm_brevia2 -- REAL-BOARD top for the LatticeXP2 Brevia2.
// CPU clock = clk_in (50 MHz) / 2 = 25 MHz (free-running divide-by-2; add a
// derived-clock FREQUENCY constraint in Diamond). Reset is async-asserted /
// sync-deasserted into the CPU clock domain.
//
// Memory map (native Z80 bus):
//   0x0000-0x0FFF : boot ROM (LUT case-ROM, console test program) -- read-only
//   0x1000-0xFFFF : external SRAM bank A (stack / data)
// I/O:
//   0x40 = LED latch (write, active-low board LEDs) / switch read (read is inverted: pressed=1)
//   0x41 = clock latch (write) -- snapshots the 32-bit uptime counter
//   0x42-0x45 = clock value (read) -- latched ms, LSB first (0x42=ms[7:0])
//   0x53-0x55 = SD card SPI (0x53 data, 0x54 ctl bit0=CS# bit1=slow, 0x55 stat bit0=busy)
//   0x80 = console status (bit0 tx_busy, bit1 rx_avail), 0x81 = TX/RX data
module z80cpm_brevia2_bramnoreg(
  input         clk_in,     // 50 MHz (pin 21)
  input         rst_n,      // reset (pin 19)
  output [7:0]  led,        // pins 46..37, ACTIVE-LOW
  input  [7:0]  sw,         // switches
  input         uart_rx,    // pin 110
  output        uart_tx,    // pin 109
  output        spi_sclk,   // pin 13   (SST25VF020 flash SCK)
  output        spi_csn,    // pin 11   (flash chip-select, active low)
  output        spi_mosi,   // pin 15   (flash MOSI)
  input         spi_miso,   // pin 16   (flash MISO)
  output        sd_csn,     // pin 31   (SD card chip-select, active low)
  output        sd_mosi,    // pin 32   (SD MOSI)
  output        sd_sclk,    // pin 35   (SD SCK)
  input         sd_miso,    // pin 36   (SD MISO)
  output [16:0] sram_addr,  // pins 119..141
  output        sram_cen,   // 142
  output        sram_oen,   // 143
  output        sram_wen,   // 144
  inout  [7:0]  sram_data   // pins 1..10
);
  // 25 MHz system clock via the on-chip PLL (same approach as the working
  // Lattice demo). A register-derived divide-by-2 was routed on generic logic
  // and did not clock the design reliably on silicon.
  wire clk_op;
  pmi_pll #(
    .pmi_freq_clki    (50),
    .pmi_freq_clkfb   (25),
    .pmi_freq_clkop   (25),
    .pmi_freq_clkos   (25),
    .pmi_freq_clkok   (12.5),
    .pmi_family       ("XP2"),
    .pmi_phase_adj    (0),
    .pmi_duty_cycle   (50),
    .pmi_clkfb_source ("CLKOP"),
    .pmi_fdel         ("off"),
    .pmi_fdel_val     (0),
    .module_type      ("pmi_pll"))
  pll_inst(
    .CLKI(clk_in), .CLKFB(clk_op), .RESET(1'b0),
    .CLKOP(clk_op), .CLKOS(), .CLKOK(), .CLKOK2(), .LOCK());
  wire clk = clk_op;   // 25 MHz system clock

  wire vcc = 1'b1;
  // ------------------------------------------------------------------
  // Reset: async-assert / sync-deassert + >=8-cycle hold.
  // A purely combinational `rst = ~rst_n` left the mapped design dead
  // (TV80 clk_op_enable stuck at 0). An earlier 2-FF synchronizer with
  // `reg x = 1'b1` initializers was mapped as SET-type FFs and LSE used
  // it as the local GSR net -> floating LSR held GSR asserted -> whole
  // design frozen in reset. So EVERY reset-path FF here is async-CLEARED
  // to 0 (RESET-type) and the "reset active" sense is inverted: the
  // synchronizer holds a 0 while reset is asserted, and a hold counter
  // (also reset to 0) keeps internal reset asserted for >= 8 clk cycles
  // after rst_n releases.
  // ------------------------------------------------------------------
  wire rst_raw = ~rst_n;   // raw active-high reset request (pin 19)

  reg       rst_n_sync1 = 1'b0;   // async-cleared while rst_raw=1
  reg       rst_n_sync2 = 1'b0;
  reg [3:0] rst_cnt     = 4'h0;   // counts clk after rst_raw releases

  always @(posedge clk or posedge rst_raw) begin
    if (rst_raw) rst_n_sync1 <= 1'b0;   // async assert (clear)
    else         rst_n_sync1 <= 1'b1;   // sync deassert, stage 1
  end

  always @(posedge clk or posedge rst_raw) begin
    if (rst_raw) rst_n_sync2 <= 1'b0;
    else         rst_n_sync2 <= rst_n_sync1;  // stage 2
  end

  always @(posedge clk or posedge rst_raw) begin
    if (rst_raw)          rst_cnt <= 4'h0;
    else if (!rst_cnt[3]) rst_cnt <= rst_cnt + 1'b1;  // saturate at 15
  end

  // Active-high internal reset: asserted while the synchronized reset is
  // low OR the hold counter has not reached 8 yet.
  wire rst = ~rst_n_sync2 | ~rst_cnt[3];


  wire        m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, busak_n;
  wire [15:0] A;
  wire [7:0]  cpu_dout;
  wire [7:0]  bus_din;

  wire        mem_rd = ~mreq_n & ~rd_n;
  wire        mem_we = ~mreq_n & ~wr_n;
  wire        io_rd  = ~iorq_n & ~rd_n;
  wire        io_wr  = ~iorq_n & ~wr_n;

  // Memory region decode. When `boot_done` is set (write 1 to I/O port 0x30)
  // the GWMON boot ROM is banked out and the FULL 64K SRAM (bank A) becomes the
  // machine memory map 0x0000-0xFFFF (needed for CP/M page zero + TPA). While
  // boot_done is clear, the ROM sits at 0x0000-0x0FFF and SRAM at 0x1000-0xFFFF
  // (GWMON monitor mode).
  reg  boot_done = 1'b0;
  always @(posedge clk or posedge rst)
    if (rst) boot_done <= 1'b0;
    else if (io_wr && (A[7:0] == 8'h30)) boot_done <= cpu_dout[0];   // OUT 0x30

  wire        rom_active = mem_rd & ~boot_done & (A[15:12] == 4'h0);
  wire        sram_access = mem_rd | mem_we;
  wire        sram_go    = sram_access & (boot_done ? 1'b1 : (A[15:12] != 4'h0));

  wire [7:0]  rom_dout;
  boot_rom_bram_noreg u_rom(.clk(clk), .addr_in(A), .dout(rom_dout));

  wire        sram_wait;
  wire [7:0]  sram_rdata;
  wire [16:0] sram_addr_m;
  wire        sram_cen_m, sram_oen_m, sram_wen_m;
  sram_async u_sram(.clk(clk), .rst_n(~rst), .addr(A),
                    .mem_rd(sram_go & mem_rd), .mem_we(sram_go & mem_we),
                    .wait_n(sram_wait), .rdata(sram_rdata),
                    .sram_addr(sram_addr_m), .sram_cen(sram_cen_m),
                    .sram_oen(sram_oen_m), .sram_wen(sram_wen_m),
                    .sram_data_in(sram_data));

  // ---- RAM disk (bank B of the 128K SRAM, I/O-mapped 0x20/0x21/0x22) ----
  wire        rd_stb, ram_wr, ram_wrlo, ram_wrhi;
  wire [7:0]  rd_dout;
  wire [16:0] rd_addr; wire rd_cen, rd_oen, rd_wen; wire [7:0] rd_wdata;
  wire        rd_active;
  ram_disk u_rd(.clk(clk), .rst(rst), .cpu_dout(cpu_dout),
                .rd_data(rd_stb), .wr_data(ram_wr),
                .wr_a_lo(ram_wrlo), .wr_a_hi(ram_wrhi),
                .dout(rd_dout), .sram_addr(rd_addr), .sram_cen(rd_cen),
                .sram_oen(rd_oen), .sram_wen(rd_wen), .sram_data_out(rd_wdata),
                .sram_data_in(sram_data), .active(rd_active));

  wire        rd_data_port = (A[7:0] == 8'h20);
  wire        rd_al_port   = (A[7:0] == 8'h21);
  wire        rd_ah_port   = (A[7:0] == 8'h22);
  assign rd_stb   = io_rd && rd_data_port;   // IN  0x20  (disk data)
  assign ram_wr   = io_wr && rd_data_port;   // OUT 0x20  (disk data)
  assign ram_wrlo = io_wr && rd_al_port;     // OUT 0x21  (address low)
  assign ram_wrhi = io_wr && rd_ah_port;     // OUT 0x22  (address high)

  // ---- SRAM bus mux: RAM disk owns bank-B access; machine owns bank A. ----
  wire        mem_write = sram_go & mem_we;
  assign sram_addr = rd_active ? rd_addr   : sram_addr_m;
  assign sram_cen  = rd_active ? rd_cen    : sram_cen_m;
  assign sram_oen  = rd_active ? rd_oen    : sram_oen_m;
  assign sram_wen  = rd_active ? rd_wen    : sram_wen_m;
  assign sram_data = rd_active ? (ram_wr ? rd_wdata : 8'bz)
                   :             (mem_write ? cpu_dout : 8'bz);

  // LED port 0x40 (active-low board LEDs, so invert on the pad).
  // syn_useioff=0: keep led_reg out of the IO block packing — the IO-register
  // wrapper's timing-check-only *_dly nets never get driven under iverilog,
  // which blinds the pad in the post-map sim (silicon is unaffected either way).
  (* syn_useioff = 0 *) reg [7:0] led_reg;
  always @(posedge clk or posedge rst) begin
    if (rst) led_reg <= 8'h00;
    else if (io_wr && (A[7:0] == 8'h40)) led_reg <= cpu_dout;
  end

  // ---- Fabric clock: free-running 1 ms (1 kHz) 32-bit uptime counter, readable
  //      by CP/M. Port 0x41 (write) LATCHES the counter into 4 bytes; ports
  //      0x42..0x45 (read) return those bytes LSB-first so a program sees a
  //      consistent snapshot (no tearing across the 4 reads). The tick is
  //      clk/25000 = 1 kHz derived from the 25 MHz system clock; ck_ms wraps at
  //      ~49.7 days. This is an uptime clock only (no battery-backed RTC).
  reg [14:0] ck_div = 15'd0;         // 0..24999
  reg [31:0] ck_ms  = 32'd0;         // uptime in milliseconds
  reg [7:0]  ck_l0 = 8'h00, ck_l1 = 8'h00, ck_l2 = 8'h00, ck_l3 = 8'h00;
  always @(posedge clk or posedge rst) begin
    if (rst) begin ck_div <= 15'd0; ck_ms <= 32'd0; end
    else if (ck_div == 15'd24999) begin ck_div <= 15'd0; ck_ms <= ck_ms + 1'b1; end
    else    ck_div <= ck_div + 1'b1;
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin ck_l0 <= 8'h00; ck_l1 <= 8'h00; ck_l2 <= 8'h00; ck_l3 <= 8'h00; end
    else if (io_wr && (A[7:0] == 8'h41)) begin
      ck_l0 <= ck_ms[7:0];   ck_l1 <= ck_ms[15:8];
      ck_l2 <= ck_ms[23:16]; ck_l3 <= ck_ms[31:24];
    end
  end

  // Console UART.
  wire        uart_wr = io_wr && (A[7:0] == 8'h81);
  wire        uart_rd = io_rd && (A[7:0] == 8'h81);
  wire [7:0]  uart_rx_data;
  wire        uart_rx_avail, uart_tx_busy;
  uart_tx u_tx(.clk(clk), .rst_n(~rst), .tx_data(cpu_dout), .tx_start(uart_wr),
               .tx_busy(uart_tx_busy), .txd(uart_tx));
  uart_rx u_rx(.clk(clk), .rst_n(~rst), .rxd(uart_rx), .rx_data(uart_rx_data),
               .rx_avail(uart_rx_avail), .rx_consume(uart_rd));

  // ---- SPI flash byte engine (on-board SST25VF020, M7 drive B:) ----
  // Ports: 0x50 SPI_DATA (r/w byte, CPU wait-stretched), 0x51 SPI_CTL (bit0=CS#),
  //        0x52 SPI_STAT (bit0=busy).  The byte engine stretches the CPU's I/O
  //        wait so IN/OUT 0x50 return valid data with no software busy polling.
  reg  spi_cs = 1'b1;          // CS# value latched from 0x51 bit0 (1 = deselected)
  always @(posedge clk or posedge rst)
    if (rst)                       spi_cs <= 1'b1;
    else if (io_wr && (A[7:0] == 8'h51)) spi_cs <= cpu_dout[0];
  wire spi_data_port = (A[7:0] == 8'h50);
  wire spi_rd = io_rd && spi_data_port;
  wire spi_wr = io_wr && spi_data_port;
  wire [7:0] spi_dout;
  wire       spi_busy, spi_wait;
  spi_flash u_spi(.clk(clk), .rst(rst), .cs(spi_cs),
                  .rd_stb(spi_rd), .wr_stb(spi_wr),
                  .din(cpu_dout), .dout(spi_dout), .busy(spi_busy),
                  .wait_req(spi_wait),
                  .clock_free(1'b0), .prescale(6'd1),
                  .spi_sclk(spi_sclk), .spi_csn(spi_csn),
                  .spi_mosi(spi_mosi), .spi_miso(spi_miso));
  // Stretch the CPU wait while a slow SPI byte transfer is in progress so an
  // IN 0x50 returns VALID received data (the CPU only samples di when wait_n
  // is high, after the engine has latched dout).
  wire cpu_wait_n = sram_wait & ~spi_wait & ~sd_wait;

  // ---- SD card SPI byte engine (dedicated port; flash SPI pins not broken out).
  // The SD breakout uses its own SPI port on pins 31 (CS), 32 (MOSI), 35 (CLK),
  // 36 (MISO).  Ports (decoded here):
  //   0x53 = SD_SPI_DATA  r/w byte (CPU wait-stretched)
  //   0x54 = SD_SPI_CTL   bit0 = SD CS# (0 = select, 1 = release)
  //                       bit1 = slow clock (1 = ~390 kHz, for SD init)
  //   0x55 = SD_SPI_STAT  bit0 = transfer-busy
  reg  sd_cs   = 1'b1;
  reg  sd_slow = 1'b0;
  always @(posedge clk or posedge rst) begin
    if (rst) begin sd_cs <= 1'b1; sd_slow <= 1'b0; end
    else if (io_wr && (A[7:0] == 8'h54)) begin
      sd_cs   <= cpu_dout[0];
      sd_slow <= cpu_dout[1];
    end
  end
  wire sd_data_port = (A[7:0] == 8'h53);
  wire sd_rd = io_rd && sd_data_port;
  wire sd_wr = io_wr && sd_data_port;
  wire [7:0] sd_dout;
  wire       sd_busy, sd_wait;
  spi_flash u_spi_sd(.clk(clk), .rst(rst), .cs(sd_cs),
                     .rd_stb(sd_rd), .wr_stb(sd_wr),
                     .din(cpu_dout), .dout(sd_dout), .busy(sd_busy),
                     .wait_req(sd_wait),
                     .clock_free(1'b1),
                     .prescale(sd_slow ? 6'd32 : 6'd1),
                     .spi_sclk(sd_sclk), .spi_csn(sd_csn),
                     .spi_mosi(sd_mosi), .spi_miso(sd_miso));

  reg [7:0] io_rdata;
  always @(*) begin
    io_rdata = 8'h00;
    if (io_rd && (A[7:0] == 8'h40)) io_rdata = ~sw;   // switches are active-low on the board; invert so pressed=1
    else if (io_rd && (A[7:0] == 8'h81)) io_rdata = uart_rx_data;
    else if (io_rd && (A[7:0] == 8'h80)) io_rdata = {6'h00, uart_rx_avail, uart_tx_busy};
    else if (io_rd && (A[7:0] == 8'h42)) io_rdata = ck_l0;   // clock byte 0 (ms low)
    else if (io_rd && (A[7:0] == 8'h43)) io_rdata = ck_l1;
    else if (io_rd && (A[7:0] == 8'h44)) io_rdata = ck_l2;
    else if (io_rd && (A[7:0] == 8'h45)) io_rdata = ck_l3;   // clock byte 3 (ms high)
    else if (io_rd && (A[7:0] == 8'h20)) io_rdata = rd_dout;   // RAM disk data
    else if (io_rd && (A[7:0] == 8'h50)) io_rdata = spi_dout;  // SPI data (read back)
    else if (io_rd && (A[7:0] == 8'h52)) io_rdata = {6'h00, 1'b0, spi_busy};  // SPI status
    else if (io_rd && (A[7:0] == 8'h53)) io_rdata = sd_dout;  // SD SPI data (read back)
    else if (io_rd && (A[7:0] == 8'h55)) io_rdata = {6'h00, 1'b0, sd_busy};  // SD SPI status
  end

  // Data mux: ROM for 0x0000-0x0FFF (read), SRAM for 0x1000+, else I/O.
  assign bus_din = rom_active ? rom_dout
                 : (mem_rd    ? sram_rdata
                 :              io_rdata);

  // CPU-programmable LEDs (I/O port 40h)
  assign led[7:0] = ~led_reg[7:0];

  tv80n u_cpu(
    .reset_n(~rst), .clk(clk), .wait_n(cpu_wait_n), .int_n(vcc), .nmi_n(vcc), .busrq_n(vcc),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(), .busak_n(busak_n),
    .A(A), .di(bus_din), .dout(cpu_dout)
  );
endmodule

