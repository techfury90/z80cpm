`timescale 1ns/1ps
// z80_soc_busless -- minimal native-bus Z80 SoC for M2.
// TV80 (negative-edge wrapper) + synchronous RAM (bank A) + an I/O-mapped LED
// port. No wait states yet: the RAM returns data combinationally and I/O is
// combinational, so wait_n stays high (the demand-pulled wait path for real
// async SRAM is added in M5).
//
// Decode discipline: memory vs I/O is separated by the core's OWN iorq_n, never
// by an address-range guess (the Z80 stack legitimately lives at 0xFFxx).
module z80_soc_busless(
  input         clk,
  input         rst_n,
  output [7:0]  led_reg,      // IO port 0x40 write latch (white-box exposed)
  input  [7:0]  sw_in,        // placeholder switch input (read port 0x40)
  output        halt_n
);

  wire        m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, busak_n;
  wire [15:0] A;
  wire [7:0]  cpu_dout;
  wire [7:0]  bus_din;

  wire        mem_rd = ~mreq_n & ~rd_n;
  wire        mem_wr = ~mreq_n & ~wr_n;
  wire        io_rd  = ~iorq_n & ~rd_n;
  wire        io_wr  = ~iorq_n & ~wr_n;

  // Bank A: synchronous RAM (combinational read, registered write).
  wire [7:0]  mem_dout;
  sync_mem u_mem(.clk(clk), .addr(A), .wdata(cpu_dout), .we(mem_wr), .rdata(mem_dout));

  // I/O port 0x40: LED latch (write) / switch readback (read).
  reg [7:0] led;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      led <= 8'h00;
    else if (io_wr && (A[7:0] == 8'h40))
      led <= cpu_dout;
  end

  reg [7:0] io_rdata;
  always @(*) begin
    io_rdata = 8'h00;
    if (io_rd && (A[7:0] == 8'h40))
      io_rdata = sw_in;
  end

  assign led_reg = led;
  assign bus_din = mem_rd ? mem_dout : io_rdata;

  tv80n u_cpu(
    .reset_n(rst_n), .clk(clk), .wait_n(1'b1), .int_n(1'b1), .nmi_n(1'b1), .busrq_n(1'b1),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(halt_n), .busak_n(busak_n),
    .A(A), .di(bus_din), .dout(cpu_dout)
  );

endmodule
