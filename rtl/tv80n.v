// tv80n -- negative-edge based wrapper for the TV80 core.
// Adapted from lawrie/ulx3s_z80_template's src/Z80/tv80n.v, re-wired for the
// Obijuan Z80-FPGA tv80_core (which outputs `dout`, not `do`, and has no `pc`).
//
// Drives control strobes (mreq/rd/wr/iorq) at the NEGEDGE so a memory wait_n
// path works correctly (the core samples di at tstate[2] && wait_n) without the
// bus race a POSEDGE-registered wrapper (tv80s) would introduce.
module tv80n (
  m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, A, dout,
  reset_n, clk, wait_n, int_n, nmi_n, busrq_n, di
);

  parameter Mode = 0;
  parameter T2Write = 0;
  parameter IOWait  = 1;

  input         reset_n;
  input         clk;
  input         wait_n;
  input         int_n;
  input         nmi_n;
  input         busrq_n;
  output        m1_n;
  output        mreq_n;
  output        iorq_n;
  output        rd_n;
  output        wr_n;
  output        rfsh_n;
  output        halt_n;
  output        busak_n;
  output [15:0] A;
  input  [7:0]  di;
  output [7:0]  dout;

  reg           mreq_n;
  reg           iorq_n;
  reg           rd_n;
  reg           wr_n;
  reg           nxt_mreq_n;
  reg           nxt_iorq_n;
  reg           nxt_rd_n;
  reg           nxt_wr_n;

  wire          cen;
  wire          intcycle_n;
  wire          no_read;
  wire          write;
  wire          iorq;
  reg  [7:0]    di_reg;
  wire [6:0]    mcycle;
  wire [6:0]    tstate;

  assign    cen = 1;

  tv80_core #(Mode, IOWait) i_tv80_core
    (
     .cen          (cen),
     .m1_n         (m1_n),
     .iorq         (iorq),
     .no_read      (no_read),
     .write        (write),
     .rfsh_n       (rfsh_n),
     .halt_n       (halt_n),
     .wait_n       (wait_n),
     .int_n        (int_n),
     .nmi_n        (nmi_n),
     .reset_n      (reset_n),
     .busrq_n      (busrq_n),
     .busak_n      (busak_n),
     .clk          (clk),
     .IntE         (),
     .stop         (),
     .A            (A),
     .dinst        (di),
     .di           (di_reg),
     .dout         (dout),
     .mc           (mcycle),
     .ts           (tstate),
     .intcycle_n   (intcycle_n)
     );

  always @*
    begin
      nxt_mreq_n = 1;
      nxt_rd_n   = 1;
      nxt_iorq_n = 1;
      nxt_wr_n   = 1;

      if (mcycle[0])
        begin
          if (tstate[1] || tstate[2])
            begin
              nxt_rd_n   = ~ intcycle_n;
              nxt_mreq_n = ~ intcycle_n;
              nxt_iorq_n = intcycle_n;
            end
        end
      else
        begin
          if ((tstate[1] || tstate[2]) && !no_read && !write)
            begin
              nxt_rd_n   = 1'b0;
              nxt_iorq_n = ~ iorq;
              nxt_mreq_n = iorq;
            end
          if (T2Write == 0)
            begin
              if (tstate[2] && write)
                begin
                  nxt_wr_n   = 1'b0;
                  nxt_iorq_n = ~ iorq;
                  nxt_mreq_n = iorq;
                end
            end
          else
            begin
              if ((tstate[1] || (tstate[2] && !wait_n)) && write)
                begin
                  nxt_wr_n   = 1'b0;
                  nxt_iorq_n = ~ iorq;
                  nxt_mreq_n = iorq;
                end
            end
        end
    end

  always @(negedge clk)
    begin
      if (!reset_n)
        begin
          rd_n   <= #1 1'b1;
          wr_n   <= #1 1'b1;
          iorq_n <= #1 1'b1;
          mreq_n <= #1 1'b1;
        end
      else
        begin
          rd_n   <= #1 nxt_rd_n;
          wr_n   <= #1 nxt_wr_n;
          iorq_n <= #1 nxt_iorq_n;
          mreq_n <= #1 nxt_mreq_n;
        end
    end

  always @(posedge clk)
    begin
      if (!reset_n)
        di_reg <= #1 0;
      else
        begin
          if (tstate[2] && wait_n == 1'b1)
            di_reg <= #1 di;
        end
    end

endmodule
