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
//   0x40 = LED latch (write, active-low board LEDs) / switch read
//   0x80 = console status (bit0 tx_busy, bit1 rx_avail), 0x81 = TX/RX data
module z80cpm_brevia2(
  input         clk_in,     // 50 MHz (pin 21)
  input         rst_n,      // reset (pin 19)
  output [7:0]  led,        // pins 46..37, ACTIVE-LOW
  input  [7:0]  sw,         // switches
  input         uart_rx,    // pin 110
  output        uart_tx,    // pin 109
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

  // Hardware heartbeat: free-running counter on clk -> led[7] blinks if the PLL
  // clock is actually ticking and the FPGA is configured. Independent of the CPU.
  reg [24:0] hb = 0;
  always @(posedge clk) hb <= hb + 1'b1;

  wire        m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, busak_n;
  wire [15:0] A;
  wire [7:0]  cpu_dout;
  wire [7:0]  bus_din;

  wire        mem_rd = ~mreq_n & ~rd_n;
  wire        mem_we = ~mreq_n & ~wr_n;
  wire        io_rd  = ~iorq_n & ~rd_n;
  wire        io_wr  = ~iorq_n & ~wr_n;

  // Memory region decode: 0x0000-0x0FFF = ROM, 0x1000-0xFFFF = external SRAM.
  wire        rom_active = mem_rd & (A[15:12] == 4'h0);
  wire        sram_go    = (mem_rd | mem_we) & (A[15:12] != 4'h0);

  wire [7:0]  rom_dout;
  boot_rom u_rom(.addr_in(A), .dout(rom_dout));

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

  // Console UART.
  wire        uart_wr = io_wr && (A[7:0] == 8'h81);
  wire        uart_rd = io_rd && (A[7:0] == 8'h81);
  wire [7:0]  uart_rx_data;
  wire        uart_rx_avail, uart_tx_busy;
  uart_tx u_tx(.clk(clk), .rst_n(~rst), .tx_data(cpu_dout), .tx_start(uart_wr),
               .tx_busy(uart_tx_busy), .txd(uart_tx));
  uart_rx u_rx(.clk(clk), .rst_n(~rst), .rxd(uart_rx), .rx_data(uart_rx_data),
               .rx_avail(uart_rx_avail), .rx_consume(uart_rd));

  reg [7:0] io_rdata;
  always @(*) begin
    io_rdata = 8'h00;
    if (io_rd && (A[7:0] == 8'h40)) io_rdata = sw;
    else if (io_rd && (A[7:0] == 8'h81)) io_rdata = uart_rx_data;
    else if (io_rd && (A[7:0] == 8'h80)) io_rdata = {6'h00, uart_rx_avail, uart_tx_busy};
    else if (io_rd && (A[7:0] == 8'h20)) io_rdata = rd_dout;   // RAM disk data
  end

  // Data mux: ROM for 0x0000-0x0FFF (read), SRAM for 0x1000+, else I/O.
  assign bus_din = rom_active ? rom_dout
                 : (mem_rd    ? sram_rdata
                 :              io_rdata);

  // led[7]=heartbeat (clock); led[6:0]=~led_reg (CPU's port 0x40 value,
  // active-low). Confirms whether the core actually executes OUT 0x40.
  assign led[7]   = hb[24];
  assign led[6:0] = ~led_reg[6:0];

  tv80n u_cpu(
    .reset_n(~rst), .clk(clk), .wait_n(sram_wait), .int_n(vcc), .nmi_n(vcc), .busrq_n(vcc),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(), .busak_n(busak_n),
    .A(A), .di(bus_din), .dout(cpu_dout)
  );
endmodule

