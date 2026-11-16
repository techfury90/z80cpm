// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Nov 15 20:02:53 2026
//
// Verilog Description of module z80cpm_brevia2
//

module z80cpm_brevia2 (clk_in, rst_n, led, sw, uart_rx, uart_tx, 
            sram_addr, sram_cen, sram_oen, sram_wen, sram_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(13[8:22])
    input clk_in;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(14[17:23])
    input rst_n;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(15[17:22])
    output [7:0]led;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    input [7:0]sw;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    input uart_rx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(18[17:24])
    output uart_tx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(19[17:24])
    output [16:0]sram_addr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    output sram_cen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    output sram_oen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    output sram_wen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
    inout [7:0]sram_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(24[17:26])
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire clk_N_323 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    
    wire VCC_net, clk_in_c, rst_n_c, led_c_7, led_c_6, led_c_5, 
        led_c_4, led_c_3, led_c_2, led_c_1, led_c_0, sw_c_7, sw_c_6, 
        sw_c_5, sw_c_4, sw_c_3, sw_c_2, sw_c_1, sw_c_0, uart_rx_c, 
        uart_tx_c, sram_addr_0_15, sram_addr_0_14, sram_addr_0_13, sram_addr_0_12, 
        sram_addr_0_11, sram_addr_0_10, sram_addr_0_9, sram_addr_0_8, 
        sram_addr_0_7, sram_addr_0_6, sram_addr_0_5, sram_addr_0_4, 
        sram_addr_0_3, sram_addr_0_2, sram_addr_0_1, sram_addr_0_0, 
        sram_cen_c, sram_oen_c, rst_m, rst_s, mreq_n, rd_n, wr_n;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    wire [7:0]cpu_dout;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(63[15:23])
    wire [7:0]bus_din;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(64[15:22])
    
    wire mem_rd, mem_we_N_105;
    wire [7:0]led_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(87[13:20])
    wire [7:0]uart_rx_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(96[15:27])
    
    wire uart_rx_avail, uart_tx_busy;
    wire [7:0]io_rdata;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(103[13:21])
    
    wire rst_n_N_66, sram_go_N_77, led_reg_7__N_56, uart_wr_N_78, n40901;
    wire [7:0]io_rdata_7__N_46;
    
    wire n18273, n18271, n18269;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    wire [1:0]ISet;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    
    wire n9512, n30931, n40903, n2399, n18267, n18265, n18152, 
        n18263, n33974, n621, n620, n619, n618, n617, n616, 
        n615, n614, n613, n612, n611, n610, n609, n608, n607, 
        n606, n15, n8, n12, n36951, n18261, n30930, n30929, 
        n25, n18259, n30928, n34714, n30927, n116, n30926, n4, 
        n119, n122, n125, n107, n106, n109, n110, n112, n113, 
        n115, n118, n121, n124, n127, n130, n32224, n18257, 
        n10659, n33853, n33448, n19, n18, n11141, n17, n13, 
        n10958, n38764, n40902, n7, n18255, n4_adj_2005, n18279, 
        n11459, n40900, n38711, n18283, n38705, n129, n128, n126, 
        n123, n120, n117, n114, n111, n108, n6, n4_adj_2006, 
        n21, n30937, n3, clk_op_enable_299, n2, n5, n30936, n9, 
        n22, n24251, n10, n11, n14, n16, n20, n23, n24, n18277, 
        clk_op_enable_203, n60, n30935, n38634, n10748, n30934, 
        n38603, n18275, n10571, n18281, n36881, n36879, n40906, 
        sram_data_out_7, n24181, n38522, n21027, sram_data_out_6, 
        sram_data_out_5, sram_data_out_4, sram_data_out_3, sram_data_out_2, 
        sram_data_out_1, sram_data_out_0, n21087, n219, n37027, n202, 
        n123_adj_2007, n37025, n30933, n34291, n38478, n38476, n38473, 
        n40905, n38472, n30932, n33852, GND_net;
    
    VHI i2 (.Z(VCC_net));
    INV i35368 (.A(clk_op), .Z(clk_N_323));
    FD1S3AY rst_s_52 (.D(rst_m), .CK(clk_op), .Q(rst_s)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52.GSR = "ENABLED";
    FD1S3AY rst_m_51 (.D(rst_n_N_66), .CK(clk_op), .Q(rst_m)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_m_51.GSR = "ENABLED";
    pmi_pll0o500X125252550d29c740 \pmi_pll0offCLKOP500XP212.50000025252550  (.CLKI(clk_in_c), 
            .CLKFB(clk_op), .RESET(GND_net), .CLKOP(clk_op)) /* synthesis syn_instantiated=1 */ ;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .module_type = "pmi_pll";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_fdel_val = 0;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_fdel = "off";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_clkfb_source = "CLKOP";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_duty_cycle = 50;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_phase_adj = 0;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_family = "XP2";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkok = "12.500000";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkos = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkop = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkfb = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clki = 50;
    CCU2B hb_5703_add_4_23 (.A0(n4_adj_2006), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30936), .COUT(n30937), .S0(n109), .S1(n108));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_23.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_23.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_23.INJECT1_0 = "NO";
    defparam hb_5703_add_4_23.INJECT1_1 = "NO";
    PFUMX i8616 (.BLUT(io_rdata[1]), .ALUT(n11459), .C0(mem_rd), .Z(bus_din[1]));
    PFUMX i6901 (.BLUT(io_rdata[0]), .ALUT(n9512), .C0(mem_rd), .Z(bus_din[0]));
    PFUMX i7769 (.BLUT(io_rdata[7]), .ALUT(n10571), .C0(mem_rd), .Z(bus_din[7]));
    PFUMX i7850 (.BLUT(io_rdata[6]), .ALUT(n10659), .C0(mem_rd), .Z(bus_din[6]));
    PFUMX i8324 (.BLUT(io_rdata[2]), .ALUT(n11141), .C0(mem_rd), .Z(bus_din[2]));
    BB sram_data_pad_6 (.I(cpu_dout[6]), .T(mem_we_N_105), .B(sram_data[6]), 
       .O(sram_data_out_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    PFUMX i7938 (.BLUT(io_rdata[5]), .ALUT(n10748), .C0(mem_rd), .Z(bus_din[5]));
    FD1P3DX led_reg__i1 (.D(cpu_dout[0]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40905), .Q(led_reg[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i1.GSR = "ENABLED";
    PFUMX i8147 (.BLUT(io_rdata[3]), .ALUT(n10958), .C0(mem_rd), .Z(bus_din[3]));
    CCU2B hb_5703_add_4_21 (.A0(n6), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30935), 
          .COUT(n30936), .S0(n111), .S1(n110));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_21.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_21.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_21.INJECT1_0 = "NO";
    defparam hb_5703_add_4_21.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30934), 
          .COUT(n30935), .S0(n113), .S1(n112));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_19.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_19.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_19.INJECT1_0 = "NO";
    defparam hb_5703_add_4_19.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30933), 
          .COUT(n30934), .S0(n115), .S1(n114));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_17.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_17.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_17.INJECT1_0 = "NO";
    defparam hb_5703_add_4_17.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_15 (.A0(n12), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30932), 
          .COUT(n30933), .S0(n117), .S1(n116));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_15.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_15.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_15.INJECT1_0 = "NO";
    defparam hb_5703_add_4_15.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_13 (.A0(n14), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n13), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30931), 
          .COUT(n30932), .S0(n119), .S1(n118));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_13.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_13.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_13.INJECT1_0 = "NO";
    defparam hb_5703_add_4_13.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30930), 
          .COUT(n30931), .S0(n121), .S1(n120));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_11.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_11.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_11.INJECT1_0 = "NO";
    defparam hb_5703_add_4_11.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30929), 
          .COUT(n30930), .S0(n123), .S1(n122));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_9.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_9.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_9.INJECT1_0 = "NO";
    defparam hb_5703_add_4_9.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30928), 
          .COUT(n30929), .S0(n125), .S1(n124));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_7.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_7.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_7.INJECT1_0 = "NO";
    defparam hb_5703_add_4_7.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30927), 
          .COUT(n30928), .S0(n127), .S1(n126));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_5.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_5.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_5.INJECT1_0 = "NO";
    defparam hb_5703_add_4_5.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30926), 
          .COUT(n30927), .S0(n129), .S1(n128));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_3.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_3.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_3.INJECT1_0 = "NO";
    defparam hb_5703_add_4_3.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n25), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n30926), 
          .S1(n130));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_1.INIT0 = 16'h0000;
    defparam hb_5703_add_4_1.INIT1 = 16'h555f;
    defparam hb_5703_add_4_1.INJECT1_0 = "NO";
    defparam hb_5703_add_4_1.INJECT1_1 = "NO";
    CCU2B hb_5703_add_4_25 (.A0(n2), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(led_c_7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30937), 
          .S0(n107), .S1(n106));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703_add_4_25.INIT0 = 16'haaa0;
    defparam hb_5703_add_4_25.INIT1 = 16'haaa0;
    defparam hb_5703_add_4_25.INJECT1_0 = "NO";
    defparam hb_5703_add_4_25.INJECT1_1 = "NO";
    FD1S3AY rst_s_52_rep_831 (.D(rst_m), .CK(clk_op), .Q(n40906)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_831.GSR = "ENABLED";
    FD1S3AX hb_5703__i0 (.D(n130), .CK(clk_op), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i0.GSR = "ENABLED";
    ORCALUT4 n33448_bdd_4_lut_34105 (.A(sram_addr_0_2), .B(sram_addr_0_1), 
            .C(sram_addr_0_4), .D(sram_addr_0_0), .Z(n36879)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;
    defparam n33448_bdd_4_lut_34105.init = 16'h000d;
    ORCALUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_66)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(51[14:20])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    BB sram_data_pad_7 (.I(cpu_dout[7]), .T(mem_we_N_105), .B(sram_data[7]), 
       .O(sram_data_out_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 io_rdata_7__I_1_i2_4_lut (.A(uart_rx_avail), .B(uart_rx_data[1]), 
            .C(n38522), .D(n34714), .Z(io_rdata_7__N_46[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[10:90])
    defparam io_rdata_7__I_1_i2_4_lut.init = 16'hc0ca;
    ORCALUT4 i33087_4_lut (.A(sram_addr_0_14), .B(sram_addr_0_15), .C(sram_addr_0_12), 
            .D(sram_addr_0_13), .Z(sram_go_N_77)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i33087_4_lut.init = 16'h0001;
    ORCALUT4 i33079_2_lut (.A(rd_n), .B(mreq_n), .Z(mem_rd)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33079_2_lut.init = 16'h1111;
    FD1S3AY rst_s_52_rep_830 (.D(rst_m), .CK(clk_op), .Q(n40905)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_830.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_828 (.D(rst_m), .CK(clk_op), .Q(n40903)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_828.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_827 (.D(rst_m), .CK(clk_op), .Q(n40902)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_827.GSR = "ENABLED";
    FD1S3AX hb_5703__i24 (.D(n106), .CK(clk_op), .Q(led_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i24.GSR = "ENABLED";
    FD1S3AX hb_5703__i23 (.D(n107), .CK(clk_op), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i23.GSR = "ENABLED";
    FD1S3AX hb_5703__i22 (.D(n108), .CK(clk_op), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i22.GSR = "ENABLED";
    FD1S3AX hb_5703__i21 (.D(n109), .CK(clk_op), .Q(n4_adj_2006)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i21.GSR = "ENABLED";
    FD1S3AX hb_5703__i20 (.D(n110), .CK(clk_op), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i20.GSR = "ENABLED";
    FD1S3AX hb_5703__i19 (.D(n111), .CK(clk_op), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i19.GSR = "ENABLED";
    FD1S3AX hb_5703__i18 (.D(n112), .CK(clk_op), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i18.GSR = "ENABLED";
    FD1S3AX hb_5703__i17 (.D(n113), .CK(clk_op), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i17.GSR = "ENABLED";
    FD1S3AX hb_5703__i16 (.D(n114), .CK(clk_op), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i16.GSR = "ENABLED";
    FD1S3AX hb_5703__i15 (.D(n115), .CK(clk_op), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i15.GSR = "ENABLED";
    FD1S3AX hb_5703__i14 (.D(n116), .CK(clk_op), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i14.GSR = "ENABLED";
    FD1S3AX hb_5703__i13 (.D(n117), .CK(clk_op), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i13.GSR = "ENABLED";
    FD1S3AX hb_5703__i12 (.D(n118), .CK(clk_op), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i12.GSR = "ENABLED";
    FD1S3AX hb_5703__i11 (.D(n119), .CK(clk_op), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i11.GSR = "ENABLED";
    FD1S3AX hb_5703__i10 (.D(n120), .CK(clk_op), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i10.GSR = "ENABLED";
    FD1S3AX hb_5703__i9 (.D(n121), .CK(clk_op), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i9.GSR = "ENABLED";
    FD1S3AX hb_5703__i8 (.D(n122), .CK(clk_op), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i8.GSR = "ENABLED";
    FD1S3AX hb_5703__i7 (.D(n123), .CK(clk_op), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i7.GSR = "ENABLED";
    FD1S3AX hb_5703__i6 (.D(n124), .CK(clk_op), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i6.GSR = "ENABLED";
    FD1S3AX hb_5703__i5 (.D(n125), .CK(clk_op), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i5.GSR = "ENABLED";
    FD1S3AX hb_5703__i4 (.D(n126), .CK(clk_op), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i4.GSR = "ENABLED";
    FD1S3AX hb_5703__i3 (.D(n127), .CK(clk_op), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i3.GSR = "ENABLED";
    FD1S3AX hb_5703__i2 (.D(n128), .CK(clk_op), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i2.GSR = "ENABLED";
    FD1S3AX hb_5703__i1 (.D(n129), .CK(clk_op), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5703__i1.GSR = "ENABLED";
    FD1P3DX led_reg__i7 (.D(cpu_dout[6]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i7.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_826 (.D(rst_m), .CK(clk_op), .Q(n40901)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_826.GSR = "ENABLED";
    FD1P3DX led_reg__i6 (.D(cpu_dout[5]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i6.GSR = "ENABLED";
    FD1P3DX led_reg__i5 (.D(cpu_dout[4]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i5.GSR = "ENABLED";
    FD1P3DX led_reg__i4 (.D(cpu_dout[3]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i4.GSR = "ENABLED";
    FD1P3DX led_reg__i3 (.D(cpu_dout[2]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i3.GSR = "ENABLED";
    FD1P3DX led_reg__i2 (.D(cpu_dout[1]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n40906), .Q(led_reg[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i2.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_825 (.D(rst_m), .CK(clk_op), .Q(n40900)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_825.GSR = "ENABLED";
    ORCALUT4 i5918_2_lut (.A(tstate[2]), .B(n40901), .Z(clk_op_enable_203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5918_2_lut.init = 16'heeee;
    ORCALUT4 sram_data_out_4_bdd_3_lut_34106_4_lut (.A(n36879), .B(n33448), 
            .C(sram_go_N_77), .D(sram_data_out_4), .Z(n36881)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam sram_data_out_4_bdd_3_lut_34106_4_lut.init = 16'h2f20;
    ORCALUT4 led_reg_6__I_0_i7_1_lut (.A(led_reg[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i7_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i6_1_lut (.A(led_reg[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i6_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i5_1_lut (.A(led_reg[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i5_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i4_1_lut (.A(led_reg[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i4_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i3_1_lut (.A(led_reg[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i3_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i2_1_lut (.A(led_reg[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i2_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i1_1_lut (.A(led_reg[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i1_1_lut.init = 16'h5555;
    ORCALUT4 io_rdata_7__I_1_i1_4_lut (.A(uart_tx_busy), .B(uart_rx_data[0]), 
            .C(n38522), .D(n34714), .Z(io_rdata_7__N_46[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[10:90])
    defparam io_rdata_7__I_1_i1_4_lut.init = 16'hc0ca;
    BB sram_data_pad_5 (.I(cpu_dout[5]), .T(mem_we_N_105), .B(sram_data[5]), 
       .O(sram_data_out_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_4 (.I(cpu_dout[4]), .T(mem_we_N_105), .B(sram_data[4]), 
       .O(sram_data_out_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_3 (.I(cpu_dout[3]), .T(mem_we_N_105), .B(sram_data[3]), 
       .O(sram_data_out_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_2 (.I(cpu_dout[2]), .T(mem_we_N_105), .B(sram_data[2]), 
       .O(sram_data_out_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_1 (.I(cpu_dout[1]), .T(mem_we_N_105), .B(sram_data[1]), 
       .O(sram_data_out_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_0 (.I(cpu_dout[0]), .T(mem_we_N_105), .B(sram_data[0]), 
       .O(sram_data_out_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(19[17:24])
    OB sram_addr_pad_16 (.I(GND_net), .O(sram_addr[16]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_15 (.I(sram_addr_0_15), .O(sram_addr[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_14 (.I(sram_addr_0_14), .O(sram_addr[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_13 (.I(sram_addr_0_13), .O(sram_addr[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_12 (.I(sram_addr_0_12), .O(sram_addr[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_11 (.I(sram_addr_0_11), .O(sram_addr[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_10 (.I(sram_addr_0_10), .O(sram_addr[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_9 (.I(sram_addr_0_9), .O(sram_addr[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_8 (.I(sram_addr_0_8), .O(sram_addr[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_7 (.I(sram_addr_0_7), .O(sram_addr[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_6 (.I(sram_addr_0_6), .O(sram_addr[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_5 (.I(sram_addr_0_5), .O(sram_addr[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_4 (.I(sram_addr_0_4), .O(sram_addr[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_3 (.I(sram_addr_0_3), .O(sram_addr[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_2 (.I(sram_addr_0_2), .O(sram_addr[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_1 (.I(sram_addr_0_1), .O(sram_addr[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_0 (.I(sram_addr_0_0), .O(sram_addr[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_cen_pad (.I(sram_cen_c), .O(sram_cen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    OB sram_oen_pad (.I(sram_oen_c), .O(sram_oen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    OB sram_wen_pad (.I(mem_we_N_105), .O(sram_wen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(14[17:23])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(15[17:22])
    IB sw_pad_7 (.I(sw[7]), .O(sw_c_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_6 (.I(sw[6]), .O(sw_c_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_5 (.I(sw[5]), .O(sw_c_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_4 (.I(sw[4]), .O(sw_c_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_3 (.I(sw[3]), .O(sw_c_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB uart_rx_pad (.I(uart_rx), .O(uart_rx_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(18[17:24])
    ORCALUT4 i2_3_lut_4_lut (.A(ISet[1]), .B(n38705), .C(n38634), .D(IR[7]), 
            .Z(n2399)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 io_rdata_7__I_0_56_i5_4_lut (.A(uart_rx_data[4]), .B(sw_c_4), 
            .C(n38473), .D(n38522), .Z(io_rdata[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i5_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_3_lut (.A(sram_go_N_77), .B(mreq_n), .C(wr_n), .Z(mem_we_N_105)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i1_3_lut_4_lut (.A(sram_go_N_77), .B(mreq_n), .C(wr_n), .D(rd_n), 
            .Z(sram_cen_c)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    ORCALUT4 i2_3_lut_4_lut_adj_644 (.A(sram_go_N_77), .B(mreq_n), .C(wr_n), 
            .D(rd_n), .Z(sram_oen_c)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i2_3_lut_4_lut_adj_644.init = 16'hffef;
    GSR GSR_INST (.GSR(VCC_net));
    PFUMX i33329 (.BLUT(io_rdata[4]), .ALUT(n36881), .C0(mem_rd), .Z(bus_din[4]));
    ORCALUT4 i8146_4_lut (.A(sram_data_out_3), .B(n24181), .C(sram_go_N_77), 
            .D(n34291), .Z(n10958)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8146_4_lut.init = 16'hfa3a;
    ORCALUT4 io_rdata_7__I_0_56_i4_4_lut (.A(uart_rx_data[3]), .B(sw_c_3), 
            .C(n38473), .D(n38522), .Z(io_rdata[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i4_4_lut.init = 16'hcac0;
    ORCALUT4 io_rdata_7__I_0_56_i6_4_lut (.A(uart_rx_data[5]), .B(sw_c_5), 
            .C(n38473), .D(n38522), .Z(io_rdata[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i6_4_lut.init = 16'hcac0;
    boot_rom u_rom (.sram_go_N_77(sram_go_N_77), .n33448(n33448), .n38603(n38603), 
            .sram_data_out_1(sram_data_out_1), .n21027(n21027), .n11459(n11459), 
            .n33853(n33853), .n60(n60), .sram_addr_0_2(sram_addr_0_2), 
            .sram_addr_0_4(sram_addr_0_4), .sram_addr_0_0(sram_addr_0_0), 
            .sram_addr_0_3(sram_addr_0_3), .sram_addr_0_1(sram_addr_0_1), 
            .n38472(n38472), .uart_wr_N_78(uart_wr_N_78), .n38764(n38764), 
            .uart_rx_avail(uart_rx_avail), .n38478(n38478), .n32224(n32224), 
            .n219(n219), .n33974(n33974), .n24181(n24181), .n24251(n24251), 
            .n202(n202), .n4(n4), .n33852(n33852), .n4_adj_13(n4_adj_2005), 
            .n34291(n34291), .sram_data_out_5(sram_data_out_5), .n10748(n10748)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(76[12:47])
    ORCALUT4 i8323_4_lut (.A(sram_data_out_2), .B(n24251), .C(sram_go_N_77), 
            .D(n33974), .Z(n11141)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8323_4_lut.init = 16'hfaca;
    ORCALUT4 io_rdata_7__I_0_56_i3_4_lut (.A(uart_rx_data[2]), .B(sw_c_2), 
            .C(n38473), .D(n38522), .Z(io_rdata[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i3_4_lut.init = 16'hcac0;
    ORCALUT4 i7849_4_lut (.A(sram_data_out_6), .B(n21087), .C(sram_go_N_77), 
            .D(n21027), .Z(n10659)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7849_4_lut.init = 16'hfaca;
    ORCALUT4 io_rdata_7__I_0_56_i7_4_lut (.A(uart_rx_data[6]), .B(sw_c_6), 
            .C(n38473), .D(n38522), .Z(io_rdata[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i7_4_lut.init = 16'hcac0;
    ORCALUT4 i7768_4_lut (.A(sram_data_out_7), .B(n123_adj_2007), .C(sram_go_N_77), 
            .D(n21027), .Z(n10571)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7768_4_lut.init = 16'hfaca;
    ORCALUT4 io_rdata_7__I_0_56_i8_4_lut (.A(uart_rx_data[7]), .B(sw_c_7), 
            .C(n38473), .D(n38522), .Z(io_rdata[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i8_4_lut.init = 16'hcac0;
    tv80n u_cpu (.wr_n(wr_n), .clk_N_323(clk_N_323), .mreq_n(mreq_n), 
          .n40905(n40905), .rd_n(rd_n), .n40906(n40906), .clk_op(clk_op), 
          .clk_op_enable_203(clk_op_enable_203), .rst_s(rst_s), .bus_din({bus_din}), 
          .n40901(n40901), .n40900(n40900), .n37025(n37025), .uart_tx_busy(uart_tx_busy), 
          .n37027(n37027), .n38764(n38764), .n38711(n38711), .uart_wr_N_78(uart_wr_N_78), 
          .n38476(n38476), .clk_op_enable_299(clk_op_enable_299), .\sr[7] (sr[7]), 
          .n36951(n36951), .cpu_dout({cpu_dout}), .n38522(n38522), .n605({n606, 
          n607, n608, n609, n610, n611, n612, n613, n614, n615, 
          n616, n617, n618, n619, n620, n621}), .n18261(n18261), 
          .n18269(n18269), .n18265(n18265), .n18267(n18267), .n18271(n18271), 
          .n18273(n18273), .n18275(n18275), .n18277(n18277), .n18279(n18279), 
          .n18283(n18283), .n18257(n18257), .n18255(n18255), .n18152(n18152), 
          .n18281(n18281), .n18259(n18259), .n18263(n18263), .n40902(n40902), 
          .sram_addr_0_0(sram_addr_0_0), .VCC_net(VCC_net), .n40903(n40903), 
          .\ISet[1] (ISet[1]), .sram_addr_0_15(sram_addr_0_15), .sram_addr_0_14(sram_addr_0_14), 
          .\tstate[2] (tstate[2]), .sram_addr_0_13(sram_addr_0_13), .sram_addr_0_12(sram_addr_0_12), 
          .sram_addr_0_11(sram_addr_0_11), .sram_addr_0_10(sram_addr_0_10), 
          .sram_addr_0_9(sram_addr_0_9), .sram_addr_0_8(sram_addr_0_8), 
          .sram_addr_0_7(sram_addr_0_7), .sram_addr_0_6(sram_addr_0_6), 
          .sram_addr_0_5(sram_addr_0_5), .sram_addr_0_4(sram_addr_0_4), 
          .sram_addr_0_3(sram_addr_0_3), .sram_addr_0_2(sram_addr_0_2), 
          .sram_addr_0_1(sram_addr_0_1), .\IR[7] (IR[7]), .n38603(n38603), 
          .n33852(n33852), .n33853(n33853), .n4(n4_adj_2005), .n60(n60), 
          .n38473(n38473), .led_reg_7__N_56(led_reg_7__N_56), .n123(n123_adj_2007), 
          .n21087(n21087), .n38705(n38705), .n34714(n34714), .n219(n219), 
          .n38472(n38472), .n202(n202), .n21027(n21027), .n33448(n33448), 
          .sw_c_0(sw_c_0), .\io_rdata_7__N_46[0] (io_rdata_7__N_46[0]), 
          .\io_rdata[0] (io_rdata[0]), .sw_c_1(sw_c_1), .\io_rdata_7__N_46[1] (io_rdata_7__N_46[1]), 
          .\io_rdata[1] (io_rdata[1]), .n2399(n2399), .n38634(n38634)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(121[9] 126[4])
    ORCALUT4 i6900_4_lut (.A(sram_data_out_0), .B(n24251), .C(sram_go_N_77), 
            .D(n4), .Z(n9512)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i6900_4_lut.init = 16'hfaca;
    uart_rx u_rx (.uart_rx_data({uart_rx_data}), .clk_op(clk_op), .uart_rx_avail(uart_rx_avail), 
            .rst_s(rst_s), .n32224(n32224), .n40905(n40905), .uart_rx_c(uart_rx_c), 
            .VCC_net(VCC_net), .n40902(n40902), .n40900(n40900), .n40906(n40906), 
            .n38478(n38478), .n40901(n40901)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(100[11] 101[63])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_tx u_tx (.uart_tx_busy(uart_tx_busy), .clk_op(clk_op), .n40905(n40905), 
            .VCC_net(VCC_net), .n605({n606, n607, n608, n609, n610, 
            n611, n612, n613, n614, n615, n616, n617, n618, 
            n619, n620, n621}), .n38476(n38476), .n38711(n38711), 
            .uart_wr_N_78(uart_wr_N_78), .rst_s(rst_s), .\sr[7] (sr[7]), 
            .n40902(n40902), .n37027(n37027), .clk_op_enable_299(clk_op_enable_299), 
            .n40903(n40903), .n37025(n37025), .n36951(n36951), .n40906(n40906), 
            .n18283(n18283), .n18281(n18281), .n18279(n18279), .n18277(n18277), 
            .\cpu_dout[1] (cpu_dout[1]), .\cpu_dout[2] (cpu_dout[2]), .n18275(n18275), 
            .n18273(n18273), .\cpu_dout[3] (cpu_dout[3]), .n40900(n40900), 
            .n18271(n18271), .\cpu_dout[4] (cpu_dout[4]), .n18269(n18269), 
            .\cpu_dout[5] (cpu_dout[5]), .n18267(n18267), .n18265(n18265), 
            .\cpu_dout[0] (cpu_dout[0]), .n18263(n18263), .n18261(n18261), 
            .n18259(n18259), .n18257(n18257), .n18255(n18255), .uart_tx_c(uart_tx_c), 
            .n18152(n18152)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(98[11] 99[54])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module boot_rom
//

module boot_rom (sram_go_N_77, n33448, n38603, sram_data_out_1, n21027, 
            n11459, n33853, n60, sram_addr_0_2, sram_addr_0_4, sram_addr_0_0, 
            sram_addr_0_3, sram_addr_0_1, n38472, uart_wr_N_78, n38764, 
            uart_rx_avail, n38478, n32224, n219, n33974, n24181, 
            n24251, n202, n4, n33852, n4_adj_13, n34291, sram_data_out_5, 
            n10748) /* synthesis syn_module_defined=1 */ ;
    input sram_go_N_77;
    input n33448;
    output n38603;
    input sram_data_out_1;
    input n21027;
    output n11459;
    input n33853;
    input n60;
    input sram_addr_0_2;
    input sram_addr_0_4;
    input sram_addr_0_0;
    input sram_addr_0_3;
    input sram_addr_0_1;
    output n38472;
    input uart_wr_N_78;
    input n38764;
    input uart_rx_avail;
    input n38478;
    output n32224;
    output n219;
    output n33974;
    output n24181;
    output n24251;
    output n202;
    output n4;
    output n33852;
    output n4_adj_13;
    output n34291;
    input sram_data_out_5;
    output n10748;
    
    
    wire n4_c, n55, n38812, n38811, n6, n38518, n38449, n38471, 
        n38710, n34352, n16983, n10, n38426;
    
    ORCALUT4 i1_2_lut_rep_624 (.A(sram_go_N_77), .B(n33448), .Z(n38603)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i1_2_lut_rep_624.init = 16'hdddd;
    ORCALUT4 i30_4_lut (.A(sram_data_out_1), .B(n21027), .C(sram_go_N_77), 
            .D(n4_c), .Z(n11459)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i30_4_lut.init = 16'hfaca;
    PFUMX i29 (.BLUT(n33853), .ALUT(n60), .C0(sram_addr_0_2), .Z(n55));
    ORCALUT4 i1_4_lut_then_4_lut (.A(sram_addr_0_4), .B(n38603), .C(sram_addr_0_0), 
            .D(sram_addr_0_3), .Z(n38812)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0001;
    ORCALUT4 i1_4_lut_else_4_lut (.A(sram_addr_0_1), .B(sram_addr_0_4), 
            .C(n38603), .D(sram_addr_0_0), .Z(n38811)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0001;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(sram_go_N_77), .B(n33448), .C(sram_addr_0_2), 
            .D(sram_addr_0_0), .Z(n6)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_493_3_lut_4_lut (.A(sram_go_N_77), .B(n33448), 
            .C(sram_addr_0_1), .D(sram_addr_0_0), .Z(n38472)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i1_2_lut_rep_493_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_539_3_lut (.A(sram_go_N_77), .B(n33448), .C(sram_addr_0_0), 
            .Z(n38518)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i1_2_lut_rep_539_3_lut.init = 16'hfdfd;
    ORCALUT4 i33280_2_lut_rep_470_3_lut_4_lut (.A(sram_go_N_77), .B(n33448), 
            .C(sram_addr_0_1), .D(sram_addr_0_0), .Z(n38449)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i33280_2_lut_rep_470_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_2_lut_rep_492_3_lut_4_lut (.A(sram_go_N_77), .B(n33448), 
            .C(sram_addr_0_2), .D(sram_addr_0_0), .Z(n38471)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(24[9:17])
    defparam i1_2_lut_rep_492_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_3_lut_4_lut (.A(uart_wr_N_78), .B(n38764), .C(uart_rx_avail), 
            .D(n38478), .Z(n32224)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hffd0;
    ORCALUT4 i226_2_lut_rep_731 (.A(sram_addr_0_1), .B(sram_addr_0_3), .Z(n38710)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i226_2_lut_rep_731.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut (.A(sram_addr_0_1), .B(sram_addr_0_3), .C(sram_addr_0_2), 
            .D(sram_addr_0_4), .Z(n219)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut (.A(n33974), .B(n55), .Z(n4_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 i27540_3_lut_4_lut (.A(sram_addr_0_4), .B(n38471), .C(sram_addr_0_1), 
            .D(sram_addr_0_3), .Z(n24181)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i27540_3_lut_4_lut.init = 16'heefe;
    ORCALUT4 i33283_3_lut_4_lut (.A(sram_addr_0_4), .B(n38471), .C(n34352), 
            .D(n16983), .Z(n24251)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33283_3_lut_4_lut.init = 16'h10ff;
    ORCALUT4 i5_3_lut (.A(sram_addr_0_4), .B(n10), .C(sram_addr_0_0), 
            .Z(n16983)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i5_3_lut.init = 16'hfefe;
    ORCALUT4 i4_4_lut (.A(n33448), .B(sram_addr_0_2), .C(n34352), .D(sram_go_N_77), 
            .Z(n10)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i4_4_lut.init = 16'hbfff;
    ORCALUT4 i30849_2_lut (.A(sram_addr_0_3), .B(sram_addr_0_1), .Z(n34352)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30849_2_lut.init = 16'h8888;
    ORCALUT4 i1_4_lut (.A(n38710), .B(n202), .C(n6), .D(sram_addr_0_4), 
            .Z(n4)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h3373;
    ORCALUT4 i1_2_lut_rep_447_4_lut (.A(sram_addr_0_4), .B(n38518), .C(sram_addr_0_3), 
            .D(sram_addr_0_1), .Z(n38426)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_447_4_lut.init = 16'hfffe;
    ORCALUT4 i2_3_lut_4_lut_adj_641 (.A(sram_addr_0_2), .B(n38518), .C(sram_addr_0_1), 
            .D(sram_addr_0_3), .Z(n202)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_adj_641.init = 16'hffef;
    ORCALUT4 i30793_4_lut (.A(n38449), .B(n33852), .C(n4_adj_13), .D(sram_addr_0_2), 
            .Z(n34291)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i30793_4_lut.init = 16'ha088;
    ORCALUT4 i1_2_lut_adj_642 (.A(sram_addr_0_4), .B(sram_addr_0_3), .Z(n33852)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i1_2_lut_adj_642.init = 16'h2222;
    ORCALUT4 i1_2_lut_adj_643 (.A(sram_addr_0_4), .B(sram_addr_0_3), .Z(n4_adj_13)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_643.init = 16'h4444;
    ORCALUT4 i17557_4_lut (.A(sram_data_out_5), .B(sram_addr_0_2), .C(sram_go_N_77), 
            .D(n38426), .Z(n10748)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[15:25])
    defparam i17557_4_lut.init = 16'h0a3a;
    PFUMX i34171 (.BLUT(n38811), .ALUT(n38812), .C0(sram_addr_0_2), .Z(n33974));
    
endmodule
//
// Verilog Description of module tv80n
//

module tv80n (wr_n, clk_N_323, mreq_n, n40905, rd_n, n40906, clk_op, 
            clk_op_enable_203, rst_s, bus_din, n40901, n40900, n37025, 
            uart_tx_busy, n37027, n38764, n38711, uart_wr_N_78, n38476, 
            clk_op_enable_299, \sr[7] , n36951, cpu_dout, n38522, 
            n605, n18261, n18269, n18265, n18267, n18271, n18273, 
            n18275, n18277, n18279, n18283, n18257, n18255, n18152, 
            n18281, n18259, n18263, n40902, sram_addr_0_0, VCC_net, 
            n40903, \ISet[1] , sram_addr_0_15, sram_addr_0_14, \tstate[2] , 
            sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, sram_addr_0_10, 
            sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, sram_addr_0_6, 
            sram_addr_0_5, sram_addr_0_4, sram_addr_0_3, sram_addr_0_2, 
            sram_addr_0_1, \IR[7] , n38603, n33852, n33853, n4, 
            n60, n38473, led_reg_7__N_56, n123, n21087, n38705, 
            n34714, n219, n38472, n202, n21027, n33448, sw_c_0, 
            \io_rdata_7__N_46[0] , \io_rdata[0] , sw_c_1, \io_rdata_7__N_46[1] , 
            \io_rdata[1] , n2399, n38634) /* synthesis syn_module_defined=1 */ ;
    output wr_n;
    input clk_N_323;
    output mreq_n;
    input n40905;
    output rd_n;
    input n40906;
    input clk_op;
    input clk_op_enable_203;
    input rst_s;
    input [7:0]bus_din;
    input n40901;
    input n40900;
    input n37025;
    input uart_tx_busy;
    output n37027;
    output n38764;
    output n38711;
    output uart_wr_N_78;
    output n38476;
    output clk_op_enable_299;
    input \sr[7] ;
    output n36951;
    output [7:0]cpu_dout;
    output n38522;
    input [15:0]n605;
    output n18261;
    output n18269;
    output n18265;
    output n18267;
    output n18271;
    output n18273;
    output n18275;
    output n18277;
    output n18279;
    output n18283;
    output n18257;
    output n18255;
    output n18152;
    output n18281;
    output n18259;
    output n18263;
    input n40902;
    output sram_addr_0_0;
    input VCC_net;
    input n40903;
    output \ISet[1] ;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output \tstate[2] ;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output sram_addr_0_9;
    output sram_addr_0_8;
    output sram_addr_0_7;
    output sram_addr_0_6;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output sram_addr_0_3;
    output sram_addr_0_2;
    output sram_addr_0_1;
    output \IR[7] ;
    input n38603;
    input n33852;
    output n33853;
    input n4;
    output n60;
    output n38473;
    output led_reg_7__N_56;
    output n123;
    output n21087;
    output n38705;
    output n34714;
    input n219;
    input n38472;
    input n202;
    output n21027;
    output n33448;
    input sw_c_0;
    input \io_rdata_7__N_46[0] ;
    output \io_rdata[0] ;
    input sw_c_1;
    input \io_rdata_7__N_46[1] ;
    output \io_rdata[1] ;
    input n2399;
    output n38634;
    
    wire clk_N_323 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n9543, nxt_mreq_n_N_348, nxt_mreq_n, nxt_rd_n;
    wire [7:0]di_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(50[17:23])
    wire [3:0]ALU_Op_3__N_1283;
    
    wire n37026, iorq_n, n36950, iorq, iorq_N_343, n34912;
    
    FD1S3JX wr_n_45 (.D(nxt_mreq_n_N_348), .CK(clk_N_323), .PD(n9543), 
            .Q(wr_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam wr_n_45.GSR = "ENABLED";
    FD1S3JX mreq_n_47 (.D(nxt_mreq_n), .CK(clk_N_323), .PD(n40905), .Q(mreq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam mreq_n_47.GSR = "ENABLED";
    FD1S3JX rd_n_44 (.D(nxt_rd_n), .CK(clk_N_323), .PD(n40906), .Q(rd_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam rd_n_44.GSR = "ENABLED";
    FD1P3IX di_reg__i0 (.D(bus_din[0]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i0.GSR = "ENABLED";
    ORCALUT4 i6927_2_lut (.A(ALU_Op_3__N_1283[3]), .B(n40901), .Z(n9543)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(138[9] 143[12])
    defparam i6927_2_lut.init = 16'heeee;
    FD1P3IX di_reg__i7 (.D(bus_din[7]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i7.GSR = "ENABLED";
    FD1P3IX di_reg__i6 (.D(bus_din[6]), .SP(clk_op_enable_203), .CD(n40906), 
            .CK(clk_op), .Q(di_reg[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i6.GSR = "ENABLED";
    FD1P3IX di_reg__i5 (.D(bus_din[5]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i5.GSR = "ENABLED";
    FD1P3IX di_reg__i4 (.D(bus_din[4]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i4.GSR = "ENABLED";
    FD1P3IX di_reg__i3 (.D(bus_din[3]), .SP(clk_op_enable_203), .CD(n40900), 
            .CK(clk_op), .Q(di_reg[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i3.GSR = "ENABLED";
    FD1P3IX di_reg__i2 (.D(bus_din[2]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i2.GSR = "ENABLED";
    FD1P3IX di_reg__i1 (.D(bus_din[1]), .SP(clk_op_enable_203), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i1.GSR = "ENABLED";
    PFUMX i33394 (.BLUT(n37026), .ALUT(n37025), .C0(uart_tx_busy), .Z(n37027));
    ORCALUT4 i1_2_lut_rep_785 (.A(rd_n), .B(iorq_n), .Z(n38764)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_785.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_732 (.A(wr_n), .B(iorq_n), .Z(n38711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_732.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_497_3_lut (.A(wr_n), .B(iorq_n), .C(uart_wr_N_78), 
            .Z(n38476)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_497_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(wr_n), .B(iorq_n), .C(uart_tx_busy), 
            .D(uart_wr_N_78), .Z(clk_op_enable_299)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf1f0;
    ORCALUT4 n36950_bdd_3_lut (.A(n36950), .B(\sr[7] ), .C(uart_tx_busy), 
            .Z(n36951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36950_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 sr_7__bdd_4_lut (.A(\sr[7] ), .B(cpu_dout[6]), .C(n38711), 
            .D(uart_wr_N_78), .Z(n36950)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam sr_7__bdd_4_lut.init = 16'hacaa;
    ORCALUT4 i1_2_lut_rep_543_3_lut (.A(rd_n), .B(iorq_n), .C(uart_wr_N_78), 
            .Z(n38522)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_543_3_lut.init = 16'h1010;
    ORCALUT4 iorq_I_0_1_lut (.A(iorq), .Z(iorq_N_343)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(104[28:34])
    defparam iorq_I_0_1_lut.init = 16'h5555;
    FD1S3JX iorq_n_46 (.D(iorq_N_343), .CK(clk_N_323), .PD(n34912), .Q(iorq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam iorq_n_46.GSR = "ENABLED";
    ORCALUT4 uart_wr_N_78_bdd_4_lut (.A(uart_wr_N_78), .B(n38711), .C(\sr[7] ), 
            .D(cpu_dout[7]), .Z(n37026)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam uart_wr_N_78_bdd_4_lut.init = 16'hf2d0;
    ORCALUT4 i20338_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[11]), 
            .D(uart_tx_busy), .Z(n18261)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20338_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20341_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[7]), 
            .D(uart_tx_busy), .Z(n18269)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20341_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20339_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[9]), 
            .D(uart_tx_busy), .Z(n18265)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20339_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i1_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[8]), 
            .D(uart_tx_busy), .Z(n18267)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i1_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20342_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[6]), 
            .D(uart_tx_busy), .Z(n18271)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20342_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20343_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[5]), 
            .D(uart_tx_busy), .Z(n18273)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20343_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20344_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[4]), 
            .D(uart_tx_busy), .Z(n18275)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20344_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20345_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[3]), 
            .D(uart_tx_busy), .Z(n18277)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20345_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20346_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[2]), 
            .D(uart_tx_busy), .Z(n18279)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20346_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20348_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[0]), 
            .D(uart_tx_busy), .Z(n18283)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20348_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20337_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[13]), 
            .D(uart_tx_busy), .Z(n18257)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20337_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20330_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[14]), 
            .D(uart_tx_busy), .Z(n18255)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20330_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_638 (.A(uart_wr_N_78), .B(n38711), 
            .C(n605[15]), .D(uart_tx_busy), .Z(n18152)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i1_2_lut_3_lut_4_lut_adj_638.init = 16'hf0f2;
    ORCALUT4 i20347_2_lut_3_lut_4_lut (.A(uart_wr_N_78), .B(n38711), .C(n605[1]), 
            .D(uart_tx_busy), .Z(n18281)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    defparam i20347_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_639 (.A(n38711), .B(uart_wr_N_78), 
            .C(n605[12]), .D(uart_tx_busy), .Z(n18259)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(97[30:42])
    defparam i1_2_lut_3_lut_4_lut_adj_639.init = 16'hf0b0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_640 (.A(n38711), .B(uart_wr_N_78), 
            .C(n605[10]), .D(uart_tx_busy), .Z(n18263)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(97[30:42])
    defparam i1_2_lut_3_lut_4_lut_adj_640.init = 16'hf0b0;
    \tv80_core(Mode=0)  i_tv80_core (.clk_op(clk_op), .n40902(n40902), .n40905(n40905), 
            .rst_s(rst_s), .sram_addr_0_0(sram_addr_0_0), .n40906(n40906), 
            .VCC_net(VCC_net), .n40903(n40903), .\ISet[1] (\ISet[1] ), 
            .sram_addr_0_15(sram_addr_0_15), .sram_addr_0_14(sram_addr_0_14), 
            .\tstate[2] (\tstate[2] ), .cpu_dout({cpu_dout}), .sram_addr_0_13(sram_addr_0_13), 
            .sram_addr_0_12(sram_addr_0_12), .sram_addr_0_11(sram_addr_0_11), 
            .sram_addr_0_10(sram_addr_0_10), .sram_addr_0_9(sram_addr_0_9), 
            .sram_addr_0_8(sram_addr_0_8), .sram_addr_0_7(sram_addr_0_7), 
            .sram_addr_0_6(sram_addr_0_6), .sram_addr_0_5(sram_addr_0_5), 
            .sram_addr_0_4(sram_addr_0_4), .sram_addr_0_3(sram_addr_0_3), 
            .sram_addr_0_2(sram_addr_0_2), .sram_addr_0_1(sram_addr_0_1), 
            .nxt_mreq_n_N_348(nxt_mreq_n_N_348), .bus_din({bus_din}), .di_reg({di_reg}), 
            .\IR[7] (\IR[7] ), .n38603(n38603), .n33852(n33852), .n33853(n33853), 
            .n4(n4), .n60(n60), .n38764(n38764), .n38473(n38473), .n38711(n38711), 
            .led_reg_7__N_56(led_reg_7__N_56), .n123(n123), .n21087(n21087), 
            .n38705(n38705), .\ALU_Op_3__N_1283[3] (ALU_Op_3__N_1283[3]), 
            .iorq(iorq), .nxt_mreq_n(nxt_mreq_n), .nxt_rd_n(nxt_rd_n), 
            .n34714(n34714), .n219(n219), .n38472(n38472), .n202(n202), 
            .n21027(n21027), .n33448(n33448), .n40901(n40901), .n34912(n34912), 
            .sw_c_0(sw_c_0), .\io_rdata_7__N_46[0] (\io_rdata_7__N_46[0] ), 
            .\io_rdata[0] (\io_rdata[0] ), .sw_c_1(sw_c_1), .\io_rdata_7__N_46[1] (\io_rdata_7__N_46[1] ), 
            .\io_rdata[1] (\io_rdata[1] ), .uart_wr_N_78(uart_wr_N_78), 
            .n40900(n40900), .n2399(n2399), .n38634(n38634)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    
endmodule
//
// Verilog Description of module \tv80_core(Mode=0) 
//

module \tv80_core(Mode=0)  (clk_op, n40902, n40905, rst_s, sram_addr_0_0, 
            n40906, VCC_net, n40903, \ISet[1] , sram_addr_0_15, sram_addr_0_14, 
            \tstate[2] , cpu_dout, sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, 
            sram_addr_0_10, sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, 
            sram_addr_0_6, sram_addr_0_5, sram_addr_0_4, sram_addr_0_3, 
            sram_addr_0_2, sram_addr_0_1, nxt_mreq_n_N_348, bus_din, 
            di_reg, \IR[7] , n38603, n33852, n33853, n4, n60, 
            n38764, n38473, n38711, led_reg_7__N_56, n123, n21087, 
            n38705, \ALU_Op_3__N_1283[3] , iorq, nxt_mreq_n, nxt_rd_n, 
            n34714, n219, n38472, n202, n21027, n33448, n40901, 
            n34912, sw_c_0, \io_rdata_7__N_46[0] , \io_rdata[0] , sw_c_1, 
            \io_rdata_7__N_46[1] , \io_rdata[1] , uart_wr_N_78, n40900, 
            n2399, n38634) /* synthesis syn_module_defined=1 */ ;
    input clk_op;
    input n40902;
    input n40905;
    input rst_s;
    output sram_addr_0_0;
    input n40906;
    input VCC_net;
    input n40903;
    output \ISet[1] ;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output \tstate[2] ;
    output [7:0]cpu_dout;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output sram_addr_0_9;
    output sram_addr_0_8;
    output sram_addr_0_7;
    output sram_addr_0_6;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output sram_addr_0_3;
    output sram_addr_0_2;
    output sram_addr_0_1;
    output nxt_mreq_n_N_348;
    input [7:0]bus_din;
    input [7:0]di_reg;
    output \IR[7] ;
    input n38603;
    input n33852;
    output n33853;
    input n4;
    output n60;
    input n38764;
    output n38473;
    input n38711;
    output led_reg_7__N_56;
    output n123;
    output n21087;
    output n38705;
    output \ALU_Op_3__N_1283[3] ;
    output iorq;
    output nxt_mreq_n;
    output nxt_rd_n;
    output n34714;
    input n219;
    input n38472;
    input n202;
    output n21027;
    output n33448;
    input n40901;
    output n34912;
    input sw_c_0;
    input \io_rdata_7__N_46[0] ;
    output \io_rdata[0] ;
    input sw_c_1;
    input \io_rdata_7__N_46[1] ;
    output \io_rdata[1] ;
    output uart_wr_N_78;
    input n40900;
    input n2399;
    output n38634;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [15:0]TmpAddr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(117[17:24])
    
    wire clk_op_enable_321, n18240, n18238, n38055, n12382;
    wire [3:0]ALU_Op_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    
    wire n38056, n18236, Save_ALU_r, n8430, n19, n34690, n40897, 
        n27, clk_op_enable_119;
    wire [15:0]n2010;
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    
    wire clk_op_enable_325, n963, n30956, GND_net;
    wire [15:0]n87;
    
    wire n30957;
    wire [4:0]Read_To_Reg_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(158[17:30])
    wire [4:0]n15;
    wire [15:0]n2031;
    wire [15:0]n2048;
    
    wire n2299;
    wire [15:0]n2103;
    wire [7:0]Ap;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[17:19])
    
    wire clk_op_enable_116;
    wire [7:0]ACC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[17:20])
    
    wire n30955;
    wire [1:0]ISet;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    
    wire clk_op_enable_308;
    wire [1:0]ISet_1__N_655;
    wire [7:0]Fp;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[21:23])
    wire [7:0]F;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[22:23])
    wire [2:0]mcycles;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(164[17:24])
    wire [2:0]mcycles_d;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(167[17:26])
    wire [7:0]I;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(97[17:18])
    
    wire clk_op_enable_83;
    wire [15:0]SP;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[17:19])
    
    wire clk_op_enable_58;
    wire [15:0]n2895;
    wire [2:0]RegAddrA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(107[17:27])
    wire [3:0]Set_BusA_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(178[18:29])
    
    wire n1660, PreserveC_r, PreserveC, n40205, n30954;
    wire [2:0]RegAddrB_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(109[17:27])
    wire [3:0]Set_BusB_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    
    wire n1669, n30953;
    wire [2:0]RegAddrC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(111[17:25])
    
    wire n1684, n34654;
    wire [15:0]RegBusA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(120[17:26])
    wire [15:0]RegBusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(104[17:24])
    wire [7:0]BusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(152[17:21])
    wire [7:0]BusB_7__N_770;
    wire [8:0]Q_7__N_1732;
    wire [7:0]BusA_7__N_778;
    wire [2:0]Pre_XY_F_M;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    
    wire clk_op_enable_207, n33196, n18234, n30993;
    wire [15:0]PC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[21:23])
    
    wire n957;
    wire [15:0]n559;
    wire [15:0]PC16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(215[18:24])
    wire [15:0]n20;
    
    wire n37986;
    wire [7:0]n2943;
    
    wire n38631, n37987, Halt_FF, clk_op_enable_22, n35424, IntE_FF2, 
        IntE_FF2_N_918, No_BTR, No_BTR_N_962, n18084, n30992, n30991, 
        n37984, n37983, n37985;
    wire [2:0]RegAddrB_r_2__N_742;
    
    wire n37694, n30990, n32138, n90, Arith16_r, n33792, n30989, 
        n30988;
    wire [2:0]RegAddrA_r_2__N_739;
    
    wire clk_op_enable_77, n18232, n30987, n941, n942;
    wire [7:0]n1177;
    wire [7:0]n1187;
    
    wire n35485, n18145, n8;
    wire [2:0]MCycles_2__N_1018;
    
    wire Auto_Wait_t1, n35209, clk_op_enable_50, n34534, n34537, n30986, 
        n939, n940, Z16_r, n34948, n47, n28, n38652, Auto_Wait_t2, 
        n8432, n3, n34519, n38549;
    wire [6:0]n2197;
    
    wire n3_adj_1921, n6;
    wire [6:0]mc;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    
    wire last_tstate;
    wire [6:0]n2210;
    
    wire n18230, n18228, n18226, n18224, n18222, n18220, n18218, 
        clk_op_enable_297, n18216;
    wire [3:0]Set_BusA_To_3__N_1212;
    
    wire clk_op_enable_85;
    wire [7:0]F_7__N_683;
    
    wire n2295;
    wire [15:0]n2123;
    wire [15:0]PC16_B_15__N_580;
    
    wire BTR_r_N_977, n34840, n18214, n18212, n18210, n18208, n18206, 
        n18204, n37791, n37792, clk_op_enable_143, clk_op_enable_144, 
        clk_op_enable_145, n18200, clk_op_enable_146, clk_op_enable_284;
    wire [4:0]n723;
    
    wire n4_c, n37183, n37692;
    wire [3:0]ALU_Op_3__N_1054;
    
    wire n35756;
    wire [6:0]ts;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(66[17:19])
    wire [2:0]TStates_2__N_1021;
    
    wire n4_adj_1924, n5;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    
    wire n1, n2;
    wire [0:0]n6731;
    
    wire Write_N_1575;
    wire [7:0]n2693;
    
    wire n38727, RegAddrA_2__N_485;
    wire [3:0]IncDec_16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(173[17:26])
    wire [2:0]RegAddrA_2__N_481;
    wire [2:0]RegAddrA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(108[17:25])
    
    wire LDZ;
    wire [15:0]n29;
    wire [15:0]n525;
    
    wire Jump, n34649, n2818, n35471, n38415;
    wire [2:0]Set_Addr_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    
    wire n38394, n38740, n38546, n38574, n38137, n38395, n9970, 
        ExchangeRp, n39062, n38139;
    wire [7:0]ALU_Q;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(154[17:22])
    
    wire n38422, n38140, n39064, n39065, RegWEH_N_881, n38505;
    wire [7:0]n900;
    
    wire no_read, n35410, n35409, n33475, n38724;
    wire [2:0]Special_LD;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(193[18:28])
    
    wire n38427, n18121, n970, n18127, n18125, n18123, XY_Ind, 
        clk_op_enable_162, clk_op_enable_184, n38443, n38396, n35780;
    wire [1:0]XY_State;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(140[17:25])
    
    wire clk_op_enable_314, n18319, n18100, n18131, n18133, n18129, 
        n969, n38455, RegsH_7_1, RegsH_6_1, n36041, RegsH_5_1, RegsH_4_1, 
        n36040, RegsH_3_1, RegsH_2_1, n36039, RegsH_1_1, RegsH_0_1, 
        n36038, RegsH_7_2, RegsH_6_2, n36034, RegsH_5_2, RegsH_4_2, 
        n36033, RegsH_3_2, RegsH_2_2, n36032, RegsH_1_2, RegsH_0_2, 
        n36031, RegsH_7_3, RegsH_6_3, n36027, RegsH_5_3, RegsH_4_3, 
        n36026, RegsH_3_3, RegsH_2_3, n36025, RegsH_1_3, RegsH_0_3, 
        n36024, RegsH_7_4, RegsH_6_4, n36020, RegsH_5_4, RegsH_4_4, 
        n36019, RegsH_3_4, RegsH_2_4, n36018, RegsH_1_4, RegsH_0_4, 
        n36017, RegsH_7_7, RegsH_6_7, n36013, RegsH_5_7, RegsH_4_7, 
        n36012, RegsH_3_7, RegsH_2_7, n36011, RegsH_1_7, RegsH_0_7, 
        n36010, RegsH_7_5, RegsH_6_5, n36006, RegsH_5_5, RegsH_4_5, 
        n36005, n968, RegsH_3_5, RegsH_2_5, n36004, n967, RegsH_1_5, 
        RegsH_0_5, n36003;
    wire [3:0]Set_BusA_To_3__N_1216;
    
    wire n966, n965, n964, RegsL_7_2, RegsL_6_2, n35999, RegsL_5_2, 
        RegsL_4_2, n35998, RegsL_3_2, RegsL_2_2, n35997, RegsL_1_2, 
        RegsL_0_2, n35996, n23616;
    wire [7:0]n2533;
    
    wire n35422, RegsH_7_0, RegsH_6_0, n36048, n2550, n35423, n35419, 
        n35420, n35416, RegsH_5_0, RegsH_4_0, n36047, n35417, RegsL_7_1, 
        RegsL_6_1, n36104, RegsL_5_1, RegsL_4_1, n36103, RegsL_3_1, 
        RegsL_2_1, n36102, RegsL_1_1, RegsL_0_1, n36101, RegsL_7_0, 
        RegsL_6_0, n36097, RegsL_5_0, RegsL_4_0, n36096, n35413, 
        n35414, RegsL_3_0, RegsL_2_0, n36095;
    wire [15:0]RegBusC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(106[17:24])
    
    wire n24365, n38420, RegsL_1_0, RegsL_0_0, n36094, RegsH_7_6, 
        RegsH_6_6, n36090, RegsH_5_6, RegsH_4_6, n36089, n1144, 
        n38445, n37988, RegsH_3_6, RegsH_2_6, n36088, n35404, RegsH_1_6, 
        RegsH_0_6, n36087, n35405, RegsL_7_7, RegsL_6_7, n36083, 
        RegsL_5_7, RegsL_4_7, n36082, RegsL_3_7, RegsL_2_7, n36081, 
        n35401, RegsL_1_7, RegsL_0_7, n36080, RegsL_7_5, RegsL_6_5, 
        n36076, n35402, RegsL_5_5, RegsL_4_5, n36075, n35398, n35399, 
        RegsL_3_5, RegsL_2_5, n36074, RegsL_1_5, RegsL_0_5, n36073, 
        n35392, n35393;
    wire [15:0]RegBusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(105[17:24])
    wire [7:0]n2684;
    
    wire RegsL_7_4, RegsL_6_4, n36069, RegsL_5_4, RegsL_4_4, n36068, 
        RegsL_3_4, RegsL_2_4, n36067, MCycles_2__N_1104, n7, n8_adj_1925, 
        n47_adj_1926, RegsL_1_4, RegsL_0_4, n36066, RegsL_7_3, RegsL_6_3, 
        n36062, RegsL_5_3, RegsL_4_3, n36061, RegsL_3_3, RegsL_2_3, 
        n36060, RegsL_1_3, RegsL_0_3, n36059, RegsL_7_6, RegsL_6_6, 
        n36055, RegsL_5_6, RegsL_4_6, n36054, n40883, n38575, n33647, 
        BTR_r_N_979, n1165, n35517, RegsL_3_6, RegsL_2_6, n36053, 
        Alternate, Alternate_N_913, n17995, n17993, n17987, RegsL_1_6, 
        RegsL_0_6, n36052, n17985, RegsH_3_0, RegsH_2_0, n36046, 
        n17983;
    wire [7:0]Save_Mux;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(123[17:25])
    wire [15:0]n855;
    wire [15:0]n2875;
    
    wire n17981, n17975, RegsH_1_0, RegsH_0_0, n36045, n38680, n38460, 
        n9643, n30976;
    wire [3:0]IncDec_16_3__N_1026;
    
    wire n14338;
    wire [15:0]ID16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(122[17:21])
    
    wire n9_adj_1927, n38516, n35638, n38748, n2894, n37691, n37689, 
        n38722, n33490, n38452;
    wire [7:0]RegDIH_7__N_461;
    wire [7:0]RegDIH_7__N_753;
    wire [7:0]RegDIH;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(102[17:23])
    wire [7:0]RegDIL_7__N_470;
    wire [7:0]RegDIL_7__N_762;
    wire [7:0]RegDIL;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(103[17:23])
    
    wire n38590;
    wire [7:0]n2587;
    
    wire n914, n37186, n38138, n17, n17816, n17823, n35394, n35395, 
        last_mcycle;
    wire [7:0]n2744;
    wire [7:0]n2758;
    wire [7:0]n2711;
    
    wire n34372, n34891, n38458, n38556, n38660;
    wire [7:0]BusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(153[17:21])
    wire [7:0]n1196;
    
    wire n4_adj_1928, n5_adj_1929, n1_adj_1930, n2_adj_1931, n38435, 
        n38470, Read_To_Acc_N_1481, Read_To_Acc_N_1478, Read_To_Acc, 
        n34043, n33487, n33918, n34932, n10_adj_1934, Jump_N_1519, 
        Jump_N_1501, n38593, n35341, n24, n26, n10_adj_1935, n23, 
        n32784, n33888, n38519, n12, n16, n11, n32568, n17127, 
        n6_adj_1936, n3_adj_1937;
    wire [0:0]n6742;
    
    wire n8_adj_1938, n12_adj_1939, n21, n32470, n38529, n38612;
    wire [0:0]n6808;
    
    wire n21552, n1_adj_1940, JumpE_N_1521, n38532, n40878;
    wire [0:0]n6830;
    
    wire n17198, n2_adj_1941, n38701, n38753, n17139, n38419, n36893, 
        n38444, n35452, n23781, n40891, n40893, n37;
    wire [7:0]n2367;
    
    wire n38464, n38465, n2660;
    wire [6:0]n6990;
    
    wire n6_adj_1942, n6_adj_1943, n6_adj_1944, n6_adj_1945, n6_adj_1946, 
        n38732, n20121;
    wire [7:0]Q_7__N_1621;
    
    wire n23611, n40084, n36873, n40083, n40085, n40086, n33725, 
        n28_adj_1947, n38463, n38658, n31326, n34997, n17824, n1_adj_1948, 
        n35223, n9502, n12389;
    wire [7:0]n1942;
    
    wire n13875, n38467, n17968, n40201, n38, n40200, n40203, 
        n33872, n8_adj_1949, n38616, n35403, n253, n38798, n40199, 
        n38816, n40198, n40204, n38672, n38613, n33723, n40224, 
        n37319, n42, n34047, n58, n34036, n50, n38784, n10_adj_1950, 
        n40225, n40226, n35412, n34312, n38514, n8_adj_1951, n34776, 
        n38530, n38526, n12_adj_1952, n37735, n40223, n35415, n38637, 
        NextIs_XY_Fetch, n11461, n1143, n1170, n35480, n35418, n17960, 
        IncDecZ_N_986, IncDecZ_N_988, n17961, n38737, n35421, n35391, 
        n38474, n38438, n22;
    wire [15:0]n2858;
    
    wire n40869, n38684, n38766, n38770, n31169, n35397, IncDecZ, 
        n38416, n35011, n1_adj_1953, n1_adj_1954, n1_adj_1955, n35400, 
        n1_adj_1956, n38723;
    wire [15:0]n2066;
    
    wire RegWEH_N_901, n17330, n40411, n37478, n40410, n40412, n40413, 
        n37730;
    wire [7:0]Save_Mux_7__N_537;
    wire [15:0]n2146;
    
    wire n36427, n38659, n34802, n38407, n38728, n40881, n38638, 
        n6_adj_1957;
    wire [4:0]n2334;
    wire [7:0]F_Out;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(155[17:22])
    wire [7:0]n1154;
    
    wire n1172, n1145, n4_adj_1958, n38621, n25, n43;
    wire [2:0]n8245;
    
    wire n21554, n19_adj_1959, n38699, n38682, n35137, n38602, n38736;
    wire [15:0]SP16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[18:22])
    wire [15:0]n798;
    
    wire n38430, n17798, n5_adj_1960;
    wire [7:0]n1907;
    
    wire n40669, n38628, n40670, n40671, n12384, n38742, n35448, 
        n35039, n40668, n37471, n40667, clk_op_enable_326, n18167, 
        n18165, n18163, n18161, n18159, n24612, n4_adj_1961, n2812, 
        n4_adj_1962, n35277, n6_adj_1963, n817, n933, n38644, n38688, 
        n38662, n35681, n38671, n33910;
    wire [7:0]Q_7__N_1613;
    
    wire F_Out_7__N_1650, n38620, n35784, n38429, n4_adj_1964, n33652;
    wire [15:0]ID16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(217[18:24])
    
    wire n33977, n33756, n38400, n2293, n2305, n38669, n38666, 
        n38589, n38466, n17303, n38511, n10798, n38744, n40885, 
        n35033;
    wire [2:0]RegAddrC_2__N_745;
    
    wire n30975, n30974, n30973, n1_adj_1965, n38573, n75_adj_1966, 
        n33456, n38485, n58_adj_1968, IntE_FF2_N_919, n38576, n38577, 
        I_BTR, No_BTR_N_972, n4_adj_1969, n35026, n38508, n17_adj_1970, 
        n18134, n7169, clk_op_enable_296, n18147, n18143, n38499, 
        n18122;
    wire [2:0]RegAddrA_2__N_748;
    wire [2:0]RegAddrB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(110[17:25])
    
    wire n18124, n18126, n35605, n16540, n18128, n40898, n17_adj_1971, 
        n30, n26_adj_1972, n18, n18130, n18132, n13, n14;
    wire [2:0]Set_Addr_To_2__N_1427;
    
    wire n18157, n31362, n24357, n31804, n30972, n4_adj_1973, n38506, 
        n38504, n38570, n4_adj_1974, n30971, n7_adj_1975, n38512, 
        RegAddrA_2__N_751, n17801, n30970, n35636, n13_adj_1976, n14_adj_1977, 
        n18101, n35523, n1228, n1142, n6_adj_1978, n40895, n30969, 
        n9_adj_1979, n34614, n23522, n56, n53, n18246, n24467, 
        n35220, n34356, n26_adj_1980, n34252, n31, n609, n38457;
    wire [15:0]SP16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[32:38])
    
    wire n8224, n24303;
    wire [7:0]n2732;
    wire [7:0]n2771;
    
    wire n18150, n38431, n38720, n37690;
    wire [2:0]tstates;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(168[17:24])
    
    wire n35407, n35473, n11465, n2303, n38721, n10752, n38413, 
        n38468, n6_adj_1981, n30968, n35406, n14883, n7_adj_1982, 
        n38756, n35182;
    wire [15:0]SP16_A;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[24:30])
    
    wire n34013, n38456, n38425, Save_ALU_N_1482, n38398, n4_adj_1983, 
        n4_adj_1984, n38761, n38708;
    wire [7:0]Q_7__N_1715;
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    wire [7:0]n2358;
    
    wire n38717, n35771, n6_adj_1985, n38402, n18244, n12378, n35507, 
        n37793, n37794, n6_adj_1986, n17849, n4_adj_1987, n38481, 
        n30967, n30966, n38054, Read_To_Reg, n37185, n37187, n37182, 
        n37184, n38670, n40872, n1030, n33927, n14_adj_1988, n7_adj_1989, 
        n34565, n38558, n38441, n38565, n38480, n38527, n3_adj_1990, 
        n38600, n38488, n38550, n38566, n19_adj_1991, n4_adj_1992, 
        n24_adj_1993, n38410, n938, n43_adj_1994, n30965, n30964, 
        n30963, n30962, n18242, n30961, n37072, n38421, n38515, 
        n24417, n38692, n38729, n38693, n38592, n38739, n38767, 
        n24071, n38765, n30960, Save_ALU, n30959, n38528, n34151, 
        n38517, n30958, Q_7__N_1580, n39063, n38749, n4_adj_1995, 
        n38772, n38531, n38578, n38462, n38563, n38403, n33759, 
        n13_adj_1996, n14_adj_1997, n33939, n9811, n14342, n27_adj_1998, 
        n23_adj_1999, n6_adj_2000, n38581, n14_adj_2001, n38778, F_Out_7__N_1652, 
        n10976, n14340, n38611, n40889, n38614, n38615, n10106, 
        n38731, n13_adj_2002, n14337, n40887, n38057, n38624, n14329, 
        n38625, n38627, n33821, n38639, n38543, n37469, n37734;
    
    FD1P3DX TmpAddr_i4 (.D(n18240), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40902), .Q(TmpAddr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i4.GSR = "ENABLED";
    FD1P3DX TmpAddr_i5 (.D(n18238), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i5.GSR = "ENABLED";
    PFUMX i33991 (.BLUT(n38055), .ALUT(n12382), .C0(ALU_Op_r[3]), .Z(n38056));
    FD1P3DX TmpAddr_i6 (.D(n18236), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(rst_s), .Q(TmpAddr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i6.GSR = "ENABLED";
    FD1S3DX Save_ALU_r_761 (.D(n8430), .CK(clk_op), .CD(n40905), .Q(Save_ALU_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Save_ALU_r_761.GSR = "ENABLED";
    PFUMX i42 (.BLUT(n19), .ALUT(n34690), .C0(n40897), .Z(n27));
    FD1P3DX A__i1 (.D(n2010[0]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40905), .Q(sram_addr_0_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i1.GSR = "ENABLED";
    FD1P3DX IR_i0_i0 (.D(n963), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40906), 
            .Q(IR[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0.GSR = "ENABLED";
    CCU2B add_868_add_4_9 (.A0(TmpAddr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30956), .COUT(n30957), .S0(n87[7]), .S1(n87[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_9.INIT0 = 16'haaaa;
    defparam add_868_add_4_9.INIT1 = 16'haaaa;
    defparam add_868_add_4_9.INJECT1_0 = "NO";
    defparam add_868_add_4_9.INJECT1_1 = "NO";
    FD1S3DX Read_To_Reg_r__i0 (.D(n15[0]), .CK(clk_op), .CD(n40902), .Q(Read_To_Reg_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i0.GSR = "ENABLED";
    ORCALUT4 i33023_3_lut (.A(n2031[12]), .B(n2048[12]), .C(n2299), .Z(n2103[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33023_3_lut.init = 16'hcaca;
    FD1P3BX Ap_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40902), .Q(Ap[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i0.GSR = "ENABLED";
    CCU2B add_868_add_4_7 (.A0(TmpAddr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30955), .COUT(n30956), .S0(n87[5]), .S1(n87[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_7.INIT0 = 16'haaaa;
    defparam add_868_add_4_7.INIT1 = 16'haaaa;
    defparam add_868_add_4_7.INJECT1_0 = "NO";
    defparam add_868_add_4_7.INJECT1_1 = "NO";
    FD1P3DX ISet_i0 (.D(ISet_1__N_655[0]), .SP(clk_op_enable_308), .CK(clk_op), 
            .CD(n40906), .Q(ISet[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0.GSR = "ENABLED";
    FD1P3BX Fp_i0_i0 (.D(F[0]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40903), 
            .Q(Fp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i0.GSR = "ENABLED";
    FD1S3DX mcycles_i0 (.D(mcycles_d[0]), .CK(clk_op), .CD(n40903), .Q(mcycles[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0.GSR = "ENABLED";
    FD1P3DX I_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i0.GSR = "ENABLED";
    FD1P3BX SP_i0_i0 (.D(n2895[0]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40903), .Q(SP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i0.GSR = "ENABLED";
    FD1S3JX RegAddrA_r_i0 (.D(n1660), .CK(clk_op), .PD(Set_BusA_To[1]), 
            .Q(RegAddrA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0.GSR = "ENABLED";
    FD1S3DX PreserveC_r_762 (.D(PreserveC), .CK(clk_op), .CD(rst_s), .Q(PreserveC_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PreserveC_r_762.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i0 (.D(n40205), .CK(clk_op), .CD(n40906), .Q(ALU_Op_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i0.GSR = "ENABLED";
    CCU2B add_868_add_4_5 (.A0(TmpAddr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30954), .COUT(n30955), .S0(n87[3]), .S1(n87[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_5.INIT0 = 16'haaaa;
    defparam add_868_add_4_5.INIT1 = 16'haaaa;
    defparam add_868_add_4_5.INJECT1_0 = "NO";
    defparam add_868_add_4_5.INJECT1_1 = "NO";
    FD1S3JX RegAddrB_r_i0 (.D(n1669), .CK(clk_op), .PD(Set_BusB_To[1]), 
            .Q(RegAddrB_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0.GSR = "ENABLED";
    CCU2B add_868_add_4_3 (.A0(TmpAddr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30953), .COUT(n30954), .S0(n87[1]), .S1(n87[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_3.INIT0 = 16'haaaa;
    defparam add_868_add_4_3.INIT1 = 16'haaaa;
    defparam add_868_add_4_3.INJECT1_0 = "NO";
    defparam add_868_add_4_3.INJECT1_1 = "NO";
    FD1S3JX RegAddrC_i0 (.D(n34654), .CK(clk_op), .PD(n1684), .Q(RegAddrC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0 (.D(RegBusA[0]), .CK(clk_op), .Q(RegBusA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0.GSR = "ENABLED";
    FD1S3AX BusB_i0 (.D(BusB_7__N_770[0]), .CK(clk_op), .Q(BusB[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0.GSR = "ENABLED";
    CCU2B add_868_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(TmpAddr[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n30953), .S1(n87[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_1.INIT0 = 16'h0000;
    defparam add_868_add_4_1.INIT1 = 16'h555a;
    defparam add_868_add_4_1.INJECT1_0 = "NO";
    defparam add_868_add_4_1.INJECT1_1 = "NO";
    FD1S3AX BusA_i1 (.D(BusA_7__N_778[0]), .CK(clk_op), .Q(Q_7__N_1732[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i1.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i0 (.D(n33196), .SP(clk_op_enable_207), .CK(clk_op), 
            .CD(n40905), .Q(Pre_XY_F_M[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i0.GSR = "ENABLED";
    FD1P3DX TmpAddr_i7 (.D(n18234), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i7.GSR = "ENABLED";
    CCU2B PC_5706_add_4_17 (.A0(PC[14]), .B0(n957), .C0(n559[14]), .D0(PC16_B[7]), 
          .A1(PC[15]), .B1(n957), .C1(n559[15]), .D1(PC16_B[7]), .CIN(n30993), 
          .S0(n20[14]), .S1(n20[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_17.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_17.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_17.INJECT1_0 = "NO";
    defparam PC_5706_add_4_17.INJECT1_1 = "NO";
    PFUMX i33961 (.BLUT(n37986), .ALUT(n2943[4]), .C0(n38631), .Z(n37987));
    FD1P3DX Halt_FF_778 (.D(n35424), .SP(clk_op_enable_22), .CK(clk_op), 
            .CD(n40905), .Q(Halt_FF)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Halt_FF_778.GSR = "ENABLED";
    FD1S3DX IntE_FF2_783 (.D(IntE_FF2_N_918), .CK(clk_op), .CD(n40906), 
            .Q(IntE_FF2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam IntE_FF2_783.GSR = "ENABLED";
    FD1S3DX No_BTR_784 (.D(No_BTR_N_962), .CK(clk_op), .CD(n40906), .Q(No_BTR)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam No_BTR_784.GSR = "ENABLED";
    FD1S3BX ACC_i0 (.D(n18084), .CK(clk_op), .PD(rst_s), .Q(ACC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0.GSR = "ENABLED";
    CCU2B PC_5706_add_4_15 (.A0(PC[12]), .B0(n957), .C0(n559[12]), .D0(PC16_B[7]), 
          .A1(PC[13]), .B1(n957), .C1(n559[13]), .D1(PC16_B[7]), .CIN(n30992), 
          .COUT(n30993), .S0(n20[12]), .S1(n20[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_15.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_15.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_15.INJECT1_0 = "NO";
    defparam PC_5706_add_4_15.INJECT1_1 = "NO";
    CCU2B PC_5706_add_4_13 (.A0(PC[10]), .B0(n957), .C0(n559[10]), .D0(PC16_B[7]), 
          .A1(PC[11]), .B1(n957), .C1(n559[11]), .D1(PC16_B[7]), .CIN(n30991), 
          .COUT(n30992), .S0(n20[10]), .S1(n20[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_13.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_13.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_13.INJECT1_0 = "NO";
    defparam PC_5706_add_4_13.INJECT1_1 = "NO";
    PFUMX i33959 (.BLUT(n37984), .ALUT(n37983), .C0(ALU_Op_r[2]), .Z(n37985));
    FD1S3AX RegAddrB_r_i2 (.D(RegAddrB_r_2__N_742[2]), .CK(clk_op), .Q(RegAddrB_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i2.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i1 (.D(Set_BusB_To[2]), .CK(clk_op), .Q(RegAddrB_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i1.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i3 (.D(n37694), .CK(clk_op), .CD(rst_s), .Q(ALU_Op_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i3.GSR = "ENABLED";
    CCU2B PC_5706_add_4_11 (.A0(PC[8]), .B0(n957), .C0(n559[8]), .D0(PC16_B[7]), 
          .A1(PC[9]), .B1(n957), .C1(n559[9]), .D1(PC16_B[7]), .CIN(n30990), 
          .COUT(n30991), .S0(n20[8]), .S1(n20[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_11.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_11.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_11.INJECT1_0 = "NO";
    defparam PC_5706_add_4_11.INJECT1_1 = "NO";
    FD1S3DX ALU_Op_r__i2 (.D(n32138), .CK(clk_op), .CD(n40906), .Q(ALU_Op_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i2.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i1 (.D(n90), .CK(clk_op), .CD(n40906), .Q(ALU_Op_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i1.GSR = "ENABLED";
    FD1S3DX Arith16_r_757 (.D(n33792), .CK(clk_op), .CD(n40906), .Q(Arith16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Arith16_r_757.GSR = "ENABLED";
    CCU2B PC_5706_add_4_9 (.A0(PC[6]), .B0(n957), .C0(n559[6]), .D0(PC16_B[6]), 
          .A1(PC[7]), .B1(n957), .C1(n559[7]), .D1(PC16_B[7]), .CIN(n30989), 
          .COUT(n30990), .S0(n20[6]), .S1(n20[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_9.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_9.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_9.INJECT1_0 = "NO";
    defparam PC_5706_add_4_9.INJECT1_1 = "NO";
    CCU2B PC_5706_add_4_7 (.A0(PC[4]), .B0(n957), .C0(n559[4]), .D0(PC16_B[4]), 
          .A1(PC[5]), .B1(n957), .C1(n559[5]), .D1(PC16_B[5]), .CIN(n30988), 
          .COUT(n30989), .S0(n20[4]), .S1(n20[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_7.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_7.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_7.INJECT1_0 = "NO";
    defparam PC_5706_add_4_7.INJECT1_1 = "NO";
    FD1S3AX RegAddrA_r_i2 (.D(RegAddrA_r_2__N_739[2]), .CK(clk_op), .Q(RegAddrA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i2.GSR = "ENABLED";
    FD1P3DX TmpAddr_i8 (.D(n18232), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40902), .Q(TmpAddr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i8.GSR = "ENABLED";
    CCU2B PC_5706_add_4_5 (.A0(PC[2]), .B0(n957), .C0(n941), .D0(PC16_B[2]), 
          .A1(PC[3]), .B1(n957), .C1(n942), .D1(PC16_B[3]), .CIN(n30987), 
          .COUT(n30988), .S0(n20[2]), .S1(n20[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_5.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_5.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_5.INJECT1_0 = "NO";
    defparam PC_5706_add_4_5.INJECT1_1 = "NO";
    PFUMX i14640 (.BLUT(n1177[0]), .ALUT(n1187[0]), .C0(n35485), .Z(n18145));
    FD1S3AX RegAddrA_r_i1 (.D(Set_BusA_To[2]), .CK(clk_op), .Q(RegAddrA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i1.GSR = "ENABLED";
    PFUMX i18081 (.BLUT(n8), .ALUT(MCycles_2__N_1018[2]), .C0(\ISet[1] ), 
          .Z(mcycles_d[2]));
    FD1P3DX A__i16 (.D(n2010[15]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(rst_s), .Q(sram_addr_0_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i16.GSR = "ENABLED";
    FD1S3DX Auto_Wait_t1_785 (.D(n35209), .CK(clk_op), .CD(n40906), .Q(Auto_Wait_t1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t1_785.GSR = "ENABLED";
    FD1P3BX SP_i0_i15 (.D(n2895[15]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(rst_s), .Q(SP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i15.GSR = "ENABLED";
    FD1P3BX SP_i0_i14 (.D(n2895[14]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i14.GSR = "ENABLED";
    FD1P3BX SP_i0_i13 (.D(n2895[13]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i13.GSR = "ENABLED";
    FD1P3BX SP_i0_i12 (.D(n2895[12]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i12.GSR = "ENABLED";
    FD1P3BX SP_i0_i11 (.D(n2895[11]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i11.GSR = "ENABLED";
    FD1P3BX SP_i0_i10 (.D(n2895[10]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i10.GSR = "ENABLED";
    FD1P3BX SP_i0_i9 (.D(n2895[9]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1P3BX SP_i0_i8 (.D(n2895[8]), .SP(clk_op_enable_50), .CK(clk_op), 
            .PD(n40903), .Q(SP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i8.GSR = "ENABLED";
    FD1P3DX A__i15 (.D(n2010[14]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i15.GSR = "ENABLED";
    FD1P3BX SP_i0_i7 (.D(n2895[7]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40902), .Q(SP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1P3BX SP_i0_i6 (.D(n2895[6]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40902), .Q(SP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1P3BX SP_i0_i5 (.D(n2895[5]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40905), .Q(SP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1P3BX SP_i0_i4 (.D(n2895[4]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40902), .Q(SP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1P3BX SP_i0_i3 (.D(n2895[3]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40905), .Q(SP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i3.GSR = "ENABLED";
    FD1P3BX SP_i0_i2 (.D(n2895[2]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40902), .Q(SP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1P3BX SP_i0_i1 (.D(n2895[1]), .SP(clk_op_enable_58), .CK(clk_op), 
            .PD(n40905), .Q(SP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i1.GSR = "ENABLED";
    PFUMX i38 (.BLUT(n34534), .ALUT(n34537), .C0(\ISet[1] ), .Z(Set_BusA_To[3]));
    CCU2B PC_5706_add_4_3 (.A0(PC[0]), .B0(n957), .C0(n939), .D0(PC16_B[0]), 
          .A1(PC[1]), .B1(n957), .C1(n940), .D1(PC16_B[1]), .CIN(n30986), 
          .COUT(n30987), .S0(n20[0]), .S1(n20[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_3.INIT0 = 16'h74b8;
    defparam PC_5706_add_4_3.INIT1 = 16'h74b8;
    defparam PC_5706_add_4_3.INJECT1_0 = "NO";
    defparam PC_5706_add_4_3.INJECT1_1 = "NO";
    FD1S3DX Z16_r_759 (.D(n34948), .CK(clk_op), .CD(n40906), .Q(Z16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Z16_r_759.GSR = "ENABLED";
    CCU2B PC_5706_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n47), .B1(n28), .C1(n38652), .D1(\tstate[2] ), .COUT(n30986));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706_add_4_1.INIT0 = 16'h0000;
    defparam PC_5706_add_4_1.INIT1 = 16'hffff;
    defparam PC_5706_add_4_1.INJECT1_0 = "NO";
    defparam PC_5706_add_4_1.INJECT1_1 = "NO";
    FD1S3DX Auto_Wait_t2_786 (.D(n8432), .CK(clk_op), .CD(n40906), .Q(Auto_Wait_t2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t2_786.GSR = "ENABLED";
    FD1P3DX I_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_83), .CK(clk_op), .CD(rst_s), 
            .Q(I[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i7.GSR = "ENABLED";
    FD1P3DX I_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i6.GSR = "ENABLED";
    PFUMX mux_605_Mux_6_i7 (.BLUT(n3), .ALUT(n34519), .C0(n38549), .Z(n2197[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_605_Mux_5_i7 (.BLUT(n3_adj_1921), .ALUT(n6), .C0(n38549), 
          .Z(n2197[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1P3DX mcycle_i0_i6 (.D(n2210[6]), .SP(last_tstate), .CK(clk_op), 
            .CD(rst_s), .Q(mc[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i6.GSR = "ENABLED";
    FD1P3DX TmpAddr_i9 (.D(n18230), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i9.GSR = "ENABLED";
    FD1P3DX TmpAddr_i10 (.D(n18228), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(rst_s), .Q(TmpAddr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i10.GSR = "ENABLED";
    FD1P3DX TmpAddr_i11 (.D(n18226), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i11.GSR = "ENABLED";
    FD1P3DX TmpAddr_i12 (.D(n18224), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40902), .Q(TmpAddr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i12.GSR = "ENABLED";
    FD1P3DX TmpAddr_i13 (.D(n18222), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i13.GSR = "ENABLED";
    FD1P3DX TmpAddr_i14 (.D(n18220), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(rst_s), .Q(TmpAddr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i14.GSR = "ENABLED";
    FD1P3DX TmpAddr_i15 (.D(n18218), .SP(clk_op_enable_77), .CK(clk_op), 
            .CD(n40906), .Q(TmpAddr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i15.GSR = "ENABLED";
    FD1P3DX dout_i1 (.D(n18216), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40905), .Q(cpu_dout[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i1.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i5 (.D(n2210[5]), .SP(last_tstate), .CK(clk_op), 
            .CD(n40903), .Q(mc[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i5.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i4 (.D(n2210[4]), .SP(last_tstate), .CK(clk_op), 
            .CD(n40906), .Q(mc[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i4.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i3 (.D(n2210[3]), .SP(last_tstate), .CK(clk_op), 
            .CD(n40903), .Q(mc[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i3.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i2 (.D(n2210[2]), .SP(last_tstate), .CK(clk_op), 
            .CD(n40906), .Q(mc[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i2.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i1 (.D(n2210[1]), .SP(last_tstate), .CK(clk_op), 
            .CD(n40906), .Q(Set_BusA_To_3__N_1212[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i1.GSR = "ENABLED";
    FD1P3DX I_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40902), 
            .Q(I[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i5.GSR = "ENABLED";
    FD1P3DX I_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i4.GSR = "ENABLED";
    FD1P3DX I_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i3.GSR = "ENABLED";
    FD1P3DX I_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i2.GSR = "ENABLED";
    FD1P3DX I_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_83), .CK(clk_op), .CD(n40903), 
            .Q(I[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i1.GSR = "ENABLED";
    FD1P3BX F_i5 (.D(F_7__N_683[5]), .SP(clk_op_enable_85), .CK(clk_op), 
            .PD(n40903), .Q(F[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i5.GSR = "ENABLED";
    FD1S3BX F_i4 (.D(F_7__N_683[4]), .CK(clk_op), .PD(n40903), .Q(F[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i4.GSR = "ENABLED";
    FD1P3BX F_i3 (.D(F_7__N_683[3]), .SP(clk_op_enable_85), .CK(clk_op), 
            .PD(n40903), .Q(F[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i3.GSR = "ENABLED";
    FD1P3DX A__i14 (.D(n2010[13]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i14.GSR = "ENABLED";
    FD1P3DX A__i13 (.D(n2010[12]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40906), .Q(sram_addr_0_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i13.GSR = "ENABLED";
    FD1P3DX A__i12 (.D(n2010[11]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i12.GSR = "ENABLED";
    FD1S3DX mcycles_i2 (.D(mcycles_d[2]), .CK(clk_op), .CD(n40903), .Q(mcycles[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i2.GSR = "ENABLED";
    FD1S3DX mcycles_i1 (.D(mcycles_d[1]), .CK(clk_op), .CD(n40903), .Q(mcycles[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i1.GSR = "ENABLED";
    FD1P3BX Fp_i0_i7 (.D(F[7]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40906), 
            .Q(Fp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i7.GSR = "ENABLED";
    FD1P3DX A__i11 (.D(n2010[10]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i11.GSR = "ENABLED";
    FD1P3BX Fp_i0_i6 (.D(F[6]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40902), 
            .Q(Fp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i6.GSR = "ENABLED";
    FD1P3BX Fp_i0_i5 (.D(F[5]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40906), 
            .Q(Fp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i5.GSR = "ENABLED";
    FD1P3BX Fp_i0_i4 (.D(F[4]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40906), 
            .Q(Fp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i4.GSR = "ENABLED";
    FD1P3BX Fp_i0_i3 (.D(F[3]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40903), 
            .Q(Fp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i3.GSR = "ENABLED";
    FD1P3DX A__i10 (.D(n2010[9]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i10.GSR = "ENABLED";
    FD1P3BX Fp_i0_i2 (.D(F[2]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40905), 
            .Q(Fp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i2.GSR = "ENABLED";
    FD1P3BX Fp_i0_i1 (.D(F[1]), .SP(clk_op_enable_116), .CK(clk_op), .PD(n40906), 
            .Q(Fp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i1.GSR = "ENABLED";
    FD1P3DX ISet_i1 (.D(ISet_1__N_655[1]), .SP(clk_op_enable_308), .CK(clk_op), 
            .CD(n40906), .Q(\ISet[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i1.GSR = "ENABLED";
    FD1P3DX A__i9 (.D(n2010[8]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40902), .Q(sram_addr_0_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i9.GSR = "ENABLED";
    FD1P3DX A__i8 (.D(n2010[7]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40905), .Q(sram_addr_0_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i8.GSR = "ENABLED";
    FD1P3DX A__i7 (.D(n2010[6]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40902), .Q(sram_addr_0_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i7.GSR = "ENABLED";
    ORCALUT4 i33025_3_lut (.A(n2031[11]), .B(n2048[11]), .C(n2299), .Z(n2103[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33025_3_lut.init = 16'hcaca;
    ORCALUT4 i11207_3_lut (.A(TmpAddr[2]), .B(n87[2]), .C(n2295), .Z(n2123[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11207_3_lut.init = 16'hcaca;
    FD1P3DX A__i6 (.D(n2010[5]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40906), .Q(sram_addr_0_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i6.GSR = "ENABLED";
    ORCALUT4 i33027_3_lut (.A(n2031[10]), .B(n2048[10]), .C(n2299), .Z(n2103[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33027_3_lut.init = 16'hcaca;
    FD1P3BX Ap_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40902), .Q(Ap[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i7.GSR = "ENABLED";
    FD1P3BX Ap_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40903), .Q(Ap[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i6.GSR = "ENABLED";
    FD1P3DX A__i5 (.D(n2010[4]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40903), .Q(sram_addr_0_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i5.GSR = "ENABLED";
    FD1P3BX Ap_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(rst_s), .Q(Ap[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i5.GSR = "ENABLED";
    FD1P3BX Ap_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40903), .Q(Ap[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i4.GSR = "ENABLED";
    FD1P3BX Ap_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40903), .Q(Ap[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i3.GSR = "ENABLED";
    FD1P3BX Ap_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(n40902), .Q(Ap[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i2.GSR = "ENABLED";
    FD1P3DX A__i4 (.D(n2010[3]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40906), .Q(sram_addr_0_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i4.GSR = "ENABLED";
    FD1P3BX Ap_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_116), .CK(clk_op), 
            .PD(rst_s), .Q(Ap[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i1.GSR = "ENABLED";
    FD1P3DX A__i3 (.D(n2010[2]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(n40902), .Q(sram_addr_0_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i3.GSR = "ENABLED";
    FD1P3DX BTR_r_758 (.D(BTR_r_N_977), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(rst_s), .Q(PC16_B_15__N_580[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam BTR_r_758.GSR = "ENABLED";
    FD1P3DX A__i2 (.D(n2010[1]), .SP(clk_op_enable_119), .CK(clk_op), 
            .CD(rst_s), .Q(sram_addr_0_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i2.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i4 (.D(n15[4]), .CK(clk_op), .CD(n40905), .Q(Read_To_Reg_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i4.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i3 (.D(n34840), .CK(clk_op), .CD(n40903), .Q(Read_To_Reg_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i3.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i2 (.D(n15[2]), .CK(clk_op), .CD(n40903), .Q(Read_To_Reg_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i2.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i1 (.D(n15[1]), .CK(clk_op), .CD(n40902), .Q(Read_To_Reg_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i1.GSR = "ENABLED";
    FD1P3DX dout_i2 (.D(n18214), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40906), .Q(cpu_dout[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i2.GSR = "ENABLED";
    FD1P3DX dout_i3 (.D(n18212), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40906), .Q(cpu_dout[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i3.GSR = "ENABLED";
    FD1P3DX dout_i4 (.D(n18210), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40903), .Q(cpu_dout[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i4.GSR = "ENABLED";
    FD1P3DX dout_i5 (.D(n18208), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40905), .Q(cpu_dout[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i5.GSR = "ENABLED";
    FD1P3DX dout_i6 (.D(n18206), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40906), .Q(cpu_dout[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i6.GSR = "ENABLED";
    FD1P3DX dout_i7 (.D(n18204), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40903), .Q(cpu_dout[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i7.GSR = "ENABLED";
    PFUMX i33853 (.BLUT(n37791), .ALUT(n2943[7]), .C0(n38631), .Z(n37792));
    FD1P3BX F_i1 (.D(F_7__N_683[1]), .SP(clk_op_enable_143), .CK(clk_op), 
            .PD(n40903), .Q(F[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i1.GSR = "ENABLED";
    FD1P3BX F_i2 (.D(F_7__N_683[2]), .SP(clk_op_enable_144), .CK(clk_op), 
            .PD(n40905), .Q(F[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i2.GSR = "ENABLED";
    FD1P3BX F_i6 (.D(n18200), .SP(clk_op_enable_145), .CK(clk_op), .PD(n40903), 
            .Q(F[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i6.GSR = "ENABLED";
    FD1P3BX F_i7 (.D(F_7__N_683[7]), .SP(clk_op_enable_146), .CK(clk_op), 
            .PD(n40903), .Q(F[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i7.GSR = "ENABLED";
    FD1P3DX PC_5706__i1 (.D(n20[1]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i1.GSR = "ENABLED";
    FD1P3DX PC_5706__i2 (.D(n20[2]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i2.GSR = "ENABLED";
    FD1P3DX PC_5706__i3 (.D(n20[3]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i3.GSR = "ENABLED";
    FD1P3DX PC_5706__i4 (.D(n20[4]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i4.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(ALU_Op_r[2]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[0]), .D(n723[0]), .Z(n4_c)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hab00;
    ORCALUT4 n23970_bdd_2_lut_33556_3_lut_4_lut_4_lut_3_lut_4_lut (.A(ALU_Op_r[2]), 
            .B(ALU_Op_r[1]), .C(ALU_Op_r[0]), .D(Arith16_r), .Z(n37183)) /* synthesis lut_function=(!(A (D)+!A (B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam n23970_bdd_2_lut_33556_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h00ab;
    ORCALUT4 sram_addr_c_bdd_2_lut_33817_4_lut (.A(n37692), .B(ALU_Op_3__N_1054[3]), 
            .C(\ISet[1] ), .D(clk_op_enable_119), .Z(n37694)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_33817_4_lut.init = 16'hca00;
    ORCALUT4 i33187_4_lut_3_lut (.A(Set_BusA_To[3]), .B(Set_BusA_To[2]), 
            .C(Set_BusA_To[1]), .Z(n35756)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33187_4_lut_3_lut.init = 16'heaea;
    ORCALUT4 tstates_2__I_0_i4_3_lut_4_lut (.A(ts[4]), .B(ts[5]), .C(TStates_2__N_1021[0]), 
            .D(mc[6]), .Z(n4_adj_1924)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i4_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i20523_2_lut_3_lut (.A(ts[6]), .B(TStates_2__N_1021[0]), .C(mc[6]), 
            .Z(n5)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i20523_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i12139_3_lut (.A(TmpAddr[3]), .B(n87[3]), .C(n2295), .Z(n2123[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12139_3_lut.init = 16'hcaca;
    ORCALUT4 tstates_2__I_0_i1_3_lut_4_lut (.A(ts[0]), .B(tstate[1]), .C(TStates_2__N_1021[0]), 
            .D(mc[6]), .Z(n1)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i1_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 tstates_2__I_0_i2_3_lut_4_lut (.A(\tstate[2] ), .B(ts[3]), 
            .C(TStates_2__N_1021[0]), .D(mc[6]), .Z(n2)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i2_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i33185_2_lut_4_lut (.A(\tstate[2] ), .B(n6731[0]), .C(Write_N_1575), 
            .D(\ISet[1] ), .Z(nxt_mreq_n_N_348)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i33185_2_lut_4_lut.init = 16'h5f77;
    ORCALUT4 mux_1628_i2_3_lut_4_lut (.A(ACC[1]), .B(SP[1]), .C(mc[6]), 
            .D(n27), .Z(n2693[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i2_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1628_i3_3_lut_4_lut (.A(ACC[2]), .B(SP[2]), .C(mc[6]), 
            .D(n27), .Z(n2693[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i3_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1628_i4_3_lut_4_lut (.A(ACC[3]), .B(SP[3]), .C(mc[6]), 
            .D(n27), .Z(n2693[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i4_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1628_i5_3_lut_4_lut (.A(ACC[4]), .B(SP[4]), .C(mc[6]), 
            .D(n27), .Z(n2693[4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i5_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1628_i6_3_lut_4_lut (.A(ACC[5]), .B(SP[5]), .C(mc[6]), 
            .D(n27), .Z(n2693[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i6_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 RegAddrA_2__I_0_i2_rep_16_3_lut_4_lut (.A(n38727), .B(RegAddrA_2__N_485), 
            .C(IncDec_16[1]), .D(RegAddrA_2__N_481[1]), .Z(RegAddrA[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam RegAddrA_2__I_0_i2_rep_16_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1628_i7_3_lut_4_lut (.A(ACC[6]), .B(SP[6]), .C(mc[6]), 
            .D(n27), .Z(n2693[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i7_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1628_i8_3_lut_4_lut (.A(ACC[7]), .B(SP[7]), .C(mc[6]), 
            .D(n27), .Z(n2693[7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i8_3_lut_4_lut.init = 16'hacaa;
    FD1P3DX PC_5706__i5 (.D(n20[5]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i5.GSR = "ENABLED";
    ORCALUT4 mux_1628_i1_3_lut_4_lut (.A(ACC[0]), .B(SP[0]), .C(mc[6]), 
            .D(n27), .Z(n2693[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1628_i1_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_212_i6_3_lut_4_lut (.A(bus_din[5]), .B(di_reg[5]), .C(LDZ), 
            .D(ts[3]), .Z(n29[5])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i6_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_141_i13_3_lut (.A(n525[12]), .B(di_reg[4]), .C(Jump), 
            .Z(n559[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i33271_3_lut_4_lut (.A(Set_BusB_To[2]), .B(Set_BusB_To[1]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[3]), .Z(n34649)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i33271_3_lut_4_lut.init = 16'h0007;
    ORCALUT4 i2_3_lut_4_lut (.A(Set_BusB_To[1]), .B(Set_BusB_To[0]), .C(Set_BusB_To[2]), 
            .D(Set_BusB_To[3]), .Z(n2818)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he000;
    ORCALUT4 mux_212_i4_3_lut_4_lut (.A(bus_din[3]), .B(di_reg[3]), .C(LDZ), 
            .D(ts[3]), .Z(n29[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i4_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_212_i5_3_lut_4_lut (.A(bus_din[4]), .B(di_reg[4]), .C(LDZ), 
            .D(ts[3]), .Z(n29[4])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i5_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 Set_BusB_To_3__bdd_4_lut (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n35471)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C+(D))+!B (C))) */ ;
    defparam Set_BusB_To_3__bdd_4_lut.init = 16'habad;
    FD1P3DX PC_5706__i6 (.D(n20[6]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i6.GSR = "ENABLED";
    ORCALUT4 i33029_3_lut (.A(n2031[9]), .B(n2048[9]), .C(n2299), .Z(n2103[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33029_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_415_3_lut_4_lut (.A(Jump), .B(n38415), .C(Set_Addr_To[2]), 
            .D(clk_op_enable_119), .Z(n38394)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_415_3_lut_4_lut.init = 16'h1000;
    FD1P3DX PC_5706__i0 (.D(n20[0]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(rst_s), .Q(PC[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i0.GSR = "ENABLED";
    ORCALUT4 n19623_bdd_4_lut (.A(n38740), .B(n38546), .C(n38574), .D(ACC[3]), 
            .Z(n38137)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam n19623_bdd_4_lut.init = 16'h1104;
    ORCALUT4 i1_2_lut_rep_416_3_lut (.A(Jump), .B(n38415), .C(clk_op_enable_119), 
            .Z(n38395)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_416_3_lut.init = 16'h1010;
    ORCALUT4 Q_7__N_1621_0__bdd_3_lut_35302 (.A(n9970), .B(ExchangeRp), 
            .C(BusB[0]), .Z(n39062)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1621_0__bdd_3_lut_35302.init = 16'he2e2;
    ORCALUT4 n38139_bdd_3_lut (.A(n38139), .B(ALU_Q[3]), .C(n38422), .Z(n38140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38139_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 di_reg_0__bdd_3_lut_35306 (.A(di_reg[0]), .B(n39064), .C(Save_ALU_r), 
            .Z(n39065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_0__bdd_3_lut_35306.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_526 (.A(Read_To_Reg_r[1]), .B(RegWEH_N_881), .Z(n38505)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i1_2_lut_rep_526.init = 16'h8888;
    ORCALUT4 mux_206_i6_3_lut (.A(Fp[5]), .B(ALU_Q[1]), .C(n38422), .Z(n900[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i31867_3_lut (.A(Write_N_1575), .B(\tstate[2] ), .C(no_read), 
            .Z(n35410)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;
    defparam i31867_3_lut.init = 16'h7272;
    ORCALUT4 i31866_3_lut (.A(n6731[0]), .B(\tstate[2] ), .C(no_read), 
            .Z(n35409)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;
    defparam i31866_3_lut.init = 16'h7272;
    ORCALUT4 i20756_2_lut_4_lut (.A(mc[6]), .B(n33475), .C(n38724), .D(mc[4]), 
            .Z(n3_adj_1921)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i20756_2_lut_4_lut.init = 16'h3200;
    ORCALUT4 i20753_2_lut_4_lut (.A(mc[6]), .B(n33475), .C(n38724), .D(mc[5]), 
            .Z(n3)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i20753_2_lut_4_lut.init = 16'h3200;
    ORCALUT4 i14616_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[7]), 
            .D(ACC[7]), .Z(n18121)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14616_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX IR_i0_i7 (.D(n970), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40906), 
            .Q(\IR[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7.GSR = "ENABLED";
    ORCALUT4 i14622_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[3]), 
            .D(ACC[3]), .Z(n18127)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14622_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14620_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[2]), 
            .D(ACC[2]), .Z(n18125)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14620_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14618_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[5]), 
            .D(ACC[5]), .Z(n18123)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14618_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX XY_Ind_763 (.D(clk_op_enable_184), .SP(clk_op_enable_162), .CK(clk_op), 
            .CD(n40905), .Q(XY_Ind)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_Ind_763.GSR = "ENABLED";
    ORCALUT4 i33176_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(n38443), 
            .D(n38396), .Z(n35780)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i33176_3_lut_4_lut.init = 16'hf444;
    FD1P3DX XY_State__i1 (.D(n18319), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n40905), .Q(XY_State[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i1.GSR = "ENABLED";
    ORCALUT4 i14595_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[1]), 
            .D(ACC[1]), .Z(n18100)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14595_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14626_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[6]), 
            .D(ACC[6]), .Z(n18131)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14626_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14628_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[0]), 
            .D(ACC[0]), .Z(n18133)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14628_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14624_3_lut_4_lut (.A(Special_LD[0]), .B(n38427), .C(I[4]), 
            .D(ACC[4]), .Z(n18129)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14624_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX IR_i0_i6 (.D(n969), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40905), 
            .Q(IR[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6.GSR = "ENABLED";
    ORCALUT4 i32498_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_1), 
            .D(RegsH_6_1), .Z(n36041)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32498_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32497_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_1), 
            .D(RegsH_4_1), .Z(n36040)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32497_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32496_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_1), 
            .D(RegsH_2_1), .Z(n36039)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32496_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32495_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_1), 
            .D(RegsH_0_1), .Z(n36038)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32495_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32491_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_2), 
            .D(RegsH_6_2), .Z(n36034)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32491_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32490_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_2), 
            .D(RegsH_4_2), .Z(n36033)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32490_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32489_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_2), 
            .D(RegsH_2_2), .Z(n36032)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32489_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32488_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_2), 
            .D(RegsH_0_2), .Z(n36031)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32488_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32484_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_3), 
            .D(RegsH_6_3), .Z(n36027)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32484_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32483_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_3), 
            .D(RegsH_4_3), .Z(n36026)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32483_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32482_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_3), 
            .D(RegsH_2_3), .Z(n36025)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32482_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32481_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_3), 
            .D(RegsH_0_3), .Z(n36024)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32481_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32477_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_4), 
            .D(RegsH_6_4), .Z(n36020)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32477_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32476_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_4), 
            .D(RegsH_4_4), .Z(n36019)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32476_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32475_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_4), 
            .D(RegsH_2_4), .Z(n36018)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32475_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32474_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_4), 
            .D(RegsH_0_4), .Z(n36017)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32474_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32470_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_7), 
            .D(RegsH_6_7), .Z(n36013)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32470_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32469_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_7), 
            .D(RegsH_4_7), .Z(n36012)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32469_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32468_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_7), 
            .D(RegsH_2_7), .Z(n36011)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32468_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32467_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_7), 
            .D(RegsH_0_7), .Z(n36010)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32467_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32463_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_5), 
            .D(RegsH_6_5), .Z(n36006)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32463_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32462_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_5), 
            .D(RegsH_4_5), .Z(n36005)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32462_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX IR_i0_i5 (.D(n968), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40905), 
            .Q(IR[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5.GSR = "ENABLED";
    FD1P3DX PC_5706__i7 (.D(n20[7]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i7.GSR = "ENABLED";
    ORCALUT4 i32461_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_5), 
            .D(RegsH_2_5), .Z(n36004)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32461_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX IR_i0_i4 (.D(n967), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40905), 
            .Q(IR[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4.GSR = "ENABLED";
    ORCALUT4 i32460_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_5), 
            .D(RegsH_0_5), .Z(n36003)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32460_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX IR_i0_i3 (.D(n966), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40902), 
            .Q(Set_BusA_To_3__N_1216[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3.GSR = "ENABLED";
    FD1P3DX IR_i0_i2 (.D(n965), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40905), 
            .Q(IR[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2.GSR = "ENABLED";
    FD1P3DX IR_i0_i1 (.D(n964), .SP(clk_op_enable_325), .CK(clk_op), .CD(n40905), 
            .Q(IR[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1.GSR = "ENABLED";
    ORCALUT4 i32456_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_2), 
            .D(RegsL_6_2), .Z(n35999)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32456_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32455_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_2), 
            .D(RegsL_4_2), .Z(n35998)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32455_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32454_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_2), 
            .D(RegsL_2_2), .Z(n35997)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32454_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32453_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_2), 
            .D(RegsL_0_2), .Z(n35996)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32453_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20649_4_lut (.A(SP[4]), .B(n23616), .C(SP[12]), .D(Set_BusA_To[0]), 
            .Z(n2533[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20649_4_lut.init = 16'hc088;
    ORCALUT4 i31879_3_lut (.A(di_reg[4]), .B(ACC[4]), .C(Set_BusA_To[0]), 
            .Z(n35422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31879_3_lut.init = 16'hcaca;
    ORCALUT4 i32505_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_0), 
            .D(RegsH_6_0), .Z(n36048)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32505_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32936_3_lut (.A(n35422), .B(n2533[4]), .C(n2550), .Z(n35423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32936_3_lut.init = 16'hcaca;
    ORCALUT4 i20648_4_lut (.A(SP[5]), .B(n23616), .C(SP[13]), .D(Set_BusA_To[0]), 
            .Z(n2533[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20648_4_lut.init = 16'hc088;
    ORCALUT4 i31876_3_lut (.A(di_reg[5]), .B(ACC[5]), .C(Set_BusA_To[0]), 
            .Z(n35419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31876_3_lut.init = 16'hcaca;
    ORCALUT4 i32934_3_lut (.A(n35419), .B(n2533[5]), .C(n2550), .Z(n35420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32934_3_lut.init = 16'hcaca;
    ORCALUT4 i20647_4_lut (.A(SP[6]), .B(n23616), .C(SP[14]), .D(Set_BusA_To[0]), 
            .Z(n2533[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20647_4_lut.init = 16'hc088;
    ORCALUT4 i31873_3_lut (.A(di_reg[6]), .B(ACC[6]), .C(Set_BusA_To[0]), 
            .Z(n35416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31873_3_lut.init = 16'hcaca;
    ORCALUT4 i32504_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_0), 
            .D(RegsH_4_0), .Z(n36047)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32504_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32932_3_lut (.A(n35416), .B(n2533[6]), .C(n2550), .Z(n35417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32932_3_lut.init = 16'hcaca;
    ORCALUT4 i32561_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_1), 
            .D(RegsL_6_1), .Z(n36104)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32561_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32560_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_1), 
            .D(RegsL_4_1), .Z(n36103)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32560_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20646_4_lut (.A(SP[7]), .B(n23616), .C(SP[15]), .D(Set_BusA_To[0]), 
            .Z(n2533[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20646_4_lut.init = 16'hc088;
    ORCALUT4 i32559_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_1), 
            .D(RegsL_2_1), .Z(n36102)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32559_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32558_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_1), 
            .D(RegsL_0_1), .Z(n36101)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32558_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32554_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_0), 
            .D(RegsL_6_0), .Z(n36097)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32554_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32553_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_0), 
            .D(RegsL_4_0), .Z(n36096)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32553_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31870_3_lut (.A(di_reg[7]), .B(ACC[7]), .C(Set_BusA_To[0]), 
            .Z(n35413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31870_3_lut.init = 16'hcaca;
    ORCALUT4 i32930_3_lut (.A(n35413), .B(n2533[7]), .C(n2550), .Z(n35414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32930_3_lut.init = 16'hcaca;
    ORCALUT4 i32552_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_0), 
            .D(RegsL_2_0), .Z(n36095)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32552_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_139_i13_4_lut (.A(TmpAddr[12]), .B(RegBusC[12]), .C(n24365), 
            .D(n38420), .Z(n525[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i13_4_lut.init = 16'hac0c;
    ORCALUT4 i32551_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_0), 
            .D(RegsL_0_0), .Z(n36094)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32551_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32547_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_7_6), 
            .D(RegsH_6_6), .Z(n36090)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32547_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32546_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_5_6), 
            .D(RegsH_4_6), .Z(n36089)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32546_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n1144_bdd_3_lut (.A(n1144), .B(n37987), .C(n38445), .Z(n37988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1144_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i32545_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_6), 
            .D(RegsH_2_6), .Z(n36088)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32545_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20159_4_lut (.A(SP[0]), .B(n23616), .C(SP[8]), .D(Set_BusA_To[0]), 
            .Z(n2533[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20159_4_lut.init = 16'hc088;
    ORCALUT4 i31861_3_lut (.A(di_reg[0]), .B(ACC[0]), .C(Set_BusA_To[0]), 
            .Z(n35404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31861_3_lut.init = 16'hcaca;
    ORCALUT4 i32544_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_6), 
            .D(RegsH_0_6), .Z(n36087)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32544_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32927_3_lut (.A(n35404), .B(n2533[0]), .C(n2550), .Z(n35405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32927_3_lut.init = 16'hcaca;
    ORCALUT4 i32540_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_7), 
            .D(RegsL_6_7), .Z(n36083)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32540_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20652_4_lut (.A(SP[1]), .B(n23616), .C(SP[9]), .D(Set_BusA_To[0]), 
            .Z(n2533[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20652_4_lut.init = 16'hc088;
    ORCALUT4 i32539_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_7), 
            .D(RegsL_4_7), .Z(n36082)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32539_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32538_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_7), 
            .D(RegsL_2_7), .Z(n36081)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32538_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31858_3_lut (.A(di_reg[1]), .B(ACC[1]), .C(Set_BusA_To[0]), 
            .Z(n35401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31858_3_lut.init = 16'hcaca;
    ORCALUT4 i32537_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_7), 
            .D(RegsL_0_7), .Z(n36080)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32537_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32533_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_5), 
            .D(RegsL_6_5), .Z(n36076)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32533_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32942_3_lut (.A(n35401), .B(n2533[1]), .C(n2550), .Z(n35402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32942_3_lut.init = 16'hcaca;
    ORCALUT4 i32532_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_5), 
            .D(RegsL_4_5), .Z(n36075)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32532_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i12137_3_lut (.A(TmpAddr[4]), .B(n87[4]), .C(n2295), .Z(n2123[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12137_3_lut.init = 16'hcaca;
    ORCALUT4 i20651_4_lut (.A(SP[2]), .B(n23616), .C(SP[10]), .D(Set_BusA_To[0]), 
            .Z(n2533[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20651_4_lut.init = 16'hc088;
    ORCALUT4 i31855_3_lut (.A(di_reg[2]), .B(ACC[2]), .C(Set_BusA_To[0]), 
            .Z(n35398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31855_3_lut.init = 16'hcaca;
    ORCALUT4 i32940_3_lut (.A(n35398), .B(n2533[2]), .C(n2550), .Z(n35399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32940_3_lut.init = 16'hcaca;
    ORCALUT4 i32531_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_5), 
            .D(RegsL_2_5), .Z(n36074)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32531_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32530_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_5), 
            .D(RegsL_0_5), .Z(n36073)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32530_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20650_4_lut (.A(SP[3]), .B(n23616), .C(SP[11]), .D(Set_BusA_To[0]), 
            .Z(n2533[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20650_4_lut.init = 16'hc088;
    ORCALUT4 i31849_3_lut (.A(di_reg[3]), .B(ACC[3]), .C(Set_BusA_To[0]), 
            .Z(n35392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31849_3_lut.init = 16'hcaca;
    ORCALUT4 i32938_3_lut (.A(n35392), .B(n2533[3]), .C(n2550), .Z(n35393)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32938_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i1_3_lut (.A(di_reg[0]), .B(RegBusB[0]), .C(Set_BusB_To[0]), 
            .Z(n2684[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i32526_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_4), 
            .D(RegsL_6_4), .Z(n36069)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32526_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32525_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_4), 
            .D(RegsL_4_4), .Z(n36068)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32525_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33031_3_lut (.A(n2031[8]), .B(n2048[8]), .C(n2299), .Z(n2103[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33031_3_lut.init = 16'hcaca;
    ORCALUT4 i32524_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_4), 
            .D(RegsL_2_4), .Z(n36067)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32524_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_4_lut (.A(MCycles_2__N_1104), .B(IR[5]), .C(n7), .D(n8_adj_1925), 
            .Z(n47_adj_1926)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i1_4_lut.init = 16'haeee;
    ORCALUT4 i32523_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_4), 
            .D(RegsL_0_4), .Z(n36066)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32523_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32519_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_3), 
            .D(RegsL_6_3), .Z(n36062)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32519_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32518_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_3), 
            .D(RegsL_4_3), .Z(n36061)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32518_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1627_i8_3_lut (.A(di_reg[7]), .B(RegBusB[7]), .C(Set_BusB_To[0]), 
            .Z(n2684[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i32517_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_3), 
            .D(RegsL_2_3), .Z(n36060)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32517_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1627_i7_3_lut (.A(di_reg[6]), .B(RegBusB[6]), .C(Set_BusB_To[0]), 
            .Z(n2684[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i32516_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_3), 
            .D(RegsL_0_3), .Z(n36059)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32516_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1627_i6_3_lut (.A(di_reg[5]), .B(RegBusB[5]), .C(Set_BusB_To[0]), 
            .Z(n2684[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i5_3_lut (.A(di_reg[4]), .B(RegBusB[4]), .C(Set_BusB_To[0]), 
            .Z(n2684[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i4_3_lut (.A(di_reg[3]), .B(RegBusB[3]), .C(Set_BusB_To[0]), 
            .Z(n2684[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i32512_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_7_6), 
            .D(RegsL_6_6), .Z(n36055)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32512_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32511_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_5_6), 
            .D(RegsL_4_6), .Z(n36054)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32511_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1627_i3_3_lut (.A(di_reg[2]), .B(RegBusB[2]), .C(Set_BusB_To[0]), 
            .Z(n2684[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_4_lut (.A(n40883), .B(n38575), .C(n33647), .Z(BTR_r_N_979)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(848[19:47])
    defparam i1_4_lut_4_lut.init = 16'h4040;
    ORCALUT4 i31974_2_lut_3_lut (.A(n1165), .B(n38445), .C(BTR_r_N_979), 
            .Z(n35517)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam i31974_2_lut_3_lut.init = 16'h0404;
    ORCALUT4 mux_1627_i2_3_lut (.A(di_reg[1]), .B(RegBusB[1]), .C(Set_BusB_To[0]), 
            .Z(n2684[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i32510_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_3_6), 
            .D(RegsL_2_6), .Z(n36053)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32510_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX Alternate_755 (.D(Alternate_N_913), .SP(clk_op_enable_184), 
            .CK(clk_op), .CD(n40905), .Q(Alternate)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Alternate_755.GSR = "ENABLED";
    FD1S3BX ACC_i7 (.D(n17995), .CK(clk_op), .PD(n40903), .Q(ACC[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i7.GSR = "ENABLED";
    FD1S3BX ACC_i6 (.D(n17993), .CK(clk_op), .PD(n40903), .Q(ACC[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i6.GSR = "ENABLED";
    FD1S3BX ACC_i5 (.D(n17987), .CK(clk_op), .PD(rst_s), .Q(ACC[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i5.GSR = "ENABLED";
    ORCALUT4 i32509_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsL_1_6), 
            .D(RegsL_0_6), .Z(n36052)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32509_3_lut_4_lut.init = 16'hf1e0;
    FD1S3BX ACC_i4 (.D(n17985), .CK(clk_op), .PD(n40903), .Q(ACC[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i4.GSR = "ENABLED";
    ORCALUT4 i32503_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_3_0), 
            .D(RegsH_2_0), .Z(n36046)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32503_3_lut_4_lut.init = 16'hf1e0;
    FD1S3BX ACC_i3 (.D(n17983), .CK(clk_op), .PD(n40903), .Q(ACC[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i3.GSR = "ENABLED";
    ORCALUT4 mux_1698_i1_3_lut (.A(Save_Mux[0]), .B(n855[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i1_3_lut.init = 16'hcaca;
    FD1S3BX ACC_i2 (.D(n17981), .CK(clk_op), .PD(rst_s), .Q(ACC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i2.GSR = "ENABLED";
    FD1S3BX ACC_i1 (.D(n17975), .CK(clk_op), .PD(n40903), .Q(ACC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i1.GSR = "ENABLED";
    ORCALUT4 i32502_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38455), .C(RegsH_1_0), 
            .D(RegsH_0_0), .Z(n36045)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32502_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1698_i9_3_lut (.A(n855[8]), .B(Save_Mux[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i9_3_lut.init = 16'hcaca;
    FD1P3DX PC_5706__i8 (.D(n20[8]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i8.GSR = "ENABLED";
    ORCALUT4 i7026_2_lut_4_lut (.A(tstate[1]), .B(n38680), .C(n38460), 
            .D(n1165), .Z(n9643)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i7026_2_lut_4_lut.init = 16'hff80;
    CCU2B RegBusA_15__I_0_add_4_17 (.A0(RegBusA[15]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n30976), .S0(ID16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_17.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i16643_3_lut (.A(n6731[0]), .B(Write_N_1575), .C(\ISet[1] ), 
            .Z(n9_adj_1927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i16643_3_lut.init = 16'hcaca;
    ORCALUT4 i33225_2_lut_4_lut (.A(tstate[1]), .B(n38680), .C(n38460), 
            .D(n38516), .Z(n35638)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i33225_2_lut_4_lut.init = 16'hff80;
    ORCALUT4 i2_rep_12_2_lut_3_lut (.A(n38748), .B(RegWEH_N_881), .C(Read_To_Reg_r[1]), 
            .Z(n2894)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_rep_12_2_lut_3_lut.init = 16'h0808;
    PFUMX i33803 (.BLUT(n37691), .ALUT(n37689), .C0(ISet[0]), .Z(n37692));
    ORCALUT4 i2_3_lut_4_lut_adj_539 (.A(n38445), .B(n38631), .C(n38722), 
            .D(ALU_Op_r[3]), .Z(n33490)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_539.init = 16'h2000;
    ORCALUT4 i33300_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[3]), 
            .D(RegDIH_7__N_753[3]), .Z(RegDIH[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33300_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33311_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[0]), 
            .D(RegDIL_7__N_762[0]), .Z(RegDIL[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33311_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33309_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[1]), 
            .D(RegDIL_7__N_762[1]), .Z(RegDIL[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33309_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33302_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[6]), 
            .D(RegDIL_7__N_762[6]), .Z(RegDIL[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33302_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33301_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[4]), 
            .D(RegDIH_7__N_753[4]), .Z(RegDIH[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33301_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33298_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[5]), 
            .D(RegDIH_7__N_753[5]), .Z(RegDIH[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33298_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33304_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[2]), 
            .D(RegDIH_7__N_753[2]), .Z(RegDIH[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33304_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1570_i2_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[1]), 
            .D(ACC[1]), .Z(n2587[1])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i2_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i33296_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[7]), 
            .D(RegDIH_7__N_753[7]), .Z(RegDIH[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33296_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1570_i8_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[7]), 
            .D(ACC[7]), .Z(n2587[7])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i8_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i707_3_lut_rep_417_4_lut (.A(n38590), .B(n38740), .C(n38652), 
            .D(n914), .Z(n38396)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i707_3_lut_rep_417_4_lut.init = 16'hf0fe;
    ORCALUT4 mux_1570_i7_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[6]), 
            .D(ACC[6]), .Z(n2587[6])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i7_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i33308_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[4]), 
            .D(RegDIL_7__N_762[4]), .Z(RegDIL[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33308_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33303_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[1]), 
            .D(RegDIH_7__N_753[1]), .Z(RegDIH[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33303_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n24439_bdd_2_lut_34080_3_lut_4_lut (.A(n38590), .B(n38740), 
            .C(n38443), .D(n38652), .Z(n37186)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam n24439_bdd_2_lut_34080_3_lut_4_lut.init = 16'h0f1f;
    ORCALUT4 i33297_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[7]), 
            .D(RegDIL_7__N_762[7]), .Z(RegDIL[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33297_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n38137_bdd_3_lut_4_lut (.A(n38590), .B(n38740), .C(Fp[3]), 
            .D(n38137), .Z(n38138)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n38137_bdd_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i33299_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[6]), 
            .D(RegDIH_7__N_753[6]), .Z(RegDIH[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33299_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33307_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[3]), 
            .D(RegDIL_7__N_762[3]), .Z(RegDIL[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33307_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_3_lut_4_lut (.A(n38590), .B(n38740), .C(last_tstate), 
            .D(n38652), .Z(n17)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff0e;
    ORCALUT4 i14319_3_lut_4_lut (.A(n38590), .B(n38740), .C(n38652), .D(n17816), 
            .Z(n17823)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i14319_3_lut_4_lut.init = 16'hfef0;
    L6MUX21 i31853 (.D0(n35394), .D1(n35395), .SD(mcycles[2]), .Z(last_mcycle));
    ORCALUT4 mux_1570_i5_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[4]), 
            .D(ACC[4]), .Z(n2587[4])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i5_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 mux_1570_i6_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[5]), 
            .D(ACC[5]), .Z(n2587[5])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i6_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 mux_1570_i4_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[3]), 
            .D(ACC[3]), .Z(n2587[3])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i4_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 mux_1570_i3_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[2]), 
            .D(ACC[2]), .Z(n2587[2])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i3_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i33305_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIH_7__N_461[0]), 
            .D(RegDIH_7__N_753[0]), .Z(RegDIH[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33305_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1570_i1_3_lut_4_lut (.A(n38590), .B(n38740), .C(Ap[0]), 
            .D(ACC[0]), .Z(n2587[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1570_i1_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i33306_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[5]), 
            .D(RegDIL_7__N_762[5]), .Z(RegDIL[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33306_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1645_i1_3_lut (.A(n2744[0]), .B(RegBusB[8]), .C(n34649), 
            .Z(n2758[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i1_3_lut (.A(F[0]), .B(PC[0]), .C(Set_BusB_To[2]), 
            .Z(n2711[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i1_3_lut.init = 16'hcaca;
    FD1P3DX Pre_XY_F_M_i0_i2 (.D(n34372), .SP(clk_op_enable_207), .CK(clk_op), 
            .CD(n40905), .Q(Pre_XY_F_M[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i2.GSR = "ENABLED";
    ORCALUT4 i33310_3_lut_4_lut (.A(n38455), .B(n38452), .C(RegDIL_7__N_470[2]), 
            .D(RegDIL_7__N_762[2]), .Z(RegDIL[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33310_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX Pre_XY_F_M_i0_i1 (.D(n34891), .SP(clk_op_enable_207), .CK(clk_op), 
            .CD(n40906), .Q(Pre_XY_F_M[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i1.GSR = "ENABLED";
    ORCALUT4 mux_293_i2_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[1]), 
            .D(BusB[5]), .Z(n1187[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i3_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[2]), 
            .D(BusB[6]), .Z(n1187[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i33107_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(n38556), 
            .D(n38660), .Z(n35485)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33107_3_lut_4_lut.init = 16'h44f4;
    ORCALUT4 mux_293_i1_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[0]), 
            .D(BusB[4]), .Z(n1187[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i4_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[3]), 
            .D(BusB[7]), .Z(n1187[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i5_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[4]), 
            .D(Q_7__N_1732[0]), .Z(n1187[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i6_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[5]), 
            .D(BusA[1]), .Z(n1196[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i7_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[6]), 
            .D(BusA[2]), .Z(n1196[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i7_3_lut_4_lut.init = 16'hfb40;
    PFUMX i31852 (.BLUT(n4_adj_1928), .ALUT(n5_adj_1929), .C0(mcycles[1]), 
          .Z(n35395));
    FD1P3DX PC_5706__i9 (.D(n20[9]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i9.GSR = "ENABLED";
    ORCALUT4 mux_141_i14_3_lut (.A(n525[13]), .B(di_reg[5]), .C(Jump), 
            .Z(n559[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i33033_3_lut (.A(n2031[7]), .B(n2048[7]), .C(n2299), .Z(n2103[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33033_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i14_4_lut (.A(TmpAddr[13]), .B(RegBusC[13]), .C(n24365), 
            .D(n38420), .Z(n525[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i14_4_lut.init = 16'hac0c;
    ORCALUT4 mux_293_i8_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38458), .C(Save_Mux[7]), 
            .D(BusA[3]), .Z(n1196[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX i31851 (.BLUT(n1_adj_1930), .ALUT(n2_adj_1931), .C0(mcycles[1]), 
          .Z(n35394));
    FD1S3AX BusA_i8 (.D(BusA_7__N_778[7]), .CK(clk_op), .Q(BusA[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i8.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(sram_addr_0_0), .B(n38603), .C(n33852), 
            .D(sram_addr_0_1), .Z(n33853)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_456_3_lut_4_lut (.A(sram_addr_0_0), .B(n38603), 
            .C(sram_addr_0_4), .D(sram_addr_0_1), .Z(n38435)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_456_3_lut_4_lut.init = 16'h0200;
    ORCALUT4 i2_3_lut_rep_491_4_lut (.A(sram_addr_0_0), .B(n38603), .C(sram_addr_0_3), 
            .D(sram_addr_0_4), .Z(n38470)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_rep_491_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(sram_addr_0_0), .B(n38603), .C(n4), 
            .D(sram_addr_0_1), .Z(n60)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3DX PC_5706__i10 (.D(n20[10]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i10.GSR = "ENABLED";
    ORCALUT4 mux_4642_i1_4_lut_4_lut (.A(ISet[0]), .B(\ISet[1] ), .C(Read_To_Acc_N_1481), 
            .D(Read_To_Acc_N_1478), .Z(Read_To_Acc)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam mux_4642_i1_4_lut_4_lut.init = 16'hd1c0;
    ORCALUT4 i1_4_lut_4_lut_adj_540 (.A(ISet[0]), .B(n34043), .C(n33487), 
            .D(n33918), .Z(n19)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_540.init = 16'h5554;
    ORCALUT4 i5_4_lut_4_lut (.A(ISet[0]), .B(n34932), .C(IR[5]), .D(n10_adj_1934), 
            .Z(n34948)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C+!(D))))) */ ;
    defparam i5_4_lut_4_lut.init = 16'h4500;
    ORCALUT4 mux_4690_i1_4_lut_4_lut (.A(ISet[0]), .B(n40897), .C(Jump_N_1519), 
            .D(Jump_N_1501), .Z(Jump)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam mux_4690_i1_4_lut_4_lut.init = 16'hd1c0;
    FD1S3AX BusA_i7 (.D(BusA_7__N_778[6]), .CK(clk_op), .Q(BusA[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i7.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_4_lut_adj_541 (.A(ISet[0]), .B(n38593), .C(n35341), 
            .D(n24), .Z(n8)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_adj_541.init = 16'h5545;
    FD1S3AX BusA_i6 (.D(BusA_7__N_778[5]), .CK(clk_op), .Q(BusA[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i6.GSR = "ENABLED";
    FD1S3AX BusA_i5 (.D(BusA_7__N_778[4]), .CK(clk_op), .Q(BusA[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i5.GSR = "ENABLED";
    FD1S3AX BusA_i4 (.D(BusA_7__N_778[3]), .CK(clk_op), .Q(BusA[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i4.GSR = "ENABLED";
    FD1S3AX BusA_i3 (.D(BusA_7__N_778[2]), .CK(clk_op), .Q(BusA[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i3.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_4_lut_adj_542 (.A(ISet[0]), .B(n26), .C(n10_adj_1935), 
            .D(n23), .Z(n32784)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_542.init = 16'h5554;
    FD1S3AX BusA_i2 (.D(BusA_7__N_778[1]), .CK(clk_op), .Q(BusA[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i2.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_540 (.A(n33888), .B(sram_addr_0_6), .C(sram_addr_0_7), 
            .Z(n38519)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_540.init = 16'h0404;
    ORCALUT4 i1_4_lut_4_lut_adj_543 (.A(ISet[0]), .B(n12), .C(n16), .D(n11), 
            .Z(n32568)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_543.init = 16'h5554;
    ORCALUT4 i1_2_lut_rep_494_4_lut (.A(n33888), .B(sram_addr_0_6), .C(sram_addr_0_7), 
            .D(n38764), .Z(n38473)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_494_4_lut.init = 16'h0004;
    ORCALUT4 i20428_4_lut_4_lut (.A(ISet[0]), .B(n17127), .C(n6_adj_1936), 
            .D(n3_adj_1937), .Z(n6742[0])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i20428_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 i1_4_lut_4_lut_adj_544 (.A(ISet[0]), .B(n8_adj_1938), .C(n12_adj_1939), 
            .D(n21), .Z(n32470)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_544.init = 16'h5554;
    ORCALUT4 i20435_2_lut_3_lut_4_lut_4_lut (.A(ISet[0]), .B(n38529), .C(IR[1]), 
            .D(n38612), .Z(n6808[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i20435_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    ORCALUT4 i5_4_lut_3_lut (.A(ISet[0]), .B(n21552), .C(IR[0]), .Z(n1_adj_1940)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam i5_4_lut_3_lut.init = 16'he4e4;
    FD1P3DX PC_5706__i11 (.D(n20[11]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i11.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut (.A(n33888), .B(sram_addr_0_6), .C(sram_addr_0_7), 
            .D(n38711), .Z(led_reg_7__N_56)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0004;
    ORCALUT4 i20437_3_lut_4_lut_4_lut (.A(ISet[0]), .B(JumpE_N_1521), .C(n38532), 
            .D(n40878), .Z(n6830[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i20437_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i2_4_lut_4_lut (.A(ISet[0]), .B(n17198), .C(n2_adj_1941), 
            .D(n38701), .Z(n34534)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h5400;
    ORCALUT4 n24935_bdd_4_lut_33818_4_lut (.A(ISet[0]), .B(n38753), .C(n17139), 
            .D(n38419), .Z(n36893)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam n24935_bdd_4_lut_33818_4_lut.init = 16'h5450;
    ORCALUT4 mux_1698_i11_3_lut (.A(n855[10]), .B(Save_Mux[2]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut (.A(sram_addr_0_1), .B(n38470), .C(sram_addr_0_2), 
            .Z(n123)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 mux_1698_i10_3_lut (.A(n855[9]), .B(Save_Mux[1]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i17598_3_lut_4_lut (.A(sram_addr_0_1), .B(n38470), .C(sram_addr_0_2), 
            .D(n38435), .Z(n21087)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i17598_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 i33035_3_lut (.A(n2031[6]), .B(n2048[6]), .C(n2299), .Z(n2103[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33035_3_lut.init = 16'hcaca;
    ORCALUT4 i33232_2_lut_3_lut (.A(PreserveC_r), .B(n38445), .C(n38444), 
            .Z(n35452)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam i33232_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 mux_1698_i3_4_lut (.A(Save_Mux[2]), .B(n855[2]), .C(Read_To_Reg_r[0]), 
            .D(n23781), .Z(n2875[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i3_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_rep_726 (.A(n40891), .B(n40893), .Z(n38705)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_726.init = 16'h2222;
    ORCALUT4 mux_1698_i2_4_lut (.A(Save_Mux[1]), .B(n855[1]), .C(Read_To_Reg_r[0]), 
            .D(n23781), .Z(n2875[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i2_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_3_lut_adj_545 (.A(PreserveC_r), .B(n38445), .C(n17), 
            .Z(n37)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam i1_2_lut_3_lut_adj_545.init = 16'hb0b0;
    ORCALUT4 mux_1645_i8_3_lut (.A(n2744[7]), .B(RegBusB[15]), .C(n34649), 
            .Z(n2758[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i8_3_lut (.A(F[7]), .B(PC[7]), .C(Set_BusB_To[2]), 
            .Z(n2711[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i7_3_lut_3_lut (.A(ALU_Op_r[1]), .B(Q_7__N_1732[0]), .C(BusB[0]), 
            .Z(n2367[0])) /* synthesis lut_function=(A (B+(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i7_3_lut_3_lut.init = 16'hbcbc;
    ORCALUT4 i1_3_lut_4_lut_adj_546 (.A(n38464), .B(n38465), .C(Special_LD[0]), 
            .Z(n2660)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_546.init = 16'h2020;
    FD1P3DX PC_5706__i12 (.D(n20[12]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i12.GSR = "ENABLED";
    ORCALUT4 i20598_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(BusB[7]), 
            .C(n38701), .D(Set_BusA_To_3__N_1216[0]), .Z(n6990[6])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i20598_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i14_3_lut_3_lut (.A(ALU_Op_r[1]), .B(BusA[6]), .C(BusB[6]), 
            .Z(n6_adj_1942)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14_3_lut_3_lut.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_547 (.A(ALU_Op_r[1]), .B(BusA[5]), .C(BusB[5]), 
            .Z(n6_adj_1943)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14_3_lut_3_lut_adj_547.init = 16'h4343;
    ORCALUT4 mux_1645_i7_3_lut (.A(n2744[6]), .B(RegBusB[14]), .C(n34649), 
            .Z(n2758[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i14_3_lut_3_lut_adj_548 (.A(ALU_Op_r[1]), .B(BusA[4]), .C(BusB[4]), 
            .Z(n6_adj_1944)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14_3_lut_3_lut_adj_548.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_549 (.A(ALU_Op_r[1]), .B(BusA[3]), .C(BusB[3]), 
            .Z(n6_adj_1945)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14_3_lut_3_lut_adj_549.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_550 (.A(ALU_Op_r[1]), .B(BusA[2]), .C(BusB[2]), 
            .Z(n6_adj_1946)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14_3_lut_3_lut_adj_550.init = 16'h4343;
    ORCALUT4 mux_1630_i7_3_lut (.A(F[6]), .B(PC[6]), .C(Set_BusB_To[2]), 
            .Z(n2711[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_551 (.A(\ALU_Op_3__N_1283[3] ), .B(n38732), .C(iorq), 
            .D(n20121), .Z(nxt_mreq_n)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_551.init = 16'h7773;
    ORCALUT4 mux_1645_i6_3_lut (.A(n2744[5]), .B(RegBusB[13]), .C(n34649), 
            .Z(n2758[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i6_3_lut (.A(F[5]), .B(PC[5]), .C(Set_BusB_To[2]), 
            .Z(n2711[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_552 (.A(\ALU_Op_3__N_1283[3] ), .B(n38732), .C(no_read), 
            .D(n9_adj_1927), .Z(nxt_rd_n)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_552.init = 16'h7773;
    ORCALUT4 mux_1645_i5_3_lut (.A(n2744[4]), .B(RegBusB[12]), .C(n34649), 
            .Z(n2758[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i5_3_lut (.A(F[4]), .B(PC[4]), .C(Set_BusB_To[2]), 
            .Z(n2711[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i5_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1621_7__bdd_4_lut_35132 (.A(Q_7__N_1621[7]), .B(n23611), 
            .C(ALU_Op_r[3]), .D(BusA[7]), .Z(n40084)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1621_7__bdd_4_lut_35132.init = 16'hca0a;
    ORCALUT4 mux_1645_i4_3_lut (.A(n2744[3]), .B(RegBusB[11]), .C(n34649), 
            .Z(n2758[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i4_3_lut (.A(F[3]), .B(PC[3]), .C(Set_BusB_To[2]), 
            .Z(n2711[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1645_i3_3_lut (.A(n2744[2]), .B(RegBusB[10]), .C(n34649), 
            .Z(n2758[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i3_3_lut (.A(F[2]), .B(PC[2]), .C(Set_BusB_To[2]), 
            .Z(n2711[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1645_i2_3_lut (.A(n2744[1]), .B(RegBusB[9]), .C(n34649), 
            .Z(n2758[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1645_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1630_i2_3_lut (.A(F[1]), .B(PC[1]), .C(Set_BusB_To[2]), 
            .Z(n2711[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1630_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut (.A(sram_addr_0_7), .B(n33888), .C(n38764), .D(sram_addr_0_6), 
            .Z(n34714)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfffd;
    ORCALUT4 Q_7__N_1621_7__bdd_3_lut_35131 (.A(n36873), .B(ExchangeRp), 
            .C(BusB[7]), .Z(n40083)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1621_7__bdd_3_lut_35131.init = 16'he2e2;
    ORCALUT4 di_reg_7__bdd_3_lut_35135 (.A(di_reg[7]), .B(n40085), .C(Save_ALU_r), 
            .Z(n40086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_7__bdd_3_lut_35135.init = 16'hcaca;
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(n38652), .B(n33725), .C(n38516), 
            .D(n38443), .Z(n28_adj_1947)) /* synthesis lut_function=(!(A (D)+!A !(B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h54ff;
    ORCALUT4 i2_3_lut_4_lut_adj_553 (.A(n38463), .B(n38658), .C(n31326), 
            .D(n1684), .Z(n34997)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam i2_3_lut_4_lut_adj_553.init = 16'hffef;
    ORCALUT4 i2_3_lut (.A(n219), .B(sram_addr_0_5), .C(sram_addr_0_0), 
            .Z(n33888)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i3_4_lut_4_lut (.A(n38652), .B(n17824), .C(n1_adj_1948), 
            .D(n38443), .Z(n35223)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h1000;
    ORCALUT4 i9430_4_lut_4_lut (.A(Arith16_r), .B(n4_c), .C(n38631), .D(n9502), 
            .Z(n12389)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i9430_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 i10779_3_lut_3_lut (.A(Save_ALU_r), .B(di_reg[5]), .C(n1942[5]), 
            .Z(n13875)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i10779_3_lut_3_lut.init = 16'he4e4;
    ORCALUT4 i3_4_lut_4_lut_adj_554 (.A(n38467), .B(n38443), .C(n38445), 
            .D(n1165), .Z(n17968)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i3_4_lut_4_lut_adj_554.init = 16'hfff7;
    ORCALUT4 n40202_bdd_3_lut_4_lut (.A(n40201), .B(n38), .C(ISet[0]), 
            .D(n40200), .Z(n40203)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n40202_bdd_3_lut_4_lut.init = 16'hfe0e;
    ORCALUT4 mux_1698_i12_3_lut (.A(n855[11]), .B(Save_Mux[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1698_i4_3_lut (.A(Save_Mux[3]), .B(n855[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i4_3_lut.init = 16'hcaca;
    ORCALUT4 n33872_bdd_4_lut_35111 (.A(n33872), .B(n8_adj_1949), .C(n38616), 
            .D(Set_BusA_To_3__N_1216[0]), .Z(n40201)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam n33872_bdd_4_lut_35111.init = 16'hf700;
    ORCALUT4 i31860_3_lut (.A(RegBusA[8]), .B(RegBusA[0]), .C(Set_BusA_To[0]), 
            .Z(n35403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31860_3_lut.init = 16'hcaca;
    ORCALUT4 n38816_bdd_3_lut_35107 (.A(n253), .B(n38798), .C(IR[6]), 
            .Z(n40199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38816_bdd_3_lut_35107.init = 16'hcaca;
    ORCALUT4 n38816_bdd_3_lut_35012 (.A(n38816), .B(n253), .C(IR[6]), 
            .Z(n40198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38816_bdd_3_lut_35012.init = 16'hcaca;
    ORCALUT4 sram_addr_c_bdd_2_lut_35017 (.A(n40204), .B(clk_op_enable_119), 
            .Z(n40205)) /* synthesis lut_function=(A (B)) */ ;
    defparam sram_addr_c_bdd_2_lut_35017.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_555 (.A(n38672), .B(n38613), .C(n33723), 
            .D(n38574), .Z(n33725)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_555.init = 16'h10f0;
    ORCALUT4 n1909_bdd_4_lut_35091 (.A(Q_7__N_1621[6]), .B(n23611), .C(ALU_Op_r[3]), 
            .D(BusA[6]), .Z(n40224)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1909_bdd_4_lut_35091.init = 16'hca0a;
    ORCALUT4 i1_4_lut_4_lut_adj_556 (.A(\ALU_Op_3__N_1283[3] ), .B(n37319), 
            .C(n42), .D(n34047), .Z(n58)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_556.init = 16'h5554;
    ORCALUT4 i4_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(n34036), .C(n50), 
            .D(n38784), .Z(n10_adj_1950)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i4_4_lut_4_lut.init = 16'hfff4;
    ORCALUT4 di_reg_6__bdd_3_lut_35094 (.A(di_reg[6]), .B(n40225), .C(Save_ALU_r), 
            .Z(n40226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_6__bdd_3_lut_35094.init = 16'hcaca;
    ORCALUT4 i31869_3_lut (.A(RegBusA[15]), .B(RegBusA[7]), .C(Set_BusA_To[0]), 
            .Z(n35412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31869_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_4_lut_adj_557 (.A(\ALU_Op_3__N_1283[3] ), .B(n34047), 
            .C(n34312), .D(n38514), .Z(n8_adj_1951)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(C (D))))) */ ;
    defparam i3_4_lut_4_lut_adj_557.init = 16'h4fff;
    ORCALUT4 i1_3_lut_4_lut_adj_558 (.A(sram_addr_0_4), .B(n38472), .C(n202), 
            .D(sram_addr_0_3), .Z(n21027)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_3_lut_4_lut_adj_558.init = 16'h4f0f;
    ORCALUT4 select_846_Select_0_i50_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(n34776), .C(n38530), .D(n38526), .Z(n50)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam select_846_Select_0_i50_4_lut_4_lut.init = 16'h0f04;
    ORCALUT4 i6_4_lut (.A(sram_addr_0_10), .B(n12_adj_1952), .C(sram_addr_0_7), 
            .D(sram_addr_0_5), .Z(n33448)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 n1909_bdd_3_lut_35090 (.A(n37735), .B(ExchangeRp), .C(BusB[6]), 
            .Z(n40223)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n1909_bdd_3_lut_35090.init = 16'he2e2;
    ORCALUT4 i31872_3_lut (.A(RegBusA[14]), .B(RegBusA[6]), .C(Set_BusA_To[0]), 
            .Z(n35415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31872_3_lut.init = 16'hcaca;
    FD1S3AX BusB_i7 (.D(BusB_7__N_770[7]), .CK(clk_op), .Q(BusB[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i7.GSR = "ENABLED";
    FD1S3AX BusB_i6 (.D(BusB_7__N_770[6]), .CK(clk_op), .Q(BusB[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i6.GSR = "ENABLED";
    FD1S3AX BusB_i5 (.D(BusB_7__N_770[5]), .CK(clk_op), .Q(BusB[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i5.GSR = "ENABLED";
    FD1S3AX BusB_i4 (.D(BusB_7__N_770[4]), .CK(clk_op), .Q(BusB[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i4.GSR = "ENABLED";
    FD1S3AX BusB_i3 (.D(BusB_7__N_770[3]), .CK(clk_op), .Q(BusB[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i3.GSR = "ENABLED";
    FD1S3AX BusB_i2 (.D(BusB_7__N_770[2]), .CK(clk_op), .Q(BusB[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i2.GSR = "ENABLED";
    FD1S3AX BusB_i1 (.D(BusB_7__N_770[1]), .CK(clk_op), .Q(BusB[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i1.GSR = "ENABLED";
    ORCALUT4 i5_4_lut (.A(sram_addr_0_11), .B(sram_addr_0_8), .C(sram_addr_0_6), 
            .D(sram_addr_0_9), .Z(n12_adj_1952)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1S3AX RegBusA_r_i15 (.D(RegBusA[15]), .CK(clk_op), .Q(RegBusA_r[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i15.GSR = "ENABLED";
    ORCALUT4 i20229_2_lut_3_lut_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(mc[6]), .Z(n6)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i20229_2_lut_3_lut_3_lut.init = 16'h0404;
    ORCALUT4 i865_2_lut_rep_658_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(mc[6]), .Z(n38637)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i865_2_lut_rep_658_3_lut.init = 16'h0606;
    ORCALUT4 i8617_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(NextIs_XY_Fetch), .D(mc[6]), .Z(n11461)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i8617_2_lut_3_lut_4_lut.init = 16'hf0f6;
    FD1S3AX RegBusA_r_i14 (.D(RegBusA[14]), .CK(clk_op), .Q(RegBusA_r[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i14.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i13 (.D(RegBusA[13]), .CK(clk_op), .Q(RegBusA_r[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i13.GSR = "ENABLED";
    FD1P3DX PC_5706__i13 (.D(n20[13]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i13.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i12 (.D(RegBusA[12]), .CK(clk_op), .Q(RegBusA_r[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i12.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i11 (.D(RegBusA[11]), .CK(clk_op), .Q(RegBusA_r[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i11.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i10 (.D(RegBusA[10]), .CK(clk_op), .Q(RegBusA_r[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i10.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i9 (.D(RegBusA[9]), .CK(clk_op), .Q(RegBusA_r[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i9.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i8 (.D(RegBusA[8]), .CK(clk_op), .Q(RegBusA_r[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i8.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i7 (.D(RegBusA[7]), .CK(clk_op), .Q(RegBusA_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i7.GSR = "ENABLED";
    PFUMX i14695 (.BLUT(n1143), .ALUT(n1170), .C0(n35480), .Z(n18200));
    FD1S3AX RegBusA_r_i6 (.D(RegBusA[6]), .CK(clk_op), .Q(RegBusA_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i6.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i5 (.D(RegBusA[5]), .CK(clk_op), .Q(RegBusA_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i5.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i4 (.D(RegBusA[4]), .CK(clk_op), .Q(RegBusA_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i4.GSR = "ENABLED";
    ORCALUT4 i31875_3_lut (.A(RegBusA[13]), .B(RegBusA[5]), .C(Set_BusA_To[0]), 
            .Z(n35418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31875_3_lut.init = 16'hcaca;
    PFUMX i14457 (.BLUT(n17960), .ALUT(IncDecZ_N_986), .C0(IncDecZ_N_988), 
          .Z(n17961));
    FD1S3AX RegBusA_r_i3 (.D(RegBusA[3]), .CK(clk_op), .Q(RegBusA_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i3.GSR = "ENABLED";
    ORCALUT4 i7032_4_lut (.A(n38652), .B(\tstate[2] ), .C(n38737), .D(mc[6]), 
            .Z(clk_op_enable_325)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i7032_4_lut.init = 16'hc888;
    FD1S3AX RegBusA_r_i2 (.D(RegBusA[2]), .CK(clk_op), .Q(RegBusA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i2.GSR = "ENABLED";
    ORCALUT4 i11205_3_lut (.A(TmpAddr[5]), .B(n87[5]), .C(n2295), .Z(n2123[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11205_3_lut.init = 16'hcaca;
    ORCALUT4 i31878_3_lut (.A(RegBusA[12]), .B(RegBusA[4]), .C(Set_BusA_To[0]), 
            .Z(n35421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31878_3_lut.init = 16'hcaca;
    ORCALUT4 i11203_3_lut (.A(TmpAddr[6]), .B(n87[6]), .C(n2295), .Z(n2123[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11203_3_lut.init = 16'hcaca;
    ORCALUT4 i31848_3_lut (.A(RegBusA[11]), .B(RegBusA[3]), .C(Set_BusA_To[0]), 
            .Z(n35391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31848_3_lut.init = 16'hcaca;
    ORCALUT4 i12135_3_lut (.A(TmpAddr[7]), .B(n87[7]), .C(n2295), .Z(n2123[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12135_3_lut.init = 16'hcaca;
    FD1S3AX RegBusA_r_i1 (.D(RegBusA[1]), .CK(clk_op), .Q(RegBusA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i1.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_559 (.A(n40878), .B(n38474), .C(n38438), 
            .D(n38701), .Z(n22)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_3_lut_4_lut_adj_559.init = 16'hf200;
    PFUMX mux_1702_i8 (.BLUT(n2858[7]), .ALUT(n2875[7]), .C0(n2894), .Z(n2895[7]));
    ORCALUT4 i1_2_lut_4_lut_adj_560 (.A(n40869), .B(n38684), .C(n38766), 
            .D(n38770), .Z(n31169)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_560.init = 16'h5400;
    PFUMX mux_1702_i16 (.BLUT(n2858[15]), .ALUT(n2875[15]), .C0(n2894), 
          .Z(n2895[15]));
    ORCALUT4 i31854_3_lut (.A(RegBusA[10]), .B(RegBusA[2]), .C(Set_BusA_To[0]), 
            .Z(n35397)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31854_3_lut.init = 16'hcaca;
    FD1S3AX IncDecZ_767 (.D(n17961), .CK(clk_op), .Q(IncDecZ)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam IncDecZ_767.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_437_3_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(n33475), 
            .Z(n38416)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_rep_437_3_lut.init = 16'hf1f1;
    FD1P3BX mcycle_i0_i0 (.D(n35011), .SP(last_tstate), .CK(clk_op), .PD(n40906), 
            .Q(\ALU_Op_3__N_1283[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i0.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_3_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(Pre_XY_F_M[1]), 
            .Z(n34519)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i2_3_lut_rep_465_4_lut (.A(Read_To_Reg_r[1]), .B(RegWEH_N_881), 
            .C(Read_To_Reg_r[0]), .D(n38748), .Z(n38444)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i2_3_lut_rep_465_4_lut.init = 16'h8000;
    ORCALUT4 i20735_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(mc[2]), 
            .D(n33475), .Z(n1_adj_1953)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20735_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i20734_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(mc[3]), 
            .D(n33475), .Z(n1_adj_1954)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20734_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i20736_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(Set_BusA_To_3__N_1212[2]), 
            .D(n33475), .Z(n1_adj_1955)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20736_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i31857_3_lut (.A(RegBusA[9]), .B(RegBusA[1]), .C(Set_BusA_To[0]), 
            .Z(n35400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31857_3_lut.init = 16'hcaca;
    ORCALUT4 i20737_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(mc[6]), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n33475), .Z(n1_adj_1956)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20737_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i1_2_lut_rep_744 (.A(tstate[1]), .B(Auto_Wait_t1), .Z(n38723)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut_rep_744.init = 16'h2222;
    ORCALUT4 mux_1271_i9_3_lut (.A(di_reg[0]), .B(n87[8]), .C(n2295), 
            .Z(n2066[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_561 (.A(tstate[1]), .B(Auto_Wait_t1), 
            .C(n38458), .D(Read_To_Reg_r[0]), .Z(clk_op_enable_297)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut_3_lut_4_lut_adj_561.init = 16'h22f2;
    ORCALUT4 i6033_2_lut_rep_745 (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .Z(n38724)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i6033_2_lut_rep_745.init = 16'h8888;
    ORCALUT4 i864_2_lut_rep_570_3_lut_4_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(mc[6]), .D(Pre_XY_F_M[2]), .Z(n38549)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i864_2_lut_rep_570_3_lut_4_lut.init = 16'h0708;
    ORCALUT4 mux_494_i1_3_lut (.A(Save_Mux[0]), .B(ID16[0]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(Pre_XY_F_M[2]), .Z(n17330)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i1_2_lut_3_lut_4_lut_3_lut.init = 16'h7e7e;
    ORCALUT4 mux_1698_i13_3_lut (.A(n855[12]), .B(Save_Mux[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i13_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1621_4__bdd_4_lut (.A(Q_7__N_1621[4]), .B(n23611), .C(ALU_Op_r[3]), 
            .D(BusA[4]), .Z(n40411)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1621_4__bdd_4_lut.init = 16'hca0a;
    PFUMX i14699 (.BLUT(n1177[7]), .ALUT(n1196[7]), .C0(n35485), .Z(n18204));
    ORCALUT4 mux_1698_i5_3_lut (.A(Save_Mux[4]), .B(n855[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i5_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1621_4__bdd_3_lut (.A(n37478), .B(ExchangeRp), .C(BusB[4]), 
            .Z(n40410)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1621_4__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 di_reg_4__bdd_3_lut (.A(di_reg[4]), .B(n40412), .C(Save_ALU_r), 
            .Z(n40413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_4__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1271_i10_3_lut (.A(di_reg[1]), .B(n87[9]), .C(n2295), 
            .Z(n2066[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i10_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i6_3_lut (.A(n37730), .B(BusB[5]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_537[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1263_i2 (.BLUT(n2103[1]), .ALUT(n2146[1]), .C0(n36427), 
          .Z(n2010[1]));
    ORCALUT4 XY_State_1__I_0_792_i3_2_lut_rep_748 (.A(XY_State[0]), .B(XY_State[1]), 
            .Z(n38727)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam XY_State_1__I_0_792_i3_2_lut_rep_748.init = 16'heeee;
    PFUMX mux_1263_i3 (.BLUT(n2103[2]), .ALUT(n2146[2]), .C0(n36427), 
          .Z(n2010[2]));
    FD1P3DX PC_5706__i14 (.D(n20[14]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40902), .Q(PC[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i14.GSR = "ENABLED";
    ORCALUT4 NextIs_XY_Fetch_I_89_2_lut_rep_680_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(XY_Ind), .Z(n38659)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam NextIs_XY_Fetch_I_89_2_lut_rep_680_3_lut.init = 16'h0e0e;
    ORCALUT4 mux_494_i3_3_lut (.A(Save_Mux[2]), .B(ID16[2]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_adj_562 (.A(XY_State[0]), .B(XY_State[1]), .C(Set_Addr_To[2]), 
            .D(NextIs_XY_Fetch), .Z(n34802)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam i2_3_lut_4_lut_adj_562.init = 16'h0e00;
    ORCALUT4 i1_2_lut_rep_428_3_lut (.A(XY_State[0]), .B(XY_State[1]), .C(RegAddrA_2__N_485), 
            .Z(n38407)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam i1_2_lut_rep_428_3_lut.init = 16'h1010;
    PFUMX mux_1263_i4 (.BLUT(n2103[3]), .ALUT(n2146[3]), .C0(n36427), 
          .Z(n2010[3]));
    ORCALUT4 mux_494_i2_3_lut (.A(Save_Mux[1]), .B(ID16[1]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i403_3_lut_4_lut (.A(XY_State[0]), .B(XY_State[1]), .C(mc[5]), 
            .D(n31326), .Z(n1684)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam i403_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 ts_3__I_0_825_2_lut_rep_749 (.A(ts[3]), .B(\ALU_Op_3__N_1283[3] ), 
            .Z(n38728)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_3__I_0_825_2_lut_rep_749.init = 16'h8888;
    ORCALUT4 i493_4_lut_4_lut (.A(n40881), .B(\ALU_Op_3__N_1283[3] ), .C(\tstate[2] ), 
            .D(IncDec_16[2]), .Z(RegWEH_N_901)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam i493_4_lut_4_lut.init = 16'hb800;
    ORCALUT4 ts_2__I_0_798_3_lut_4_lut (.A(n40881), .B(\ALU_Op_3__N_1283[3] ), 
            .C(IncDec_16[2]), .D(\tstate[2] ), .Z(RegAddrA_2__N_485)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_2__I_0_798_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 mux_494_i5_3_lut (.A(Save_Mux[4]), .B(ID16[4]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1271_i11_3_lut (.A(di_reg[2]), .B(n87[10]), .C(n2295), 
            .Z(n2066[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i4_3_lut (.A(Save_Mux[3]), .B(ID16[3]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i4_3_lut.init = 16'hcaca;
    PFUMX mux_1263_i5 (.BLUT(n2103[4]), .ALUT(n2146[4]), .C0(n36427), 
          .Z(n2010[4]));
    PFUMX mux_1263_i6 (.BLUT(n2103[5]), .ALUT(n2146[5]), .C0(n36427), 
          .Z(n2010[5]));
    ORCALUT4 i3_4_lut_4_lut_adj_563 (.A(n38631), .B(n38638), .C(n6_adj_1957), 
            .D(n2334[2]), .Z(F_Out[1])) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam i3_4_lut_4_lut_adj_563.init = 16'h5040;
    ORCALUT4 i287_3_lut (.A(n1154[2]), .B(Save_Mux[2]), .C(n38444), .Z(n1172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i287_3_lut.init = 16'hcaca;
    ORCALUT4 i7021_3_lut (.A(IntE_FF2), .B(Fp[2]), .C(n38443), .Z(n1145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i7021_3_lut.init = 16'hcaca;
    ORCALUT4 i49_4_lut_4_lut (.A(n38631), .B(n4_adj_1958), .C(ALU_Op_r[3]), 
            .D(n38621), .Z(n25)) /* synthesis lut_function=(A (D)+!A !(B (C))) */ ;
    defparam i49_4_lut_4_lut.init = 16'hbf15;
    ORCALUT4 i2_3_lut_4_lut_adj_564 (.A(n38444), .B(n1165), .C(n38422), 
            .D(n43), .Z(clk_op_enable_143)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_564.init = 16'hfffe;
    PFUMX mux_1263_i7 (.BLUT(n2103[6]), .ALUT(n2146[6]), .C0(n36427), 
          .Z(n2010[6]));
    ORCALUT4 i19998_3_lut (.A(Set_BusA_To[0]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n15[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i19998_3_lut.init = 16'hc8c8;
    PFUMX mux_1263_i8 (.BLUT(n2103[7]), .ALUT(n2146[7]), .C0(n36427), 
          .Z(n2010[7]));
    PFUMX mux_1263_i9 (.BLUT(n2103[8]), .ALUT(n2146[8]), .C0(n36427), 
          .Z(n2010[8]));
    ORCALUT4 mux_1271_i12_3_lut (.A(di_reg[3]), .B(n87[11]), .C(n2295), 
            .Z(n2066[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i12_3_lut.init = 16'hcaca;
    PFUMX mux_1263_i10 (.BLUT(n2103[9]), .ALUT(n2146[9]), .C0(n36427), 
          .Z(n2010[9]));
    ORCALUT4 mux_494_i6_3_lut (.A(Save_Mux[5]), .B(ID16[5]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1263_i11 (.BLUT(n2103[10]), .ALUT(n2146[10]), .C0(n36427), 
          .Z(n2010[10]));
    PFUMX mux_1263_i12 (.BLUT(n2103[11]), .ALUT(n2146[11]), .C0(n36427), 
          .Z(n2010[11]));
    ORCALUT4 i6_4_lut_adj_565 (.A(n8245[0]), .B(n21554), .C(n40897), .D(n19_adj_1959), 
            .Z(Set_BusA_To[0])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    defparam i6_4_lut_adj_565.init = 16'hccac;
    PFUMX mux_1263_i13 (.BLUT(n2103[12]), .ALUT(n2146[12]), .C0(n36427), 
          .Z(n2010[12]));
    PFUMX mux_1263_i14 (.BLUT(n2103[13]), .ALUT(n2146[13]), .C0(n36427), 
          .Z(n2010[13]));
    PFUMX mux_1263_i15 (.BLUT(n2103[14]), .ALUT(n2146[14]), .C0(n36427), 
          .Z(n2010[14]));
    ORCALUT4 mux_1698_i14_3_lut (.A(n855[13]), .B(Save_Mux[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i14_3_lut.init = 16'hcaca;
    PFUMX mux_1263_i16 (.BLUT(n2103[15]), .ALUT(n2146[15]), .C0(n36427), 
          .Z(n2010[15]));
    ORCALUT4 i1_2_lut_rep_753 (.A(\tstate[2] ), .B(tstate[1]), .Z(n38732)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_753.init = 16'heeee;
    ORCALUT4 i1_3_lut_rep_673_4_lut (.A(\tstate[2] ), .B(tstate[1]), .C(n40881), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n38652)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_rep_673_4_lut.init = 16'hfe00;
    ORCALUT4 i3_4_lut_adj_566 (.A(n38699), .B(n38682), .C(Set_BusA_To_3__N_1212[2]), 
            .D(n40891), .Z(n35137)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_566.init = 16'h0010;
    ORCALUT4 i609_2_lut_rep_623_4_lut_2_lut (.A(\tstate[2] ), .B(\ALU_Op_3__N_1283[3] ), 
            .Z(n38602)) /* synthesis lut_function=(A (B)) */ ;
    defparam i609_2_lut_rep_623_4_lut_2_lut.init = 16'h8888;
    ORCALUT4 i5_1_lut_rep_560_3_lut_4_lut (.A(\tstate[2] ), .B(tstate[1]), 
            .C(ts[3]), .D(\ALU_Op_3__N_1283[3] ), .Z(clk_op_enable_184)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;
    defparam i5_1_lut_rep_560_3_lut_4_lut.init = 16'h01ff;
    ORCALUT4 mux_1698_i6_3_lut (.A(Save_Mux[5]), .B(n855[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i192_2_lut_rep_757 (.A(n40881), .B(mc[5]), .Z(n38736)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i192_2_lut_rep_757.init = 16'h8888;
    PFUMX mux_1263_i1 (.BLUT(n2103[0]), .ALUT(n2146[0]), .C0(n36427), 
          .Z(n2010[0]));
    ORCALUT4 mux_192_i5_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[4]), 
            .D(IR[4]), .Z(n798[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i14294_3_lut_4_lut_4_lut (.A(n38740), .B(Jump), .C(n24365), 
            .D(n38430), .Z(n17798)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i14294_3_lut_4_lut_4_lut.init = 16'hdccc;
    ORCALUT4 i1_2_lut_4_lut_3_lut (.A(ts[3]), .B(mc[5]), .C(\ALU_Op_3__N_1283[3] ), 
            .Z(n5_adj_1960)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h0808;
    ORCALUT4 mux_192_i4_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[3]), 
            .D(Set_BusA_To_3__N_1216[0]), .Z(n798[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n1913_bdd_3_lut (.A(n1907[2]), .B(n40669), .C(n38628), .Z(n40670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1913_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1702_i7 (.BLUT(n2858[6]), .ALUT(n2875[6]), .C0(n2894), .Z(n2895[6]));
    ORCALUT4 mux_192_i6_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[5]), 
            .D(IR[5]), .Z(n798[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 di_reg_2__bdd_3_lut (.A(di_reg[2]), .B(n40670), .C(Save_ALU_r), 
            .Z(n40671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_2__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n12384_bdd_3_lut_3_lut (.A(ALU_Op_r[3]), .B(n37985), .C(n12384), 
            .Z(n37986)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n12384_bdd_3_lut_3_lut.init = 16'he4e4;
    PFUMX mux_1702_i15 (.BLUT(n2858[14]), .ALUT(n2875[14]), .C0(n2894), 
          .Z(n2895[14]));
    ORCALUT4 mux_1227_i2_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n23611), .C(Q_7__N_1621[1]), 
            .D(n38742), .Z(n1942[1])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam mux_1227_i2_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 i31905_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(PreserveC_r), 
            .C(n38445), .D(n38631), .Z(n35448)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;
    defparam i31905_2_lut_3_lut_4_lut_4_lut.init = 16'h3020;
    ORCALUT4 i3_4_lut_4_lut_adj_567 (.A(ALU_Op_r[3]), .B(ALU_Op_r[1]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[0]), .Z(n35039)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_4_lut_adj_567.init = 16'hfdff;
    ORCALUT4 Q_7__N_1621_2__bdd_4_lut (.A(n23611), .B(BusB[2]), .C(ALU_Op_r[0]), 
            .D(BusB[6]), .Z(n40668)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Q_7__N_1621_2__bdd_4_lut.init = 16'ha808;
    ORCALUT4 Q_7__N_1621_2__bdd_3_lut (.A(n37471), .B(ExchangeRp), .C(BusB[2]), 
            .Z(n40667)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1621_2__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[1]), .Z(n6_adj_1957)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 mux_1227_i6_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n23611), .C(Q_7__N_1621[5]), 
            .D(BusA[5]), .Z(n1942[5])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam mux_1227_i6_4_lut_4_lut.init = 16'hd850;
    FD1P3DX PC_5706__i15 (.D(n20[15]), .SP(clk_op_enable_284), .CK(clk_op), 
            .CD(n40903), .Q(PC[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5706__i15.GSR = "ENABLED";
    FD1P3DX tstate_i0_i1 (.D(n18167), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(n40905), .Q(tstate[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i1.GSR = "ENABLED";
    FD1P3DX tstate_i0_i2 (.D(n18165), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(n40906), .Q(\tstate[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i2.GSR = "ENABLED";
    FD1P3DX tstate_i0_i3 (.D(n18163), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(rst_s), .Q(ts[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3.GSR = "ENABLED";
    FD1P3DX tstate_i0_i4 (.D(n18161), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(rst_s), .Q(ts[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i4.GSR = "ENABLED";
    FD1P3DX tstate_i0_i5 (.D(n18159), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(n40906), .Q(ts[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i5.GSR = "ENABLED";
    ORCALUT4 mux_493_i1_3_lut (.A(Save_Mux[0]), .B(ID16[8]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i20525_4_lut (.A(n900[4]), .B(n38443), .C(F[4]), .D(n17823), 
            .Z(n1144)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i20525_4_lut.init = 16'hc088;
    ORCALUT4 mux_1271_i13_3_lut (.A(di_reg[4]), .B(n87[12]), .C(n2295), 
            .Z(n2066[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i13_4_lut (.A(n24612), .B(\tstate[2] ), .C(n38652), .D(n4_adj_1961), 
            .Z(clk_op_enable_308)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13_4_lut.init = 16'hcac0;
    ORCALUT4 mux_493_i3_3_lut (.A(Save_Mux[2]), .B(ID16[10]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i3_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_0__bdd_4_lut (.A(Set_BusB_To[0]), .B(Set_BusB_To[3]), 
            .C(Set_BusB_To[2]), .D(Set_BusB_To[1]), .Z(n2812)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam Set_BusB_To_0__bdd_4_lut.init = 16'h2004;
    ORCALUT4 i1_4_lut_adj_568 (.A(n23781), .B(n2894), .C(n4_adj_1962), 
            .D(Read_To_Reg_r[0]), .Z(clk_op_enable_58)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_568.init = 16'hbafa;
    ORCALUT4 i1_4_lut_adj_569 (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[2]), 
            .C(n35277), .D(Read_To_Reg_r[1]), .Z(n4_adj_1962)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_569.init = 16'h0020;
    ORCALUT4 i31746_2_lut (.A(Read_To_Reg_r[4]), .B(RegWEH_N_881), .Z(n35277)) /* synthesis lut_function=(A (B)) */ ;
    defparam i31746_2_lut.init = 16'h8888;
    ORCALUT4 i3_4_lut_adj_570 (.A(IncDec_16[0]), .B(n6_adj_1963), .C(\tstate[2] ), 
            .D(n817), .Z(n933)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_570.init = 16'h8880;
    ORCALUT4 i2_2_lut (.A(IncDec_16[2]), .B(IncDec_16[1]), .Z(n6_adj_1963)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    ORCALUT4 i196_2_lut (.A(ts[4]), .B(\ALU_Op_3__N_1283[3] ), .Z(n817)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(698[56:80])
    defparam i196_2_lut.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_761 (.A(ISet[0]), .B(n40897), .Z(n38740)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_rep_761.init = 16'heeee;
    ORCALUT4 i2_4_lut (.A(n38740), .B(n38644), .C(n38688), .D(n38662), 
            .Z(n31326)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfafe;
    ORCALUT4 i33209_2_lut_3_lut_4_lut_3_lut (.A(ISet[0]), .B(\ISet[1] ), 
            .C(n19_adj_1959), .Z(n35681)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i33209_2_lut_3_lut_4_lut_3_lut.init = 16'h1d1d;
    ORCALUT4 i11_1_lut_rep_692_2_lut (.A(ISet[0]), .B(\ISet[1] ), .Z(n38671)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i11_1_lut_rep_692_2_lut.init = 16'h1111;
    ORCALUT4 mux_493_i2_3_lut (.A(Save_Mux[1]), .B(ID16[9]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_adj_571 (.A(ISet[0]), .B(\ISet[1] ), .C(last_tstate), 
            .Z(n33910)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_3_lut_adj_571.init = 16'hefef;
    ORCALUT4 i20121_2_lut_3_lut (.A(ISet[0]), .B(\ISet[1] ), .C(Q_7__N_1613[7]), 
            .Z(F_Out_7__N_1650)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i20121_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 i33173_2_lut_3_lut_4_lut_4_lut (.A(ISet[0]), .B(\ISet[1] ), 
            .C(n38620), .D(n38705), .Z(n35784)) /* synthesis lut_function=(A (B (C (D)))+!A ((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i33173_2_lut_3_lut_4_lut_4_lut.init = 16'hd111;
    ORCALUT4 i1_2_lut_2_lut_3_lut (.A(ISet[0]), .B(\ISet[1] ), .C(last_tstate), 
            .Z(n33723)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i20104_2_lut_rep_450_2_lut_3_lut (.A(ISet[0]), .B(\ISet[1] ), 
            .C(JumpE_N_1521), .Z(n38429)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i20104_2_lut_rep_450_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(ISet[0]), .B(\ISet[1] ), .C(n4_adj_1964), 
            .D(\tstate[2] ), .Z(n33652)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i11196_3_lut_3_lut_4_lut (.A(ISet[0]), .B(\ISet[1] ), .C(n14338), 
            .D(IncDec_16_3__N_1026[3]), .Z(ID16_B[15])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i11196_3_lut_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i649_2_lut (.A(NextIs_XY_Fetch), .B(last_tstate), .Z(clk_op_enable_207)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i649_2_lut.init = 16'h8888;
    ORCALUT4 i1_3_lut_rep_421 (.A(Read_To_Reg_r[0]), .B(n33977), .C(n33756), 
            .Z(n38400)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_421.init = 16'hdcdc;
    ORCALUT4 mux_1268_i1_3_lut (.A(TmpAddr[0]), .B(PC[0]), .C(n2293), 
            .Z(n2031[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i1_3_lut (.A(n2123[0]), .B(RegBusC[0]), .C(n2305), 
            .Z(n2146[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i21087_3_lut_4_lut (.A(n38662), .B(n38669), .C(n38644), .D(n38666), 
            .Z(n24612)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i21087_3_lut_4_lut.init = 16'hff40;
    ORCALUT4 i21012_2_lut_rep_487_3_lut_4_lut (.A(n38662), .B(n38669), .C(n38589), 
            .D(n38666), .Z(n38466)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i21012_2_lut_rep_487_3_lut_4_lut.init = 16'hf040;
    ORCALUT4 mux_494_i7_3_lut (.A(Save_Mux[6]), .B(ID16[6]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i7_3_lut.init = 16'hcaca;
    ORCALUT4 NextIs_XY_Fetch_I_0_4_lut (.A(n38659), .B(n17303), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38511), .Z(NextIs_XY_Fetch)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11] 361[45])
    defparam NextIs_XY_Fetch_I_0_4_lut.init = 16'h88a8;
    ORCALUT4 i14729_3_lut (.A(n29[7]), .B(di_reg[7]), .C(n10798), .Z(n18234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14729_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i8_4_lut (.A(SP16[7]), .B(bus_din[7]), .C(n38652), 
            .D(n38736), .Z(n29[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i8_4_lut.init = 16'hcac0;
    ORCALUT4 mux_141_i15_3_lut (.A(n525[14]), .B(di_reg[6]), .C(Jump), 
            .Z(n559[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i15_4_lut (.A(TmpAddr[14]), .B(RegBusC[14]), .C(n24365), 
            .D(n38420), .Z(n525[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i15_4_lut.init = 16'hac0c;
    ORCALUT4 i1521_2_lut_rep_765 (.A(IR[1]), .B(IR[0]), .Z(n38744)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1521_2_lut_rep_765.init = 16'h4444;
    ORCALUT4 mux_141_i16_3_lut (.A(n525[15]), .B(di_reg[7]), .C(Jump), 
            .Z(n559[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i16_4_lut (.A(TmpAddr[15]), .B(RegBusC[15]), .C(n24365), 
            .D(n38420), .Z(n525[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i16_4_lut.init = 16'hac0c;
    ORCALUT4 i2_3_lut_4_lut_adj_572 (.A(n40883), .B(IR[0]), .C(n40885), 
            .D(n40893), .Z(n35033)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_adj_572.init = 16'h4000;
    ORCALUT4 mux_493_i5_3_lut (.A(Save_Mux[4]), .B(ID16[12]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i4_3_lut (.A(Save_Mux[3]), .B(ID16[11]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_769 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(Read_To_Reg_r[2]), .Z(n38748)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_769.init = 16'h0808;
    ORCALUT4 mux_1268_i16_3_lut (.A(TmpAddr[15]), .B(PC[15]), .C(n2293), 
            .Z(n2031[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i16_3_lut (.A(n2066[15]), .B(RegBusC[15]), .C(n2305), 
            .Z(n2146[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i15_3_lut (.A(TmpAddr[14]), .B(PC[14]), .C(n2293), 
            .Z(n2031[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i15_3_lut (.A(n2066[14]), .B(RegBusC[14]), .C(n2305), 
            .Z(n2146[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i14_3_lut (.A(TmpAddr[13]), .B(PC[13]), .C(n2293), 
            .Z(n2031[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i14_3_lut (.A(n2066[13]), .B(RegBusC[13]), .C(n2305), 
            .Z(n2146[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i33037_3_lut (.A(n2031[5]), .B(n2048[5]), .C(n2299), .Z(n2103[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33037_3_lut.init = 16'hcaca;
    FD1S3AX RegAddrC_i2 (.D(RegAddrC_2__N_745[2]), .CK(clk_op), .Q(RegAddrC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i2.GSR = "ENABLED";
    ORCALUT4 mux_1268_i13_3_lut (.A(TmpAddr[12]), .B(PC[12]), .C(n2293), 
            .Z(n2031[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i13_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_15 (.A0(RegBusA[13]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[14]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30975), .COUT(n30976), .S0(ID16[13]), .S1(ID16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_15.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut_adj_573 (.A(n38505), .B(n38748), .C(Read_To_Reg_r[0]), 
            .D(n17968), .Z(clk_op_enable_145)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_4_lut_adj_573.init = 16'hff80;
    CCU2B RegBusA_15__I_0_add_4_13 (.A0(RegBusA[11]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[12]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30974), .COUT(n30975), .S0(ID16[11]), .S1(ID16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_13.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_13.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_11 (.A0(RegBusA[9]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[10]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30973), .COUT(n30974), .S0(ID16[9]), .S1(ID16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_11.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_11.INJECT1_1 = "NO";
    PFUMX i14701 (.BLUT(n1177[6]), .ALUT(n1196[6]), .C0(n35485), .Z(n18206));
    ORCALUT4 mux_1287_i13_3_lut (.A(n2066[12]), .B(RegBusC[12]), .C(n2305), 
            .Z(n2146[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_574 (.A(n1_adj_1965), .B(n38573), .C(n75_adj_1966), 
            .D(MCycles_2__N_1104), .Z(n33456)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_574.init = 16'hfffb;
    ORCALUT4 i274_3_lut_rep_466 (.A(n38485), .B(n35039), .C(Save_ALU_r), 
            .Z(n38445)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i274_3_lut_rep_466.init = 16'h7373;
    ORCALUT4 mux_1271_i14_3_lut (.A(di_reg[5]), .B(n87[13]), .C(n2295), 
            .Z(n2066[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_575 (.A(Halt_FF), .B(Jump), .C(n38740), .D(n58_adj_1968), 
            .Z(n28)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_575.init = 16'h1110;
    ORCALUT4 mux_1268_i12_3_lut (.A(TmpAddr[11]), .B(PC[11]), .C(n2293), 
            .Z(n2031[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i12_3_lut (.A(n2066[11]), .B(RegBusC[11]), .C(n2305), 
            .Z(n2146[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i11_3_lut (.A(TmpAddr[10]), .B(PC[10]), .C(n2293), 
            .Z(n2031[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i20426_4_lut (.A(IntE_FF2_N_919), .B(ts[3]), .C(n38740), 
            .D(n38576), .Z(IntE_FF2_N_918)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i20426_4_lut.init = 16'haaa2;
    ORCALUT4 i20427_4_lut (.A(IntE_FF2), .B(\tstate[2] ), .C(n38740), 
            .D(n38577), .Z(IntE_FF2_N_919)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i20427_4_lut.init = 16'haaae;
    ORCALUT4 i1_4_lut_adj_576 (.A(I_BTR), .B(n38680), .C(No_BTR_N_972), 
            .D(n4_adj_1969), .Z(No_BTR_N_962)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_576.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_577 (.A(IR[4]), .B(n35026), .C(n38460), .D(F[2]), 
            .Z(n4_adj_1969)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_577.init = 16'hdcfc;
    ORCALUT4 i2_4_lut_adj_578 (.A(n38744), .B(n38508), .C(No_BTR_N_972), 
            .D(F[2]), .Z(n35026)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i2_4_lut_adj_578.init = 16'h8088;
    ORCALUT4 mux_1287_i11_3_lut (.A(n2066[10]), .B(RegBusC[10]), .C(n2305), 
            .Z(n2146[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i10_3_lut (.A(TmpAddr[9]), .B(PC[9]), .C(n2293), 
            .Z(n2031[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i10_3_lut.init = 16'hcaca;
    PFUMX i7012 (.BLUT(n17_adj_1970), .ALUT(F_Out[0]), .C0(n35452), .Z(n1154[0]));
    ORCALUT4 mux_1287_i10_3_lut (.A(n2066[9]), .B(RegBusC[9]), .C(n2305), 
            .Z(n2146[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i10_3_lut.init = 16'hcaca;
    ORCALUT4 IR_4__N_967_I_0_2_lut (.A(IR[4]), .B(F[6]), .Z(No_BTR_N_972)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1225[35:55])
    defparam IR_4__N_967_I_0_2_lut.init = 16'hdddd;
    ORCALUT4 mux_1268_i9_3_lut (.A(TmpAddr[8]), .B(PC[8]), .C(n2293), 
            .Z(n2031[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i9_3_lut (.A(n2066[8]), .B(RegBusC[8]), .C(n2305), 
            .Z(n2146[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i8_3_lut (.A(TmpAddr[7]), .B(PC[7]), .C(n2293), 
            .Z(n2031[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i8_3_lut (.A(n2123[7]), .B(RegBusC[7]), .C(n2305), 
            .Z(n2146[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i7_3_lut (.A(TmpAddr[6]), .B(PC[6]), .C(n2293), 
            .Z(n2031[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i7_3_lut (.A(n2123[6]), .B(RegBusC[6]), .C(n2305), 
            .Z(n2146[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i6_3_lut (.A(TmpAddr[5]), .B(PC[5]), .C(n2293), 
            .Z(n2031[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i6_3_lut (.A(n2123[5]), .B(RegBusC[5]), .C(n2305), 
            .Z(n2146[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i5_3_lut (.A(TmpAddr[4]), .B(PC[4]), .C(n2293), 
            .Z(n2031[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i5_3_lut (.A(n2123[4]), .B(RegBusC[4]), .C(n2305), 
            .Z(n2146[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i4_3_lut (.A(TmpAddr[3]), .B(PC[3]), .C(n2293), 
            .Z(n2031[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i4_3_lut (.A(n2123[3]), .B(RegBusC[3]), .C(n2305), 
            .Z(n2146[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i3_3_lut (.A(TmpAddr[2]), .B(PC[2]), .C(n2293), 
            .Z(n2031[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i3_3_lut (.A(n2123[2]), .B(RegBusC[2]), .C(n2305), 
            .Z(n2146[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i14579_4_lut (.A(n18134), .B(Save_Mux[0]), .C(n7169), .D(n2660), 
            .Z(n18084)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14579_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_1268_i2_3_lut (.A(TmpAddr[1]), .B(PC[1]), .C(n2293), 
            .Z(n2031[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1287_i2_3_lut (.A(n2123[1]), .B(RegBusC[1]), .C(n2305), 
            .Z(n2146[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1287_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1698_i15_3_lut (.A(n855[14]), .B(Save_Mux[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1698_i7_3_lut (.A(Save_Mux[6]), .B(n855[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i33011_3_lut (.A(n2031[0]), .B(n2048[0]), .C(n2299), .Z(n2103[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33011_3_lut.init = 16'hcaca;
    ORCALUT4 i20163_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[0]), 
            .D(Halt_FF), .Z(n963)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20163_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20636_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[4]), 
            .D(Halt_FF), .Z(n967)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20636_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20635_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[5]), 
            .D(Halt_FF), .Z(n968)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20635_2_lut_3_lut_4_lut.init = 16'h70f0;
    FD1P3BX F_i0 (.D(n18147), .SP(clk_op_enable_296), .CK(clk_op), .PD(n40906), 
            .Q(F[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0.GSR = "ENABLED";
    ORCALUT4 i20634_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[6]), 
            .D(Halt_FF), .Z(n969)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20634_2_lut_3_lut_4_lut.init = 16'h70f0;
    FD1P3DX dout_i0 (.D(n18145), .SP(clk_op_enable_297), .CK(clk_op), 
            .CD(n40903), .Q(cpu_dout[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0 (.D(n18143), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40902), .Q(TmpAddr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0.GSR = "ENABLED";
    ORCALUT4 mux_493_i7_3_lut (.A(Save_Mux[6]), .B(ID16[14]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i6_3_lut (.A(Save_Mux[5]), .B(ID16[13]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i20633_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[7]), 
            .D(Halt_FF), .Z(n970)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20633_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20637_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[3]), 
            .D(Halt_FF), .Z(n966)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20637_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20638_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38652), .C(bus_din[2]), 
            .D(Halt_FF), .Z(n965)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20638_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i33021_3_lut (.A(n2031[13]), .B(n2048[13]), .C(n2299), .Z(n2103[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33021_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_579 (.A(\tstate[2] ), .B(n38652), 
            .C(bus_din[1]), .D(Halt_FF), .Z(n964)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i1_2_lut_3_lut_4_lut_adj_579.init = 16'h70f0;
    ORCALUT4 i33019_3_lut (.A(n2031[14]), .B(n2048[14]), .C(n2299), .Z(n2103[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33019_3_lut.init = 16'hcaca;
    ORCALUT4 i33017_3_lut (.A(n2031[15]), .B(n2048[15]), .C(n2299), .Z(n2103[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33017_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1271_i15_3_lut (.A(di_reg[6]), .B(n87[14]), .C(n2295), 
            .Z(n2066[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i33039_3_lut (.A(n2031[4]), .B(n2048[4]), .C(n2299), .Z(n2103[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33039_3_lut.init = 16'hcaca;
    ORCALUT4 PC16_B_15__I_0_i7_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[6]), .D(JumpE_N_1521), .Z(PC16_B[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i33041_3_lut (.A(n2031[3]), .B(n2048[3]), .C(n2299), .Z(n2103[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33041_3_lut.init = 16'hcaca;
    ORCALUT4 i33043_3_lut (.A(n2031[2]), .B(n2048[2]), .C(n2299), .Z(n2103[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33043_3_lut.init = 16'hcaca;
    ORCALUT4 i33045_3_lut (.A(n2031[1]), .B(n2048[1]), .C(n2299), .Z(n2103[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33045_3_lut.init = 16'hcaca;
    ORCALUT4 mux_141_i11_3_lut (.A(n525[10]), .B(di_reg[2]), .C(Jump), 
            .Z(n559[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i11_4_lut (.A(TmpAddr[10]), .B(RegBusC[10]), .C(n24365), 
            .D(n38420), .Z(n525[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i11_4_lut.init = 16'hac0c;
    ORCALUT4 mux_494_i8_3_lut (.A(Save_Mux[7]), .B(ID16[7]), .C(RegWEH_N_901), 
            .Z(RegDIL_7__N_762[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i8_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIL_7__I_34_i2_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[1]), 
            .D(RegBusA_r[1]), .Z(RegDIL_7__N_470[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i2_3_lut_4_lut.init = 16'hfb40;
    PFUMX mux_276_i2 (.BLUT(n35223), .ALUT(F_Out[1]), .C0(n38445), .Z(n1154[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 RegDIL_7__I_34_i6_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[5]), 
            .D(RegBusA_r[5]), .Z(RegDIL_7__N_470[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i6_3_lut_4_lut.init = 16'hfb40;
    PFUMX i14617 (.BLUT(n2587[7]), .ALUT(n18121), .C0(n35780), .Z(n18122));
    ORCALUT4 i20012_3_lut_4_lut_4_lut (.A(n38499), .B(n40881), .C(RegAddrA_r[0]), 
            .D(ts[4]), .Z(RegAddrA_2__N_748[0])) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam i20012_3_lut_4_lut_4_lut.init = 16'hb1b0;
    ORCALUT4 RegAddrB_r_2__I_0_794_i3_3_lut_4_lut (.A(n38499), .B(ts[3]), 
            .C(Alternate), .D(RegAddrB_r[2]), .Z(RegAddrB[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegAddrB_r_2__I_0_794_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_493_i8_3_lut (.A(Save_Mux[7]), .B(ID16[15]), .C(RegWEH_N_901), 
            .Z(RegDIH_7__N_753[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1271_i16_3_lut (.A(di_reg[7]), .B(n87[15]), .C(n2295), 
            .Z(n2066[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1271_i16_3_lut.init = 16'hcaca;
    PFUMX i14619 (.BLUT(n2587[5]), .ALUT(n18123), .C0(n35780), .Z(n18124));
    ORCALUT4 mux_1698_i16_3_lut (.A(n855[15]), .B(Save_Mux[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1698_i8_3_lut (.A(Save_Mux[7]), .B(n855[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2875[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1698_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_141_i12_3_lut (.A(n525[11]), .B(di_reg[3]), .C(Jump), 
            .Z(n559[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i12_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIL_7__I_34_i3_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[2]), 
            .D(RegBusA_r[2]), .Z(RegDIL_7__N_470[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_139_i12_4_lut (.A(TmpAddr[11]), .B(RegBusC[11]), .C(n24365), 
            .D(n38420), .Z(n525[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i12_4_lut.init = 16'hac0c;
    ORCALUT4 RegDIL_7__I_34_i1_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[0]), 
            .D(RegBusA_r[0]), .Z(RegDIL_7__N_470[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i1_3_lut_4_lut.init = 16'hfb40;
    PFUMX i14621 (.BLUT(n2587[2]), .ALUT(n18125), .C0(n35780), .Z(n18126));
    ORCALUT4 RegDIL_7__I_34_i5_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[4]), 
            .D(RegBusA_r[4]), .Z(RegDIL_7__N_470[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i4_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[3]), 
            .D(RegBusA_r[3]), .Z(RegDIL_7__N_470[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i4_3_lut_4_lut.init = 16'hfb40;
    PFUMX i35263 (.BLUT(n40671), .ALUT(n40667), .C0(n35605), .Z(Save_Mux[2]));
    ORCALUT4 i2_3_lut_rep_479_4_lut (.A(Read_To_Reg_r[1]), .B(RegWEH_N_881), 
            .C(n16540), .D(Read_To_Reg_r[2]), .Z(n38458)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i2_3_lut_rep_479_4_lut.init = 16'h8000;
    ORCALUT4 RegDIH_7__I_33_i1_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[8]), 
            .D(RegBusA_r[8]), .Z(RegDIH_7__N_461[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i1_3_lut_4_lut.init = 16'hfb40;
    PFUMX i14623 (.BLUT(n2587[3]), .ALUT(n18127), .C0(n35780), .Z(n18128));
    FD1P3DX IR_i0_i0_rep_823 (.D(n963), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(rst_s), .Q(n40898)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0_rep_823.GSR = "ENABLED";
    ORCALUT4 i11970_3_lut (.A(TmpAddr[0]), .B(n87[0]), .C(n2295), .Z(n2123[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11970_3_lut.init = 16'hcaca;
    ORCALUT4 i15_4_lut (.A(n17_adj_1971), .B(n30), .C(n26_adj_1972), .D(n18), 
            .Z(IncDecZ_N_986)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i15_4_lut.init = 16'hfffe;
    PFUMX i14625 (.BLUT(n2587[4]), .ALUT(n18129), .C0(n35780), .Z(n18130));
    ORCALUT4 i14456_4_lut (.A(IncDecZ), .B(F_Out[6]), .C(n38485), .D(Save_ALU_r), 
            .Z(n17960)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam i14456_4_lut.init = 16'hcaaa;
    ORCALUT4 i285_3_lut (.A(n1154[6]), .B(Save_Mux[6]), .C(n38444), .Z(n1170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i285_3_lut.init = 16'hcaca;
    PFUMX i14627 (.BLUT(n2587[6]), .ALUT(n18131), .C0(n35780), .Z(n18132));
    PFUMX i35261 (.BLUT(Q_7__N_1621[2]), .ALUT(n40668), .C0(ALU_Op_r[3]), 
          .Z(n40669));
    PFUMX i14629 (.BLUT(n2587[0]), .ALUT(n18133), .C0(n35780), .Z(n18134));
    ORCALUT4 i7017_4_lut (.A(n13), .B(Fp[6]), .C(n38443), .D(n14), .Z(n1143)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i7017_4_lut.init = 16'hc0c5;
    FD1S3JX RegAddrC_i1 (.D(Set_Addr_To_2__N_1427[1]), .CK(clk_op), .PD(n34997), 
            .Q(RegAddrC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i1.GSR = "ENABLED";
    PFUMX mux_1702_i6 (.BLUT(n2858[5]), .ALUT(n2875[5]), .C0(n2894), .Z(n2895[5]));
    ORCALUT4 RegDIH_7__I_33_i3_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[10]), 
            .D(RegBusA_r[10]), .Z(RegDIH_7__N_461[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_403_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1684), 
            .Z(RegAddrC_2__N_745[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam mux_403_i3_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i2_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[9]), 
            .D(RegBusA_r[9]), .Z(RegDIH_7__N_461[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i2_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX tstate_i0_i6 (.D(n18157), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(n40906), .Q(ts[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i6.GSR = "ENABLED";
    ORCALUT4 RegDIL_7__I_34_i7_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[6]), 
            .D(RegBusA_r[6]), .Z(RegDIL_7__N_470[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i5_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[12]), 
            .D(RegBusA_r[12]), .Z(RegDIH_7__N_461[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i4_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[11]), 
            .D(RegBusA_r[11]), .Z(RegDIH_7__N_461[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i7_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[14]), 
            .D(RegBusA_r[14]), .Z(RegDIH_7__N_461[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i6_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[13]), 
            .D(RegBusA_r[13]), .Z(RegDIH_7__N_461[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_206_i1_4_lut (.A(n31362), .B(Fp[0]), .C(n38516), .D(n24357), 
            .Z(n900[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i1_4_lut.init = 16'hc5cf;
    ORCALUT4 RegDIL_7__I_34_i8_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[7]), 
            .D(RegBusA_r[7]), .Z(RegDIL_7__N_470[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i8_3_lut_4_lut (.A(n38499), .B(ts[3]), .C(RegBusB[15]), 
            .D(RegBusA_r[15]), .Z(RegDIH_7__N_461[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX mux_1702_i14 (.BLUT(n2858[13]), .ALUT(n2875[13]), .C0(n2894), 
          .Z(n2895[13]));
    ORCALUT4 i14644_4_lut (.A(n38444), .B(PreserveC_r), .C(n37), .D(n33490), 
            .Z(clk_op_enable_296)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14644_4_lut.init = 16'haeaf;
    ORCALUT4 i14642_4_lut (.A(n31804), .B(n1154[0]), .C(n38444), .D(n35448), 
            .Z(n18147)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14642_4_lut.init = 16'hcacc;
    ORCALUT4 i14638_3_lut (.A(n29[0]), .B(di_reg[0]), .C(n10798), .Z(n18143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14638_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i1_4_lut (.A(SP16[0]), .B(bus_din[0]), .C(n38652), 
            .D(n38736), .Z(n29[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i1_4_lut.init = 16'hcac0;
    CCU2B RegBusA_15__I_0_add_4_9 (.A0(RegBusA[7]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[8]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30972), .COUT(n30973), .S0(ID16[7]), .S1(ID16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_9.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 mux_206_i5_4_lut (.A(n17816), .B(Fp[4]), .C(n38516), .D(n4_adj_1973), 
            .Z(n900[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i5_4_lut.init = 16'hc5c0;
    ORCALUT4 i1_4_lut_adj_580 (.A(n24357), .B(F[0]), .C(n38506), .D(n38504), 
            .Z(n4_adj_1973)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_580.init = 16'h0a88;
    ORCALUT4 i1_4_lut_adj_581 (.A(n38699), .B(n33910), .C(n38570), .D(n4_adj_1974), 
            .Z(n17816)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_581.init = 16'hfcec;
    CCU2B RegBusA_15__I_0_add_4_7 (.A0(RegBusA[5]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[6]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30971), .COUT(n30972), .S0(ID16[5]), .S1(ID16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_7.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut_adj_582 (.A(\tstate[2] ), .B(n10798), .C(n7_adj_1975), 
            .D(n5_adj_1960), .Z(clk_op_enable_321)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_582.init = 16'hffec;
    ORCALUT4 mux_201_i6_4_lut (.A(SP16[5]), .B(RegBusC[5]), .C(n38512), 
            .D(n933), .Z(n855[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i6_4_lut.init = 16'hcac0;
    ORCALUT4 i20129_2_lut (.A(ts[5]), .B(last_tstate), .Z(n18157)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20129_2_lut.init = 16'h2222;
    ORCALUT4 mux_201_i14_4_lut (.A(SP16[13]), .B(RegBusC[13]), .C(n38512), 
            .D(n933), .Z(n855[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i14_4_lut.init = 16'hcac0;
    PFUMX i47 (.BLUT(n28_adj_1947), .ALUT(n25), .C0(n38445), .Z(n43));
    ORCALUT4 i14297_2_lut_4_lut (.A(n38499), .B(ts[4]), .C(n40881), .D(RegAddrA_2__N_751), 
            .Z(n17801)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(941[12] 944[31])
    defparam i14297_2_lut_4_lut.init = 16'h0054;
    CCU2B RegBusA_15__I_0_add_4_5 (.A0(RegBusA[3]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[4]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30970), .COUT(n30971), .S0(ID16[3]), .S1(ID16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_5.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i33227_3_lut (.A(n38444), .B(n38422), .C(n38445), .Z(n35636)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i33227_3_lut.init = 16'hefef;
    PFUMX i14703 (.BLUT(n1177[5]), .ALUT(n1196[5]), .C0(n35485), .Z(n18208));
    ORCALUT4 mux_276_i3_4_lut (.A(n13_adj_1976), .B(IncDecZ), .C(BTR_r_N_979), 
            .D(n14_adj_1977), .Z(n1154[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i3_4_lut.init = 16'hcac5;
    PFUMX i14596 (.BLUT(n2587[1]), .ALUT(n18100), .C0(n35780), .Z(n18101));
    ORCALUT4 i5_4_lut_adj_583 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_1976)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i5_4_lut_adj_583.init = 16'h6996;
    PFUMX i309 (.BLUT(n1145), .ALUT(n1172), .C0(n35523), .Z(n1228)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_2_lut_4_lut_adj_584 (.A(n38505), .B(Read_To_Reg_r[2]), .C(n16540), 
            .D(Read_To_Reg_r[0]), .Z(n7169)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_4_lut_adj_584.init = 16'h8000;
    ORCALUT4 i6_4_lut_adj_585 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_1977)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i6_4_lut_adj_585.init = 16'h6996;
    ORCALUT4 i33259_3_lut (.A(n38444), .B(BTR_r_N_979), .C(n1165), .Z(n35523)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(848[15] 851[20])
    defparam i33259_3_lut.init = 16'hfefe;
    ORCALUT4 i7015_3_lut (.A(I[7]), .B(Fp[7]), .C(n38443), .Z(n1142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i7015_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_586 (.A(n40901), .B(n20121), .C(n38732), .D(\ALU_Op_3__N_1283[3] ), 
            .Z(n34912)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut_adj_586.init = 16'hffef;
    ORCALUT4 mux_201_i5_4_lut (.A(SP16[4]), .B(RegBusC[4]), .C(n38512), 
            .D(n933), .Z(n855[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i5_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_adj_587 (.A(n40898), .B(n38680), .C(n6_adj_1978), 
            .D(n40895), .Z(n4_adj_1964)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_587.init = 16'h8000;
    ORCALUT4 mux_391_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1669), 
            .Z(RegAddrB_r_2__N_742[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(893[11] 896[16])
    defparam mux_391_i3_3_lut.init = 16'hcaca;
    PFUMX Save_Mux_7__I_0_i6 (.BLUT(ALU_Q[5]), .ALUT(Save_Mux_7__N_537[5]), 
          .C0(n35605), .Z(Save_Mux[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_201_i13_4_lut (.A(SP16[12]), .B(RegBusC[12]), .C(n38512), 
            .D(n933), .Z(n855[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i13_4_lut.init = 16'hcac0;
    FD1P3DX ISet_i1_rep_822 (.D(ISet_1__N_655[1]), .SP(clk_op_enable_308), 
            .CK(clk_op), .CD(rst_s), .Q(n40897)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i1_rep_822.GSR = "ENABLED";
    PFUMX i35127 (.BLUT(n40413), .ALUT(n40410), .C0(n35605), .Z(Save_Mux[4]));
    CCU2B RegBusA_15__I_0_add_4_3 (.A0(RegBusA[1]), .B0(n38740), .C0(IncDec_16_3__N_1026[3]), 
          .D0(n14338), .A1(RegBusA[2]), .B1(n38740), .C1(IncDec_16_3__N_1026[3]), 
          .D1(n14338), .CIN(n30969), .COUT(n30970), .S0(ID16[1]), .S1(ID16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_3.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_3.INJECT1_1 = "NO";
    PFUMX mux_1702_i5 (.BLUT(n2858[4]), .ALUT(n2875[4]), .C0(n2894), .Z(n2895[4]));
    PFUMX i35125 (.BLUT(n1907[4]), .ALUT(n40411), .C0(n38628), .Z(n40412));
    ORCALUT4 i7958_2_lut (.A(LDZ), .B(n40881), .Z(n10798)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i7958_2_lut.init = 16'h8888;
    PFUMX mux_1702_i13 (.BLUT(n2858[12]), .ALUT(n2875[12]), .C0(n2894), 
          .Z(n2895[12]));
    PFUMX i14705 (.BLUT(n1177[4]), .ALUT(n1187[4]), .C0(n35485), .Z(n18210));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_588 (.A(mc[5]), .B(n38511), .C(Set_Addr_To_2__N_1427[1]), 
            .D(n38658), .Z(n9_adj_1979)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut_3_lut_4_lut_adj_588.init = 16'hfff2;
    ORCALUT4 i33221_2_lut (.A(Set_BusA_To[3]), .Z(n2550)) /* synthesis lut_function=(A) */ ;
    defparam i33221_2_lut.init = 16'haaaa;
    ORCALUT4 mux_201_i4_4_lut (.A(SP16[3]), .B(RegBusC[3]), .C(n38512), 
            .D(n933), .Z(n855[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i4_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i12_4_lut (.A(SP16[11]), .B(RegBusC[11]), .C(n38512), 
            .D(n933), .Z(n855[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i12_4_lut.init = 16'hcac0;
    ORCALUT4 mux_141_i9_3_lut (.A(n525[8]), .B(di_reg[0]), .C(Jump), .Z(n559[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i9_4_lut (.A(TmpAddr[8]), .B(RegBusC[8]), .C(n24365), 
            .D(n38420), .Z(n525[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i9_4_lut.init = 16'hac0c;
    ORCALUT4 i1_3_lut_4_lut_adj_589 (.A(mc[5]), .B(n38511), .C(Set_Addr_To_2__N_1427[2]), 
            .D(n38658), .Z(Set_Addr_To[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_3_lut_4_lut_adj_589.init = 16'h00f2;
    PFUMX mux_1558_i2 (.BLUT(n35400), .ALUT(n35402), .C0(n35756), .Z(BusA_7__N_778[1]));
    ORCALUT4 mux_141_i10_3_lut (.A(n525[9]), .B(di_reg[1]), .C(Jump), 
            .Z(n559[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i10_4_lut (.A(TmpAddr[9]), .B(RegBusC[9]), .C(n24365), 
            .D(n38420), .Z(n525[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i10_4_lut.init = 16'hac0c;
    PFUMX mux_1558_i3 (.BLUT(n35397), .ALUT(n35399), .C0(n35756), .Z(BusA_7__N_778[2]));
    PFUMX mux_1558_i4 (.BLUT(n35391), .ALUT(n35393), .C0(n35756), .Z(BusA_7__N_778[3]));
    ORCALUT4 i1_2_lut (.A(mc[6]), .B(n27), .Z(Set_BusB_To[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut.init = 16'h4444;
    PFUMX mux_1558_i5 (.BLUT(n35421), .ALUT(n35423), .C0(n35756), .Z(BusA_7__N_778[4]));
    PFUMX mux_1558_i6 (.BLUT(n35418), .ALUT(n35420), .C0(n35756), .Z(BusA_7__N_778[5]));
    CCU2B RegBusA_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(RegBusA[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n30969), .S1(ID16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_1.INIT1 = 16'h555a;
    defparam RegBusA_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 mux_1639_i2_4_lut (.A(SP[9]), .B(PC[9]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[1])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i2_4_lut.init = 16'h00ca;
    ORCALUT4 mcycles_2__I_0_i2_3_lut (.A(Set_BusA_To_3__N_1212[2]), .B(mc[2]), 
            .C(mcycles[0]), .Z(n2_adj_1931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i19982_2_lut (.A(\ALU_Op_3__N_1283[3] ), .B(mcycles[0]), .Z(n1_adj_1930)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam i19982_2_lut.init = 16'h8888;
    ORCALUT4 mux_1639_i3_4_lut (.A(SP[10]), .B(PC[10]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[2])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i3_4_lut.init = 16'h00ca;
    ORCALUT4 mcycles_2__I_0_i5_3_lut (.A(mc[5]), .B(mc[6]), .C(mcycles[0]), 
            .Z(n5_adj_1929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i11209_3_lut (.A(TmpAddr[1]), .B(n87[1]), .C(n2295), .Z(n2123[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11209_3_lut.init = 16'hcaca;
    ORCALUT4 mcycles_2__I_0_i4_3_lut (.A(mc[3]), .B(mc[4]), .C(mcycles[0]), 
            .Z(n4_adj_1928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1639_i4_4_lut (.A(SP[11]), .B(PC[11]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[3])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i4_4_lut.init = 16'h00ca;
    ORCALUT4 i2_4_lut_adj_590 (.A(n24365), .B(clk_op_enable_119), .C(n34614), 
            .D(Jump), .Z(n2305)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!B))) */ ;
    defparam i2_4_lut_adj_590.init = 16'h004c;
    PFUMX mux_1558_i7 (.BLUT(n35415), .ALUT(n35417), .C0(n35756), .Z(BusA_7__N_778[6]));
    ORCALUT4 i2_4_lut_adj_591 (.A(Set_Addr_To[2]), .B(n23522), .C(n38420), 
            .D(n9_adj_1979), .Z(n34614)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_591.init = 16'hfefa;
    PFUMX i35026 (.BLUT(n40226), .ALUT(n40223), .C0(n35605), .Z(Save_Mux[6]));
    PFUMX mux_1558_i8 (.BLUT(n35412), .ALUT(n35414), .C0(n35756), .Z(BusA_7__N_778[7]));
    ORCALUT4 i1_4_lut_adj_592 (.A(clk_op_enable_119), .B(n56), .C(n53), 
            .D(\ISet[1] ), .Z(n32138)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_592.init = 16'ha088;
    ORCALUT4 mux_1639_i5_4_lut (.A(SP[12]), .B(PC[12]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i5_4_lut.init = 16'h00ca;
    ORCALUT4 i14741_3_lut (.A(n29[1]), .B(di_reg[1]), .C(n10798), .Z(n18246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14741_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_593 (.A(n24467), .B(IR[5]), .C(n38753), .D(n35220), 
            .Z(n53)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_593.init = 16'heca0;
    ORCALUT4 i3_4_lut_adj_594 (.A(n24467), .B(n34356), .C(n26_adj_1980), 
            .D(n34252), .Z(n35220)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i3_4_lut_adj_594.init = 16'hfbff;
    PFUMX i35024 (.BLUT(n1907[6]), .ALUT(n40224), .C0(n38628), .Z(n40225));
    ORCALUT4 RegAddrA_2__I_0_i3_4_lut (.A(RegAddrA_2__N_481[2]), .B(Alternate), 
            .C(n17801), .D(n38407), .Z(RegAddrA[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i3_4_lut.init = 16'hccca;
    PFUMX i35015 (.BLUT(n40203), .ALUT(n31), .C0(\ISet[1] ), .Z(n40204));
    ORCALUT4 mux_212_i2_4_lut (.A(SP16[1]), .B(bus_din[1]), .C(n38652), 
            .D(n38736), .Z(n29[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i2_4_lut.init = 16'hcac0;
    ORCALUT4 i6981_3_lut_4_lut_4_lut (.A(n38740), .B(n38574), .C(ACC[5]), 
            .D(n38546), .Z(n609)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam i6981_3_lut_4_lut_4_lut.init = 16'h0150;
    ORCALUT4 mux_1639_i6_4_lut (.A(SP[13]), .B(PC[13]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[5])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i6_4_lut.init = 16'h00ca;
    PFUMX mux_1558_i1 (.BLUT(n35403), .ALUT(n35405), .C0(n35756), .Z(BusA_7__N_778[0]));
    PFUMX mux_1702_i4 (.BLUT(n2858[3]), .ALUT(n2875[3]), .C0(n2894), .Z(n2895[3]));
    ORCALUT4 RegAddrA_2__I_32_i3_4_lut (.A(RegAddrA_r[2]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_751), .D(n38457), .Z(RegAddrA_2__N_481[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam RegAddrA_2__I_32_i3_4_lut.init = 16'hc0ca;
    PFUMX mux_1702_i12 (.BLUT(n2858[11]), .ALUT(n2875[11]), .C0(n2894), 
          .Z(n2895[11]));
    PFUMX i35013 (.BLUT(n40199), .ALUT(n40198), .C0(\IR[7] ), .Z(n40200));
    ORCALUT4 mux_1639_i7_4_lut (.A(SP[14]), .B(PC[14]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[6])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i7_4_lut.init = 16'h00ca;
    ORCALUT4 ID16_B_15__I_0_i8_3_lut (.A(ID16_B[15]), .B(di_reg[7]), .C(ts[3]), 
            .Z(SP16_B[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam ID16_B_15__I_0_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i33291_2_lut (.A(IR[5]), .B(n8224), .Z(n24303)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33291_2_lut.init = 16'h1111;
    PFUMX i14707 (.BLUT(n1177[3]), .ALUT(n1187[3]), .C0(n35485), .Z(n18212));
    ORCALUT4 mux_1639_i8_4_lut (.A(SP[15]), .B(PC[15]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[7])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i8_4_lut.init = 16'h00ca;
    ORCALUT4 mux_201_i2_4_lut (.A(SP16[1]), .B(RegBusC[1]), .C(n38512), 
            .D(n933), .Z(n855[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i3_4_lut (.A(SP16[2]), .B(RegBusC[2]), .C(n38512), 
            .D(n933), .Z(n855[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i10_4_lut (.A(SP16[9]), .B(RegBusC[9]), .C(n38512), 
            .D(n933), .Z(n855[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i10_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i11_4_lut (.A(SP16[10]), .B(RegBusC[10]), .C(n38512), 
            .D(n933), .Z(n855[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i11_4_lut.init = 16'hcac0;
    L6MUX21 mux_1625_i2 (.D0(n2732[1]), .D1(n2771[1]), .SD(n35471), .Z(BusB_7__N_770[1]));
    L6MUX21 mux_1625_i3 (.D0(n2732[2]), .D1(n2771[2]), .SD(n35471), .Z(BusB_7__N_770[2]));
    L6MUX21 mux_1625_i4 (.D0(n2732[3]), .D1(n2771[3]), .SD(n35471), .Z(BusB_7__N_770[3]));
    L6MUX21 mux_1625_i5 (.D0(n2732[4]), .D1(n2771[4]), .SD(n35471), .Z(BusB_7__N_770[4]));
    L6MUX21 mux_1625_i6 (.D0(n2732[5]), .D1(n2771[5]), .SD(n35471), .Z(BusB_7__N_770[5]));
    L6MUX21 mux_1625_i7 (.D0(n2732[6]), .D1(n2771[6]), .SD(n35471), .Z(BusB_7__N_770[6]));
    ORCALUT4 i2_3_lut_adj_595 (.A(RegAddrA_2__N_485), .B(IncDec_16[0]), 
            .C(IncDec_16[1]), .Z(RegAddrA_2__N_751)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_595.init = 16'h2020;
    L6MUX21 mux_1625_i8 (.D0(n2732[7]), .D1(n2771[7]), .SD(n35471), .Z(BusB_7__N_770[7]));
    L6MUX21 mux_1625_i1 (.D0(n2732[0]), .D1(n2771[0]), .SD(n35471), .Z(BusB_7__N_770[0]));
    ORCALUT4 io_rdata_7__I_0_56_i1_3_lut_4_lut (.A(n38764), .B(n38519), 
            .C(sw_c_0), .D(\io_rdata_7__N_46[0] ), .Z(\io_rdata[0] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam io_rdata_7__I_0_56_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i20006_2_lut (.A(ts[6]), .B(last_tstate), .Z(n18150)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20006_2_lut.init = 16'h2222;
    ORCALUT4 mux_1639_i1_4_lut (.A(SP[8]), .B(PC[8]), .C(n2818), .D(Set_BusB_To[1]), 
            .Z(n2744[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1639_i1_4_lut.init = 16'h0fca;
    ORCALUT4 i2_3_lut_4_lut_adj_596 (.A(Set_Addr_To[2]), .B(n38395), .C(n38431), 
            .D(Set_Addr_To_2__N_1427[1]), .Z(n2299)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_596.init = 16'h0008;
    PFUMX i34946 (.BLUT(n40086), .ALUT(n40083), .C0(n35605), .Z(Save_Mux[7]));
    ORCALUT4 n33785_bdd_4_lut (.A(n38720), .B(IR[6]), .C(IR[5]), .D(IR[0]), 
            .Z(n37690)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam n33785_bdd_4_lut.init = 16'h1300;
    PFUMX i34944 (.BLUT(n1907[7]), .ALUT(n40084), .C0(n38628), .Z(n40085));
    ORCALUT4 mux_141_i7_4_lut (.A(RegBusC[6]), .B(TmpAddr[6]), .C(n17798), 
            .D(n24365), .Z(n559[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i7_4_lut.init = 16'hc0ca;
    PFUMX i31864 (.BLUT(n4_adj_1924), .ALUT(n5), .C0(tstates[1]), .Z(n35407));
    PFUMX mux_1650_i2 (.BLUT(n2711[1]), .ALUT(n2758[1]), .C0(n35473), 
          .Z(n2771[1]));
    ORCALUT4 io_rdata_7__I_0_56_i2_3_lut_4_lut (.A(n38764), .B(n38519), 
            .C(sw_c_1), .D(\io_rdata_7__N_46[1] ), .Z(\io_rdata[1] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam io_rdata_7__I_0_56_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_141_i8_4_lut (.A(RegBusC[7]), .B(TmpAddr[7]), .C(n17798), 
            .D(n24365), .Z(n559[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i8_4_lut.init = 16'hc0ca;
    ORCALUT4 i8621_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[2]), .B(n38724), .C(NextIs_XY_Fetch), 
            .D(mc[6]), .Z(n11465)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i8621_2_lut_3_lut_4_lut.init = 16'hf0f6;
    ORCALUT4 i2_4_lut_adj_597 (.A(n38455), .B(RegAddrA_2__N_751), .C(RegAddrA_r[1]), 
            .D(n38452), .Z(RegAddrA_2__N_481[1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam i2_4_lut_adj_597.init = 16'heefe;
    PFUMX mux_1650_i3 (.BLUT(n2711[2]), .ALUT(n2758[2]), .C0(n35473), 
          .Z(n2771[2]));
    ORCALUT4 mux_201_i9_4_lut (.A(SP16[8]), .B(RegBusC[8]), .C(n38512), 
            .D(n933), .Z(n855[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i9_4_lut.init = 16'hcac0;
    ORCALUT4 i33222_rep_13_2_lut (.A(n2305), .B(n2303), .Z(n36427)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33222_rep_13_2_lut.init = 16'heeee;
    PFUMX mux_1650_i4 (.BLUT(n2711[3]), .ALUT(n2758[3]), .C0(n35473), 
          .Z(n2771[3]));
    ORCALUT4 mux_141_i5_4_lut (.A(RegBusC[4]), .B(TmpAddr[4]), .C(n17798), 
            .D(n24365), .Z(n559[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i5_4_lut.init = 16'hc0ca;
    ORCALUT4 Q_7__N_1621_5__bdd_3_lut_34129_4_lut (.A(ALU_Op_r[2]), .B(n38721), 
            .C(BusB[5]), .D(Q_7__N_1621[5]), .Z(n38055)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Q_7__N_1621_5__bdd_3_lut_34129_4_lut.init = 16'hf780;
    PFUMX mux_1650_i5 (.BLUT(n2711[4]), .ALUT(n2758[4]), .C0(n35473), 
          .Z(n2771[4]));
    ORCALUT4 mux_201_i1_4_lut (.A(SP16[0]), .B(RegBusC[0]), .C(n38512), 
            .D(n933), .Z(n855[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i1_4_lut.init = 16'hcac0;
    FD1P3DX TmpAddr_i1 (.D(n18246), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40906), .Q(TmpAddr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i1.GSR = "ENABLED";
    ORCALUT4 mux_141_i6_3_lut (.A(n525[5]), .B(TmpAddr[5]), .C(Jump), 
            .Z(n559[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i6_4_lut (.A(n38420), .B(RegBusC[5]), .C(n24365), 
            .D(TmpAddr[5]), .Z(n525[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i6_4_lut.init = 16'hac0c;
    ORCALUT4 mux_385_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1660), 
            .Z(RegAddrA_r_2__N_739[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(886[11] 889[16])
    defparam mux_385_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i14714_4_lut (.A(n10752), .B(n38652), .C(n33652), .D(n38736), 
            .Z(clk_op_enable_77)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14714_4_lut.init = 16'hbbba;
    ORCALUT4 i14727_4_lut (.A(SP16[8]), .B(di_reg[0]), .C(n10752), .D(n38736), 
            .Z(n18232)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14727_4_lut.init = 16'hcac0;
    ORCALUT4 i17_4_lut (.A(ISet[0]), .B(n38413), .C(\ISet[1] ), .D(n38468), 
            .Z(n6_adj_1981)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i17_4_lut.init = 16'hc0c5;
    ORCALUT4 mux_141_i3_3_lut (.A(n525[2]), .B(TmpAddr[2]), .C(Jump), 
            .Z(n941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i3_4_lut (.A(n38420), .B(RegBusC[2]), .C(n24365), 
            .D(TmpAddr[2]), .Z(n525[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i3_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i4_4_lut (.A(RegBusC[3]), .B(TmpAddr[3]), .C(n17798), 
            .D(n24365), .Z(n942)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i4_4_lut.init = 16'hc0ca;
    PFUMX mux_1650_i6 (.BLUT(n2711[5]), .ALUT(n2758[5]), .C0(n35473), 
          .Z(n2771[5]));
    PFUMX mux_1650_i7 (.BLUT(n2711[6]), .ALUT(n2758[6]), .C0(n35473), 
          .Z(n2771[6]));
    ORCALUT4 RegAddrA_2__I_0_i1_4_lut (.A(RegAddrA_2__N_748[0]), .B(IncDec_16[0]), 
            .C(n38407), .D(RegAddrA_2__N_751), .Z(RegAddrA[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i1_4_lut.init = 16'hcfca;
    CCU2B SP16_A_15__I_0_add_4_17 (.A0(SP16_B[7]), .B0(n40881), .C0(RegBusC[15]), 
          .D0(SP[15]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n30968), .S0(SP16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_17.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_17.INJECT1_1 = "NO";
    FD1P3DX XY_State__i0 (.D(n24303), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n40906), .Q(XY_State[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i0.GSR = "ENABLED";
    L6MUX21 i31865 (.D0(n35406), .D1(n35407), .SD(tstates[2]), .Z(last_tstate));
    ORCALUT4 i1_4_lut_adj_598 (.A(n14883), .B(n38499), .C(n40881), .D(ts[4]), 
            .Z(n33977)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_4_lut_adj_598.init = 16'hbbba;
    ORCALUT4 i11736_3_lut (.A(RegWEH_N_901), .B(IncDec_16[0]), .C(IncDec_16[1]), 
            .Z(n14883)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i11736_3_lut.init = 16'h2a2a;
    ORCALUT4 mux_201_i7_4_lut (.A(SP16[6]), .B(RegBusC[6]), .C(n38512), 
            .D(n933), .Z(n855[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i7_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i15_4_lut (.A(SP16[14]), .B(RegBusC[14]), .C(n38512), 
            .D(n933), .Z(n855[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i15_4_lut.init = 16'hcac0;
    ORCALUT4 i2_3_lut_adj_599 (.A(last_tstate), .B(iorq), .C(Auto_Wait_t2), 
            .Z(n35209)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_599.init = 16'h0404;
    ORCALUT4 i1_4_lut_adj_600 (.A(n23781), .B(Read_To_Reg_r[0]), .C(n4_adj_1962), 
            .D(n2894), .Z(clk_op_enable_50)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_600.init = 16'heafa;
    PFUMX mux_1650_i8 (.BLUT(n2711[7]), .ALUT(n2758[7]), .C0(n35473), 
          .Z(n2771[7]));
    ORCALUT4 i2_4_lut_adj_601 (.A(Read_To_Reg_r[2]), .B(n16540), .C(Read_To_Reg_r[1]), 
            .D(RegWEH_N_881), .Z(n33756)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)))) */ ;
    defparam i2_4_lut_adj_601.init = 16'h4c00;
    PFUMX mux_1702_i2 (.BLUT(n2858[1]), .ALUT(n2875[1]), .C0(n2894), .Z(n2895[1]));
    ORCALUT4 i4_4_lut (.A(n7_adj_1982), .B(IR[0]), .C(n38756), .D(Set_BusA_To_3__N_1216[0]), 
            .Z(n35182)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'hbfff;
    ORCALUT4 mux_141_i1_3_lut (.A(n525[0]), .B(TmpAddr[0]), .C(Jump), 
            .Z(n939)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i1_3_lut.init = 16'hcaca;
    PFUMX mux_1702_i3 (.BLUT(n2858[2]), .ALUT(n2875[2]), .C0(n2894), .Z(n2895[2]));
    ORCALUT4 mux_139_i1_4_lut (.A(n38420), .B(RegBusC[0]), .C(n24365), 
            .D(TmpAddr[0]), .Z(n525[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i1_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i2_3_lut (.A(n525[1]), .B(TmpAddr[1]), .C(Jump), 
            .Z(n940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i2_4_lut (.A(n38420), .B(RegBusC[1]), .C(n24365), 
            .D(TmpAddr[1]), .Z(n525[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i2_4_lut.init = 16'hac0c;
    ORCALUT4 SP_15__I_0_793_i6_3_lut (.A(SP[5]), .B(RegBusC[5]), .C(ts[3]), 
            .Z(SP16_A[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1702_i10 (.BLUT(n2858[9]), .ALUT(n2875[9]), .C0(n2894), 
          .Z(n2895[9]));
    ORCALUT4 i4_4_lut_adj_602 (.A(\ISet[1] ), .B(mc[2]), .C(n34013), .D(n31), 
            .Z(n10_adj_1934)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i4_4_lut_adj_602.init = 16'h8000;
    ORCALUT4 SP_15__I_0_793_i7_3_lut (.A(SP[6]), .B(RegBusC[6]), .C(ts[3]), 
            .Z(SP16_A[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_603 (.A(n38456), .B(n38425), .C(n34252), .D(n26_adj_1980), 
            .Z(n34932)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_603.init = 16'h0080;
    ORCALUT4 SP_15__I_0_793_i4_3_lut (.A(SP[3]), .B(RegBusC[3]), .C(ts[3]), 
            .Z(SP16_A[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i4_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i5_3_lut (.A(SP[4]), .B(RegBusC[4]), .C(ts[3]), 
            .Z(SP16_A[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i5_3_lut.init = 16'hcaca;
    PFUMX mux_1702_i11 (.BLUT(n2858[10]), .ALUT(n2875[10]), .C0(n2894), 
          .Z(n2895[10]));
    PFUMX i31863 (.BLUT(n1), .ALUT(n2), .C0(tstates[1]), .Z(n35406));
    ORCALUT4 i20007_2_lut (.A(Auto_Wait_t1), .B(last_tstate), .Z(n8432)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20007_2_lut.init = 16'h2222;
    ORCALUT4 i2_3_lut_4_lut_adj_604 (.A(n40878), .B(n38532), .C(n33918), 
            .D(n33456), .Z(Save_ALU_N_1482)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut_adj_604.init = 16'hfff2;
    FD1P3DX IR_i0_i7_rep_820 (.D(n970), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(rst_s), .Q(n40895)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7_rep_820.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_605 (.A(clk_op_enable_119), .B(n38398), .C(Jump), 
            .D(n4_adj_1983), .Z(n2303)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_605.init = 16'ha8a0;
    ORCALUT4 i1_2_lut_adj_606 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .Z(n16540)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i1_2_lut_adj_606.init = 16'h2222;
    ORCALUT4 i2_4_lut_adj_607 (.A(Set_BusA_To_3__N_1212[2]), .B(No_BTR), 
            .C(n4_adj_1984), .D(last_mcycle), .Z(n33475)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1291[36] 1293[84])
    defparam i2_4_lut_adj_607.init = 16'hffec;
    ORCALUT4 i16618_4_lut (.A(n38723), .B(ALU_Op_r[3]), .C(Save_ALU_r), 
            .D(n38638), .Z(RegWEH_N_881)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(162[17:27])
    defparam i16618_4_lut.init = 16'hcafa;
    ORCALUT4 i2_3_lut_4_lut_adj_608 (.A(n40878), .B(n38532), .C(n33487), 
            .D(n38761), .Z(n11)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i2_3_lut_4_lut_adj_608.init = 16'hf2f0;
    ORCALUT4 i32967_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38708), .C(Q_7__N_1715[7]), 
            .D(Q_v[7]), .Z(n2358[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i32967_3_lut_4_lut.init = 16'hfd20;
    FD1P3BX tstate_i0_i0 (.D(n18150), .SP(clk_op_enable_326), .CK(clk_op), 
            .PD(n40905), .Q(ts[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_1458_i7_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1942), 
            .D(n2358[6]), .Z(Q_7__N_1621[6])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i7_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i33228_3_lut (.A(ExchangeRp), .B(Save_ALU_r), .C(n35771), 
            .Z(n35605)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i33228_3_lut.init = 16'haeae;
    ORCALUT4 mux_1458_i2_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1985), 
            .D(n2358[1]), .Z(Q_7__N_1621[1])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i2_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1458_i3_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1946), 
            .D(n2358[2]), .Z(Q_7__N_1621[2])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i3_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1458_i4_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1945), 
            .D(n2358[3]), .Z(Q_7__N_1621[3])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i4_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1458_i5_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1944), 
            .D(n2358[4]), .Z(Q_7__N_1621[4])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i5_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i2_4_lut_adj_609 (.A(n38395), .B(n9_adj_1979), .C(n34802), 
            .D(n38402), .Z(n2293)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_609.init = 16'h8880;
    ORCALUT4 i14739_3_lut (.A(n29[2]), .B(di_reg[2]), .C(n10798), .Z(n18244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14739_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i3_4_lut (.A(SP16[2]), .B(bus_din[2]), .C(n38652), 
            .D(n38736), .Z(n29[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1458_i6_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n6_adj_1943), 
            .D(n2358[5]), .Z(Q_7__N_1621[5])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1458_i6_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 SP_15__I_0_793_i2_3_lut (.A(SP[1]), .B(RegBusC[1]), .C(ts[3]), 
            .Z(SP16_A[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i2_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i3_3_lut (.A(SP[2]), .B(RegBusC[2]), .C(ts[3]), 
            .Z(SP16_A[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_adj_610 (.A(\ALU_Op_3__N_1283[3] ), .B(n40881), 
            .C(n38732), .D(last_tstate), .Z(clk_op_enable_119)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut_4_lut_adj_610.init = 16'h5700;
    ORCALUT4 Q_7__N_1621_7__bdd_4_lut_33910 (.A(Q_7__N_1621[7]), .B(n12378), 
            .C(Arith16_r), .D(ALU_Op_r[3]), .Z(n37791)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A (B (D))) */ ;
    defparam Q_7__N_1621_7__bdd_4_lut_33910.init = 16'hcc0a;
    ORCALUT4 i20488_2_lut (.A(n2197[6]), .B(NextIs_XY_Fetch), .Z(n2210[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20488_2_lut.init = 16'h2222;
    ORCALUT4 i33262_2_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(ts[3]), .C(n38732), 
            .D(n10798), .Z(n35507)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i33262_2_lut_4_lut.init = 16'hffa8;
    ORCALUT4 i14725_4_lut (.A(SP16[9]), .B(di_reg[1]), .C(n10752), .D(n38736), 
            .Z(n18230)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14725_4_lut.init = 16'hcac0;
    ORCALUT4 i14723_4_lut (.A(SP16[10]), .B(di_reg[2]), .C(n10752), .D(n38736), 
            .Z(n18228)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14723_4_lut.init = 16'hcac0;
    ORCALUT4 i14721_4_lut (.A(SP16[11]), .B(di_reg[3]), .C(n10752), .D(n38736), 
            .Z(n18226)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14721_4_lut.init = 16'hcac0;
    ORCALUT4 i14719_4_lut (.A(SP16[12]), .B(di_reg[4]), .C(n10752), .D(n38736), 
            .Z(n18224)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14719_4_lut.init = 16'hcac0;
    ORCALUT4 i14717_4_lut (.A(SP16[13]), .B(di_reg[5]), .C(n10752), .D(n38736), 
            .Z(n18222)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14717_4_lut.init = 16'hcac0;
    ORCALUT4 i14715_4_lut (.A(SP16[14]), .B(di_reg[6]), .C(n10752), .D(n38736), 
            .Z(n18220)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14715_4_lut.init = 16'hcac0;
    ORCALUT4 i14713_4_lut (.A(SP16[15]), .B(di_reg[7]), .C(n10752), .D(n38736), 
            .Z(n18218)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14713_4_lut.init = 16'hcac0;
    ORCALUT4 i20489_2_lut (.A(n2197[5]), .B(NextIs_XY_Fetch), .Z(n2210[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20489_2_lut.init = 16'heeee;
    ORCALUT4 i20739_4_lut (.A(n1_adj_1954), .B(n11461), .C(Pre_XY_F_M[0]), 
            .D(n38549), .Z(n2210[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20739_4_lut.init = 16'h0322;
    ORCALUT4 i20740_4_lut (.A(n1_adj_1953), .B(n11461), .C(Pre_XY_F_M[0]), 
            .D(n38549), .Z(n2210[3])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20740_4_lut.init = 16'h3022;
    ORCALUT4 n1142_bdd_3_lut_34543 (.A(n1142), .B(n37792), .C(n38445), 
            .Z(n37793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1142_bdd_3_lut_34543.init = 16'hcaca;
    ORCALUT4 n37793_bdd_3_lut (.A(n37793), .B(di_reg[7]), .C(n1165), .Z(n37794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37793_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i20742_4_lut (.A(n1_adj_1955), .B(n11465), .C(Pre_XY_F_M[0]), 
            .D(n38637), .Z(n2210[2])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20742_4_lut.init = 16'h0322;
    ORCALUT4 i14320_3_lut_4_lut (.A(n38574), .B(n38546), .C(n33910), .D(n38516), 
            .Z(n17824)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14320_3_lut_4_lut.init = 16'h00f8;
    ORCALUT4 n37794_bdd_3_lut (.A(n37794), .B(Save_Mux[7]), .C(n38444), 
            .Z(F_7__N_683[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37794_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1650_i1 (.BLUT(n2711[0]), .ALUT(n2758[0]), .C0(n35473), 
          .Z(n2771[0]));
    ORCALUT4 i20743_4_lut (.A(n1_adj_1956), .B(n11465), .C(Pre_XY_F_M[0]), 
            .D(n38637), .Z(n2210[1])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20743_4_lut.init = 16'h3022;
    ORCALUT4 i4_4_lut_adj_611 (.A(sram_addr_0_0), .B(sram_addr_0_6), .C(n219), 
            .D(n6_adj_1986), .Z(uart_wr_N_78)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_611.init = 16'h0200;
    ORCALUT4 i33097_4_lut (.A(n17849), .B(n38444), .C(n4_adj_1987), .D(n38422), 
            .Z(clk_op_enable_85)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[30:41])
    defparam i33097_4_lut.init = 16'hffcd;
    ORCALUT4 i14345_4_lut (.A(n38740), .B(n38445), .C(n38481), .D(n38590), 
            .Z(n17849)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14345_4_lut.init = 16'h3222;
    ORCALUT4 i1_4_lut_adj_612 (.A(ALU_Op_r[1]), .B(n38445), .C(n33490), 
            .D(n17), .Z(n4_adj_1987)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_612.init = 16'hb3a0;
    ORCALUT4 mux_740_i5_4_lut (.A(n37988), .B(Save_Mux[4]), .C(n38444), 
            .D(n9643), .Z(F_7__N_683[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_740_i5_4_lut.init = 16'hc0ca;
    CCU2B SP16_A_15__I_0_add_4_15 (.A0(SP16_B[7]), .B0(n40881), .C0(RegBusC[13]), 
          .D0(SP[13]), .A1(SP16_B[7]), .B1(n40881), .C1(RegBusC[14]), 
          .D1(SP[14]), .CIN(n30967), .COUT(n30968), .S0(SP16[13]), .S1(SP16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_15.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_15.INJECT1_1 = "NO";
    FD1P3DX IR_i0_i6_rep_818 (.D(n969), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n40900), .Q(n40893)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6_rep_818.GSR = "ENABLED";
    CCU2B SP16_A_15__I_0_add_4_13 (.A0(SP16_B[7]), .B0(n40881), .C0(RegBusC[11]), 
          .D0(SP[11]), .A1(SP16_B[7]), .B1(n40881), .C1(RegBusC[12]), 
          .D1(SP[12]), .CIN(n30966), .COUT(n30967), .S0(SP16[11]), .S1(SP16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_13.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 BTR_r_I_100_3_lut (.A(BTR_r_N_979), .B(No_BTR), .C(I_BTR), 
            .Z(BTR_r_N_977)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(516[32:67])
    defparam BTR_r_I_100_3_lut.init = 16'h3232;
    ORCALUT4 Q_7__N_1621_5__bdd_3_lut_33990 (.A(Save_Mux[5]), .B(n1154[5]), 
            .C(n38444), .Z(n38054)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam Q_7__N_1621_5__bdd_3_lut_33990.init = 16'hacac;
    FD1P3DX IR_i0_i5_rep_816 (.D(n968), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n40900), .Q(n40891)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5_rep_816.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_613 (.A(sram_addr_0_5), .B(sram_addr_0_7), .Z(n6_adj_1986)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_613.init = 16'h4444;
    ORCALUT4 i20503_3_lut (.A(Read_To_Reg), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n15[4])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20503_3_lut.init = 16'hc8c8;
    PFUMX i33509 (.BLUT(n37186), .ALUT(n37185), .C0(n38445), .Z(n37187));
    ORCALUT4 i2_3_lut_4_lut_adj_614 (.A(n38727), .B(XY_Ind), .C(Set_BusA_To[2]), 
            .D(Set_BusA_To[1]), .Z(n1660)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_614.init = 16'h0020;
    ORCALUT4 i2_3_lut_4_lut_adj_615 (.A(n38727), .B(XY_Ind), .C(Set_BusB_To[2]), 
            .D(Set_BusB_To[1]), .Z(n1669)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_615.init = 16'h0020;
    PFUMX mux_1702_i9 (.BLUT(n2858[8]), .ALUT(n2875[8]), .C0(n2894), .Z(n2895[8]));
    PFUMX mux_1702_i1 (.BLUT(n2858[0]), .ALUT(n2875[0]), .C0(n2894), .Z(n2895[0]));
    ORCALUT4 i2_3_lut_adj_616 (.A(Read_To_Acc), .B(last_tstate), .C(Set_BusA_To[3]), 
            .Z(n34840)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_616.init = 16'h4040;
    ORCALUT4 i20511_3_lut (.A(Set_BusA_To[2]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n15[2])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20511_3_lut.init = 16'hc8c8;
    ORCALUT4 i20512_3_lut (.A(Set_BusA_To[1]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n15[1])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20512_3_lut.init = 16'hc8c8;
    PFUMX i33507 (.BLUT(n37183), .ALUT(n37182), .C0(ALU_Op_r[3]), .Z(n37184));
    PFUMX mux_1635_i2 (.BLUT(n2684[1]), .ALUT(n2693[1]), .C0(n2812), .Z(n2732[1]));
    ORCALUT4 mux_740_i2_4_lut (.A(n1154[1]), .B(Save_Mux[1]), .C(n38444), 
            .D(n9643), .Z(F_7__N_683[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_740_i2_4_lut.init = 16'hc0ca;
    ORCALUT4 Save_Mux_7__I_0_i2_3_lut (.A(Save_Mux_7__N_537[1]), .B(BusB[1]), 
            .C(ExchangeRp), .Z(Save_Mux[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i2_3_lut.init = 16'hcaca;
    PFUMX mux_1635_i3 (.BLUT(n2684[2]), .ALUT(n2693[2]), .C0(n2812), .Z(n2732[2]));
    ORCALUT4 i1_4_lut_adj_617 (.A(n75_adj_1966), .B(n38670), .C(n40872), 
            .D(n1030), .Z(n33927)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_617.init = 16'haeaa;
    ORCALUT4 ALU_Q_7__I_0_i2_3_lut (.A(di_reg[1]), .B(ALU_Q[1]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_537[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i20145_2_lut (.A(ts[0]), .B(last_tstate), .Z(n18167)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20145_2_lut.init = 16'heeee;
    PFUMX mux_1635_i4 (.BLUT(n2684[3]), .ALUT(n2693[3]), .C0(n2812), .Z(n2732[3]));
    PFUMX mux_1635_i5 (.BLUT(n2684[4]), .ALUT(n2693[4]), .C0(n2812), .Z(n2732[4]));
    PFUMX mux_1635_i6 (.BLUT(n2684[5]), .ALUT(n2693[5]), .C0(n2812), .Z(n2732[5]));
    ORCALUT4 i7_4_lut (.A(IR[2]), .B(n14_adj_1988), .C(n7_adj_1989), .D(n34565), 
            .Z(n16)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i7_4_lut.init = 16'hfefc;
    PFUMX mux_1635_i7 (.BLUT(n2684[6]), .ALUT(n2693[6]), .C0(n2812), .Z(n2732[6]));
    ORCALUT4 i5_4_lut_adj_618 (.A(n38558), .B(n38441), .C(n38565), .D(n38480), 
            .Z(n14_adj_1988)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i5_4_lut_adj_618.init = 16'hffce;
    PFUMX mux_1635_i8 (.BLUT(n2684[7]), .ALUT(n2693[7]), .C0(n2812), .Z(n2732[7]));
    ORCALUT4 i1_4_lut_adj_619 (.A(n38527), .B(n3_adj_1990), .C(IR[5]), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n7_adj_1989)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_619.init = 16'h5444;
    ORCALUT4 i2_4_lut_adj_620 (.A(n38600), .B(n33927), .C(n38488), .D(n1_adj_1965), 
            .Z(n34565)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_4_lut_adj_620.init = 16'hffdc;
    ORCALUT4 i3_4_lut_adj_621 (.A(\ALU_Op_3__N_1283[3] ), .B(Set_BusA_To_3__N_1212[2]), 
            .C(n38550), .D(n38566), .Z(n12)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_621.init = 16'h0ace;
    ORCALUT4 mux_740_i3_4_lut (.A(F_Out[2]), .B(n1228), .C(n38444), .D(n35517), 
            .Z(F_7__N_683[2])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_740_i3_4_lut.init = 16'hcacc;
    ORCALUT4 i33140_4_lut (.A(n38444), .B(n17968), .C(n19_adj_1991), .D(n4_adj_1992), 
            .Z(clk_op_enable_146)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i33140_4_lut.init = 16'haeee;
    ORCALUT4 i32579_3_lut (.A(Arith16_r), .B(n24_adj_1993), .C(ALU_Op_r[3]), 
            .Z(n19_adj_1991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32579_3_lut.init = 16'hcaca;
    ORCALUT4 i14665_4_lut (.A(n957), .B(n38410), .C(last_tstate), .D(n938), 
            .Z(clk_op_enable_284)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam i14665_4_lut.init = 16'haaea;
    PFUMX i79 (.BLUT(n47_adj_1926), .ALUT(n43_adj_1994), .C0(ISet[0]), 
          .Z(n56));
    ORCALUT4 i14731_3_lut (.A(n29[6]), .B(di_reg[6]), .C(n10798), .Z(n18236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14731_3_lut.init = 16'hcaca;
    CCU2B SP16_A_15__I_0_add_4_11 (.A0(SP16_B[7]), .B0(n40881), .C0(RegBusC[9]), 
          .D0(SP[9]), .A1(SP16_B[7]), .B1(n40881), .C1(RegBusC[10]), 
          .D1(SP[10]), .CIN(n30965), .COUT(n30966), .S0(SP16[9]), .S1(SP16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_11.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_11.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_9 (.A0(SP16_B[7]), .B0(n40881), .C0(RegBusC[7]), 
          .D0(SP[7]), .A1(SP16_B[7]), .B1(n40881), .C1(RegBusC[8]), 
          .D1(SP[8]), .CIN(n30964), .COUT(n30965), .S0(SP16[7]), .S1(SP16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_9.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_9.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_7 (.A0(SP16_A[5]), .B0(n40881), .C0(di_reg[5]), 
          .D0(ID16_B[15]), .A1(SP16_A[6]), .B1(n40881), .C1(di_reg[6]), 
          .D1(ID16_B[15]), .CIN(n30963), .COUT(n30964), .S0(SP16[5]), 
          .S1(SP16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_7.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_7.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_5 (.A0(SP16_A[3]), .B0(n40881), .C0(di_reg[3]), 
          .D0(ID16_B[15]), .A1(SP16_A[4]), .B1(n40881), .C1(di_reg[4]), 
          .D1(ID16_B[15]), .CIN(n30962), .COUT(n30963), .S0(SP16[3]), 
          .S1(SP16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_5.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_5.INJECT1_1 = "NO";
    PFUMX i14709 (.BLUT(n1177[2]), .ALUT(n1187[2]), .C0(n35485), .Z(n18214));
    FD1P3DX TmpAddr_i2 (.D(n18244), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(rst_s), .Q(TmpAddr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i2.GSR = "ENABLED";
    FD1P3DX TmpAddr_i3 (.D(n18242), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n40905), .Q(TmpAddr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i3.GSR = "ENABLED";
    PFUMX mux_1635_i1 (.BLUT(n2684[0]), .ALUT(n2693[0]), .C0(n2812), .Z(n2732[0]));
    ORCALUT4 i20135_2_lut (.A(tstate[1]), .B(last_tstate), .Z(n18165)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20135_2_lut.init = 16'h2222;
    CCU2B SP16_A_15__I_0_add_4_3 (.A0(SP16_A[1]), .B0(ts[3]), .C0(di_reg[1]), 
          .D0(ID16_B[15]), .A1(SP16_A[2]), .B1(ts[3]), .C1(di_reg[2]), 
          .D1(ID16_B[15]), .CIN(n30961), .COUT(n30962), .S0(SP16[1]), 
          .S1(SP16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_3.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i24_4_lut (.A(mc[5]), .B(n37072), .C(n38652), .D(\tstate[2] ), 
            .Z(clk_op_enable_162)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i24_4_lut.init = 16'hca0a;
    ORCALUT4 i1_4_lut_adj_622 (.A(n38421), .B(n38602), .C(n24612), .D(n38740), 
            .Z(clk_op_enable_314)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_622.init = 16'hcc8c;
    ORCALUT4 i20514_2_lut (.A(IR[5]), .B(n8224), .Z(n18319)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20514_2_lut.init = 16'h2222;
    ORCALUT4 i2_4_lut_adj_623 (.A(n38515), .B(clk_op_enable_314), .C(n38740), 
            .D(n24417), .Z(n8224)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i2_4_lut_adj_623.init = 16'hc8c0;
    ORCALUT4 i1_2_lut_rep_613_3_lut_4_lut (.A(n38692), .B(n38729), .C(n38693), 
            .D(n38699), .Z(n38592)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_613_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i20602_2_lut_3_lut_4_lut (.A(n38692), .B(n38729), .C(n38739), 
            .D(n38767), .Z(n24071)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20602_2_lut_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1614_i15_2_lut_rep_611_3_lut_4_lut (.A(n38692), .B(n38729), 
            .C(n38765), .D(n38699), .Z(n38590)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1614_i15_2_lut_rep_611_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i2_3_lut_4_lut_adj_624 (.A(n38444), .B(n1165), .C(BTR_r_N_979), 
            .D(n37187), .Z(clk_op_enable_144)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_624.init = 16'hfffe;
    CCU2B SP16_A_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(di_reg[0]), .B1(n40881), .C1(RegBusC[0]), 
          .D1(SP[0]), .COUT(n30961), .S1(SP16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_1.INIT1 = 16'h487b;
    defparam SP16_A_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 mux_212_i7_4_lut (.A(SP16[6]), .B(bus_din[6]), .C(n38652), 
            .D(n38736), .Z(n29[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i7_4_lut.init = 16'hcac0;
    CCU2B add_868_add_4_17 (.A0(TmpAddr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n30960), .S0(n87[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_17.INIT0 = 16'haaaa;
    defparam add_868_add_4_17.INIT1 = 16'h0000;
    defparam add_868_add_4_17.INJECT1_0 = "NO";
    defparam add_868_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i20513_2_lut (.A(Save_ALU), .B(clk_op_enable_119), .Z(n8430)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20513_2_lut.init = 16'h8888;
    CCU2B add_868_add_4_15 (.A0(TmpAddr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30959), .COUT(n30960), .S0(n87[13]), .S1(n87[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_15.INIT0 = 16'haaaa;
    defparam add_868_add_4_15.INIT1 = 16'haaaa;
    defparam add_868_add_4_15.INJECT1_0 = "NO";
    defparam add_868_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i14491_4_lut (.A(n18122), .B(Save_Mux[7]), .C(n7169), .D(n2660), 
            .Z(n17995)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14491_4_lut.init = 16'hc0ca;
    ORCALUT4 i14489_4_lut (.A(n18132), .B(Save_Mux[6]), .C(n7169), .D(n2660), 
            .Z(n17993)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14489_4_lut.init = 16'hc0ca;
    PFUMX i14733 (.BLUT(n798[5]), .ALUT(n29[5]), .C0(n35507), .Z(n18238));
    ORCALUT4 i3_3_lut_4_lut (.A(n38528), .B(n38529), .C(n34151), .D(n38517), 
            .Z(n8_adj_1949)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i14483_4_lut (.A(n18124), .B(Save_Mux[5]), .C(n7169), .D(n2660), 
            .Z(n17987)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14483_4_lut.init = 16'hc0ca;
    ORCALUT4 i3_3_lut_4_lut_adj_625 (.A(n38528), .B(n38529), .C(n38616), 
            .D(n34151), .Z(n8_adj_1925)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i3_3_lut_4_lut_adj_625.init = 16'h0e00;
    CCU2B add_868_add_4_13 (.A0(TmpAddr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30958), .COUT(n30959), .S0(n87[11]), .S1(n87[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_13.INIT0 = 16'haaaa;
    defparam add_868_add_4_13.INIT1 = 16'haaaa;
    defparam add_868_add_4_13.INJECT1_0 = "NO";
    defparam add_868_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i14481_4_lut (.A(n18130), .B(Save_Mux[4]), .C(n7169), .D(n2660), 
            .Z(n17985)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14481_4_lut.init = 16'hc0ca;
    ORCALUT4 i14479_4_lut (.A(n18128), .B(Save_Mux[3]), .C(n7169), .D(n2660), 
            .Z(n17983)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14479_4_lut.init = 16'hc0ca;
    ORCALUT4 Save_Mux_7__I_0_i4_3_lut (.A(Save_Mux_7__N_537[3]), .B(BusB[3]), 
            .C(ExchangeRp), .Z(Save_Mux[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i4_3_lut (.A(di_reg[3]), .B(ALU_Q[3]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_537[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i14477_4_lut (.A(n18126), .B(Save_Mux[2]), .C(n7169), .D(n2660), 
            .Z(n17981)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14477_4_lut.init = 16'hc0ca;
    ORCALUT4 i14471_4_lut (.A(n18101), .B(Save_Mux[1]), .C(n7169), .D(n2660), 
            .Z(n17975)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14471_4_lut.init = 16'hc0ca;
    ORCALUT4 Q_7__N_1621_0__bdd_4_lut_35303 (.A(Q_7__N_1621[0]), .B(n23611), 
            .C(Q_7__N_1580), .D(ALU_Op_r[3]), .Z(n39063)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1621_0__bdd_4_lut_35303.init = 16'hc0aa;
    PFUMX i14711 (.BLUT(n1177[1]), .ALUT(n1187[1]), .C0(n35485), .Z(n18216));
    ORCALUT4 i20132_2_lut (.A(\tstate[2] ), .B(last_tstate), .Z(n18163)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20132_2_lut.init = 16'h2222;
    ORCALUT4 i20131_2_lut (.A(ts[3]), .B(last_tstate), .Z(n18161)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20131_2_lut.init = 16'h2222;
    ORCALUT4 i33295_4_lut (.A(n38749), .B(n4_adj_1995), .C(mc[4]), .D(mc[3]), 
            .Z(n34891)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;
    defparam i33295_4_lut.init = 16'h333b;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_626 (.A(n38532), .B(n40878), .C(n33872), 
            .D(n38517), .Z(n7)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_626.init = 16'he000;
    CCU2B add_868_add_4_11 (.A0(TmpAddr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30957), .COUT(n30958), .S0(n87[9]), .S1(n87[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_11.INIT0 = 16'haaaa;
    defparam add_868_add_4_11.INIT1 = 16'haaaa;
    defparam add_868_add_4_11.INJECT1_0 = "NO";
    defparam add_868_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(n38740), .B(IncDecZ), .C(n38772), 
            .D(n38531), .Z(n4_adj_1984)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0040;
    ORCALUT4 i20_3_lut_4_lut_4_lut (.A(n38740), .B(Halt_FF), .C(n38652), 
            .D(n4_adj_1964), .Z(n7_adj_1975)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i20_3_lut_4_lut_4_lut.init = 16'hc5c0;
    ORCALUT4 i20757_3_lut_rep_436_4_lut_4_lut (.A(n38740), .B(n38578), .C(n38462), 
            .D(n4_adj_1964), .Z(n38415)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i20757_3_lut_rep_436_4_lut_4_lut.init = 16'h5551;
    PFUMX i14737 (.BLUT(n798[3]), .ALUT(n29[3]), .C0(n35507), .Z(n18242));
    ORCALUT4 PC16_B_15__I_0_i6_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[5]), .D(JumpE_N_1521), .Z(PC16_B[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i10006_3_lut_rep_478_4_lut (.A(n38740), .B(n38563), .C(ts[3]), 
            .D(ts[4]), .Z(n38457)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i10006_3_lut_rep_478_4_lut.init = 16'h1110;
    PFUMX i14735 (.BLUT(n798[4]), .ALUT(n29[4]), .C0(n35507), .Z(n18240));
    ORCALUT4 i1_3_lut_rep_424 (.A(Read_To_Reg_r[0]), .B(n33977), .C(n33756), 
            .Z(n38403)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_424.init = 16'hecec;
    PFUMX i31868 (.BLUT(n35409), .ALUT(n35410), .C0(\ISet[1] ), .Z(n20121));
    ORCALUT4 i20849_2_lut_rep_431_4_lut_4_lut (.A(n38740), .B(Jump), .C(n38578), 
            .D(n38430), .Z(n38410)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;
    defparam i20849_2_lut_rep_431_4_lut_4_lut.init = 16'hddcd;
    ORCALUT4 PC16_B_15__I_0_i2_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[1]), .D(JumpE_N_1521), .Z(PC16_B[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i3_4_lut_4_lut_adj_627 (.A(n38740), .B(n24612), .C(n33759), 
            .D(n38652), .Z(ISet_1__N_655[1])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_4_lut_adj_627.init = 16'h1000;
    ORCALUT4 PC16_B_15__I_0_i1_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[0]), .D(JumpE_N_1521), .Z(PC16_B[0])) /* synthesis lut_function=(!(A (B)+!A !(B (C (D))+!B (C+!(D))))) */ ;
    defparam PC16_B_15__I_0_i1_3_lut_4_lut_4_lut.init = 16'h7233;
    ORCALUT4 i5_4_lut_adj_628 (.A(I[0]), .B(I[1]), .C(I[3]), .D(I[2]), 
            .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i5_4_lut_adj_628.init = 16'hfffe;
    ORCALUT4 PC16_B_15__I_0_i3_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[2]), .D(JumpE_N_1521), .Z(PC16_B[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i6_4_lut_adj_629 (.A(I[7]), .B(I[4]), .C(I[5]), .D(I[6]), 
            .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i6_4_lut_adj_629.init = 16'hfffe;
    ORCALUT4 mux_276_i7_4_lut (.A(F_Out[6]), .B(n13_adj_1996), .C(n1165), 
            .D(n14_adj_1997), .Z(n1154[6])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i7_4_lut.init = 16'h0a3a;
    ORCALUT4 i20524_rep_3_2_lut_3_lut_4_lut (.A(n38740), .B(n38563), .C(RegAddrB_r[1]), 
            .D(ts[3]), .Z(RegAddrB[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20524_rep_3_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 i5_4_lut_adj_630 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_1996)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i5_4_lut_adj_630.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_631 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_1997)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i6_4_lut_adj_631.init = 16'hfffe;
    ORCALUT4 i11199_4_lut_4_lut (.A(n38740), .B(n33939), .C(n9811), .D(n38753), 
            .Z(n14342)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11199_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i33142_3_lut (.A(n38444), .B(n1165), .C(n38445), .Z(n35480)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33142_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_adj_632 (.A(ID16[0]), .B(ID16[10]), .Z(n17_adj_1971)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i1_2_lut_adj_632.init = 16'heeee;
    ORCALUT4 PC16_B_15__I_0_i5_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[4]), .D(JumpE_N_1521), .Z(PC16_B[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i14_4_lut (.A(n27_adj_1998), .B(n23_adj_1999), .C(ID16[4]), 
            .D(ID16[6]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i14_4_lut.init = 16'hfffe;
    ORCALUT4 i11_4_lut (.A(ID16[15]), .B(ID16[7]), .C(ID16[14]), .D(ID16[12]), 
            .Z(n27_adj_1998)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i11_4_lut.init = 16'hfffe;
    ORCALUT4 i7_2_lut (.A(ID16[5]), .B(ID16[13]), .Z(n23_adj_1999)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i7_2_lut.init = 16'heeee;
    ORCALUT4 i10_4_lut (.A(ID16[9]), .B(ID16[3]), .C(ID16[2]), .D(ID16[1]), 
            .Z(n26_adj_1972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i10_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut_adj_633 (.A(ID16[11]), .B(ID16[8]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i2_2_lut_adj_633.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_634 (.A(\tstate[2] ), .B(n6_adj_2000), .C(IncDec_16[0]), 
            .D(n38728), .Z(IncDecZ_N_988)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_634.init = 16'h0c08;
    PFUMX mux_276_i6 (.BLUT(n609), .ALUT(n900[5]), .C0(n35638), .Z(n1154[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_2_lut_rep_441_3_lut_4_lut_4_lut (.A(n38740), .B(n4_adj_1964), 
            .C(n38517), .D(n38581), .Z(n38420)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_2_lut_rep_441_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i2_2_lut_adj_635 (.A(IncDec_16[1]), .B(IncDec_16[2]), .Z(n6_adj_2000)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut_adj_635.init = 16'h4444;
    ORCALUT4 PC16_B_15__I_0_i4_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[3]), .D(JumpE_N_1521), .Z(PC16_B[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 F_Out_7__I_156_4_lut_4_lut (.A(n38740), .B(n14_adj_2001), .C(F[6]), 
            .D(n38778), .Z(F_Out_7__N_1652)) /* synthesis lut_function=(!(A (B+(D))+!A !(C))) */ ;
    defparam F_Out_7__I_156_4_lut_4_lut.init = 16'h5072;
    ORCALUT4 i32786_3_lut_4_lut_4_lut (.A(n38740), .B(n10976), .C(n38616), 
            .D(n33939), .Z(n14340)) /* synthesis lut_function=(A (B)+!A (C+(D))) */ ;
    defparam i32786_3_lut_4_lut_4_lut.init = 16'hddd8;
    PFUMX i34034 (.BLUT(n38140), .ALUT(Save_Mux[3]), .C0(n38444), .Z(F_7__N_683[3]));
    PFUMX i34287 (.BLUT(n39065), .ALUT(n39062), .C0(n35605), .Z(Save_Mux[0]));
    PFUMX i34285 (.BLUT(n1907[0]), .ALUT(n39063), .C0(n38628), .Z(n39064));
    PFUMX i34032 (.BLUT(n38138), .ALUT(F_Out[3]), .C0(n38445), .Z(n38139));
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n38740), .B(n38670), .C(n40872), 
            .D(n38611), .Z(ExchangeRp)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    ORCALUT4 mux_201_i8_4_lut (.A(SP16[7]), .B(RegBusC[7]), .C(n38512), 
            .D(n933), .Z(n855[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i8_4_lut.init = 16'hcac0;
    ORCALUT4 PC16_B_15__I_0_i8_3_lut_4_lut_4_lut (.A(n38740), .B(PC16_B_15__N_580[15]), 
            .C(di_reg[7]), .D(JumpE_N_1521), .Z(PC16_B[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1P3DX IR_i0_i4_rep_814 (.D(n967), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n40905), .Q(n40889)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4_rep_814.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_506_4_lut_4_lut (.A(n38740), .B(n38772), .C(n38614), 
            .D(n38615), .Z(n38485)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_rep_506_4_lut_4_lut.init = 16'h0004;
    ORCALUT4 mux_201_i16_4_lut (.A(SP16[15]), .B(RegBusC[15]), .C(n38512), 
            .D(n933), .Z(n855[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i16_4_lut.init = 16'hcac0;
    PFUMX i18070 (.BLUT(n10106), .ALUT(n1_adj_1940), .C0(n38731), .Z(n21554));
    ORCALUT4 Set_BusB_To_3__bdd_4_lut_34168 (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n35473)) /* synthesis lut_function=((B (C+(D))+!B !(C (D)))+!A) */ ;
    defparam Set_BusB_To_3__bdd_4_lut_34168.init = 16'hdff7;
    ORCALUT4 i20130_2_lut (.A(ts[4]), .B(last_tstate), .Z(n18159)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20130_2_lut.init = 16'h2222;
    ORCALUT4 i1_2_lut_4_lut_4_lut_adj_636 (.A(n38740), .B(Set_Addr_To[2]), 
            .C(n38578), .D(n38430), .Z(n4_adj_1983)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_636.init = 16'h88c8;
    ORCALUT4 i11194_4_lut_4_lut (.A(n38740), .B(n33456), .C(n13_adj_2002), 
            .D(n8245[1]), .Z(n14337)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11194_4_lut_4_lut.init = 16'hfe54;
    FD1P3DX IR_i0_i3_rep_812 (.D(n966), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n40900), .Q(n40887)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3_rep_812.GSR = "ENABLED";
    FD1P3DX IR_i0_i2_rep_810 (.D(n965), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(rst_s), .Q(n40885)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2_rep_810.GSR = "ENABLED";
    FD1P3DX IR_i0_i1_rep_808 (.D(n964), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n40900), .Q(n40883)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1_rep_808.GSR = "ENABLED";
    FD1P3DX tstate_i0_i3_rep_806 (.D(n18163), .SP(clk_op_enable_326), .CK(clk_op), 
            .CD(n40905), .Q(n40881)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3_rep_806.GSR = "ENABLED";
    ORCALUT4 i2_4_lut_adj_637 (.A(mc[6]), .B(NextIs_XY_Fetch), .C(n17330), 
            .D(n38416), .Z(n35011)) /* synthesis lut_function=(!(A (B)+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_637.init = 16'h2322;
    PFUMX i33993 (.BLUT(n38057), .ALUT(n38054), .C0(n35636), .Z(F_7__N_683[5]));
    tv80_reg i_reg (.RegsH_1_3(RegsH_1_3), .clk_op(clk_op), .RegDIH({RegDIH}), 
            .RegsL_0_0(RegsL_0_0), .RegDIL({RegDIL}), .RegsL_0_1(RegsL_0_1), 
            .RegsL_0_6(RegsL_0_6), .RegsH_1_4(RegsH_1_4), .RegsH_5_4(RegsH_5_4), 
            .RegsL_1_0(RegsL_1_0), .RegsH_1_5(RegsH_1_5), .RegsH_3_2(RegsH_3_2), 
            .RegsH_4_7(RegsH_4_7), .RegsL_0_4(RegsL_0_4), .RegsH_2_7(RegsH_2_7), 
            .RegsH_4_1(RegsH_4_1), .RegsL_0_7(RegsL_0_7), .RegsH_5_2(RegsH_5_2), 
            .RegsH_4_6(RegsH_4_6), .RegsL_0_3(RegsL_0_3), .RegsH_5_0(RegsH_5_0), 
            .RegsH_6_6(RegsH_6_6), .RegsH_1_6(RegsH_1_6), .RegsH_4_5(RegsH_4_5), 
            .RegsH_3_5(RegsH_3_5), .RegsH_1_2(RegsH_1_2), .RegAddrC({RegAddrC}), 
            .RegsH_1_1(RegsH_1_1), .RegsH_1_0(RegsH_1_0), .RegsH_3_1(RegsH_3_1), 
            .RegsH_0_7(RegsH_0_7), .RegsH_0_6(RegsH_0_6), .RegsH_0_5(RegsH_0_5), 
            .RegsH_0_4(RegsH_0_4), .RegsH_6_7(RegsH_6_7), .RegsH_7_0(RegsH_7_0), 
            .RegsH_7_1(RegsH_7_1), .RegsH_0_3(RegsH_0_3), .RegsH_5_3(RegsH_5_3), 
            .\RegAddrB[2] (RegAddrB[2]), .RegBusB({RegBusB}), .RegsL_0_5(RegsL_0_5), 
            .RegsH_0_2(RegsH_0_2), .RegsH_3_3(RegsH_3_3), .RegsH_3_4(RegsH_3_4), 
            .RegsH_0_1(RegsH_0_1), .n36045(n36045), .n36046(n36046), .\RegAddrB[1] (RegAddrB[1]), 
            .n36052(n36052), .n36053(n36053), .RegsH_6_0(RegsH_6_0), .RegsH_6_1(RegsH_6_1), 
            .n36054(n36054), .n36055(n36055), .RegsH_6_3(RegsH_6_3), .RegsH_5_5(RegsH_5_5), 
            .RegsH_6_5(RegsH_6_5), .n36059(n36059), .n36060(n36060), .RegsH_5_7(RegsH_5_7), 
            .n36061(n36061), .n36062(n36062), .RegsH_5_6(RegsH_5_6), .RegsH_6_4(RegsH_6_4), 
            .RegsH_6_2(RegsH_6_2), .RegsH_0_0(RegsH_0_0), .n36066(n36066), 
            .n36067(n36067), .RegsH_4_3(RegsH_4_3), .n36068(n36068), .n36069(n36069), 
            .n36073(n36073), .n36074(n36074), .n36075(n36075), .n36076(n36076), 
            .RegsH_4_4(RegsH_4_4), .RegsL_0_2(RegsL_0_2), .RegsH_4_2(RegsH_4_2), 
            .RegsH_3_7(RegsH_3_7), .RegsH_4_0(RegsH_4_0), .RegsH_2_1(RegsH_2_1), 
            .RegsH_3_6(RegsH_3_6), .RegsH_3_0(RegsH_3_0), .n38403(n38403), 
            .RegAddrA({RegAddrA}), .RegsH_7_5(RegsH_7_5), .RegsH_7_2(RegsH_7_2), 
            .RegsH_7_6(RegsH_7_6), .n36080(n36080), .n36081(n36081), .RegsH_7_4(RegsH_7_4), 
            .RegsH_7_3(RegsH_7_3), .RegsH_7_7(RegsH_7_7), .RegsH_1_7(RegsH_1_7), 
            .n36082(n36082), .n36083(n36083), .RegsH_2_0(RegsH_2_0), .n36087(n36087), 
            .n36088(n36088), .RegsH_2_2(RegsH_2_2), .RegsH_2_5(RegsH_2_5), 
            .RegsH_2_6(RegsH_2_6), .RegsH_2_4(RegsH_2_4), .RegsH_2_3(RegsH_2_3), 
            .n36089(n36089), .n36090(n36090), .RegsL_6_6(RegsL_6_6), .RegsL_7_6(RegsL_7_6), 
            .RegsL_4_6(RegsL_4_6), .RegsL_5_6(RegsL_5_6), .RegsL_2_6(RegsL_2_6), 
            .RegsL_3_6(RegsL_3_6), .RegsL_1_6(RegsL_1_6), .RegsL_6_7(RegsL_6_7), 
            .RegsL_7_7(RegsL_7_7), .RegsL_4_7(RegsL_4_7), .RegsL_5_7(RegsL_5_7), 
            .RegsL_2_7(RegsL_2_7), .RegsL_3_7(RegsL_3_7), .RegsL_1_7(RegsL_1_7), 
            .RegsL_6_1(RegsL_6_1), .RegsL_7_1(RegsL_7_1), .RegsL_4_1(RegsL_4_1), 
            .RegsL_5_1(RegsL_5_1), .n36094(n36094), .n36095(n36095), .RegsL_2_1(RegsL_2_1), 
            .RegsL_3_1(RegsL_3_1), .RegsL_1_1(RegsL_1_1), .RegsL_6_0(RegsL_6_0), 
            .RegsL_7_0(RegsL_7_0), .RegsL_4_0(RegsL_4_0), .RegsL_5_0(RegsL_5_0), 
            .RegsL_2_0(RegsL_2_0), .RegsL_3_0(RegsL_3_0), .RegsL_6_2(RegsL_6_2), 
            .RegsL_7_2(RegsL_7_2), .RegsL_4_2(RegsL_4_2), .RegsL_5_2(RegsL_5_2), 
            .RegsL_2_2(RegsL_2_2), .RegsL_3_2(RegsL_3_2), .RegsL_1_2(RegsL_1_2), 
            .RegBusC({RegBusC}), .RegsL_6_5(RegsL_6_5), .RegsL_7_5(RegsL_7_5), 
            .RegsL_4_5(RegsL_4_5), .RegsL_5_5(RegsL_5_5), .RegsL_2_5(RegsL_2_5), 
            .RegsL_3_5(RegsL_3_5), .RegsL_1_5(RegsL_1_5), .RegsL_6_4(RegsL_6_4), 
            .RegsL_7_4(RegsL_7_4), .RegsL_4_4(RegsL_4_4), .RegsL_5_4(RegsL_5_4), 
            .RegsL_2_4(RegsL_2_4), .RegsL_3_4(RegsL_3_4), .RegsL_1_4(RegsL_1_4), 
            .RegsL_6_3(RegsL_6_3), .RegsL_7_3(RegsL_7_3), .RegsL_4_3(RegsL_4_3), 
            .RegsL_5_3(RegsL_5_3), .RegsL_2_3(RegsL_2_3), .RegsL_3_3(RegsL_3_3), 
            .RegsL_1_3(RegsL_1_3), .RegsH_5_1(RegsH_5_1), .n36096(n36096), 
            .n36097(n36097), .n38400(n38400), .n36101(n36101), .n36102(n36102), 
            .n36103(n36103), .n36104(n36104), .n36047(n36047), .n36048(n36048), 
            .n35996(n35996), .n35997(n35997), .n35998(n35998), .n35999(n35999), 
            .n36003(n36003), .n36004(n36004), .n36005(n36005), .n36006(n36006), 
            .n36010(n36010), .n36011(n36011), .n36012(n36012), .n36013(n36013), 
            .n36017(n36017), .n36018(n36018), .n36019(n36019), .n36020(n36020), 
            .n36024(n36024), .n36025(n36025), .n36026(n36026), .n36027(n36027), 
            .n36031(n36031), .n36032(n36032), .n36033(n36033), .n36034(n36034), 
            .n36038(n36038), .n36039(n36039), .n36040(n36040), .n36041(n36041), 
            .RegBusA({RegBusA})) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1017[12] 1034[7])
    tv80_mcode i_mcode (.\ALU_Op_3__N_1283[3] (\ALU_Op_3__N_1283[3] ), .n38680(n38680), 
            .n38701(n38701), .n38699(n38699), .n40885(n40885), .n38546(n38546), 
            .n38671(n38671), .\IncDec_16[0] (IncDec_16[0]), .n14337(n14337), 
            .n35681(n35681), .\Set_BusA_To[1] (Set_BusA_To[1]), .n6742({n6742}), 
            .ISet({\ISet[1] , ISet[0]}), .\Set_BusA_To_3__N_1212[2] (Set_BusA_To_3__N_1212[2]), 
            .n6731({n6731}), .\IR[7] (\IR[7] ), .iorq(iorq), .n6830({n6830}), 
            .Save_ALU(Save_ALU), .\mc[2] (mc[2]), .\Set_BusA_To_3__N_1216[0] (Set_BusA_To_3__N_1216[0]), 
            .\IR[4] (IR[4]), .\IR[1] (IR[1]), .n40898(n40898), .\IR[2] (IR[2]), 
            .n31169(n31169), .n38532(n38532), .n38(n38), .\IR[5] (IR[5]), 
            .n38765(n38765), .n34036(n34036), .n40889(n40889), .\IR[6] (IR[6]), 
            .n38531(n38531), .n38666(n38666), .n40893(n40893), .n38729(n38729), 
            .n38767(n38767), .\IR[0] (IR[0]), .\MCycles_2__N_1018[2] (MCycles_2__N_1018[2]), 
            .Read_To_Acc_N_1481(Read_To_Acc_N_1481), .n38693(n38693), .n38688(n38688), 
            .n40872(n40872), .n38739(n38739), .n38576(n38576), .n38566(n38566), 
            .\mc[3] (mc[3]), .n40869(n40869), .n38438(n38438), .n38772(n38772), 
            .n33487(n33487), .n38530(n38530), .n38753(n38753), .n2399(n2399), 
            .n4(n4_adj_1974), .n40887(n40887), .n38578(n38578), .n6808({n6808}), 
            .PreserveC(PreserveC), .n38770(n38770), .n8248(n8245[0]), 
            .n38466(n38466), .n8(n8_adj_1951), .n10(n10_adj_1950), .n40883(n40883), 
            .n38692(n38692), .n38615(n38615), .n40895(n40895), .n10976(n10976), 
            .n38740(n38740), .RegBusC({RegBusC}), .SP16({SP16}), .n2858({n2858}), 
            .\mc[6] (mc[6]), .n38798(n38798), .n38652(n38652), .n933(n933), 
            .n23781(n23781), .n38670(n38670), .n38589(n38589), .\mc[5] (mc[5]), 
            .n40891(n40891), .n38614(n38614), .n38612(n38612), .n38616(n38616), 
            .n38682(n38682), .n38474(n38474), .n38528(n38528), .n38600(n38600), 
            .n24467(n24467), .n38684(n38684), .n40881(n40881), .n38464(n38464), 
            .\mc[4] (mc[4]), .n33647(n33647), .n38581(n38581), .n33792(n33792), 
            .n38529(n38529), .n38624(n38624), .n38593(n38593), .n38565(n38565), 
            .n4_adj_2(n4_adj_1964), .n38430(n38430), .n1030(n1030), .n38488(n38488), 
            .n38611(n38611), .n38672(n38672), .n38425(n38425), .n40878(n40878), 
            .n38577(n38577), .n38574(n38574), .n38761(n38761), .n38737(n38737), 
            .no_read(no_read), .n7(n7_adj_1982), .\BusA[7] (BusA[7]), 
            .\BusA[6] (BusA[6]), .n14329(n14329), .n34252(n34252), .n17198(n17198), 
            .n38756(n38756), .n38766(n38766), .n22(n22), .n34690(n34690), 
            .n38644(n38644), .n35341(n35341), .n38441(n38441), .n38550(n38550), 
            .n26(n26), .n33939(n33939), .n38625(n38625), .n38669(n38669), 
            .Alternate(Alternate), .Alternate_N_913(Alternate_N_913), .n38627(n38627), 
            .n38558(n38558), .n33759(n33759), .\ISet_1__N_655[0] (ISet_1__N_655[0]), 
            .n37319(n37319), .Write_N_1575(Write_N_1575), .n38508(n38508), 
            .n38613(n38613), .n38413(n38413), .n33456(n33456), .n3(n3_adj_1990), 
            .n13(n13_adj_2002), .n35033(n35033), .n38662(n38662), .n10106(n10106), 
            .n38527(n38527), .n38526(n38526), .\ts[4] (ts[4]), .n38452(n38452), 
            .n35182(n35182), .n34537(n34537), .n38455(n38455), .n2(n2_adj_1941), 
            .n38634(n38634), .n38731(n38731), .\F[0] (F[0]), .n31362(n31362), 
            .n35137(n35137), .Read_To_Acc_N_1478(Read_To_Acc_N_1478), .n6(n6_adj_1978), 
            .n37690(n37690), .n37691(n37691), .n38481(n38481), .last_tstate(last_tstate), 
            .n914(n914), .n38658(n38658), .n38744(n38744), .n38460(n38460), 
            .n40897(n40897), .n38402(n38402), .n38620(n38620), .n38660(n38660), 
            .n4_adj_3(n4_adj_1995), .Save_ALU_N_1482(Save_ALU_N_1482), .n19(n19_adj_1959), 
            .n17127(n17127), .n38592(n38592), .n38419(n38419), .n34047(n34047), 
            .\mcycles_d[0] (mcycles_d[0]), .\Special_LD[0] (Special_LD[0]), 
            .n38462(n38462), .n38465(n38465), .n33196(n33196), .n38421(n38421), 
            .\tstate[2] (\tstate[2] ), .n47(n47), .n28(n28), .n957(n957), 
            .n38463(n38463), .n24417(n24417), .n37689(n37689), .n38749(n38749), 
            .clk_op_enable_116(clk_op_enable_116), .n33927(n33927), .n6_adj_4(n6_adj_1936), 
            .n38467(n38467), .JumpE_N_1521(JumpE_N_1521), .Jump_N_1501(Jump_N_1501), 
            .Jump_N_1519(Jump_N_1519), .\F[2] (F[2]), .\F[7] (F[7]), .\ALU_Op_r[1] (ALU_Op_r[1]), 
            .n33821(n33821), .n34013(n34013), .n24071(n24071), .\F[6] (F[6]), 
            .\PC16_B_15__N_580[15] (PC16_B_15__N_580[15]), .n38429(n38429), 
            .n34356(n34356), .n38468(n38468), .n33872(n33872), .n38517(n38517), 
            .n21(n21), .I_BTR(I_BTR), .n38575(n38575), .n38639(n38639), 
            .n24(n24), .n6_adj_5(n6_adj_1981), .n10752(n10752), .\Set_BusA_To[2] (Set_BusA_To[2]), 
            .Read_To_Reg(Read_To_Reg), .n42(n42), .BusB({BusB}), .n38543(n38543), 
            .n8247(n8245[1]), .clk_op_enable_22(clk_op_enable_22), .\Fp[1] (Fp[1]), 
            .n38516(n38516), .n1(n1_adj_1948), .\tstate[1] (tstate[1]), 
            .n38422(n38422), .n38514(n38514), .n17139(n17139), .n3_adj_6(n3_adj_1937), 
            .n34151(n34151), .n58(n58_adj_1968), .n9811(n9811), .\tstates[1] (tstates[1]), 
            .clk_op_enable_83(clk_op_enable_83), .n38443(n38443), .n38427(n38427), 
            .n38570(n38570), .n38515(n38515), .n4_adj_7(n4_adj_1961), 
            .n37072(n37072), .n38480(n38480), .n38705(n38705), .n26_adj_8(n26_adj_1980), 
            .\tstates[2] (tstates[2]), .n38394(n38394), .n38398(n38398), 
            .n2295(n2295), .n253(n253), .n37469(n37469), .n37734(n37734), 
            .clk_op_enable_119(clk_op_enable_119), .n90(n90), .\ALU_Op_3__N_1054[3] (ALU_Op_3__N_1054[3]), 
            .n38563(n38563), .SP({SP}), .ACC({ACC}), .n2048({n2048}), 
            .di_reg({di_reg}), .n38573(n38573), .\Set_Addr_To[2] (Set_Addr_To[2]), 
            .n9(n9_adj_1979), .n17303(n17303), .MCycles_2__N_1104(MCycles_2__N_1104), 
            .n38556(n38556), .n38590(n38590), .n24365(n24365), .n38499(n38499), 
            .n31(n31), .n38431(n38431), .n33918(n33918), .n38511(n38511), 
            .n43(n43_adj_1994), .\Set_BusA_To[3] (Set_BusA_To[3]), .n23616(n23616), 
            .n34312(n34312), .n1_adj_9(n1_adj_1965), .n1165(n1165), .\mcycles_d[1] (mcycles_d[1]), 
            .n31326(n31326), .n34654(n34654), .n34776(n34776), .n38727(n38727), 
            .n23522(n23522), .\Set_BusB_To[1] (Set_BusB_To[1]), .\Set_BusB_To[2] (Set_BusB_To[2]), 
            .\Set_BusB_To[0] (Set_BusB_To[0]), .n21552(n21552), .n36893(n36893), 
            .LDZ(LDZ), .n24357(n24357), .n12(n12_adj_1939), .n8_adj_10(n8_adj_1938), 
            .n38506(n38506), .n38504(n38504), .n33723(n33723), .Auto_Wait_t1(Auto_Wait_t1), 
            .clk_op_enable_326(clk_op_enable_326), .n38784(n38784), .n938(n938), 
            .n38512(n38512), .\Set_Addr_To_2__N_1427[2] (Set_Addr_To_2__N_1427[2]), 
            .n23(n23), .n58_adj_11(n58), .n10_adj_12(n10_adj_1935), .n75(n75_adj_1966), 
            .\Q_7__N_1732[0] (Q_7__N_1732[0]), .n1177({n1177}), .\BusA[1] (BusA[1]), 
            .\BusA[2] (BusA[2]), .\BusA[3] (BusA[3]), .\TStates_2__N_1021[0] (TStates_2__N_1021[0]), 
            .\Set_Addr_To_2__N_1427[1] (Set_Addr_To_2__N_1427[1]), .\IncDec_16_3__N_1026[3] (IncDec_16_3__N_1026[3]), 
            .n14338(n14338), .n34372(n34372), .n38456(n38456), .Halt_FF(Halt_FF), 
            .n35424(n35424), .n34043(n34043), .n14342(n14342), .n35784(n35784), 
            .\IncDec_16[1] (IncDec_16[1]), .n38816(n38816), .n14340(n14340), 
            .\IncDec_16[2] (IncDec_16[2]), .n32470(n32470), .n32568(n32568), 
            .n32784(n32784)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(220[86] 274[7])
    tv80_alu i_alu (.n35771(n35771), .\ALU_Q[1] (ALU_Q[1]), .\Set_BusA_To_3__N_1216[0] (Set_BusA_To_3__N_1216[0]), 
            .\BusA[6] (BusA[6]), .VCC_net(VCC_net), .\BusA[7] (BusA[7]), 
            .\BusA[4] (BusA[4]), .\BusA[5] (BusA[5]), .\BusA[2] (BusA[2]), 
            .\BusA[3] (BusA[3]), .\F[4] (F[4]), .\BusA[1] (BusA[1]), .n2358({Open_0, 
            Open_1, Open_2, Open_3, Open_4, n2358[2:1], Open_5}), 
            .\F[1] (F[1]), .Q_7__N_1621({Q_7__N_1621}), .F_Out_7__N_1652(F_Out_7__N_1652), 
            .n38722(n38722), .n38770(n38770), .ALU_Op_r({ALU_Op_r}), .BusB({BusB}), 
            .n37734(n37734), .n37735(n37735), .n33821(n33821), .n38721(n38721), 
            .\Q_7__N_1732[0] (Q_7__N_1732[0]), .Q_7__N_1580(Q_7__N_1580), 
            .\IR[5] (IR[5]), .\F[0] (F[0]), .n38625(n38625), .n1913(n1907[2]), 
            .n37730(n37730), .n2375(n2367[0]), .\Q_v[7] (Q_v[7]), .n37984(n37984), 
            .F_Out_7__N_1650(F_Out_7__N_1650), .n6991(n6990[6]), .n12378(n12378), 
            .n14329(n14329), .\Q_7__N_1613[7] (Q_7__N_1613[7]), .n37184(n37184), 
            .n37185(n37185), .n38708(n38708), .n38628(n38628), .n38621(n38621), 
            .n2947(n2943[4]), .n1911(n1907[4]), .n40891(n40891), .\IR[4] (IR[4]), 
            .n38742(n38742), .n38717(n38717), .n40887(n40887), .n40889(n40889), 
            .n38720(n38720), .Save_ALU_r(Save_ALU_r), .n13875(n13875), 
            .\ALU_Q[5] (ALU_Q[5]), .n12389(n12389), .\F_Out[2] (F_Out[2]), 
            .n38631(n38631), .n17(n17_adj_1970), .n4(n4_adj_1958), .\F_Out[6] (F_Out[6]), 
            .n23611(n23611), .n37983(n37983), .n38638(n38638), .n38740(n38740), 
            .n37182(n37182), .n12384(n12384), .n24(n24_adj_1993), .n12382(n12382), 
            .F_Out_7__N_1677(n723[0]), .n38639(n38639), .\Q_7__N_1715[7] (Q_7__N_1715[7]), 
            .n38627(n38627), .n1909(n1907[6]), .n908(n900[0]), .\Save_Mux[0] (Save_Mux[0]), 
            .n38444(n38444), .\F_Out[0] (F_Out[0]), .n37478(n37478), .n37469(n37469), 
            .n37471(n37471), .n38624(n38624), .n1908(n1907[7]), .n1949(n1942[1]), 
            .\ALU_Q[3] (ALU_Q[3]), .n2359(n2358[7]), .n2337(n2334[2]), 
            .n6(n6_adj_1985), .n2360(n2358[6]), .n2944(n2943[7]), .Z16_r(Z16_r), 
            .Arith16_r(Arith16_r), .\F[6] (F[6]), .n38701(n38701), .\F_Out[3] (F_Out[3]), 
            .n1165(n1165), .n38445(n38445), .n4_adj_1(n4_adj_1992), .n38056(n38056), 
            .n38057(n38057), .n36873(n36873), .n9970(n9970), .n38761(n38761), 
            .n2361(n2358[5]), .n38543(n38543), .n1915(n1907[0]), .n14(n14_adj_2001), 
            .n2362(n2358[4]), .n9502(n9502), .n38778(n38778), .n2363(n2358[3]), 
            .n31804(n31804)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(276[84] 288[7])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80_reg
//

module tv80_reg (RegsH_1_3, clk_op, RegDIH, RegsL_0_0, RegDIL, RegsL_0_1, 
            RegsL_0_6, RegsH_1_4, RegsH_5_4, RegsL_1_0, RegsH_1_5, 
            RegsH_3_2, RegsH_4_7, RegsL_0_4, RegsH_2_7, RegsH_4_1, 
            RegsL_0_7, RegsH_5_2, RegsH_4_6, RegsL_0_3, RegsH_5_0, 
            RegsH_6_6, RegsH_1_6, RegsH_4_5, RegsH_3_5, RegsH_1_2, 
            RegAddrC, RegsH_1_1, RegsH_1_0, RegsH_3_1, RegsH_0_7, 
            RegsH_0_6, RegsH_0_5, RegsH_0_4, RegsH_6_7, RegsH_7_0, 
            RegsH_7_1, RegsH_0_3, RegsH_5_3, \RegAddrB[2] , RegBusB, 
            RegsL_0_5, RegsH_0_2, RegsH_3_3, RegsH_3_4, RegsH_0_1, 
            n36045, n36046, \RegAddrB[1] , n36052, n36053, RegsH_6_0, 
            RegsH_6_1, n36054, n36055, RegsH_6_3, RegsH_5_5, RegsH_6_5, 
            n36059, n36060, RegsH_5_7, n36061, n36062, RegsH_5_6, 
            RegsH_6_4, RegsH_6_2, RegsH_0_0, n36066, n36067, RegsH_4_3, 
            n36068, n36069, n36073, n36074, n36075, n36076, RegsH_4_4, 
            RegsL_0_2, RegsH_4_2, RegsH_3_7, RegsH_4_0, RegsH_2_1, 
            RegsH_3_6, RegsH_3_0, n38403, RegAddrA, RegsH_7_5, RegsH_7_2, 
            RegsH_7_6, n36080, n36081, RegsH_7_4, RegsH_7_3, RegsH_7_7, 
            RegsH_1_7, n36082, n36083, RegsH_2_0, n36087, n36088, 
            RegsH_2_2, RegsH_2_5, RegsH_2_6, RegsH_2_4, RegsH_2_3, 
            n36089, n36090, RegsL_6_6, RegsL_7_6, RegsL_4_6, RegsL_5_6, 
            RegsL_2_6, RegsL_3_6, RegsL_1_6, RegsL_6_7, RegsL_7_7, 
            RegsL_4_7, RegsL_5_7, RegsL_2_7, RegsL_3_7, RegsL_1_7, 
            RegsL_6_1, RegsL_7_1, RegsL_4_1, RegsL_5_1, n36094, n36095, 
            RegsL_2_1, RegsL_3_1, RegsL_1_1, RegsL_6_0, RegsL_7_0, 
            RegsL_4_0, RegsL_5_0, RegsL_2_0, RegsL_3_0, RegsL_6_2, 
            RegsL_7_2, RegsL_4_2, RegsL_5_2, RegsL_2_2, RegsL_3_2, 
            RegsL_1_2, RegBusC, RegsL_6_5, RegsL_7_5, RegsL_4_5, RegsL_5_5, 
            RegsL_2_5, RegsL_3_5, RegsL_1_5, RegsL_6_4, RegsL_7_4, 
            RegsL_4_4, RegsL_5_4, RegsL_2_4, RegsL_3_4, RegsL_1_4, 
            RegsL_6_3, RegsL_7_3, RegsL_4_3, RegsL_5_3, RegsL_2_3, 
            RegsL_3_3, RegsL_1_3, RegsH_5_1, n36096, n36097, n38400, 
            n36101, n36102, n36103, n36104, n36047, n36048, n35996, 
            n35997, n35998, n35999, n36003, n36004, n36005, n36006, 
            n36010, n36011, n36012, n36013, n36017, n36018, n36019, 
            n36020, n36024, n36025, n36026, n36027, n36031, n36032, 
            n36033, n36034, n36038, n36039, n36040, n36041, RegBusA) /* synthesis syn_module_defined=1 */ ;
    output RegsH_1_3;
    input clk_op;
    input [7:0]RegDIH;
    output RegsL_0_0;
    input [7:0]RegDIL;
    output RegsL_0_1;
    output RegsL_0_6;
    output RegsH_1_4;
    output RegsH_5_4;
    output RegsL_1_0;
    output RegsH_1_5;
    output RegsH_3_2;
    output RegsH_4_7;
    output RegsL_0_4;
    output RegsH_2_7;
    output RegsH_4_1;
    output RegsL_0_7;
    output RegsH_5_2;
    output RegsH_4_6;
    output RegsL_0_3;
    output RegsH_5_0;
    output RegsH_6_6;
    output RegsH_1_6;
    output RegsH_4_5;
    output RegsH_3_5;
    output RegsH_1_2;
    input [2:0]RegAddrC;
    output RegsH_1_1;
    output RegsH_1_0;
    output RegsH_3_1;
    output RegsH_0_7;
    output RegsH_0_6;
    output RegsH_0_5;
    output RegsH_0_4;
    output RegsH_6_7;
    output RegsH_7_0;
    output RegsH_7_1;
    output RegsH_0_3;
    output RegsH_5_3;
    input \RegAddrB[2] ;
    output [15:0]RegBusB;
    output RegsL_0_5;
    output RegsH_0_2;
    output RegsH_3_3;
    output RegsH_3_4;
    output RegsH_0_1;
    input n36045;
    input n36046;
    input \RegAddrB[1] ;
    input n36052;
    input n36053;
    output RegsH_6_0;
    output RegsH_6_1;
    input n36054;
    input n36055;
    output RegsH_6_3;
    output RegsH_5_5;
    output RegsH_6_5;
    input n36059;
    input n36060;
    output RegsH_5_7;
    input n36061;
    input n36062;
    output RegsH_5_6;
    output RegsH_6_4;
    output RegsH_6_2;
    output RegsH_0_0;
    input n36066;
    input n36067;
    output RegsH_4_3;
    input n36068;
    input n36069;
    input n36073;
    input n36074;
    input n36075;
    input n36076;
    output RegsH_4_4;
    output RegsL_0_2;
    output RegsH_4_2;
    output RegsH_3_7;
    output RegsH_4_0;
    output RegsH_2_1;
    output RegsH_3_6;
    output RegsH_3_0;
    input n38403;
    input [2:0]RegAddrA;
    output RegsH_7_5;
    output RegsH_7_2;
    output RegsH_7_6;
    input n36080;
    input n36081;
    output RegsH_7_4;
    output RegsH_7_3;
    output RegsH_7_7;
    output RegsH_1_7;
    input n36082;
    input n36083;
    output RegsH_2_0;
    input n36087;
    input n36088;
    output RegsH_2_2;
    output RegsH_2_5;
    output RegsH_2_6;
    output RegsH_2_4;
    output RegsH_2_3;
    input n36089;
    input n36090;
    output RegsL_6_6;
    output RegsL_7_6;
    output RegsL_4_6;
    output RegsL_5_6;
    output RegsL_2_6;
    output RegsL_3_6;
    output RegsL_1_6;
    output RegsL_6_7;
    output RegsL_7_7;
    output RegsL_4_7;
    output RegsL_5_7;
    output RegsL_2_7;
    output RegsL_3_7;
    output RegsL_1_7;
    output RegsL_6_1;
    output RegsL_7_1;
    output RegsL_4_1;
    output RegsL_5_1;
    input n36094;
    input n36095;
    output RegsL_2_1;
    output RegsL_3_1;
    output RegsL_1_1;
    output RegsL_6_0;
    output RegsL_7_0;
    output RegsL_4_0;
    output RegsL_5_0;
    output RegsL_2_0;
    output RegsL_3_0;
    output RegsL_6_2;
    output RegsL_7_2;
    output RegsL_4_2;
    output RegsL_5_2;
    output RegsL_2_2;
    output RegsL_3_2;
    output RegsL_1_2;
    output [15:0]RegBusC;
    output RegsL_6_5;
    output RegsL_7_5;
    output RegsL_4_5;
    output RegsL_5_5;
    output RegsL_2_5;
    output RegsL_3_5;
    output RegsL_1_5;
    output RegsL_6_4;
    output RegsL_7_4;
    output RegsL_4_4;
    output RegsL_5_4;
    output RegsL_2_4;
    output RegsL_3_4;
    output RegsL_1_4;
    output RegsL_6_3;
    output RegsL_7_3;
    output RegsL_4_3;
    output RegsL_5_3;
    output RegsL_2_3;
    output RegsL_3_3;
    output RegsL_1_3;
    output RegsH_5_1;
    input n36096;
    input n36097;
    input n38400;
    input n36101;
    input n36102;
    input n36103;
    input n36104;
    input n36047;
    input n36048;
    input n35996;
    input n35997;
    input n35998;
    input n35999;
    input n36003;
    input n36004;
    input n36005;
    input n36006;
    input n36010;
    input n36011;
    input n36012;
    input n36013;
    input n36017;
    input n36018;
    input n36019;
    input n36020;
    input n36024;
    input n36025;
    input n36026;
    input n36027;
    input n36031;
    input n36032;
    input n36033;
    input n36034;
    input n36038;
    input n36039;
    input n36040;
    input n36041;
    output [15:0]RegBusA;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [7:0]n1;
    wire [7:0]n1_adj_1916;
    
    wire n35879, n35880, n35882, n36056, n36057, n36063, n36064, 
        n36070, n36071, n36077, n36078, n36084, n36085, n36091, 
        n36092, n36049, n36050, n36098, n36099, n36105, n36106, 
        n36000, n36001, n36007, n36008, n36014, n36015, n36021, 
        n36022, n36028, n36029, n36035, n36036, n36042, n36043, 
        n35878, n35992, n35991, n35990, n35989, n35985, n35984, 
        n35983, n35982, n35978, n35977, n35976, n35975, n35971, 
        n35970, n35969, n35968, n35964, n35963, n35962, n35961, 
        n35957, n35956, n35955, n35877, n35954, n35950, n35949, 
        n35948, n35947, n35943, n35942, n35941, n35940, n35936, 
        n35935, n35934, n35933, n36112, n36113, n35790, n35791, 
        n36119, n36120, n35797, n35798, n35804, n35805, n35811, 
        n35812, n35818, n35819, n35929, n35928, n35927, n35926, 
        n35825, n35826, n35832, n35833, n35839, n35840, n35922, 
        n35846, n35847, n35853, n35854, n35860, n35861, n35921, 
        n35867, n35868, n35874, n35875, n35881, n35920, n35919, 
        n35915, n35914, n35913, n35912, n35908, n35907, n35906, 
        n35905, n35901, n35900, n35899, n35898, n36108, n36109, 
        n36110, n36111, n36115, n36116, n36117, n36118, n35894, 
        n35893, n35786, n35787, n35892, n35788, n35789, n35793, 
        n35794, n35795, n35796, n35891, n35887, n35800, n35801, 
        n35886, n35885, n35884, n35802, n35803, n35807, n35808, 
        n35809, n35810, n35814, n35815, n35816, n35817, n35821, 
        n35822, n35823, n35824, n35828, n35829, n35830, n35831, 
        n35835, n35836, n35837, n35838, n35842, n35843, n35844, 
        n35845, n35849, n35850, n35851, n35852, n35856, n35857, 
        n35858, n35859, n35863, n35864, n35873, n35872, n35865, 
        n35866, n35871, n35870, n35888, n35889, n35895, n35896, 
        n35902, n35903, n35909, n35910, n35916, n35917, n35923, 
        n35924, n35930, n35931, n35937, n35938, n35944, n35945, 
        n35951, n35952, n35958, n35959, n35965, n35966, n35972, 
        n35973, n35979, n35980, n35986, n35987, n35993, n35994;
    
    FD1P3AX i65_66 (.D(RegDIH[3]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i65_66.GSR = "ENABLED";
    FD1P3AX i32_33 (.D(RegDIL[0]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i32_33.GSR = "ENABLED";
    FD1P3AX i35_36 (.D(RegDIL[1]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i35_36.GSR = "ENABLED";
    FD1P3AX i50_51 (.D(RegDIL[6]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i50_51.GSR = "ENABLED";
    FD1P3AX i68_69 (.D(RegDIH[4]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i68_69.GSR = "ENABLED";
    FD1P3AX i164_165 (.D(RegDIH[4]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i164_165.GSR = "ENABLED";
    FD1P3AX i56_57 (.D(RegDIL[0]), .SP(n1_adj_1916[1]), .CK(clk_op), .Q(RegsL_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i56_57.GSR = "ENABLED";
    FD1P3AX i71_72 (.D(RegDIH[5]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i71_72.GSR = "ENABLED";
    FD1P3AX i110_111 (.D(RegDIH[2]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i110_111.GSR = "ENABLED";
    FD1P3AX i149_150 (.D(RegDIH[7]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i149_150.GSR = "ENABLED";
    FD1P3AX i44_45 (.D(RegDIL[4]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i44_45.GSR = "ENABLED";
    FD1P3AX i101_102 (.D(RegDIH[7]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i101_102.GSR = "ENABLED";
    FD1P3AX i131_132 (.D(RegDIH[1]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i131_132.GSR = "ENABLED";
    FD1P3AX i53_54 (.D(RegDIL[7]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i53_54.GSR = "ENABLED";
    FD1P3AX i158_159 (.D(RegDIH[2]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i158_159.GSR = "ENABLED";
    FD1P3AX i146_147 (.D(RegDIH[6]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i146_147.GSR = "ENABLED";
    FD1P3AX i41_42 (.D(RegDIL[3]), .SP(n1_adj_1916[0]), .CK(clk_op), .Q(RegsL_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i41_42.GSR = "ENABLED";
    FD1P3AX i152_153 (.D(RegDIH[0]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i152_153.GSR = "ENABLED";
    FD1P3AX i194_195 (.D(RegDIH[6]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i194_195.GSR = "ENABLED";
    FD1P3AX i74_75 (.D(RegDIH[6]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i74_75.GSR = "ENABLED";
    FD1P3AX i143_144 (.D(RegDIH[5]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i143_144.GSR = "ENABLED";
    FD1P3AX i119_120 (.D(RegDIH[5]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i119_120.GSR = "ENABLED";
    FD1P3AX i62_63 (.D(RegDIH[2]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i62_63.GSR = "ENABLED";
    PFUMX i32339 (.BLUT(n35879), .ALUT(n35880), .C0(RegAddrC[1]), .Z(n35882));
    FD1P3AX i59_60 (.D(RegDIH[1]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i59_60.GSR = "ENABLED";
    FD1P3AX i56_57_adj_460 (.D(RegDIH[0]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i56_57_adj_460.GSR = "ENABLED";
    FD1P3AX i107_108 (.D(RegDIH[1]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i107_108.GSR = "ENABLED";
    FD1P3AX i53_54_adj_461 (.D(RegDIH[7]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i53_54_adj_461.GSR = "ENABLED";
    FD1P3AX i50_51_adj_462 (.D(RegDIH[6]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i50_51_adj_462.GSR = "ENABLED";
    FD1P3AX i47_48 (.D(RegDIH[5]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i47_48.GSR = "ENABLED";
    FD1P3AX i44_45_adj_463 (.D(RegDIH[4]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i44_45_adj_463.GSR = "ENABLED";
    FD1P3AX i197_198 (.D(RegDIH[7]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i197_198.GSR = "ENABLED";
    FD1P3AX i200_201 (.D(RegDIH[0]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i200_201.GSR = "ENABLED";
    FD1P3AX i203_204 (.D(RegDIH[1]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i203_204.GSR = "ENABLED";
    FD1P3AX i41_42_adj_464 (.D(RegDIH[3]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i41_42_adj_464.GSR = "ENABLED";
    FD1P3AX i161_162 (.D(RegDIH[3]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i161_162.GSR = "ENABLED";
    L6MUX21 i32515 (.D0(n36056), .D1(n36057), .SD(\RegAddrB[2] ), .Z(RegBusB[6]));
    L6MUX21 i32522 (.D0(n36063), .D1(n36064), .SD(\RegAddrB[2] ), .Z(RegBusB[3]));
    L6MUX21 i32529 (.D0(n36070), .D1(n36071), .SD(\RegAddrB[2] ), .Z(RegBusB[4]));
    L6MUX21 i32536 (.D0(n36077), .D1(n36078), .SD(\RegAddrB[2] ), .Z(RegBusB[5]));
    L6MUX21 i32543 (.D0(n36084), .D1(n36085), .SD(\RegAddrB[2] ), .Z(RegBusB[7]));
    L6MUX21 i32550 (.D0(n36091), .D1(n36092), .SD(\RegAddrB[2] ), .Z(RegBusB[14]));
    L6MUX21 i32508 (.D0(n36049), .D1(n36050), .SD(\RegAddrB[2] ), .Z(RegBusB[8]));
    L6MUX21 i32557 (.D0(n36098), .D1(n36099), .SD(\RegAddrB[2] ), .Z(RegBusB[0]));
    FD1P3AX i47_48_adj_465 (.D(RegDIL[5]), .SP(n1_adj_1916[0]), .CK(clk_op), 
            .Q(RegsL_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i47_48_adj_465.GSR = "ENABLED";
    L6MUX21 i32564 (.D0(n36105), .D1(n36106), .SD(\RegAddrB[2] ), .Z(RegBusB[1]));
    FD1P3AX i38_39 (.D(RegDIH[2]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i38_39.GSR = "ENABLED";
    FD1P3AX i113_114 (.D(RegDIH[3]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i113_114.GSR = "ENABLED";
    L6MUX21 i32459 (.D0(n36000), .D1(n36001), .SD(\RegAddrB[2] ), .Z(RegBusB[2]));
    L6MUX21 i32466 (.D0(n36007), .D1(n36008), .SD(\RegAddrB[2] ), .Z(RegBusB[13]));
    L6MUX21 i32473 (.D0(n36014), .D1(n36015), .SD(\RegAddrB[2] ), .Z(RegBusB[15]));
    FD1P3AX i116_117 (.D(RegDIH[4]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i116_117.GSR = "ENABLED";
    L6MUX21 i32480 (.D0(n36021), .D1(n36022), .SD(\RegAddrB[2] ), .Z(RegBusB[12]));
    L6MUX21 i32487 (.D0(n36028), .D1(n36029), .SD(\RegAddrB[2] ), .Z(RegBusB[11]));
    FD1P3AX i35_36_adj_466 (.D(RegDIH[1]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i35_36_adj_466.GSR = "ENABLED";
    L6MUX21 i32494 (.D0(n36035), .D1(n36036), .SD(\RegAddrB[2] ), .Z(RegBusB[10]));
    L6MUX21 i32501 (.D0(n36042), .D1(n36043), .SD(\RegAddrB[2] ), .Z(RegBusB[9]));
    PFUMX i32506 (.BLUT(n36045), .ALUT(n36046), .C0(\RegAddrB[1] ), .Z(n36049));
    PFUMX i32513 (.BLUT(n36052), .ALUT(n36053), .C0(\RegAddrB[1] ), .Z(n36056));
    FD1P3AX i176_177 (.D(RegDIH[0]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i176_177.GSR = "ENABLED";
    FD1P3AX i179_180 (.D(RegDIH[1]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i179_180.GSR = "ENABLED";
    PFUMX i32514 (.BLUT(n36054), .ALUT(n36055), .C0(\RegAddrB[1] ), .Z(n36057));
    FD1P3AX i185_186 (.D(RegDIH[3]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i185_186.GSR = "ENABLED";
    FD1P3AX i167_168 (.D(RegDIH[5]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i167_168.GSR = "ENABLED";
    FD1P3AX i191_192 (.D(RegDIH[5]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i191_192.GSR = "ENABLED";
    PFUMX i32520 (.BLUT(n36059), .ALUT(n36060), .C0(\RegAddrB[1] ), .Z(n36063));
    FD1P3AX i173_174 (.D(RegDIH[7]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i173_174.GSR = "ENABLED";
    PFUMX i32521 (.BLUT(n36061), .ALUT(n36062), .C0(\RegAddrB[1] ), .Z(n36064));
    FD1P3AX i170_171 (.D(RegDIH[6]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i170_171.GSR = "ENABLED";
    FD1P3AX i188_189 (.D(RegDIH[4]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i188_189.GSR = "ENABLED";
    FD1P3AX i182_183 (.D(RegDIH[2]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i182_183.GSR = "ENABLED";
    FD1P3AX i32_33_adj_467 (.D(RegDIH[0]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i32_33_adj_467.GSR = "ENABLED";
    PFUMX i32527 (.BLUT(n36066), .ALUT(n36067), .C0(\RegAddrB[1] ), .Z(n36070));
    FD1P3AX i137_138 (.D(RegDIH[3]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i137_138.GSR = "ENABLED";
    PFUMX i32528 (.BLUT(n36068), .ALUT(n36069), .C0(\RegAddrB[1] ), .Z(n36071));
    PFUMX i32534 (.BLUT(n36073), .ALUT(n36074), .C0(\RegAddrB[1] ), .Z(n36077));
    PFUMX i32535 (.BLUT(n36075), .ALUT(n36076), .C0(\RegAddrB[1] ), .Z(n36078));
    FD1P3AX i140_141 (.D(RegDIH[4]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i140_141.GSR = "ENABLED";
    FD1P3AX i38_39_adj_468 (.D(RegDIL[2]), .SP(n1_adj_1916[0]), .CK(clk_op), 
            .Q(RegsL_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i38_39_adj_468.GSR = "ENABLED";
    FD1P3AX i134_135 (.D(RegDIH[2]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i134_135.GSR = "ENABLED";
    FD1P3AX i125_126 (.D(RegDIH[7]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i125_126.GSR = "ENABLED";
    FD1P3AX i128_129 (.D(RegDIH[0]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i128_129.GSR = "ENABLED";
    ORCALUT4 i32335_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrC[0]), 
            .Z(n35878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32335_3_lut.init = 16'hcaca;
    FD1P3AX i122_123 (.D(RegDIH[6]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i122_123.GSR = "ENABLED";
    FD1P3AX i104_105 (.D(RegDIH[0]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i104_105.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n38403), .B(RegAddrA[0]), .C(RegAddrA[2]), 
            .D(RegAddrA[1]), .Z(n1_adj_1916[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_469 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1_adj_1916[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_469.init = 16'h0200;
    FD1P3AX i215_216 (.D(RegDIH[5]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i215_216.GSR = "ENABLED";
    FD1P3AX i206_207 (.D(RegDIH[2]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i206_207.GSR = "ENABLED";
    FD1P3AX i218_219 (.D(RegDIH[6]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i218_219.GSR = "ENABLED";
    PFUMX i32541 (.BLUT(n36080), .ALUT(n36081), .C0(\RegAddrB[1] ), .Z(n36084));
    FD1P3AX i212_213 (.D(RegDIH[4]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i212_213.GSR = "ENABLED";
    FD1P3AX i209_210 (.D(RegDIH[3]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i209_210.GSR = "ENABLED";
    FD1P3AX i221_222 (.D(RegDIH[7]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i221_222.GSR = "ENABLED";
    FD1P3AX i77_78 (.D(RegDIH[7]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i77_78.GSR = "ENABLED";
    PFUMX i32542 (.BLUT(n36082), .ALUT(n36083), .C0(\RegAddrB[1] ), .Z(n36085));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_470 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1916[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_470.init = 16'h0200;
    FD1P3AX i80_81 (.D(RegDIH[0]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i80_81.GSR = "ENABLED";
    PFUMX i32548 (.BLUT(n36087), .ALUT(n36088), .C0(\RegAddrB[1] ), .Z(n36091));
    FD1P3AX i86_87 (.D(RegDIH[2]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i86_87.GSR = "ENABLED";
    FD1P3AX i95_96 (.D(RegDIH[5]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i95_96.GSR = "ENABLED";
    FD1P3AX i98_99 (.D(RegDIH[6]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i98_99.GSR = "ENABLED";
    FD1P3AX i92_93 (.D(RegDIH[4]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i92_93.GSR = "ENABLED";
    FD1P3AX i89_90 (.D(RegDIH[3]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i89_90.GSR = "ENABLED";
    ORCALUT4 i32449_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrA[0]), 
            .Z(n35992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32449_3_lut.init = 16'hcaca;
    ORCALUT4 i32448_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrA[0]), 
            .Z(n35991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32448_3_lut.init = 16'hcaca;
    FD1P3AX i83_84 (.D(RegDIH[1]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i83_84.GSR = "ENABLED";
    PFUMX i32549 (.BLUT(n36089), .ALUT(n36090), .C0(\RegAddrB[1] ), .Z(n36092));
    ORCALUT4 i32447_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrA[0]), 
            .Z(n35990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32447_3_lut.init = 16'hcaca;
    ORCALUT4 i32446_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrA[0]), 
            .Z(n35989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32446_3_lut.init = 16'hcaca;
    ORCALUT4 i32442_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrA[0]), 
            .Z(n35985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32442_3_lut.init = 16'hcaca;
    ORCALUT4 i32441_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrA[0]), 
            .Z(n35984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32441_3_lut.init = 16'hcaca;
    ORCALUT4 i32440_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrA[0]), 
            .Z(n35983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32440_3_lut.init = 16'hcaca;
    ORCALUT4 i32439_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrA[0]), 
            .Z(n35982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32439_3_lut.init = 16'hcaca;
    ORCALUT4 i32435_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrA[0]), 
            .Z(n35978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32435_3_lut.init = 16'hcaca;
    ORCALUT4 i32434_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrA[0]), 
            .Z(n35977)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32434_3_lut.init = 16'hcaca;
    ORCALUT4 i32433_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrA[0]), 
            .Z(n35976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32433_3_lut.init = 16'hcaca;
    ORCALUT4 i32432_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrA[0]), 
            .Z(n35975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32432_3_lut.init = 16'hcaca;
    ORCALUT4 i32428_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrA[0]), 
            .Z(n35971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32428_3_lut.init = 16'hcaca;
    ORCALUT4 i32427_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrA[0]), 
            .Z(n35970)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32427_3_lut.init = 16'hcaca;
    ORCALUT4 i32426_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrA[0]), 
            .Z(n35969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32426_3_lut.init = 16'hcaca;
    ORCALUT4 i32425_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrA[0]), 
            .Z(n35968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32425_3_lut.init = 16'hcaca;
    ORCALUT4 i32421_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrA[0]), 
            .Z(n35964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32421_3_lut.init = 16'hcaca;
    ORCALUT4 i32420_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrA[0]), 
            .Z(n35963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32420_3_lut.init = 16'hcaca;
    ORCALUT4 i32419_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrA[0]), 
            .Z(n35962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32419_3_lut.init = 16'hcaca;
    ORCALUT4 i32418_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrA[0]), 
            .Z(n35961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32418_3_lut.init = 16'hcaca;
    ORCALUT4 i32414_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrA[0]), 
            .Z(n35957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32414_3_lut.init = 16'hcaca;
    ORCALUT4 i32413_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrA[0]), 
            .Z(n35956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32413_3_lut.init = 16'hcaca;
    ORCALUT4 i32412_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrA[0]), 
            .Z(n35955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32412_3_lut.init = 16'hcaca;
    ORCALUT4 i32334_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrC[0]), 
            .Z(n35877)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32334_3_lut.init = 16'hcaca;
    ORCALUT4 i32411_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrA[0]), 
            .Z(n35954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32411_3_lut.init = 16'hcaca;
    ORCALUT4 i32407_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrA[0]), 
            .Z(n35950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32407_3_lut.init = 16'hcaca;
    ORCALUT4 i32406_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrA[0]), 
            .Z(n35949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32406_3_lut.init = 16'hcaca;
    PFUMX i32555 (.BLUT(n36094), .ALUT(n36095), .C0(\RegAddrB[1] ), .Z(n36098));
    ORCALUT4 i32405_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrA[0]), 
            .Z(n35948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32405_3_lut.init = 16'hcaca;
    ORCALUT4 i32404_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrA[0]), 
            .Z(n35947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32404_3_lut.init = 16'hcaca;
    ORCALUT4 i32400_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrA[0]), 
            .Z(n35943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32400_3_lut.init = 16'hcaca;
    ORCALUT4 i32399_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrA[0]), 
            .Z(n35942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32399_3_lut.init = 16'hcaca;
    ORCALUT4 i32398_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrA[0]), 
            .Z(n35941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32398_3_lut.init = 16'hcaca;
    ORCALUT4 i32397_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrA[0]), 
            .Z(n35940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32397_3_lut.init = 16'hcaca;
    ORCALUT4 i32393_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrA[0]), 
            .Z(n35936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32393_3_lut.init = 16'hcaca;
    ORCALUT4 i32392_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrA[0]), 
            .Z(n35935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32392_3_lut.init = 16'hcaca;
    ORCALUT4 i32391_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrA[0]), 
            .Z(n35934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32391_3_lut.init = 16'hcaca;
    ORCALUT4 i32390_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrA[0]), 
            .Z(n35933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32390_3_lut.init = 16'hcaca;
    L6MUX21 i32571 (.D0(n36112), .D1(n36113), .SD(RegAddrC[2]), .Z(RegBusC[5]));
    L6MUX21 i32249 (.D0(n35790), .D1(n35791), .SD(RegAddrC[2]), .Z(RegBusC[2]));
    L6MUX21 i32578 (.D0(n36119), .D1(n36120), .SD(RegAddrC[2]), .Z(RegBusC[3]));
    L6MUX21 i32256 (.D0(n35797), .D1(n35798), .SD(RegAddrC[2]), .Z(RegBusC[15]));
    L6MUX21 i32263 (.D0(n35804), .D1(n35805), .SD(RegAddrC[2]), .Z(RegBusC[14]));
    L6MUX21 i32270 (.D0(n35811), .D1(n35812), .SD(RegAddrC[2]), .Z(RegBusC[13]));
    L6MUX21 i32277 (.D0(n35818), .D1(n35819), .SD(RegAddrC[2]), .Z(RegBusC[12]));
    ORCALUT4 i32386_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrA[0]), 
            .Z(n35929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32386_3_lut.init = 16'hcaca;
    ORCALUT4 i32385_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrA[0]), 
            .Z(n35928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32385_3_lut.init = 16'hcaca;
    ORCALUT4 i32384_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrA[0]), 
            .Z(n35927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32384_3_lut.init = 16'hcaca;
    ORCALUT4 i32383_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrA[0]), 
            .Z(n35926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32383_3_lut.init = 16'hcaca;
    L6MUX21 i32284 (.D0(n35825), .D1(n35826), .SD(RegAddrC[2]), .Z(RegBusC[1]));
    L6MUX21 i32291 (.D0(n35832), .D1(n35833), .SD(RegAddrC[2]), .Z(RegBusC[0]));
    L6MUX21 i32298 (.D0(n35839), .D1(n35840), .SD(RegAddrC[2]), .Z(RegBusC[11]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_471 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1916[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_471.init = 16'h2000;
    ORCALUT4 i32379_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrA[0]), 
            .Z(n35922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32379_3_lut.init = 16'hcaca;
    L6MUX21 i32305 (.D0(n35846), .D1(n35847), .SD(RegAddrC[2]), .Z(RegBusC[10]));
    L6MUX21 i32312 (.D0(n35853), .D1(n35854), .SD(RegAddrC[2]), .Z(RegBusC[4]));
    L6MUX21 i32319 (.D0(n35860), .D1(n35861), .SD(RegAddrC[2]), .Z(RegBusC[7]));
    ORCALUT4 i32378_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrA[0]), 
            .Z(n35921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32378_3_lut.init = 16'hcaca;
    L6MUX21 i32326 (.D0(n35867), .D1(n35868), .SD(RegAddrC[2]), .Z(RegBusC[6]));
    L6MUX21 i32333 (.D0(n35874), .D1(n35875), .SD(RegAddrC[2]), .Z(RegBusC[8]));
    L6MUX21 i32340 (.D0(n35881), .D1(n35882), .SD(RegAddrC[2]), .Z(RegBusC[9]));
    ORCALUT4 i32377_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrA[0]), 
            .Z(n35920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32377_3_lut.init = 16'hcaca;
    ORCALUT4 i32376_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrA[0]), 
            .Z(n35919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32376_3_lut.init = 16'hcaca;
    ORCALUT4 i32372_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrA[0]), 
            .Z(n35915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32372_3_lut.init = 16'hcaca;
    ORCALUT4 i32371_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrA[0]), 
            .Z(n35914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32371_3_lut.init = 16'hcaca;
    ORCALUT4 i32370_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrA[0]), 
            .Z(n35913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32370_3_lut.init = 16'hcaca;
    ORCALUT4 i32369_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrA[0]), 
            .Z(n35912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32369_3_lut.init = 16'hcaca;
    ORCALUT4 i32365_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrA[0]), 
            .Z(n35908)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32365_3_lut.init = 16'hcaca;
    ORCALUT4 i32364_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrA[0]), 
            .Z(n35907)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32364_3_lut.init = 16'hcaca;
    ORCALUT4 i32363_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrA[0]), 
            .Z(n35906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32363_3_lut.init = 16'hcaca;
    ORCALUT4 i32362_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrA[0]), 
            .Z(n35905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32362_3_lut.init = 16'hcaca;
    ORCALUT4 i32358_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrA[0]), 
            .Z(n35901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32358_3_lut.init = 16'hcaca;
    FD1P3AX i155_156 (.D(RegDIH[1]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i155_156.GSR = "ENABLED";
    ORCALUT4 i32357_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrA[0]), 
            .Z(n35900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32357_3_lut.init = 16'hcaca;
    ORCALUT4 i32356_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrA[0]), 
            .Z(n35899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32356_3_lut.init = 16'hcaca;
    ORCALUT4 i32355_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrA[0]), 
            .Z(n35898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32355_3_lut.init = 16'hcaca;
    PFUMX i32569 (.BLUT(n36108), .ALUT(n36109), .C0(RegAddrC[1]), .Z(n36112));
    PFUMX i32570 (.BLUT(n36110), .ALUT(n36111), .C0(RegAddrC[1]), .Z(n36113));
    PFUMX i32576 (.BLUT(n36115), .ALUT(n36116), .C0(RegAddrC[1]), .Z(n36119));
    PFUMX i32577 (.BLUT(n36117), .ALUT(n36118), .C0(RegAddrC[1]), .Z(n36120));
    ORCALUT4 i32351_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrA[0]), 
            .Z(n35894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32351_3_lut.init = 16'hcaca;
    ORCALUT4 i32350_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrA[0]), 
            .Z(n35893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32350_3_lut.init = 16'hcaca;
    PFUMX i32247 (.BLUT(n35786), .ALUT(n35787), .C0(RegAddrC[1]), .Z(n35790));
    ORCALUT4 i32349_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrA[0]), 
            .Z(n35892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32349_3_lut.init = 16'hcaca;
    PFUMX i32248 (.BLUT(n35788), .ALUT(n35789), .C0(RegAddrC[1]), .Z(n35791));
    PFUMX i32254 (.BLUT(n35793), .ALUT(n35794), .C0(RegAddrC[1]), .Z(n35797));
    PFUMX i32255 (.BLUT(n35795), .ALUT(n35796), .C0(RegAddrC[1]), .Z(n35798));
    ORCALUT4 i32348_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrA[0]), 
            .Z(n35891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32348_3_lut.init = 16'hcaca;
    ORCALUT4 i32344_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrA[0]), 
            .Z(n35887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32344_3_lut.init = 16'hcaca;
    PFUMX i32261 (.BLUT(n35800), .ALUT(n35801), .C0(RegAddrC[1]), .Z(n35804));
    ORCALUT4 i32343_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrA[0]), 
            .Z(n35886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32343_3_lut.init = 16'hcaca;
    ORCALUT4 i32342_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrA[0]), 
            .Z(n35885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32342_3_lut.init = 16'hcaca;
    PFUMX i32556 (.BLUT(n36096), .ALUT(n36097), .C0(\RegAddrB[1] ), .Z(n36099));
    ORCALUT4 i32341_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrA[0]), 
            .Z(n35884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32341_3_lut.init = 16'hcaca;
    PFUMX i32262 (.BLUT(n35802), .ALUT(n35803), .C0(RegAddrC[1]), .Z(n35805));
    PFUMX i32268 (.BLUT(n35807), .ALUT(n35808), .C0(RegAddrC[1]), .Z(n35811));
    PFUMX i32269 (.BLUT(n35809), .ALUT(n35810), .C0(RegAddrC[1]), .Z(n35812));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_472 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38400), .Z(n1[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_472.init = 16'h8000;
    PFUMX i32275 (.BLUT(n35814), .ALUT(n35815), .C0(RegAddrC[1]), .Z(n35818));
    PFUMX i32276 (.BLUT(n35816), .ALUT(n35817), .C0(RegAddrC[1]), .Z(n35819));
    PFUMX i32282 (.BLUT(n35821), .ALUT(n35822), .C0(RegAddrC[1]), .Z(n35825));
    PFUMX i32283 (.BLUT(n35823), .ALUT(n35824), .C0(RegAddrC[1]), .Z(n35826));
    PFUMX i32562 (.BLUT(n36101), .ALUT(n36102), .C0(\RegAddrB[1] ), .Z(n36105));
    PFUMX i32289 (.BLUT(n35828), .ALUT(n35829), .C0(RegAddrC[1]), .Z(n35832));
    PFUMX i32290 (.BLUT(n35830), .ALUT(n35831), .C0(RegAddrC[1]), .Z(n35833));
    PFUMX i32563 (.BLUT(n36103), .ALUT(n36104), .C0(\RegAddrB[1] ), .Z(n36106));
    PFUMX i32296 (.BLUT(n35835), .ALUT(n35836), .C0(RegAddrC[1]), .Z(n35839));
    PFUMX i32507 (.BLUT(n36047), .ALUT(n36048), .C0(\RegAddrB[1] ), .Z(n36050));
    PFUMX i32457 (.BLUT(n35996), .ALUT(n35997), .C0(\RegAddrB[1] ), .Z(n36000));
    PFUMX i32297 (.BLUT(n35837), .ALUT(n35838), .C0(RegAddrC[1]), .Z(n35840));
    PFUMX i32303 (.BLUT(n35842), .ALUT(n35843), .C0(RegAddrC[1]), .Z(n35846));
    PFUMX i32304 (.BLUT(n35844), .ALUT(n35845), .C0(RegAddrC[1]), .Z(n35847));
    PFUMX i32310 (.BLUT(n35849), .ALUT(n35850), .C0(RegAddrC[1]), .Z(n35853));
    PFUMX i32311 (.BLUT(n35851), .ALUT(n35852), .C0(RegAddrC[1]), .Z(n35854));
    PFUMX i32317 (.BLUT(n35856), .ALUT(n35857), .C0(RegAddrC[1]), .Z(n35860));
    PFUMX i32318 (.BLUT(n35858), .ALUT(n35859), .C0(RegAddrC[1]), .Z(n35861));
    PFUMX i32324 (.BLUT(n35863), .ALUT(n35864), .C0(RegAddrC[1]), .Z(n35867));
    FD1P3AX i221_222_adj_473 (.D(RegDIL[7]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i221_222_adj_473.GSR = "ENABLED";
    FD1P3AX i218_219_adj_474 (.D(RegDIL[6]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i218_219_adj_474.GSR = "ENABLED";
    FD1P3AX i215_216_adj_475 (.D(RegDIL[5]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i215_216_adj_475.GSR = "ENABLED";
    FD1P3AX i212_213_adj_476 (.D(RegDIL[4]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i212_213_adj_476.GSR = "ENABLED";
    FD1P3AX i209_210_adj_477 (.D(RegDIL[3]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i209_210_adj_477.GSR = "ENABLED";
    FD1P3AX i206_207_adj_478 (.D(RegDIL[2]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i206_207_adj_478.GSR = "ENABLED";
    FD1P3AX i203_204_adj_479 (.D(RegDIL[1]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i203_204_adj_479.GSR = "ENABLED";
    FD1P3AX i200_201_adj_480 (.D(RegDIL[0]), .SP(n1_adj_1916[7]), .CK(clk_op), 
            .Q(RegsL_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i200_201_adj_480.GSR = "ENABLED";
    FD1P3AX i197_198_adj_481 (.D(RegDIL[7]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i197_198_adj_481.GSR = "ENABLED";
    FD1P3AX i194_195_adj_482 (.D(RegDIL[6]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i194_195_adj_482.GSR = "ENABLED";
    FD1P3AX i191_192_adj_483 (.D(RegDIL[5]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i191_192_adj_483.GSR = "ENABLED";
    FD1P3AX i188_189_adj_484 (.D(RegDIL[4]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i188_189_adj_484.GSR = "ENABLED";
    FD1P3AX i185_186_adj_485 (.D(RegDIL[3]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i185_186_adj_485.GSR = "ENABLED";
    FD1P3AX i182_183_adj_486 (.D(RegDIL[2]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i182_183_adj_486.GSR = "ENABLED";
    FD1P3AX i179_180_adj_487 (.D(RegDIL[1]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i179_180_adj_487.GSR = "ENABLED";
    FD1P3AX i176_177_adj_488 (.D(RegDIL[0]), .SP(n1_adj_1916[6]), .CK(clk_op), 
            .Q(RegsL_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i176_177_adj_488.GSR = "ENABLED";
    FD1P3AX i173_174_adj_489 (.D(RegDIL[7]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i173_174_adj_489.GSR = "ENABLED";
    FD1P3AX i170_171_adj_490 (.D(RegDIL[6]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i170_171_adj_490.GSR = "ENABLED";
    FD1P3AX i167_168_adj_491 (.D(RegDIL[5]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i167_168_adj_491.GSR = "ENABLED";
    FD1P3AX i164_165_adj_492 (.D(RegDIL[4]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i164_165_adj_492.GSR = "ENABLED";
    FD1P3AX i161_162_adj_493 (.D(RegDIL[3]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i161_162_adj_493.GSR = "ENABLED";
    FD1P3AX i158_159_adj_494 (.D(RegDIL[2]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i158_159_adj_494.GSR = "ENABLED";
    FD1P3AX i155_156_adj_495 (.D(RegDIL[1]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i155_156_adj_495.GSR = "ENABLED";
    FD1P3AX i152_153_adj_496 (.D(RegDIL[0]), .SP(n1_adj_1916[5]), .CK(clk_op), 
            .Q(RegsL_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i152_153_adj_496.GSR = "ENABLED";
    FD1P3AX i149_150_adj_497 (.D(RegDIL[7]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i149_150_adj_497.GSR = "ENABLED";
    FD1P3AX i146_147_adj_498 (.D(RegDIL[6]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i146_147_adj_498.GSR = "ENABLED";
    FD1P3AX i143_144_adj_499 (.D(RegDIL[5]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i143_144_adj_499.GSR = "ENABLED";
    FD1P3AX i140_141_adj_500 (.D(RegDIL[4]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i140_141_adj_500.GSR = "ENABLED";
    FD1P3AX i137_138_adj_501 (.D(RegDIL[3]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i137_138_adj_501.GSR = "ENABLED";
    FD1P3AX i134_135_adj_502 (.D(RegDIL[2]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i134_135_adj_502.GSR = "ENABLED";
    FD1P3AX i131_132_adj_503 (.D(RegDIL[1]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i131_132_adj_503.GSR = "ENABLED";
    FD1P3AX i128_129_adj_504 (.D(RegDIL[0]), .SP(n1_adj_1916[4]), .CK(clk_op), 
            .Q(RegsL_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i128_129_adj_504.GSR = "ENABLED";
    FD1P3AX i125_126_adj_505 (.D(RegDIL[7]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i125_126_adj_505.GSR = "ENABLED";
    FD1P3AX i122_123_adj_506 (.D(RegDIL[6]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i122_123_adj_506.GSR = "ENABLED";
    FD1P3AX i119_120_adj_507 (.D(RegDIL[5]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i119_120_adj_507.GSR = "ENABLED";
    FD1P3AX i116_117_adj_508 (.D(RegDIL[4]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i116_117_adj_508.GSR = "ENABLED";
    FD1P3AX i113_114_adj_509 (.D(RegDIL[3]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i113_114_adj_509.GSR = "ENABLED";
    FD1P3AX i110_111_adj_510 (.D(RegDIL[2]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i110_111_adj_510.GSR = "ENABLED";
    FD1P3AX i107_108_adj_511 (.D(RegDIL[1]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i107_108_adj_511.GSR = "ENABLED";
    FD1P3AX i104_105_adj_512 (.D(RegDIL[0]), .SP(n1_adj_1916[3]), .CK(clk_op), 
            .Q(RegsL_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i104_105_adj_512.GSR = "ENABLED";
    FD1P3AX i101_102_adj_513 (.D(RegDIL[7]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i101_102_adj_513.GSR = "ENABLED";
    FD1P3AX i98_99_adj_514 (.D(RegDIL[6]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i98_99_adj_514.GSR = "ENABLED";
    FD1P3AX i95_96_adj_515 (.D(RegDIL[5]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i95_96_adj_515.GSR = "ENABLED";
    FD1P3AX i92_93_adj_516 (.D(RegDIL[4]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i92_93_adj_516.GSR = "ENABLED";
    FD1P3AX i89_90_adj_517 (.D(RegDIL[3]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i89_90_adj_517.GSR = "ENABLED";
    FD1P3AX i86_87_adj_518 (.D(RegDIL[2]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i86_87_adj_518.GSR = "ENABLED";
    FD1P3AX i83_84_adj_519 (.D(RegDIL[1]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i83_84_adj_519.GSR = "ENABLED";
    FD1P3AX i80_81_adj_520 (.D(RegDIL[0]), .SP(n1_adj_1916[2]), .CK(clk_op), 
            .Q(RegsL_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i80_81_adj_520.GSR = "ENABLED";
    ORCALUT4 i32330_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrC[0]), 
            .Z(n35873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32330_3_lut.init = 16'hcaca;
    FD1P3AX i77_78_adj_521 (.D(RegDIL[7]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i77_78_adj_521.GSR = "ENABLED";
    FD1P3AX i74_75_adj_522 (.D(RegDIL[6]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i74_75_adj_522.GSR = "ENABLED";
    FD1P3AX i71_72_adj_523 (.D(RegDIL[5]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i71_72_adj_523.GSR = "ENABLED";
    FD1P3AX i68_69_adj_524 (.D(RegDIL[4]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i68_69_adj_524.GSR = "ENABLED";
    FD1P3AX i65_66_adj_525 (.D(RegDIL[3]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i65_66_adj_525.GSR = "ENABLED";
    FD1P3AX i62_63_adj_526 (.D(RegDIL[2]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i62_63_adj_526.GSR = "ENABLED";
    ORCALUT4 i32329_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrC[0]), 
            .Z(n35872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32329_3_lut.init = 16'hcaca;
    PFUMX i32325 (.BLUT(n35865), .ALUT(n35866), .C0(RegAddrC[1]), .Z(n35868));
    PFUMX i32458 (.BLUT(n35998), .ALUT(n35999), .C0(\RegAddrB[1] ), .Z(n36001));
    PFUMX i32464 (.BLUT(n36003), .ALUT(n36004), .C0(\RegAddrB[1] ), .Z(n36007));
    PFUMX i32465 (.BLUT(n36005), .ALUT(n36006), .C0(\RegAddrB[1] ), .Z(n36008));
    PFUMX i32471 (.BLUT(n36010), .ALUT(n36011), .C0(\RegAddrB[1] ), .Z(n36014));
    PFUMX i32472 (.BLUT(n36012), .ALUT(n36013), .C0(\RegAddrB[1] ), .Z(n36015));
    PFUMX i32478 (.BLUT(n36017), .ALUT(n36018), .C0(\RegAddrB[1] ), .Z(n36021));
    PFUMX i32479 (.BLUT(n36019), .ALUT(n36020), .C0(\RegAddrB[1] ), .Z(n36022));
    PFUMX i32485 (.BLUT(n36024), .ALUT(n36025), .C0(\RegAddrB[1] ), .Z(n36028));
    PFUMX i32486 (.BLUT(n36026), .ALUT(n36027), .C0(\RegAddrB[1] ), .Z(n36029));
    PFUMX i32492 (.BLUT(n36031), .ALUT(n36032), .C0(\RegAddrB[1] ), .Z(n36035));
    PFUMX i32493 (.BLUT(n36033), .ALUT(n36034), .C0(\RegAddrB[1] ), .Z(n36036));
    PFUMX i32499 (.BLUT(n36038), .ALUT(n36039), .C0(\RegAddrB[1] ), .Z(n36042));
    ORCALUT4 i32328_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrC[0]), 
            .Z(n35871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32328_3_lut.init = 16'hcaca;
    PFUMX i32331 (.BLUT(n35870), .ALUT(n35871), .C0(RegAddrC[1]), .Z(n35874));
    ORCALUT4 i32327_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrC[0]), 
            .Z(n35870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32327_3_lut.init = 16'hcaca;
    PFUMX i32500 (.BLUT(n36040), .ALUT(n36041), .C0(\RegAddrB[1] ), .Z(n36043));
    ORCALUT4 i32323_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrC[0]), 
            .Z(n35866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32323_3_lut.init = 16'hcaca;
    ORCALUT4 i32322_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrC[0]), 
            .Z(n35865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32322_3_lut.init = 16'hcaca;
    ORCALUT4 i32321_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrC[0]), 
            .Z(n35864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32321_3_lut.init = 16'hcaca;
    ORCALUT4 i32320_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrC[0]), 
            .Z(n35863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32320_3_lut.init = 16'hcaca;
    ORCALUT4 i32337_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrC[0]), 
            .Z(n35880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32337_3_lut.init = 16'hcaca;
    ORCALUT4 i32316_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrC[0]), 
            .Z(n35859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32316_3_lut.init = 16'hcaca;
    ORCALUT4 i32315_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrC[0]), 
            .Z(n35858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32315_3_lut.init = 16'hcaca;
    ORCALUT4 i32314_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrC[0]), 
            .Z(n35857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32314_3_lut.init = 16'hcaca;
    ORCALUT4 i32313_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrC[0]), 
            .Z(n35856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32313_3_lut.init = 16'hcaca;
    ORCALUT4 i32309_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrC[0]), 
            .Z(n35852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32309_3_lut.init = 16'hcaca;
    ORCALUT4 i32308_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrC[0]), 
            .Z(n35851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32308_3_lut.init = 16'hcaca;
    ORCALUT4 i32307_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrC[0]), 
            .Z(n35850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32307_3_lut.init = 16'hcaca;
    ORCALUT4 i32306_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrC[0]), 
            .Z(n35849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32306_3_lut.init = 16'hcaca;
    ORCALUT4 i32302_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrC[0]), 
            .Z(n35845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32302_3_lut.init = 16'hcaca;
    ORCALUT4 i32301_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrC[0]), 
            .Z(n35844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32301_3_lut.init = 16'hcaca;
    ORCALUT4 i32300_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrC[0]), 
            .Z(n35843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32300_3_lut.init = 16'hcaca;
    ORCALUT4 i32299_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrC[0]), 
            .Z(n35842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32299_3_lut.init = 16'hcaca;
    ORCALUT4 i32295_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrC[0]), 
            .Z(n35838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32295_3_lut.init = 16'hcaca;
    ORCALUT4 i32294_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrC[0]), 
            .Z(n35837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32294_3_lut.init = 16'hcaca;
    ORCALUT4 i32293_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrC[0]), 
            .Z(n35836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32293_3_lut.init = 16'hcaca;
    ORCALUT4 i32292_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrC[0]), 
            .Z(n35835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32292_3_lut.init = 16'hcaca;
    ORCALUT4 i32288_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrC[0]), 
            .Z(n35831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32288_3_lut.init = 16'hcaca;
    PFUMX i32332 (.BLUT(n35872), .ALUT(n35873), .C0(RegAddrC[1]), .Z(n35875));
    ORCALUT4 i32287_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrC[0]), 
            .Z(n35830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32287_3_lut.init = 16'hcaca;
    ORCALUT4 i32286_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrC[0]), 
            .Z(n35829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32286_3_lut.init = 16'hcaca;
    ORCALUT4 i32285_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrC[0]), 
            .Z(n35828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32285_3_lut.init = 16'hcaca;
    ORCALUT4 i32281_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrC[0]), 
            .Z(n35824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32281_3_lut.init = 16'hcaca;
    ORCALUT4 i32280_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrC[0]), 
            .Z(n35823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32280_3_lut.init = 16'hcaca;
    ORCALUT4 i32279_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrC[0]), 
            .Z(n35822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32279_3_lut.init = 16'hcaca;
    ORCALUT4 i32278_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrC[0]), 
            .Z(n35821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32278_3_lut.init = 16'hcaca;
    ORCALUT4 i32274_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrC[0]), 
            .Z(n35817)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32274_3_lut.init = 16'hcaca;
    ORCALUT4 i32273_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrC[0]), 
            .Z(n35816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32273_3_lut.init = 16'hcaca;
    ORCALUT4 i32272_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrC[0]), 
            .Z(n35815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32272_3_lut.init = 16'hcaca;
    ORCALUT4 i32271_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrC[0]), 
            .Z(n35814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32271_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_527 (.A(n38400), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_527.init = 16'h0002;
    ORCALUT4 i32267_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrC[0]), 
            .Z(n35810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32267_3_lut.init = 16'hcaca;
    ORCALUT4 i32266_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrC[0]), 
            .Z(n35809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32266_3_lut.init = 16'hcaca;
    ORCALUT4 i32265_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrC[0]), 
            .Z(n35808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32265_3_lut.init = 16'hcaca;
    ORCALUT4 i32264_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrC[0]), 
            .Z(n35807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32264_3_lut.init = 16'hcaca;
    ORCALUT4 i32260_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrC[0]), 
            .Z(n35803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32260_3_lut.init = 16'hcaca;
    ORCALUT4 i32259_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrC[0]), 
            .Z(n35802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32259_3_lut.init = 16'hcaca;
    ORCALUT4 i32258_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrC[0]), 
            .Z(n35801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32258_3_lut.init = 16'hcaca;
    ORCALUT4 i32257_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrC[0]), 
            .Z(n35800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32257_3_lut.init = 16'hcaca;
    ORCALUT4 i32253_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrC[0]), 
            .Z(n35796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32253_3_lut.init = 16'hcaca;
    ORCALUT4 i32252_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrC[0]), 
            .Z(n35795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32252_3_lut.init = 16'hcaca;
    ORCALUT4 i32251_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrC[0]), 
            .Z(n35794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32251_3_lut.init = 16'hcaca;
    ORCALUT4 i32250_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrC[0]), 
            .Z(n35793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32250_3_lut.init = 16'hcaca;
    ORCALUT4 i32246_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrC[0]), 
            .Z(n35789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32246_3_lut.init = 16'hcaca;
    ORCALUT4 i32245_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrC[0]), 
            .Z(n35788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32245_3_lut.init = 16'hcaca;
    ORCALUT4 i32244_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrC[0]), 
            .Z(n35787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32244_3_lut.init = 16'hcaca;
    ORCALUT4 i32243_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrC[0]), 
            .Z(n35786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32243_3_lut.init = 16'hcaca;
    ORCALUT4 i32575_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrC[0]), 
            .Z(n36118)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32575_3_lut.init = 16'hcaca;
    ORCALUT4 i32574_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrC[0]), 
            .Z(n36117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32574_3_lut.init = 16'hcaca;
    ORCALUT4 i32573_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrC[0]), 
            .Z(n36116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32573_3_lut.init = 16'hcaca;
    ORCALUT4 i32572_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrC[0]), 
            .Z(n36115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32572_3_lut.init = 16'hcaca;
    ORCALUT4 i32568_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrC[0]), 
            .Z(n36111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32568_3_lut.init = 16'hcaca;
    ORCALUT4 i32567_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrC[0]), 
            .Z(n36110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32567_3_lut.init = 16'hcaca;
    ORCALUT4 i32566_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrC[0]), 
            .Z(n36109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32566_3_lut.init = 16'hcaca;
    ORCALUT4 i32565_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrC[0]), 
            .Z(n36108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32565_3_lut.init = 16'hcaca;
    L6MUX21 i32347 (.D0(n35888), .D1(n35889), .SD(RegAddrA[2]), .Z(RegBusA[13]));
    L6MUX21 i32354 (.D0(n35895), .D1(n35896), .SD(RegAddrA[2]), .Z(RegBusA[9]));
    L6MUX21 i32361 (.D0(n35902), .D1(n35903), .SD(RegAddrA[2]), .Z(RegBusA[8]));
    L6MUX21 i32368 (.D0(n35909), .D1(n35910), .SD(RegAddrA[2]), .Z(RegBusA[10]));
    L6MUX21 i32375 (.D0(n35916), .D1(n35917), .SD(RegAddrA[2]), .Z(RegBusA[3]));
    L6MUX21 i32382 (.D0(n35923), .D1(n35924), .SD(RegAddrA[2]), .Z(RegBusA[4]));
    L6MUX21 i32389 (.D0(n35930), .D1(n35931), .SD(RegAddrA[2]), .Z(RegBusA[5]));
    L6MUX21 i32396 (.D0(n35937), .D1(n35938), .SD(RegAddrA[2]), .Z(RegBusA[2]));
    L6MUX21 i32403 (.D0(n35944), .D1(n35945), .SD(RegAddrA[2]), .Z(RegBusA[0]));
    L6MUX21 i32410 (.D0(n35951), .D1(n35952), .SD(RegAddrA[2]), .Z(RegBusA[1]));
    L6MUX21 i32417 (.D0(n35958), .D1(n35959), .SD(RegAddrA[2]), .Z(RegBusA[12]));
    L6MUX21 i32424 (.D0(n35965), .D1(n35966), .SD(RegAddrA[2]), .Z(RegBusA[11]));
    L6MUX21 i32431 (.D0(n35972), .D1(n35973), .SD(RegAddrA[2]), .Z(RegBusA[7]));
    L6MUX21 i32438 (.D0(n35979), .D1(n35980), .SD(RegAddrA[2]), .Z(RegBusA[15]));
    L6MUX21 i32445 (.D0(n35986), .D1(n35987), .SD(RegAddrA[2]), .Z(RegBusA[6]));
    L6MUX21 i32452 (.D0(n35993), .D1(n35994), .SD(RegAddrA[2]), .Z(RegBusA[14]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_528 (.A(n38400), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_528.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_529 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38400), .Z(n1[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_529.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_530 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38400), .Z(n1[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_530.init = 16'h0200;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_531 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1916[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_531.init = 16'h0008;
    FD1P3AX i59_60_adj_532 (.D(RegDIL[1]), .SP(n1_adj_1916[1]), .CK(clk_op), 
            .Q(RegsL_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i59_60_adj_532.GSR = "ENABLED";
    PFUMX i32338 (.BLUT(n35877), .ALUT(n35878), .C0(RegAddrC[1]), .Z(n35881));
    PFUMX i32345 (.BLUT(n35884), .ALUT(n35885), .C0(RegAddrA[1]), .Z(n35888));
    PFUMX i32346 (.BLUT(n35886), .ALUT(n35887), .C0(RegAddrA[1]), .Z(n35889));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_533 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1916[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_533.init = 16'h0800;
    PFUMX i32352 (.BLUT(n35891), .ALUT(n35892), .C0(RegAddrA[1]), .Z(n35895));
    PFUMX i32353 (.BLUT(n35893), .ALUT(n35894), .C0(RegAddrA[1]), .Z(n35896));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_534 (.A(n38403), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1916[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_534.init = 16'h8000;
    PFUMX i32359 (.BLUT(n35898), .ALUT(n35899), .C0(RegAddrA[1]), .Z(n35902));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_535 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38400), .Z(n1[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_535.init = 16'h2000;
    PFUMX i32360 (.BLUT(n35900), .ALUT(n35901), .C0(RegAddrA[1]), .Z(n35903));
    PFUMX i32366 (.BLUT(n35905), .ALUT(n35906), .C0(RegAddrA[1]), .Z(n35909));
    PFUMX i32367 (.BLUT(n35907), .ALUT(n35908), .C0(RegAddrA[1]), .Z(n35910));
    PFUMX i32373 (.BLUT(n35912), .ALUT(n35913), .C0(RegAddrA[1]), .Z(n35916));
    PFUMX i32374 (.BLUT(n35914), .ALUT(n35915), .C0(RegAddrA[1]), .Z(n35917));
    PFUMX i32380 (.BLUT(n35919), .ALUT(n35920), .C0(RegAddrA[1]), .Z(n35923));
    PFUMX i32381 (.BLUT(n35921), .ALUT(n35922), .C0(RegAddrA[1]), .Z(n35924));
    PFUMX i32387 (.BLUT(n35926), .ALUT(n35927), .C0(RegAddrA[1]), .Z(n35930));
    PFUMX i32388 (.BLUT(n35928), .ALUT(n35929), .C0(RegAddrA[1]), .Z(n35931));
    PFUMX i32394 (.BLUT(n35933), .ALUT(n35934), .C0(RegAddrA[1]), .Z(n35937));
    PFUMX i32395 (.BLUT(n35935), .ALUT(n35936), .C0(RegAddrA[1]), .Z(n35938));
    PFUMX i32401 (.BLUT(n35940), .ALUT(n35941), .C0(RegAddrA[1]), .Z(n35944));
    PFUMX i32402 (.BLUT(n35942), .ALUT(n35943), .C0(RegAddrA[1]), .Z(n35945));
    PFUMX i32408 (.BLUT(n35947), .ALUT(n35948), .C0(RegAddrA[1]), .Z(n35951));
    PFUMX i32409 (.BLUT(n35949), .ALUT(n35950), .C0(RegAddrA[1]), .Z(n35952));
    PFUMX i32415 (.BLUT(n35954), .ALUT(n35955), .C0(RegAddrA[1]), .Z(n35958));
    PFUMX i32416 (.BLUT(n35956), .ALUT(n35957), .C0(RegAddrA[1]), .Z(n35959));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_536 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38400), .Z(n1[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_536.init = 16'h0200;
    PFUMX i32422 (.BLUT(n35961), .ALUT(n35962), .C0(RegAddrA[1]), .Z(n35965));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_537 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38403), .Z(n1_adj_1916[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_537.init = 16'h2000;
    PFUMX i32423 (.BLUT(n35963), .ALUT(n35964), .C0(RegAddrA[1]), .Z(n35966));
    PFUMX i32429 (.BLUT(n35968), .ALUT(n35969), .C0(RegAddrA[1]), .Z(n35972));
    PFUMX i32430 (.BLUT(n35970), .ALUT(n35971), .C0(RegAddrA[1]), .Z(n35973));
    PFUMX i32436 (.BLUT(n35975), .ALUT(n35976), .C0(RegAddrA[1]), .Z(n35979));
    PFUMX i32437 (.BLUT(n35977), .ALUT(n35978), .C0(RegAddrA[1]), .Z(n35980));
    PFUMX i32443 (.BLUT(n35982), .ALUT(n35983), .C0(RegAddrA[1]), .Z(n35986));
    PFUMX i32444 (.BLUT(n35984), .ALUT(n35985), .C0(RegAddrA[1]), .Z(n35987));
    PFUMX i32450 (.BLUT(n35989), .ALUT(n35990), .C0(RegAddrA[1]), .Z(n35993));
    PFUMX i32451 (.BLUT(n35991), .ALUT(n35992), .C0(RegAddrA[1]), .Z(n35994));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_538 (.A(n38400), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_538.init = 16'h0008;
    ORCALUT4 i32336_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrC[0]), 
            .Z(n35879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32336_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module tv80_mcode
//

module tv80_mcode (\ALU_Op_3__N_1283[3] , n38680, n38701, n38699, n40885, 
            n38546, n38671, \IncDec_16[0] , n14337, n35681, \Set_BusA_To[1] , 
            n6742, ISet, \Set_BusA_To_3__N_1212[2] , n6731, \IR[7] , 
            iorq, n6830, Save_ALU, \mc[2] , \Set_BusA_To_3__N_1216[0] , 
            \IR[4] , \IR[1] , n40898, \IR[2] , n31169, n38532, n38, 
            \IR[5] , n38765, n34036, n40889, \IR[6] , n38531, n38666, 
            n40893, n38729, n38767, \IR[0] , \MCycles_2__N_1018[2] , 
            Read_To_Acc_N_1481, n38693, n38688, n40872, n38739, n38576, 
            n38566, \mc[3] , n40869, n38438, n38772, n33487, n38530, 
            n38753, n2399, n4, n40887, n38578, n6808, PreserveC, 
            n38770, n8248, n38466, n8, n10, n40883, n38692, n38615, 
            n40895, n10976, n38740, RegBusC, SP16, n2858, \mc[6] , 
            n38798, n38652, n933, n23781, n38670, n38589, \mc[5] , 
            n40891, n38614, n38612, n38616, n38682, n38474, n38528, 
            n38600, n24467, n38684, n40881, n38464, \mc[4] , n33647, 
            n38581, n33792, n38529, n38624, n38593, n38565, n4_adj_2, 
            n38430, n1030, n38488, n38611, n38672, n38425, n40878, 
            n38577, n38574, n38761, n38737, no_read, n7, \BusA[7] , 
            \BusA[6] , n14329, n34252, n17198, n38756, n38766, n22, 
            n34690, n38644, n35341, n38441, n38550, n26, n33939, 
            n38625, n38669, Alternate, Alternate_N_913, n38627, n38558, 
            n33759, \ISet_1__N_655[0] , n37319, Write_N_1575, n38508, 
            n38613, n38413, n33456, n3, n13, n35033, n38662, n10106, 
            n38527, n38526, \ts[4] , n38452, n35182, n34537, n38455, 
            n2, n38634, n38731, \F[0] , n31362, n35137, Read_To_Acc_N_1478, 
            n6, n37690, n37691, n38481, last_tstate, n914, n38658, 
            n38744, n38460, n40897, n38402, n38620, n38660, n4_adj_3, 
            Save_ALU_N_1482, n19, n17127, n38592, n38419, n34047, 
            \mcycles_d[0] , \Special_LD[0] , n38462, n38465, n33196, 
            n38421, \tstate[2] , n47, n28, n957, n38463, n24417, 
            n37689, n38749, clk_op_enable_116, n33927, n6_adj_4, n38467, 
            JumpE_N_1521, Jump_N_1501, Jump_N_1519, \F[2] , \F[7] , 
            \ALU_Op_r[1] , n33821, n34013, n24071, \F[6] , \PC16_B_15__N_580[15] , 
            n38429, n34356, n38468, n33872, n38517, n21, I_BTR, 
            n38575, n38639, n24, n6_adj_5, n10752, \Set_BusA_To[2] , 
            Read_To_Reg, n42, BusB, n38543, n8247, clk_op_enable_22, 
            \Fp[1] , n38516, n1, \tstate[1] , n38422, n38514, n17139, 
            n3_adj_6, n34151, n58, n9811, \tstates[1] , clk_op_enable_83, 
            n38443, n38427, n38570, n38515, n4_adj_7, n37072, n38480, 
            n38705, n26_adj_8, \tstates[2] , n38394, n38398, n2295, 
            n253, n37469, n37734, clk_op_enable_119, n90, \ALU_Op_3__N_1054[3] , 
            n38563, SP, ACC, n2048, di_reg, n38573, \Set_Addr_To[2] , 
            n9, n17303, MCycles_2__N_1104, n38556, n38590, n24365, 
            n38499, n31, n38431, n33918, n38511, n43, \Set_BusA_To[3] , 
            n23616, n34312, n1_adj_9, n1165, \mcycles_d[1] , n31326, 
            n34654, n34776, n38727, n23522, \Set_BusB_To[1] , \Set_BusB_To[2] , 
            \Set_BusB_To[0] , n21552, n36893, LDZ, n24357, n12, 
            n8_adj_10, n38506, n38504, n33723, Auto_Wait_t1, clk_op_enable_326, 
            n38784, n938, n38512, \Set_Addr_To_2__N_1427[2] , n23, 
            n58_adj_11, n10_adj_12, n75, \Q_7__N_1732[0] , n1177, 
            \BusA[1] , \BusA[2] , \BusA[3] , \TStates_2__N_1021[0] , 
            \Set_Addr_To_2__N_1427[1] , \IncDec_16_3__N_1026[3] , n14338, 
            n34372, n38456, Halt_FF, n35424, n34043, n14342, n35784, 
            \IncDec_16[1] , n38816, n14340, \IncDec_16[2] , n32470, 
            n32568, n32784) /* synthesis syn_module_defined=1 */ ;
    input \ALU_Op_3__N_1283[3] ;
    output n38680;
    output n38701;
    output n38699;
    input n40885;
    output n38546;
    input n38671;
    output \IncDec_16[0] ;
    input n14337;
    input n35681;
    output \Set_BusA_To[1] ;
    input [0:0]n6742;
    input [1:0]ISet;
    input \Set_BusA_To_3__N_1212[2] ;
    output [0:0]n6731;
    input \IR[7] ;
    output iorq;
    input [0:0]n6830;
    output Save_ALU;
    input \mc[2] ;
    input \Set_BusA_To_3__N_1216[0] ;
    input \IR[4] ;
    input \IR[1] ;
    input n40898;
    input \IR[2] ;
    input n31169;
    output n38532;
    output n38;
    input \IR[5] ;
    output n38765;
    output n34036;
    input n40889;
    input \IR[6] ;
    output n38531;
    output n38666;
    input n40893;
    output n38729;
    output n38767;
    input \IR[0] ;
    output \MCycles_2__N_1018[2] ;
    output Read_To_Acc_N_1481;
    output n38693;
    output n38688;
    output n40872;
    output n38739;
    output n38576;
    output n38566;
    input \mc[3] ;
    output n40869;
    output n38438;
    output n38772;
    output n33487;
    output n38530;
    output n38753;
    input n2399;
    output n4;
    input n40887;
    output n38578;
    input [0:0]n6808;
    output PreserveC;
    output n38770;
    output n8248;
    input n38466;
    input n8;
    input n10;
    input n40883;
    output n38692;
    output n38615;
    input n40895;
    output n10976;
    input n38740;
    input [15:0]RegBusC;
    input [15:0]SP16;
    output [15:0]n2858;
    input \mc[6] ;
    output n38798;
    input n38652;
    input n933;
    output n23781;
    output n38670;
    output n38589;
    input \mc[5] ;
    input n40891;
    output n38614;
    output n38612;
    output n38616;
    output n38682;
    output n38474;
    output n38528;
    output n38600;
    output n24467;
    output n38684;
    input n40881;
    output n38464;
    input \mc[4] ;
    output n33647;
    output n38581;
    output n33792;
    output n38529;
    output n38624;
    output n38593;
    output n38565;
    input n4_adj_2;
    output n38430;
    output n1030;
    output n38488;
    output n38611;
    output n38672;
    output n38425;
    output n40878;
    output n38577;
    output n38574;
    output n38761;
    output n38737;
    output no_read;
    output n7;
    input \BusA[7] ;
    input \BusA[6] ;
    output n14329;
    output n34252;
    output n17198;
    output n38756;
    output n38766;
    input n22;
    output n34690;
    output n38644;
    output n35341;
    output n38441;
    output n38550;
    output n26;
    output n33939;
    output n38625;
    output n38669;
    input Alternate;
    output Alternate_N_913;
    output n38627;
    output n38558;
    output n33759;
    output \ISet_1__N_655[0] ;
    output n37319;
    output Write_N_1575;
    output n38508;
    output n38613;
    output n38413;
    input n33456;
    output n3;
    output n13;
    input n35033;
    output n38662;
    output n10106;
    output n38527;
    output n38526;
    input \ts[4] ;
    output n38452;
    input n35182;
    output n34537;
    output n38455;
    output n2;
    output n38634;
    output n38731;
    input \F[0] ;
    output n31362;
    input n35137;
    output Read_To_Acc_N_1478;
    output n6;
    input n37690;
    output n37691;
    output n38481;
    input last_tstate;
    output n914;
    output n38658;
    input n38744;
    output n38460;
    input n40897;
    output n38402;
    output n38620;
    output n38660;
    output n4_adj_3;
    input Save_ALU_N_1482;
    output n19;
    output n17127;
    input n38592;
    output n38419;
    output n34047;
    output \mcycles_d[0] ;
    output \Special_LD[0] ;
    output n38462;
    output n38465;
    output n33196;
    output n38421;
    input \tstate[2] ;
    output n47;
    input n28;
    output n957;
    output n38463;
    output n24417;
    output n37689;
    output n38749;
    output clk_op_enable_116;
    input n33927;
    output n6_adj_4;
    output n38467;
    output JumpE_N_1521;
    output Jump_N_1501;
    output Jump_N_1519;
    input \F[2] ;
    input \F[7] ;
    input \ALU_Op_r[1] ;
    output n33821;
    output n34013;
    input n24071;
    input \F[6] ;
    input \PC16_B_15__N_580[15] ;
    input n38429;
    output n34356;
    output n38468;
    output n33872;
    output n38517;
    output n21;
    output I_BTR;
    output n38575;
    output n38639;
    output n24;
    input n6_adj_5;
    output n10752;
    output \Set_BusA_To[2] ;
    output Read_To_Reg;
    output n42;
    input [7:0]BusB;
    output n38543;
    output n8247;
    output clk_op_enable_22;
    input \Fp[1] ;
    output n38516;
    output n1;
    input \tstate[1] ;
    output n38422;
    output n38514;
    output n17139;
    output n3_adj_6;
    output n34151;
    output n58;
    output n9811;
    output \tstates[1] ;
    output clk_op_enable_83;
    output n38443;
    output n38427;
    output n38570;
    output n38515;
    output n4_adj_7;
    output n37072;
    output n38480;
    input n38705;
    output n26_adj_8;
    output \tstates[2] ;
    input n38394;
    output n38398;
    output n2295;
    output n253;
    output n37469;
    output n37734;
    input clk_op_enable_119;
    output n90;
    output \ALU_Op_3__N_1054[3] ;
    output n38563;
    input [15:0]SP;
    input [7:0]ACC;
    output [15:0]n2048;
    input [7:0]di_reg;
    output n38573;
    input \Set_Addr_To[2] ;
    input n9;
    output n17303;
    output MCycles_2__N_1104;
    output n38556;
    input n38590;
    output n24365;
    output n38499;
    output n31;
    output n38431;
    output n33918;
    output n38511;
    output n43;
    input \Set_BusA_To[3] ;
    output n23616;
    output n34312;
    output n1_adj_9;
    output n1165;
    output \mcycles_d[1] ;
    input n31326;
    output n34654;
    output n34776;
    input n38727;
    output n23522;
    output \Set_BusB_To[1] ;
    output \Set_BusB_To[2] ;
    output \Set_BusB_To[0] ;
    output n21552;
    input n36893;
    output LDZ;
    output n24357;
    output n12;
    output n8_adj_10;
    output n38506;
    output n38504;
    input n33723;
    input Auto_Wait_t1;
    output clk_op_enable_326;
    output n38784;
    output n938;
    output n38512;
    output \Set_Addr_To_2__N_1427[2] ;
    output n23;
    input n58_adj_11;
    output n10_adj_12;
    output n75;
    input \Q_7__N_1732[0] ;
    output [7:0]n1177;
    input \BusA[1] ;
    input \BusA[2] ;
    input \BusA[3] ;
    output \TStates_2__N_1021[0] ;
    output \Set_Addr_To_2__N_1427[1] ;
    output \IncDec_16_3__N_1026[3] ;
    output n14338;
    output n34372;
    output n38456;
    input Halt_FF;
    output n35424;
    output n34043;
    input n14342;
    input n35784;
    output \IncDec_16[1] ;
    output n38816;
    input n14340;
    output \IncDec_16[2] ;
    input n32470;
    input n32568;
    input n32784;
    
    
    wire n38584, n38605, n7946, n38730, n13719;
    wire [3:0]IncDec_16_3__N_1026;
    
    wire n14336, Inc_PC_N_1444, Inc_PC_N_1435, n38428, n38655, n17109, 
        Write_N_1560, Write_N_1571, n38540, n38538, n4_c, n35031, 
        IORQ_N_1493, NoRead_N_1556, NoRead_N_1553;
    wire [0:0]n6797;
    
    wire Save_ALU_N_1484;
    wire [0:0]n5430;
    wire [0:0]n5427;
    
    wire n4472;
    wire [0:0]n5433;
    wire [0:0]n6068;
    wire [0:0]n6065;
    wire [0:0]n6071;
    wire [0:0]n5397;
    wire [0:0]n5394;
    wire [0:0]n5418;
    wire [0:0]n5412;
    
    wire n38799, n38800, n38801, n16907;
    wire [0:0]n6059;
    wire [0:0]n6062;
    
    wire n35544, n15, n33913, n8_c, n15767;
    wire [3:0]Set_BusB_To_3__N_1414;
    
    wire n8_adj_1772, n9_c, n16562, n10965, n33817;
    wire [0:0]n5415;
    
    wire n38741, n38691, n38564, n31727, n4_adj_1773, n34, n6_c, 
        n34108, n38596, n35061, n35318, n11, n24831, n15_adj_1774, 
        n38525, n33525, n38599, n2_c, n16563, n9_adj_1775;
    wire [0:0]n4759;
    wire [0:0]n4756;
    wire [0:0]n4780;
    
    wire n24275, n33740;
    wire [0:0]n4690;
    wire [0:0]n4744;
    
    wire n16, n15720, n4_adj_1776, n38198, n38752, n9_adj_1777, 
        n1881, n38199, n38591, n24_c, n25, n38454;
    wire [3:0]n2405;
    
    wire n2427;
    wire [3:0]n2428;
    
    wire n38555, n15933, n24519, n13_c, n14;
    wire [2:0]MCycles_2__N_1012;
    
    wire n31780, n31781, n31782, n40877, n34758, n14_adj_1779, n10_c, 
        n33222, n40873, n5, n40876, n38774;
    wire [0:0]n5749;
    wire [0:0]n5746;
    
    wire n38436, n38769;
    wire [3:0]n1756;
    wire [3:0]Set_BusA_To_3__N_1370;
    
    wire n5_adj_1780, n12372, PreserveC_N_1489, n38534, n38580, n38585, 
        n38690, n34956;
    wire [2:0]n6984;
    
    wire n5_adj_1781, n8_adj_1782, n34320, n34723, n34328, n24_adj_1783, 
        n35319, n34306, n35163, n4_adj_1784, n38588, n38598, n33846, 
        n33508;
    wire [0:0]n4729;
    wire [0:0]n4699;
    wire [0:0]n4753;
    
    wire n38601;
    wire [0:0]n4118;
    wire [0:0]n4142;
    
    wire n36889, n24673, n38807, n34936;
    wire [2:0]TStates_2__N_1424;
    
    wire n13_adj_1786;
    wire [2:0]TStates_2__N_1421;
    
    wire n8_adj_1788, n38594, n38523, n38609, n15_adj_1789, n33643, 
        n16_adj_1790, n13_adj_1791, n38645, n38683, n38432, n6_adj_1792, 
        n38783, n4_adj_1793, n60, n38498, n33472, n40875, n35062, 
        n35327;
    wire [2:0]n1431;
    
    wire n10_adj_1794, n8_adj_1795, n38657, n38757, n17177, n16_adj_1796, 
        n12_c, n50;
    wire [2:0]TStates_2__N_1418;
    
    wire n38451, n24699, n34532, n13_adj_1797, n35377, n8_adj_1798, 
        n38796, n38797, n11237, n38782, n38510, n38786;
    wire [0:0]n6056;
    
    wire n33280, n38604;
    wire [2:0]Set_Addr_To_2__N_1427;
    wire [2:0]Set_Addr_To_2__N_1058;
    wire [0:0]n4768;
    
    wire n34787, n4764;
    wire [0:0]n4783;
    
    wire n7243;
    wire [0:0]n4121;
    
    wire n33192, n38681, n8_adj_1799, n110, ALU_Op_3__N_1398, n35134, 
        n5_adj_1800, n37441, n6_adj_1801, n92, n38773, n38775, n38640, 
        n38656, n38582, n38586;
    wire [0:0]n6035;
    
    wire n34931, n5_adj_1802, n38706, n38521, n37999, n38685, n38450, 
        n38630, n1_c, n17106, n38793, n38794, n38795, n38579, 
        n38583, n38595, n33771, n38475, n2_adj_1804, n38541, n38542, 
        n18, n20, n17189, n8_adj_1805, n4_adj_1806, n16369;
    wire [0:0]n4774;
    
    wire n36874, n24743, n33837, n35353, n4_adj_1807, n38_adj_1808, 
        n38390, n38675, n31031, n16403, n38791, n4_adj_1809, n38411, 
        n35217, n31777, n33794, n23_c, n38607;
    wire [0:0]n5424;
    
    wire n38486, n38437, n38790;
    wire [0:0]n5391;
    
    wire n31779, n38608, n38674, n34836, n38676, n38479;
    wire [0:0]n6023;
    wire [0:0]n4777;
    
    wire n15_adj_1810, n38561, n5_adj_1811, n23652, n8_adj_1812, n23_adj_1813, 
        n25_adj_1814, n9688, n34318, n12_adj_1815, n38554;
    wire [3:0]ALU_Op_3__N_1267;
    
    wire n38533, n38653, n38477, n38497, n38709, n38679, n4_adj_1816, 
        n38424, n6_adj_1817, n33535, n38537, n33870, n34943, n33871, 
        n10_adj_1818, n38751;
    wire [2:0]MCycles_2__N_1015;
    
    wire n38716, n37439, n33805, n4_adj_1819, n38718, n38641, n38606, 
        n37318, n38758, n38495, n38560, n34203, n38677, n38642, 
        n19_c, n38759, n13_adj_1820, n38200, n36891, n36892, n38667, 
        n38572, n35323, n2_adj_1821, n38507, n9_adj_1822, n5_adj_1823, 
        n6_adj_1824, n34851, n7_adj_1826, n38663, n35331, n38567, 
        n38665, n38654, n38569, n38496, n17124, n38725, n37, n5_adj_1827, 
        n26_adj_1828, n17098, n16_adj_1829, n18_adj_1830;
    wire [0:0]n5409;
    
    wire n4_adj_1831, n33824, n38664, n37438, n37998;
    wire [0:0]n4112;
    
    wire n38447, n38661, n34544, n38733, n35311, n35245, n38597, 
        n38_adj_1834;
    wire [0:0]n6053;
    
    wire n11189, n38668, n38418, n38502, n33451, n38788, n7_adj_1835, 
        n8_adj_1836, n34952, n10_adj_1837, n38738, n5_adj_1838, n37437, 
        n34244, n33672, n40774, n12_adj_1840, n40775, n33766, n40795, 
        n12370, n40796, n24267, n34944, n38469, n35305, n40797, 
        n40794, n38461, n17100, n8_adj_1842, n34960, n38587, n17041, 
        n31065, n38483, n17510, Read_To_Reg_N_1466, n10_adj_1843, 
        n38536, n4_adj_1844, n20_adj_1845, n4_adj_1846, n38746, n38535, 
        n38747, n38503, n33929, n33962, n18_adj_1847, n24094, n34562, 
        n33808, n6_adj_1849, n38494, n33, n38487, n34370, n9_adj_1850, 
        n24465, n3_adj_1851, n8_adj_1852, n38520, n38489, n35130, 
        n38678;
    wire [0:0]n6269;
    
    wire n17373;
    wire [0:0]n6372;
    
    wire n35295, n38754, n5_adj_1853, n31502, n11_adj_1854, n7_adj_1855, 
        n24915, n7_adj_1856, n16398, n38509, n38553, n12486, n38501;
    wire [2:0]n1656;
    wire [0:0]n4539;
    
    wire n34053, n16_adj_1859;
    wire [3:0]Set_BusA_To_3__N_1185;
    
    wire n38622, n8_adj_1860, n34117, n38440, n38423, n38459, n40776, 
        n40773, n40772, n37440;
    wire [0:0]n5743;
    
    wire n7_adj_1861, n7285, n7_adj_1862, n4_adj_1863, n16_adj_1865, 
        n24429, n38442, n38513, n24244, n14_adj_1866, n34638, n1_adj_1867, 
        n63, n38571, n38484, n61, n44, n24755, n8_adj_1871, n10_adj_1872, 
        n33542, n8_adj_1873, n17214, n38551, n5_adj_1874, n38393, 
        n22_adj_1875;
    wire [0:0]n6044;
    
    wire n146, n38792, n17, n16_adj_1876, n33753, n33860, n24535, 
        n24569;
    wire [0:0]n5737;
    
    wire n18_adj_1877, n35367;
    wire [0:0]n4786;
    
    wire n35262, n33991, n23542, n22_adj_1878, n13_adj_1879, n20_adj_1880, 
        n16_adj_1881, n49, n38492, n33859, n5_adj_1883, n38789, 
        n17_adj_1884, n15_adj_1885, n16_adj_1886, n23651;
    wire [0:0]n6381;
    
    wire n14_adj_1887, n10_adj_1888, n24_adj_1889;
    wire [2:0]n894;
    
    wire n35285, n6_adj_1890, n38559, n34576, n6_adj_1891, n71, 
        n5_adj_1892, n6_adj_1893, n31_adj_1894, n35307, n35369, n27, 
        n22_adj_1895, n7_adj_1896, n38453, n22_adj_1897, n17_adj_1898, 
        n24_adj_1899, n12_adj_1900, n8_adj_1902, n4_adj_1903, n10_adj_1904, 
        n6_adj_1905;
    wire [2:0]MCycles_2__N_1174;
    
    wire n35357, n31303;
    wire [3:0]Set_BusB_To_3__N_1042;
    
    wire n12_adj_1906, n8_adj_1907, n9_adj_1908, n34045, n9_adj_1909, 
        n18_adj_1911, n34726;
    
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(n38584), 
            .C(n38605), .D(n38680), .Z(n7946)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i20708_2_lut_rep_567_3_lut_4_lut (.A(n38701), .B(n38699), .C(n38730), 
            .D(n40885), .Z(n38546)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i20708_2_lut_rep_567_3_lut_4_lut.init = 16'hdfff;
    PFUMX i10657 (.BLUT(n13719), .ALUT(IncDec_16_3__N_1026[0]), .C0(n38671), 
          .Z(\IncDec_16[0] ));
    PFUMX mux_1151_i2 (.BLUT(n14336), .ALUT(n14337), .C0(n35681), .Z(\Set_BusA_To[1] ));
    PFUMX mux_4634_i1 (.BLUT(n6742[0]), .ALUT(Inc_PC_N_1444), .C0(ISet[1]), 
          .Z(Inc_PC_N_1435));
    ORCALUT4 i1_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38428), .D(n38655), .Z(n17109)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_4_lut_4_lut.init = 16'h010b;
    PFUMX mux_4622_i1 (.BLUT(Write_N_1560), .ALUT(Write_N_1571), .C0(ISet[0]), 
          .Z(n6731[0]));
    ORCALUT4 i10656_4_lut (.A(\IR[7] ), .B(n38540), .C(n38538), .D(n4_c), 
            .Z(n13719)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i10656_4_lut.init = 16'hc0c5;
    PFUMX mux_4706_i1 (.BLUT(n35031), .ALUT(IORQ_N_1493), .C0(ISet[1]), 
          .Z(iorq));
    PFUMX mux_4698_i1 (.BLUT(n6830[0]), .ALUT(NoRead_N_1556), .C0(ISet[1]), 
          .Z(NoRead_N_1553));
    PFUMX mux_4674_i1 (.BLUT(n6797[0]), .ALUT(Save_ALU_N_1484), .C0(ISet[1]), 
          .Z(Save_ALU));
    L6MUX21 mux_3650_i1 (.D0(n5430[0]), .D1(n5427[0]), .SD(n4472), .Z(n5433[0]));
    ORCALUT4 MCycle_2__I_0_1838_2_lut_rep_701_3_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .Z(n38680)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_2__I_0_1838_2_lut_rep_701_3_lut.init = 16'h1010;
    L6MUX21 mux_4128_i1 (.D0(n6068[0]), .D1(n6065[0]), .SD(n4472), .Z(n6071[0]));
    PFUMX mux_3640_i1 (.BLUT(n5397[0]), .ALUT(n5394[0]), .C0(\Set_BusA_To_3__N_1216[0] ), 
          .Z(n5418[0]));
    L6MUX21 mux_3646_i1 (.D0(n5418[0]), .D1(n5412[0]), .SD(\IR[4] ), .Z(n5427[0]));
    PFUMX i34164 (.BLUT(n38799), .ALUT(n38800), .C0(\IR[7] ), .Z(n38801));
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[2] ), .Z(n16907)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hbaba;
    PFUMX mux_4126_i1 (.BLUT(n6059[0]), .ALUT(n6062[0]), .C0(n35544), 
          .Z(n6068[0]));
    ORCALUT4 i34_4_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\IR[1] ), 
            .C(n40898), .D(\IR[2] ), .Z(n15)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam i34_4_lut_4_lut.init = 16'h0380;
    ORCALUT4 i1_4_lut (.A(n31169), .B(n33913), .C(n8_c), .D(n15767), 
            .Z(Set_BusB_To_3__N_1414[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    ORCALUT4 MCycles_2__N_1069_I_0_1677_Select_0_i38_4_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38532), .C(\mc[2] ), .D(\Set_BusA_To_3__N_1212[2] ), .Z(n38)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1069_I_0_1677_Select_0_i38_4_lut_4_lut.init = 16'h0032;
    ORCALUT4 i4_4_lut (.A(\IR[5] ), .B(n8_adj_1772), .C(n9_c), .D(n16562), 
            .Z(Set_BusB_To_3__N_1414[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut.init = 16'hfefc;
    PFUMX mux_3638_i1 (.BLUT(n10965), .ALUT(n33817), .C0(\IR[2] ), .Z(n5415[0]));
    ORCALUT4 IR_7__I_0_1602_i15_2_lut_rep_585_3_lut_4_lut (.A(n38741), .B(n38691), 
            .C(n38765), .D(n38699), .Z(n38564)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam IR_7__I_0_1602_i15_2_lut_rep_585_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i5_2_lut_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n31727), 
            .C(n38532), .Z(n34036)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i5_2_lut_3_lut_4_lut_4_lut.init = 16'hcdcd;
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(\IR[5] ), .B(n40889), .C(n4_adj_1773), 
            .D(n34), .Z(n6_c)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'hf600;
    ORCALUT4 i30632_2_lut_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(\IR[6] ), .C(\IR[7] ), 
            .D(n38741), .Z(n34108)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30632_2_lut_3_lut_4_lut_4_lut.init = 16'hf1f3;
    ORCALUT4 IR_7__I_0_1604_i15_2_lut_rep_617_3_lut_4_lut (.A(n38741), .B(n38691), 
            .C(n38699), .D(n38701), .Z(n38596)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam IR_7__I_0_1604_i15_2_lut_rep_617_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i31785_3_lut_4_lut_4_lut (.A(n35061), .B(n38531), .Z(n35318)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1365[23] 1388[30])
    defparam i31785_3_lut_4_lut_4_lut.init = 16'h7777;
    ORCALUT4 i1_4_lut_4_lut_adj_200 (.A(n38666), .B(n11), .C(\IR[7] ), 
            .D(n40893), .Z(n24831)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i1_4_lut_4_lut_adj_200.init = 16'hf8ff;
    ORCALUT4 IR_7__I_0_1609_i15_2_lut_3_lut_4_lut (.A(n38729), .B(n38741), 
            .C(n38699), .D(n38767), .Z(n15_adj_1774)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1609_i15_2_lut_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i21307_4_lut_4_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(n38525), 
            .D(n33525), .Z(\MCycles_2__N_1018[2] )) /* synthesis lut_function=(!(A (C (D))+!A (B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i21307_4_lut_4_lut_4_lut.init = 16'h0bff;
    ORCALUT4 IR_7__I_0_1601_i15_2_lut_rep_620_3_lut_4_lut (.A(n38729), .B(n38741), 
            .C(n38699), .D(n38701), .Z(n38599)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1601_i15_2_lut_rep_620_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i3_4_lut (.A(Read_To_Acc_N_1481), .B(n2_c), .C(n16563), .D(n9_adj_1775), 
            .Z(Set_BusB_To_3__N_1414[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    PFUMX mux_3162_i1 (.BLUT(n4759[0]), .ALUT(n4756[0]), .C0(\Set_BusA_To_3__N_1216[0] ), 
          .Z(n4780[0]));
    ORCALUT4 i20794_2_lut_3_lut_4_lut (.A(n38729), .B(n38741), .C(n38693), 
            .D(n38699), .Z(n24275)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i20794_2_lut_3_lut_4_lut.init = 16'hfff7;
    PFUMX mux_3138_i1 (.BLUT(n33740), .ALUT(n4690[0]), .C0(\IR[1] ), .Z(n4744[0]));
    ORCALUT4 i1_4_lut_adj_201 (.A(\ALU_Op_3__N_1283[3] ), .B(n38688), .C(n16), 
            .D(n40872), .Z(n16562)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_201.init = 16'h0a2a;
    ORCALUT4 i1_4_lut_4_lut_adj_202 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n35061), .D(n15720), .Z(n4_adj_1776)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_4_lut_4_lut_adj_202.init = 16'hff0d;
    ORCALUT4 n191_bdd_4_lut_34062_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[2] ), 
            .D(\IR[1] ), .Z(n38198)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam n191_bdd_4_lut_34062_4_lut.init = 16'h4ccc;
    ORCALUT4 i2_3_lut_4_lut (.A(\IR[6] ), .B(n38752), .C(\IR[1] ), .D(n9_adj_1777), 
            .Z(n1881)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 n191_bdd_4_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[2] ), 
            .D(\IR[1] ), .Z(n38199)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;
    defparam n191_bdd_4_lut_4_lut.init = 16'h0a02;
    ORCALUT4 IR_7__I_0_1636_i15_2_lut_rep_612_3_lut_4_lut (.A(n38730), .B(n38691), 
            .C(n38739), .D(n38765), .Z(n38591)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1636_i15_2_lut_rep_612_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 IR_7__I_0_1626_i15_2_lut_rep_597_3_lut_4_lut (.A(n38730), .B(n38691), 
            .C(n38701), .D(n38739), .Z(n38576)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1626_i15_2_lut_rep_597_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 IR_7__I_0_1661_i15_2_lut_rep_587_3_lut_4_lut (.A(n38730), .B(n38691), 
            .C(n38739), .D(n38693), .Z(n38566)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1661_i15_2_lut_rep_587_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i1_3_lut_rep_459_4_lut_4_lut (.A(\mc[3] ), .B(\mc[2] ), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(n40869), .Z(n38438)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_3_lut_rep_459_4_lut_4_lut.init = 16'h000e;
    ORCALUT4 i1_4_lut_adj_203 (.A(n24_c), .B(n38772), .C(n25), .D(n38454), 
            .Z(n33487)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_203.init = 16'hfafe;
    ORCALUT4 IR_7__I_0_1618_i15_2_lut_rep_551_3_lut_4_lut (.A(n38730), .B(n38691), 
            .C(n38739), .D(n38767), .Z(n38530)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1618_i15_2_lut_rep_551_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 mux_1487_i3_4_lut (.A(n38753), .B(n2405[2]), .C(n2427), .D(n2399), 
            .Z(n2428[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1487_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1487_i2_4_lut (.A(n38555), .B(n2405[2]), .C(n2427), .D(n2399), 
            .Z(n2428[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1487_i2_4_lut.init = 16'hcac0;
    ORCALUT4 i2_4_lut (.A(n15933), .B(n24519), .C(n13_c), .D(n14), .Z(MCycles_2__N_1012[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'hfffb;
    PFUMX i28321 (.BLUT(n31780), .ALUT(n31781), .C0(n2427), .Z(n31782));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_204 (.A(n38767), .B(n38701), .C(n40877), 
            .D(n38730), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D)))+!A (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_204.init = 16'h2fff;
    ORCALUT4 i7_4_lut (.A(n34758), .B(n14_adj_1779), .C(n10_c), .D(n33222), 
            .Z(MCycles_2__N_1012[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(n38767), .B(n38701), .C(n38772), 
            .D(n40873), .Z(n5)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'h00d0;
    ORCALUT4 IR_7__I_0_1733_i10_2_lut_rep_803 (.A(\IR[2] ), .B(n40887), 
            .Z(n40876)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1733_i10_2_lut_rep_803.init = 16'hdddd;
    ORCALUT4 n9_bdd_4_lut_then_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[4] ), 
            .D(\IR[5] ), .Z(n38774)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n9_bdd_4_lut_then_4_lut.init = 16'h8000;
    ORCALUT4 i20361_2_lut_4_lut (.A(n5749[0]), .B(n5746[0]), .C(n4472), 
            .D(n38436), .Z(NoRead_N_1556)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i20361_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 IR_7__I_0_1639_i15_2_lut_rep_599_3_lut_4_lut (.A(n38769), .B(n38729), 
            .C(n38739), .D(n38767), .Z(n38578)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1639_i15_2_lut_rep_599_3_lut_4_lut.init = 16'hffbf;
    PFUMX i9414 (.BLUT(n1756[1]), .ALUT(Set_BusA_To_3__N_1370[1]), .C0(n5_adj_1780), 
          .Z(n12372));
    PFUMX mux_4682_i1 (.BLUT(n6808[0]), .ALUT(PreserveC_N_1489), .C0(ISet[1]), 
          .Z(PreserveC));
    ORCALUT4 IR_7__I_0_1615_i15_2_lut_rep_555_3_lut_4_lut (.A(n38769), .B(n38729), 
            .C(n38739), .D(n38693), .Z(n38534)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1615_i15_2_lut_rep_555_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1643_i15_2_lut_rep_601_3_lut_4_lut (.A(n38769), .B(n38729), 
            .C(n38739), .D(n38765), .Z(n38580)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1643_i15_2_lut_rep_601_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1611_i15_2_lut_rep_606_3_lut_4_lut (.A(n38769), .B(n38729), 
            .C(n38701), .D(n38739), .Z(n38585)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1611_i15_2_lut_rep_606_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i1_2_lut_4_lut (.A(n40872), .B(n38693), .C(n38770), .D(n38690), 
            .Z(n16)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffea;
    PFUMX mux_5958_i1 (.BLUT(n34956), .ALUT(n6984[0]), .C0(n1881), .Z(n8248));
    ORCALUT4 i4_4_lut_adj_206 (.A(n5_adj_1781), .B(n8_adj_1782), .C(n34320), 
            .D(n38525), .Z(n34723)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i4_4_lut_adj_206.init = 16'hcfef;
    ORCALUT4 i12_4_lut (.A(n34328), .B(n24_adj_1783), .C(n35319), .D(n34306), 
            .Z(n35163)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i12_4_lut.init = 16'hdfff;
    ORCALUT4 i20451_2_lut_rep_804 (.A(n40885), .B(n40887), .Z(n40877)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20451_2_lut_rep_804.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_207 (.A(n38769), .B(n38691), .C(n38765), 
            .D(n38699), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_207.init = 16'hfffe;
    ORCALUT4 i33215_4_lut_4_lut_2_lut (.A(\IR[2] ), .B(n4_adj_1784), .Z(Read_To_Acc_N_1481)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i33215_4_lut_4_lut_2_lut.init = 16'h2222;
    ORCALUT4 IR_7__I_0_1697_i10_2_lut_rep_712 (.A(n40885), .B(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38691)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam IR_7__I_0_1697_i10_2_lut_rep_712.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut_adj_208 (.A(n38588), .B(n38466), .C(n38598), 
            .D(n33846), .Z(n33508)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_208.init = 16'h8000;
    PFUMX mux_3144_i1 (.BLUT(n4729[0]), .ALUT(n4699[0]), .C0(\IR[0] ), 
          .Z(n4753[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_209 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[7] ), .D(\mc[2] ), .Z(n31781)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_209.init = 16'h1000;
    ORCALUT4 i1_2_lut_rep_622_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n38699), .D(n38769), .Z(n38601)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam i1_2_lut_rep_622_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 n4472_bdd_4_lut (.A(n4118[0]), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[4] ), .D(n4142[0]), .Z(n36889)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B (C (D))+!B (D))) */ ;
    defparam n4472_bdd_4_lut.init = 16'hfb08;
    ORCALUT4 i4_4_lut_adj_210 (.A(n24673), .B(n8), .C(n38807), .D(n34936), 
            .Z(TStates_2__N_1424[0])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_210.init = 16'hfefc;
    ORCALUT4 i1_2_lut_3_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[0] ), .Z(n13_adj_1786)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    ORCALUT4 i22_4_lut (.A(n35318), .B(TStates_2__N_1421[1]), .C(ISet[0]), 
            .D(n10), .Z(n8_adj_1788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut.init = 16'hcfca;
    ORCALUT4 i20127_2_lut_rep_713 (.A(n40883), .B(\IR[0] ), .Z(n38692)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20127_2_lut_rep_713.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_615_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(n38739), 
            .D(\IR[2] ), .Z(n38594)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_rep_615_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i1_2_lut_rep_544_3_lut_4_lut_4_lut (.A(\IR[7] ), .B(n40893), 
            .C(n38691), .D(n38741), .Z(n38523)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_544_3_lut_4_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_rep_576_3_lut_4_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .Z(n38555)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_576_3_lut_4_lut_3_lut.init = 16'h5454;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\IR[1] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(n38609), .D(\IR[2] ), .Z(n15_adj_1789)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    ORCALUT4 IR_7__I_0_1737_i11_2_lut_rep_636_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .D(\IR[2] ), .Z(n38615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam IR_7__I_0_1737_i11_2_lut_rep_636_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1745_i12_2_lut_rep_714 (.A(n40889), .B(\IR[5] ), 
            .Z(n38693)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1745_i12_2_lut_rep_714.init = 16'hdddd;
    PFUMX i30 (.BLUT(n33643), .ALUT(n16_adj_1790), .C0(\IR[6] ), .Z(n13_adj_1791));
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(n2399), .Z(n31780)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h3200;
    ORCALUT4 i21065_3_lut_rep_453_4_lut_3_lut_4_lut (.A(n40895), .B(n40893), 
            .C(n38645), .D(n38683), .Z(n38432)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i21065_3_lut_rep_453_4_lut_3_lut_4_lut.init = 16'hfbbb;
    ORCALUT4 i3_4_lut_4_lut (.A(\IR[1] ), .B(\IR[2] ), .C(n6_adj_1792), 
            .D(n5), .Z(n8_c)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i3_4_lut_4_lut.init = 16'hf2f0;
    ORCALUT4 i8164_2_lut_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\IR[0] ), .Z(n10976)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8164_2_lut_3_lut_4_lut_4_lut.init = 16'hfcfe;
    ORCALUT4 i86_4_lut (.A(n38783), .B(TStates_2__N_1421[1]), .C(ISet[0]), 
            .D(n4_adj_1793), .Z(n60)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i86_4_lut.init = 16'hcfca;
    ORCALUT4 mux_1697_i1_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[0]), 
            .D(SP16[0]), .Z(n2858[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i1_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i2_4_lut_adj_211 (.A(n38498), .B(n33472), .C(n40875), .D(n38432), 
            .Z(n35062)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_211.init = 16'hecff;
    ORCALUT4 i22_4_lut_adj_212 (.A(n35327), .B(n1431[2]), .C(ISet[0]), 
            .D(n10_adj_1794), .Z(n8_adj_1795)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_212.init = 16'hcfc5;
    ORCALUT4 i1_4_lut_adj_213 (.A(\ALU_Op_3__N_1283[3] ), .B(n38657), .C(n38757), 
            .D(\IR[1] ), .Z(TStates_2__N_1421[2])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_4_lut_adj_213.init = 16'heaaa;
    ORCALUT4 i8_4_lut (.A(n17177), .B(n16_adj_1796), .C(n12_c), .D(n50), 
            .Z(TStates_2__N_1418[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i8_4_lut.init = 16'hfffe;
    ORCALUT4 i2_4_lut_adj_214 (.A(n38498), .B(n33472), .C(n38451), .D(n24699), 
            .Z(n34532)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_214.init = 16'hecff;
    ORCALUT4 i22_4_lut_adj_215 (.A(n13_adj_1797), .B(n1431[2]), .C(ISet[0]), 
            .D(n35377), .Z(n8_adj_1798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_215.init = 16'hcacf;
    PFUMX i34162 (.BLUT(n38796), .ALUT(n38797), .C0(\mc[6] ), .Z(n38798));
    ORCALUT4 i8413_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\IR[0] ), .Z(n11237)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8413_3_lut_4_lut_4_lut.init = 16'h0230;
    ORCALUT4 mux_1697_i11_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[10]), 
            .D(SP16[10]), .Z(n2858[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i11_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_4_lut_else_1_lut (.A(n38783), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[2] ), .D(\ALU_Op_3__N_1283[3] ), .Z(n38782)) /* synthesis lut_function=(A+!(B (D)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_else_1_lut.init = 16'hbaff;
    ORCALUT4 i33175_3_lut_4_lut (.A(n38585), .B(n38740), .C(n38652), .D(n933), 
            .Z(n23781)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i33175_3_lut_4_lut.init = 16'h0f01;
    ORCALUT4 Set_BusA_To_3__I_117_2_lut_rep_531_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .D(\mc[3] ), 
            .Z(n38510)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_117_2_lut_rep_531_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 mux_1697_i6_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[5]), 
            .D(SP16[5]), .Z(n2858[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i6_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 ALU_Op_3__N_1283_3__bdd_4_lut_34428 (.A(\ALU_Op_3__N_1283[3] ), 
            .B(n38670), .C(\mc[6] ), .D(\Set_BusA_To_3__N_1212[2] ), .Z(TStates_2__N_1421[1])) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam ALU_Op_3__N_1283_3__bdd_4_lut_34428.init = 16'h5455;
    ORCALUT4 mux_1697_i10_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[9]), 
            .D(SP16[9]), .Z(n2858[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i10_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mc_2__bdd_4_lut_34650 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\IR[4] ), .Z(n38786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (D)) */ ;
    defparam mc_2__bdd_4_lut_34650.init = 16'hf702;
    PFUMX mux_4124_i1 (.BLUT(n6056[0]), .ALUT(n33280), .C0(\IR[4] ), .Z(n6065[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_216 (.A(n38589), .B(n38604), .C(Set_Addr_To_2__N_1427[0]), 
            .D(\mc[5] ), .Z(Set_Addr_To_2__N_1058[0])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_216.init = 16'hf7f0;
    ORCALUT4 equal_109_i7_2_lut_rep_720 (.A(n40893), .B(n40895), .Z(n38699)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_109_i7_2_lut_rep_720.init = 16'heeee;
    ORCALUT4 mux_1697_i12_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[11]), 
            .D(SP16[11]), .Z(n2858[11])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i12_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_rep_635_3_lut_4_lut (.A(n40893), .B(n40895), .C(n40891), 
            .D(\IR[4] ), .Z(n38614)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_635_3_lut_4_lut.init = 16'hfeff;
    PFUMX mux_3164_i1 (.BLUT(n4768[0]), .ALUT(n34787), .C0(n4764), .Z(n4783[0]));
    ORCALUT4 equal_109_i8_2_lut_rep_633_3_lut (.A(n40893), .B(n40895), .C(n40885), 
            .Z(n38612)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_109_i8_2_lut_rep_633_3_lut.init = 16'hefef;
    ORCALUT4 i33238_3_lut_rep_637_4_lut (.A(\IR[6] ), .B(n40895), .C(n7243), 
            .D(\IR[0] ), .Z(n38616)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i33238_3_lut_rep_637_4_lut.init = 16'h0100;
    PFUMX mux_2684_i1 (.BLUT(n4121[0]), .ALUT(n33192), .C0(\IR[4] ), .Z(n4142[0]));
    ORCALUT4 i21252_2_lut_rep_495_3_lut_4_lut_4_lut_4_lut (.A(\IR[7] ), .B(n40893), 
            .C(n38682), .D(n38681), .Z(n38474)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i21252_2_lut_rep_495_3_lut_4_lut_4_lut_4_lut.init = 16'hfbbb;
    ORCALUT4 mux_1697_i7_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[6]), 
            .D(SP16[6]), .Z(n2858[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i7_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i20555_2_lut_rep_549_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n40883), .D(n40885), .Z(n38528)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20555_2_lut_rep_549_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 mux_1697_i8_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[7]), 
            .D(SP16[7]), .Z(n2858[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i8_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i5_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[4]), 
            .D(SP16[4]), .Z(n2858[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i5_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i9_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[8]), 
            .D(SP16[8]), .Z(n2858[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i9_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i14_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[13]), 
            .D(SP16[13]), .Z(n2858[13])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i14_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_rep_621_3_lut_4_lut (.A(n40893), .B(n40895), .C(n38741), 
            .D(n40885), .Z(n38600)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_621_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i4_4_lut_adj_217 (.A(n24467), .B(n8_adj_1799), .C(n110), 
            .D(ALU_Op_3__N_1398), .Z(n35134)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;
    defparam i4_4_lut_adj_217.init = 16'h40c0;
    ORCALUT4 i143_4_lut (.A(n5_adj_1800), .B(n37441), .C(ISet[0]), .D(n6_adj_1801), 
            .Z(n92)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i143_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1697_i3_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[2]), 
            .D(SP16[2]), .Z(n2858[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i3_3_lut_4_lut.init = 16'hfe10;
    PFUMX i34148 (.BLUT(n38773), .ALUT(n38774), .C0(\IR[2] ), .Z(n38775));
    ORCALUT4 mux_1697_i15_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[14]), 
            .D(SP16[14]), .Z(n2858[14])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i15_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(\IR[6] ), .B(\IR[7] ), .C(n38741), 
            .D(\IR[2] ), .Z(n4_adj_1773)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'hffef;
    ORCALUT4 i1_2_lut_rep_661_3_lut (.A(n40893), .B(n40895), .C(\IR[5] ), 
            .Z(n38640)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_661_3_lut.init = 16'hfefe;
    ORCALUT4 mux_1697_i2_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[1]), 
            .D(SP16[1]), .Z(n2858[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i2_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i16_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[15]), 
            .D(SP16[15]), .Z(n2858[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i16_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i4_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[3]), 
            .D(SP16[3]), .Z(n2858[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i4_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1697_i13_3_lut_4_lut (.A(n38585), .B(n38740), .C(RegBusC[12]), 
            .D(SP16[12]), .Z(n2858[12])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1697_i13_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 MCycle_3__I_0_1666_2_lut_rep_705_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[3] ), .Z(n38684)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam MCycle_3__I_0_1666_2_lut_rep_705_3_lut.init = 16'h1010;
    ORCALUT4 Set_BusA_To_3__N_1192_I_0_1803_2_lut_rep_677_3_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[3] ), .Z(n38656)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam Set_BusA_To_3__N_1192_I_0_1803_2_lut_rep_677_3_lut.init = 16'hfefe;
    ORCALUT4 i1_3_lut_rep_603_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[3] ), .Z(n38582)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_3_lut_rep_603_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 i2_3_lut_rep_485_4_lut (.A(n38586), .B(n40891), .C(ISet[1]), 
            .D(n40881), .Z(n38464)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_485_4_lut.init = 16'h1000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_219 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38741), .D(\IR[2] ), .Z(n6035[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_3_lut_4_lut_adj_219.init = 16'h00e0;
    ORCALUT4 i2_3_lut_4_lut_adj_220 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n4764), .D(n38729), .Z(n34931)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i2_3_lut_4_lut_adj_220.init = 16'h0e00;
    ORCALUT4 i1_4_lut_4_lut_adj_221 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\ALU_Op_3__N_1283[3] ), .D(\mc[6] ), .Z(n5_adj_1802)) /* synthesis lut_function=(!(A (D)+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_4_lut_4_lut_adj_221.init = 16'h00ba;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_222 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38706), .D(\mc[3] ), .Z(n33817)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_3_lut_4_lut_adj_222.init = 16'h1000;
    ORCALUT4 select_1008_Select_3_i9_2_lut_rep_542_3_lut_4_lut_3_lut_4_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[4] ), .D(\mc[3] ), 
            .Z(n38521)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam select_1008_Select_3_i9_2_lut_rep_542_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i20528_2_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38436), .D(n37999), .Z(Inc_PC_N_1444)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i20528_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_2_lut_rep_706_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[3] ), .Z(n38685)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_rep_706_3_lut.init = 16'hdcdc;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_223 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(ISet[1]), .D(\mc[2] ), .Z(n33647)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_223.init = 16'h1000;
    ORCALUT4 MCycle_4__I_0_1811_2_lut_rep_602_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n38581)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam MCycle_4__I_0_1811_2_lut_rep_602_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_471_4_lut_2_lut_3_lut_2_lut_2_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .Z(n38450)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_rep_471_4_lut_2_lut_3_lut_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38532), .D(n38740), .Z(n33792)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h000e;
    ORCALUT4 n9_bdd_4_lut_else_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\IR[0] ), 
            .C(\IR[1] ), .D(\IR[4] ), .Z(n38773)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C))) */ ;
    defparam n9_bdd_4_lut_else_4_lut.init = 16'hc0e0;
    ORCALUT4 i20387_2_lut_rep_651_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .Z(n38630)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i20387_2_lut_rep_651_3_lut.init = 16'h0e0e;
    ORCALUT4 select_483_Select_2_i1_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\ALU_Op_3__N_1283[3] ), .Z(n1_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam select_483_Select_2_i1_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i2_2_lut_rep_722 (.A(n40891), .B(n40889), .Z(n38701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_722.init = 16'h8888;
    ORCALUT4 i20048_2_lut_rep_550_3_lut_4_lut (.A(n40891), .B(\IR[4] ), 
            .C(n38753), .D(n40887), .Z(n38529)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20048_2_lut_rep_550_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i2_2_lut_rep_645_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38624)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_rep_645_3_lut.init = 16'h8080;
    ORCALUT4 i1_3_lut_4_lut (.A(n38594), .B(n38593), .C(n38565), .D(n38521), 
            .Z(n17106)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hdf00;
    ORCALUT4 i78_2_lut_rep_451_3_lut_4_lut (.A(n38594), .B(n38593), .C(n4_adj_2), 
            .D(n38581), .Z(n38430)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam i78_2_lut_rep_451_3_lut_4_lut.init = 16'hfdf0;
    PFUMX i34160 (.BLUT(n38793), .ALUT(n38794), .C0(\IR[2] ), .Z(n38795));
    ORCALUT4 i1_2_lut_rep_600_3_lut_4_lut (.A(n40891), .B(n40889), .C(n40872), 
            .D(n40887), .Z(n38579)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_600_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i7107_2_lut_rep_604_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38583)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i7107_2_lut_rep_604_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(n38594), .B(n38593), .C(n38596), 
            .D(n38595), .Z(n33771)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i657_2_lut_3_lut_4_lut (.A(\IR[5] ), .B(n40889), .C(\ALU_Op_3__N_1283[3] ), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n1030)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i657_2_lut_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i10944_2_lut_rep_509_2_lut_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38488)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i10944_2_lut_rep_509_2_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i2_2_lut_rep_496_3_lut_4_lut_4_lut_4_lut (.A(\IR[1] ), .B(n40873), 
            .C(\IR[2] ), .D(n40891), .Z(n38475)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i2_2_lut_rep_496_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    ORCALUT4 IR_5__I_0_1786_i5_2_lut_rep_632_3_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(n40887), .Z(n38611)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam IR_5__I_0_1786_i5_2_lut_rep_632_3_lut.init = 16'hf7f7;
    ORCALUT4 select_200_Select_0_i2_2_lut_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(n38772), .D(\mc[2] ), .Z(n2_adj_1804)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam select_200_Select_0_i2_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_2_lut_rep_562_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(n38753), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38541)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_rep_562_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 select_450_Select_0_i3_2_lut_rep_563_2_lut_3_lut (.A(\IR[5] ), 
            .B(\IR[4] ), .C(\Set_BusA_To_3__N_1212[2] ), .Z(n38542)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam select_450_Select_0_i3_2_lut_rep_563_2_lut_3_lut.init = 16'h7070;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_224 (.A(\IR[1] ), .B(n38753), .C(n24673), 
            .D(n38525), .Z(n9_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_3_lut_4_lut_4_lut_adj_224.init = 16'hc0c8;
    ORCALUT4 IR_7__I_0_1624_i14_2_lut_rep_693_3_lut_4_lut (.A(n40891), .B(n40889), 
            .C(n40895), .D(n40893), .Z(n38672)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1624_i14_2_lut_rep_693_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i30693_2_lut_rep_446_3_lut_4_lut_4_lut (.A(\IR[1] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(n38609), .D(\IR[2] ), .Z(n38425)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i30693_2_lut_rep_446_3_lut_4_lut_4_lut.init = 16'hfffd;
    ORCALUT4 select_450_Select_3_i4_2_lut_rep_805 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n40878)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam select_450_Select_3_i4_2_lut_rep_805.init = 16'heeee;
    ORCALUT4 i20360_4_lut_else_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n38793)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i20360_4_lut_else_4_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i31_3_lut (.A(n18), .B(n40898), .C(\IR[2] ), .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut (.A(n40891), .B(\IR[4] ), .C(n40883), .Z(n18)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;
    defparam i1_3_lut.init = 16'h5c5c;
    ORCALUT4 i4_4_lut_adj_225 (.A(n17189), .B(n8_adj_1805), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n4_adj_1806), .Z(n16369)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4_4_lut_adj_225.init = 16'hfeee;
    ORCALUT4 n4775_bdd_3_lut_34114_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(n4774[0]), .D(n4744[0]), .Z(n36874)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam n4775_bdd_3_lut_34114_3_lut_4_lut.init = 16'hf870;
    ORCALUT4 i31818_2_lut_3_lut_4_lut (.A(n24743), .B(n38577), .C(n33837), 
            .D(n38574), .Z(n35353)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i31818_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 IR_0__bdd_4_lut_34615 (.A(\IR[0] ), .B(n4_adj_1807), .C(n38_adj_1808), 
            .D(\IR[6] ), .Z(n38390)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam IR_0__bdd_4_lut_34615.init = 16'heef0;
    ORCALUT4 i3_4_lut_adj_226 (.A(n38761), .B(n4764), .C(n38675), .D(n31031), 
            .Z(n8_adj_1805)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i3_4_lut_adj_226.init = 16'hffec;
    ORCALUT4 i20147_3_lut_4_lut (.A(n38604), .B(n38737), .C(\mc[6] ), 
            .D(NoRead_N_1553), .Z(no_read)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i20147_3_lut_4_lut.init = 16'hff20;
    ORCALUT4 i3_4_lut_then_2_lut (.A(n16403), .B(n24831), .Z(n38791)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i3_4_lut_then_2_lut.init = 16'hbbbb;
    ORCALUT4 i2_3_lut_4_lut_adj_227 (.A(n38581), .B(n38684), .C(n38701), 
            .D(n38752), .Z(n7)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2027[19] 2072[26])
    defparam i2_3_lut_4_lut_adj_227.init = 16'hffe0;
    ORCALUT4 i2_4_lut_4_lut (.A(\IR[4] ), .B(n4_adj_1809), .C(n38411), 
            .D(n35217), .Z(n6_adj_1801)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i2_4_lut_4_lut.init = 16'hd500;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_228 (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38684), .C(n38656), .D(\mc[4] ), .Z(n31777)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2023[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_228.init = 16'h4544;
    ORCALUT4 i11186_4_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\BusA[7] ), 
            .C(\BusA[6] ), .D(\IR[4] ), .Z(n14329)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2023[15:26])
    defparam i11186_4_lut_4_lut_4_lut.init = 16'h50d8;
    ORCALUT4 i1_2_lut_2_lut (.A(\IR[5] ), .B(\IR[2] ), .Z(n38_adj_1808)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_229 (.A(\IR[5] ), .B(n38532), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\mc[2] ), .Z(n33794)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_229.init = 16'h1110;
    ORCALUT4 i1_3_lut_4_lut_adj_230 (.A(n38681), .B(n40872), .C(n40878), 
            .D(\IR[4] ), .Z(n23_c)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_230.init = 16'h1110;
    ORCALUT4 i30758_2_lut_3_lut_4_lut (.A(n38681), .B(n40872), .C(n40878), 
            .D(n38607), .Z(n34252)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i30758_2_lut_3_lut_4_lut.init = 16'hfef0;
    L6MUX21 mux_3648_i1 (.D0(n5415[0]), .D1(n5424[0]), .SD(n38486), .Z(n5430[0]));
    ORCALUT4 i1_2_lut_rep_458_3_lut_4_lut (.A(n38681), .B(n40872), .C(n40878), 
            .D(n38607), .Z(n38437)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_458_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 i3_4_lut_else_2_lut (.A(n16403), .B(n24831), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n38790)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i3_4_lut_else_2_lut.init = 16'hbbbf;
    PFUMX mux_3636_i1 (.BLUT(n5391[0]), .ALUT(n31779), .C0(\IR[5] ), .Z(n5412[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_231 (.A(n38765), .B(n38608), .C(n40878), 
            .D(n38601), .Z(n17198)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_231.init = 16'h0070;
    ORCALUT4 i3_4_lut_adj_232 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n38674), 
            .C(\IR[0] ), .D(n38756), .Z(n5_adj_1780)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_232.init = 16'h8000;
    ORCALUT4 i2_4_lut_adj_233 (.A(n34836), .B(n40883), .C(n13_adj_1786), 
            .D(n38676), .Z(n4764)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i2_4_lut_adj_233.init = 16'h3100;
    ORCALUT4 i2_3_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(n40891), .C(\IR[2] ), 
            .Z(n34836)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 mux_3160_i1_4_lut_4_lut (.A(\IR[0] ), .B(n38479), .C(\IR[2] ), 
            .D(n6023[0]), .Z(n4777[0])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_3160_i1_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 select_846_Select_2_i50_3_lut_4_lut (.A(\mc[4] ), .B(n38605), 
            .C(n16907), .D(n38530), .Z(n50)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_846_Select_2_i50_3_lut_4_lut.init = 16'h00f2;
    ORCALUT4 select_1772_Select_0_i15_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n38605), 
            .C(n38530), .D(n38680), .Z(n15_adj_1810)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_1772_Select_0_i15_2_lut_3_lut_4_lut.init = 16'h0f02;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_234 (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38561), .C(n33487), .D(n38772), .Z(n5_adj_1811)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_234.init = 16'hf1f0;
    ORCALUT4 i2_3_lut_4_lut_adj_235 (.A(n40887), .B(n38561), .C(n23652), 
            .D(n33846), .Z(n35061)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_235.init = 16'he000;
    ORCALUT4 i1_4_lut_4_lut_adj_236 (.A(\IR[0] ), .B(\IR[1] ), .C(n8_adj_1812), 
            .D(\IR[2] ), .Z(n33280)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_236.init = 16'h5140;
    ORCALUT4 i1_4_lut_4_lut_adj_237 (.A(n40898), .B(n38701), .C(n38801), 
            .D(\IR[2] ), .Z(n23_adj_1813)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam i1_4_lut_4_lut_adj_237.init = 16'hfdf0;
    ORCALUT4 i1_4_lut_4_lut_adj_238 (.A(n40898), .B(n38767), .C(n40885), 
            .D(\IR[6] ), .Z(n25_adj_1814)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_238.init = 16'hd5c0;
    ORCALUT4 i1_3_lut_rep_727 (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), 
            .Z(n38706)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_rep_727.init = 16'h4040;
    ORCALUT4 i1_2_lut_4_lut_adj_239 (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), 
            .D(n38766), .Z(n6023[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_4_lut_adj_239.init = 16'h4000;
    ORCALUT4 i7057_3_lut_4_lut_4_lut (.A(n38611), .B(n38528), .C(\ALU_Op_3__N_1283[3] ), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n9688)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i7057_3_lut_4_lut_4_lut.init = 16'h3130;
    ORCALUT4 i3_4_lut_4_lut_adj_240 (.A(n38611), .B(n38680), .C(n34318), 
            .D(n38528), .Z(n12_adj_1815)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i3_4_lut_4_lut_adj_240.init = 16'h0f4f;
    ORCALUT4 i2_4_lut_4_lut_adj_241 (.A(n38611), .B(n15_adj_1789), .C(n16562), 
            .D(n22), .Z(n34690)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i2_4_lut_4_lut_adj_241.init = 16'hffdc;
    ORCALUT4 i31806_3_lut_4_lut (.A(n38683), .B(n38644), .C(n38595), .D(n38554), 
            .Z(n35341)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(799[15:26])
    defparam i31806_3_lut_4_lut.init = 16'he000;
    ORCALUT4 select_825_Select_2_i50_2_lut_rep_462_3_lut_4_lut (.A(n38683), 
            .B(n38644), .C(n38584), .D(n38753), .Z(n38441)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(799[15:26])
    defparam select_825_Select_2_i50_2_lut_rep_462_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i1_3_lut_4_lut_adj_242 (.A(n38615), .B(n38614), .C(ALU_Op_3__N_1267[1]), 
            .D(n38533), .Z(n5_adj_1800)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_242.init = 16'h00ef;
    ORCALUT4 i1_3_lut_4_lut_adj_243 (.A(n38615), .B(n38614), .C(n38550), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n26)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_243.init = 16'h1f00;
    ORCALUT4 i1_2_lut_rep_498_4_lut (.A(n38653), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n38699), .D(n40878), .Z(n38477)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_498_4_lut.init = 16'h0400;
    ORCALUT4 i30630_2_lut_rep_518_4_lut (.A(n38653), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n38699), .D(n40878), .Z(n38497)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30630_2_lut_rep_518_4_lut.init = 16'hfffb;
    ORCALUT4 i1_2_lut_rep_730 (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38709)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_730.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_244 (.A(\IR[4] ), .B(n38616), .C(n33939), 
            .Z(IncDec_16_3__N_1026[0])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_adj_244.init = 16'hf8f8;
    ORCALUT4 i1_2_lut_rep_646_3_lut (.A(n40889), .B(n40887), .C(n40891), 
            .Z(n38625)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_646_3_lut.init = 16'h0202;
    ORCALUT4 i1_3_lut_4_lut_adj_245 (.A(n38688), .B(n38669), .C(n38740), 
            .D(Alternate), .Z(Alternate_N_913)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(766[15:26])
    defparam i1_3_lut_4_lut_adj_245.init = 16'hfe01;
    ORCALUT4 i1_2_lut_rep_648_3_lut (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[5] ), .Z(n38627)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_648_3_lut.init = 16'h2020;
    ORCALUT4 mux_1472_i3_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(n38679), 
            .C(\IR[7] ), .D(n38680), .Z(n2405[2])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam mux_1472_i3_3_lut_4_lut.init = 16'hf404;
    ORCALUT4 i2_3_lut_4_lut_4_lut_rep_796_3_lut (.A(n40895), .B(\IR[6] ), 
            .C(n38683), .Z(n40869)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_3_lut_4_lut_4_lut_rep_796_3_lut.init = 16'hfbfb;
    ORCALUT4 i3_4_lut_4_lut_adj_246 (.A(\IR[0] ), .B(n4_adj_1816), .C(n38424), 
            .D(n6_adj_1817), .Z(n33535)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i3_4_lut_4_lut_adj_246.init = 16'hd000;
    ORCALUT4 equal_112_i3_2_lut_rep_800 (.A(\IR[6] ), .B(\IR[7] ), .Z(n40873)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_112_i3_2_lut_rep_800.init = 16'hbbbb;
    ORCALUT4 mux_3090_i1_3_lut_rep_500_4_lut (.A(n38753), .B(n38611), .C(\IR[1] ), 
            .D(n40878), .Z(n38479)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3090_i1_3_lut_rep_500_4_lut.init = 16'hf808;
    ORCALUT4 i1_2_lut_rep_546_3_lut_4_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[2] ), .D(\IR[5] ), .Z(n38525)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_546_3_lut_4_lut_4_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_247 (.A(n38753), .B(n38611), .C(\IR[4] ), 
            .D(n38537), .Z(n33870)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_247.init = 16'h8000;
    ORCALUT4 i33111_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[2] ), .C(\IR[1] ), 
            .D(n40873), .Z(n24673)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i33111_3_lut_4_lut_4_lut.init = 16'h0002;
    ORCALUT4 i21160_2_lut_4_lut (.A(n40869), .B(n38645), .C(n40872), .D(n38558), 
            .Z(n24699)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i21160_2_lut_4_lut.init = 16'hffa8;
    ORCALUT4 i20289_2_lut_4_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n40878), 
            .D(n38541), .Z(n4729[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i20289_2_lut_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_248 (.A(\IR[2] ), .B(\IR[5] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\mc[2] ), .Z(n8_adj_1812)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_248.init = 16'hddd0;
    ORCALUT4 i2_3_lut_rep_558_4_lut_4_lut (.A(\IR[2] ), .B(n38692), .C(n38752), 
            .D(\IR[6] ), .Z(n38537)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i2_3_lut_rep_558_4_lut_4_lut.init = 16'h0100;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(n38741), .C(\IR[6] ), 
            .D(\IR[5] ), .Z(n34943)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(n38753), .B(n38611), .C(\IR[5] ), 
            .D(n38537), .Z(n33871)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_250 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[5] ), .Z(n10_adj_1818)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_2_lut_3_lut_3_lut_adj_250.init = 16'hc4c4;
    ORCALUT4 i1_3_lut_4_lut_adj_251 (.A(n38740), .B(n38466), .C(n33759), 
            .D(n38652), .Z(\ISet_1__N_655[0] )) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_251.init = 16'h10ff;
    ORCALUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n38751), 
            .D(\IR[1] ), .Z(MCycles_2__N_1015[0])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i5082_2_lut_rep_737 (.A(\IR[5] ), .B(\IR[2] ), .Z(n38716)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5082_2_lut_rep_737.init = 16'h8888;
    L6MUX21 mux_3158_i1 (.D0(n4753[0]), .D1(n4780[0]), .SD(n37439), .Z(n4774[0]));
    ORCALUT4 i1_2_lut_3_lut_adj_252 (.A(\IR[5] ), .B(\IR[2] ), .C(\IR[1] ), 
            .Z(n33805)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_adj_252.init = 16'h8080;
    ORCALUT4 i1_2_lut_3_lut_adj_253 (.A(\IR[5] ), .B(\IR[2] ), .C(n38786), 
            .Z(n4_adj_1819)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_adj_253.init = 16'h8080;
    ORCALUT4 i5084_2_lut_rep_739 (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38718)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5084_2_lut_rep_739.init = 16'h2222;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_254 (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n38641), .D(n38701), .Z(n34787)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_4_lut_adj_254.init = 16'hc0d0;
    ORCALUT4 i2_3_lut_rep_457 (.A(n4472), .B(n38606), .C(n16369), .Z(n38436)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_457.init = 16'hfefe;
    ORCALUT4 n37318_bdd_2_lut (.A(n37318), .B(\IR[2] ), .Z(n37319)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37318_bdd_2_lut.init = 16'h2222;
    ORCALUT4 Jump_N_1508_bdd_4_lut (.A(n38605), .B(n38609), .C(n38555), 
            .D(n38730), .Z(n37318)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B))) */ ;
    defparam Jump_N_1508_bdd_4_lut.init = 16'h3111;
    ORCALUT4 i20336_2_lut_4_lut (.A(n4472), .B(n38606), .C(n16369), .D(n5433[0]), 
            .Z(Write_N_1575)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i20336_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i1_2_lut_rep_529_3_lut_4_lut (.A(n40893), .B(n38758), .C(ISet[1]), 
            .D(n40891), .Z(n38508)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_529_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i30717_2_lut_3_lut_4_lut (.A(n38681), .B(n38640), .C(n38495), 
            .D(n38560), .Z(n34203)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i30717_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_3_lut_4_lut_adj_255 (.A(\IR[6] ), .B(n38758), .C(n38677), 
            .D(n38701), .Z(n17189)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_255.init = 16'hf400;
    ORCALUT4 i33266_3_lut_rep_519_4_lut_4_lut (.A(n40891), .B(n40885), .C(n38692), 
            .D(n40873), .Z(n38498)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i33266_3_lut_rep_519_4_lut_4_lut.init = 16'h0002;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_256 (.A(n38642), .B(n38613), .C(n38685), 
            .D(n38656), .Z(n19_c)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_256.init = 16'h1011;
    ORCALUT4 i2_3_lut_4_lut_adj_257 (.A(n38642), .B(n38613), .C(n38432), 
            .D(n24467), .Z(n33525)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_257.init = 16'h00e0;
    ORCALUT4 i1_3_lut_4_lut_adj_258 (.A(n38642), .B(n38613), .C(n38766), 
            .D(Read_To_Acc_N_1481), .Z(n33913)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_258.init = 16'hff10;
    ORCALUT4 i20388_2_lut_4_lut (.A(n4472), .B(n38606), .C(n16369), .D(n6071[0]), 
            .Z(Save_ALU_N_1484)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i20388_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 MCycles_2__N_1069_I_0_1670_Select_2_i24_3_lut_4_lut (.A(n38655), 
            .B(n38766), .C(n38594), .D(n38684), .Z(n24_c)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam MCycles_2__N_1069_I_0_1670_Select_2_i24_3_lut_4_lut.init = 16'h0f08;
    ORCALUT4 i1_4_lut_4_lut_adj_259 (.A(n40889), .B(n38759), .C(n13_adj_1820), 
            .D(n38200), .Z(n4472)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_259.init = 16'hcc40;
    ORCALUT4 sram_addr_c_bdd_2_lut_33350_4_lut (.A(n4472), .B(n38606), .C(n16369), 
            .D(n36891), .Z(n36892)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_33350_4_lut.init = 16'hfe00;
    ORCALUT4 i1_2_lut_4_lut_adj_260 (.A(n38759), .B(n38757), .C(n40887), 
            .D(n38770), .Z(n31031)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_4_lut_adj_260.init = 16'h0800;
    ORCALUT4 i31790_2_lut_3_lut_4_lut (.A(n38672), .B(n38667), .C(n38572), 
            .D(n40873), .Z(n35323)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i31790_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i2_2_lut_rep_472_3_lut_4_lut (.A(n38753), .B(n38680), .C(n38605), 
            .D(n38584), .Z(n38451)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2528[19] 2576[26])
    defparam i2_2_lut_rep_472_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 sram_addr_c_bdd_2_lut_33968_rep_434_4_lut (.A(n4472), .B(n38606), 
            .C(n16369), .D(n37999), .Z(n38413)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_33968_rep_434_4_lut.init = 16'hfe00;
    ORCALUT4 i3_4_lut_adj_261 (.A(n2_adj_1821), .B(n33456), .C(n38507), 
            .D(n3), .Z(n9_adj_1822)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_261.init = 16'hcfce;
    ORCALUT4 i1_3_lut_adj_262 (.A(\IR[4] ), .B(n5_adj_1823), .C(n6_adj_1824), 
            .Z(n13)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_adj_262.init = 16'ha8a8;
    ORCALUT4 i1_4_lut_adj_263 (.A(\IR[5] ), .B(n38611), .C(n17198), .D(n34851), 
            .Z(n5_adj_1823)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_263.init = 16'hdc50;
    ORCALUT4 n35033_bdd_4_lut (.A(n35033), .B(n34943), .C(\IR[7] ), .D(ISet[1]), 
            .Z(n2427)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n35033_bdd_4_lut.init = 16'hca00;
    ORCALUT4 i2_4_lut_adj_264 (.A(n38753), .B(n38507), .C(n38528), .D(n38680), 
            .Z(n6_adj_1824)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_264.init = 16'h3b2a;
    ORCALUT4 i2_4_lut_adj_265 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38528), 
            .C(n34108), .D(n7_adj_1826), .Z(n34851)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_265.init = 16'hff3b;
    ORCALUT4 i31798_2_lut_4_lut (.A(n38682), .B(n38663), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n24519), .Z(n35331)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i31798_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 IR_7__I_0_1685_i12_2_lut_rep_786 (.A(n40889), .B(n40891), .Z(n38765)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2023[15:26])
    defparam IR_7__I_0_1685_i12_2_lut_rep_786.init = 16'heeee;
    ORCALUT4 i30945_2_lut_rep_475_4_lut_4_lut (.A(n38662), .B(n38613), .C(n38567), 
            .D(n38665), .Z(n38454)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i30945_2_lut_rep_475_4_lut_4_lut.init = 16'hd0c0;
    ORCALUT4 i31718_3_lut_rep_517_4_lut (.A(n38654), .B(n38769), .C(n38569), 
            .D(n40887), .Z(n38496)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i31718_3_lut_rep_517_4_lut.init = 16'hffd0;
    ORCALUT4 i7354_3_lut_4_lut (.A(n38753), .B(\IR[7] ), .C(n5_adj_1780), 
            .D(Set_BusA_To_3__N_1370[0]), .Z(n10106)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i7354_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_266 (.A(n38656), .B(n38684), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n17124)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2346[19] 2371[26])
    defparam i1_2_lut_3_lut_4_lut_adj_266.init = 16'hf0d0;
    ORCALUT4 i20021_2_lut_rep_746 (.A(n40895), .B(\IR[5] ), .Z(n38725)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20021_2_lut_rep_746.init = 16'h8888;
    ORCALUT4 i42_3_lut_4_lut_4_lut (.A(n40895), .B(n40891), .C(n40893), 
            .D(\IR[2] ), .Z(n37)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(C)) */ ;
    defparam i42_3_lut_4_lut_4_lut.init = 16'hafa7;
    ORCALUT4 i1_3_lut_4_lut_adj_267 (.A(n38772), .B(n38527), .C(n38530), 
            .D(n38526), .Z(n5_adj_1827)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_267.init = 16'h2f22;
    ORCALUT4 i3_4_lut_4_lut_adj_268 (.A(\IR[7] ), .B(n26_adj_1828), .C(Read_To_Acc_N_1481), 
            .D(n23_c), .Z(n8_adj_1799)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_4_lut_adj_268.init = 16'h000b;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(n38656), .B(n38684), .C(\IR[5] ), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n17098)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2346[19] 2371[26])
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'hf0d0;
    ORCALUT4 i1_2_lut_2_lut_adj_270 (.A(n40895), .B(n15), .Z(n16_adj_1829)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_2_lut_adj_270.init = 16'h4444;
    ORCALUT4 i1_4_lut_4_lut_4_lut_adj_271 (.A(\IR[7] ), .B(\IR[0] ), .C(n18_adj_1830), 
            .D(\IR[2] ), .Z(n16_adj_1790)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_4_lut_adj_271.init = 16'h4055;
    ORCALUT4 ExchangeDH_I_0_824_2_lut_rep_473_3_lut_4_lut (.A(n38645), .B(n38644), 
            .C(\ts[4] ), .D(n38740), .Z(n38452)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(716[15:26])
    defparam ExchangeDH_I_0_824_2_lut_rep_473_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i3_4_lut_4_lut_adj_272 (.A(\IR[7] ), .B(n15), .C(n35182), 
            .D(\IR[6] ), .Z(n34537)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_4_lut_adj_272.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_582_3_lut_4_lut (.A(n40898), .B(\IR[1] ), .C(n38739), 
            .D(\IR[2] ), .Z(n38561)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_582_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 ExchangeDH_I_0_795_2_lut_rep_476_3_lut_4_lut (.A(n38645), .B(n38644), 
            .C(n40881), .D(n38740), .Z(n38455)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(716[15:26])
    defparam ExchangeDH_I_0_795_2_lut_rep_476_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i20333_2_lut_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(n38772), 
            .D(\mc[2] ), .Z(n5409[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20333_2_lut_3_lut_4_lut.init = 16'h0d00;
    ORCALUT4 i33163_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[2] ), .C(n38769), 
            .D(n40873), .Z(n24467)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i33163_3_lut_4_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_4_lut_then_1_lut_4_lut (.A(n4_adj_1831), .B(n38594), .C(n38450), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n38783)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_then_1_lut_4_lut.init = 16'h0032;
    ORCALUT4 i33153_2_lut_rep_750 (.A(n40885), .B(n40887), .Z(n38729)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i33153_2_lut_rep_750.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_628_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n40872), .D(n38741), .Z(n38607)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_628_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i30799_2_lut_3_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[1] ), .Z(n33824)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i30799_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_3_lut_rep_516_4_lut (.A(n38669), .B(n38644), .C(n38613), 
            .D(n38665), .Z(n38495)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_rep_516_4_lut.init = 16'hf8f0;
    ORCALUT4 i20291_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .D(\mc[2] ), .Z(n4768[0])) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i20291_2_lut_3_lut_4_lut.init = 16'h4440;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_273 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n38739), .D(n38767), .Z(n4_adj_1816)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_273.init = 16'hffbf;
    ORCALUT4 IR_7__bdd_1_lut_33977 (.A(\IR[4] ), .Z(n37439)) /* synthesis lut_function=(!(A)) */ ;
    defparam IR_7__bdd_1_lut_33977.init = 16'h5555;
    ORCALUT4 i1_2_lut_rep_685_3_lut_4_lut (.A(n40885), .B(n40887), .C(n40898), 
            .D(n40883), .Z(n38664)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_685_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i1_2_lut_rep_751 (.A(\IR[1] ), .B(\IR[0] ), .Z(n38730)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_751.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_684_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n40895), 
            .D(\IR[6] ), .Z(n38663)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2023[15:26])
    defparam i1_2_lut_rep_684_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1779_i11_2_lut_rep_666_3_lut_4_lut (.A(n40883), .B(n40898), 
            .C(n40887), .D(n40885), .Z(n38645)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam IR_7__I_0_1779_i11_2_lut_rep_666_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 IR_7__bdd_4_lut_33697 (.A(\IR[7] ), .B(\IR[4] ), .C(\ALU_Op_3__N_1283[3] ), 
            .D(\mc[6] ), .Z(n37438)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))))) */ ;
    defparam IR_7__bdd_4_lut_33697.init = 16'h3335;
    ORCALUT4 i1_2_lut_rep_607_3_lut_4_lut (.A(n40883), .B(n40898), .C(n40872), 
            .D(n40885), .Z(n38586)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_607_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 n37998_bdd_3_lut (.A(n37998), .B(n38775), .C(n4472), .Z(n37999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37998_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i20253_2_lut_3_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n4112[0])) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i20253_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 IR_7__I_0_1662_i14_2_lut_rep_686_3_lut_4_lut (.A(n40889), .B(\IR[5] ), 
            .C(n40895), .D(n40893), .Z(n38665)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2023[15:26])
    defparam IR_7__I_0_1662_i14_2_lut_rep_686_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 IR_7__I_0_1691_i11_2_lut_rep_704_3_lut_4_lut (.A(n40883), .B(n40898), 
            .C(\Set_BusA_To_3__N_1216[0] ), .D(\IR[2] ), .Z(n38683)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1691_i11_2_lut_rep_704_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 n4472_bdd_3_lut_4_lut (.A(n40883), .B(n40898), .C(\IR[2] ), 
            .D(n38606), .Z(n37998)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n4472_bdd_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_274 (.A(n38739), .B(n38653), .C(n38753), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n2)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_274.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_468_3_lut_4_lut (.A(n38739), .B(n38653), .C(n23652), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38447)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_468_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 IR_2__bdd_2_lut_rep_634_3_lut (.A(n40883), .B(n40898), .C(n40885), 
            .Z(n38613)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam IR_2__bdd_2_lut_rep_634_3_lut.init = 16'h7f7f;
    ORCALUT4 i1515_2_lut_rep_655_3_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\IR[2] ), 
            .Z(n38634)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1515_2_lut_rep_655_3_lut.init = 16'h0808;
    ORCALUT4 i20243_2_lut_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(\IR[2] ), .Z(n4121[0])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i20243_2_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i20181_1_lut_rep_752 (.A(ISet[1]), .Z(n38731)) /* synthesis lut_function=(!(A)) */ ;
    defparam i20181_1_lut_rep_752.init = 16'h5555;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_275 (.A(n38661), .B(n38672), .C(\F[0] ), 
            .D(n38740), .Z(n31362)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(998[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_275.init = 16'h0f2d;
    ORCALUT4 i2_4_lut_adj_276 (.A(n35137), .B(n34544), .C(\mc[3] ), .D(n38599), 
            .Z(Read_To_Acc_N_1478)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_276.init = 16'heefe;
    ORCALUT4 MCycle_2__I_0_1808_2_lut_rep_787 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n38766)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam MCycle_2__I_0_1808_2_lut_rep_787.init = 16'h2222;
    ORCALUT4 i2_2_lut_rep_754 (.A(\IR[2] ), .B(\IR[1] ), .Z(n38733)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_754.init = 16'h8888;
    ORCALUT4 i2_2_lut_3_lut (.A(n40885), .B(n40883), .C(n40893), .Z(n6)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i20719_2_lut_2_lut_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(MCycles_2__N_1015[1])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i20719_2_lut_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 sram_addr_c_bdd_2_lut_33805_3_lut_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), 
            .C(n37690), .D(\IR[7] ), .Z(n37691)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam sram_addr_c_bdd_2_lut_33805_3_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i31779_2_lut_3_lut_4_lut (.A(n38741), .B(n38654), .C(n38598), 
            .D(n40873), .Z(n35311)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i31779_2_lut_3_lut_4_lut.init = 16'h7000;
    ORCALUT4 i31719_4_lut_4_lut (.A(\IR[2] ), .B(n38609), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n35245)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i31719_4_lut_4_lut.init = 16'heffe;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_277 (.A(n38640), .B(n38613), .C(n38597), 
            .D(n38591), .Z(n6_adj_1817)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_277.init = 16'he000;
    ORCALUT4 i1_3_lut_4_lut_4_lut_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38532), .D(n38701), .Z(n38_adj_1834)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h020c;
    ORCALUT4 mux_4116_i1_4_lut (.A(n40878), .B(n6023[0]), .C(\IR[2] ), 
            .D(n38741), .Z(n6053[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4116_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i32701_3_lut (.A(n11189), .B(n6053[0]), .C(n38606), .Z(n6062[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i32701_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_439_3_lut_4_lut (.A(n38661), .B(n38668), .C(n38577), 
            .D(n24743), .Z(n38418)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_rep_439_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i31825_3_lut_rep_523_4_lut_4_lut (.A(\IR[5] ), .B(\IR[2] ), 
            .C(n38730), .D(n40873), .Z(n38502)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i31825_3_lut_rep_523_4_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i14341_2_lut_rep_502_3_lut_4_lut (.A(n38661), .B(n38668), .C(n38613), 
            .D(n38672), .Z(n38481)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i14341_2_lut_rep_502_3_lut_4_lut.init = 16'hddd0;
    ORCALUT4 i2_3_lut_4_lut_adj_278 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n40883), .D(n40889), .Z(n33451)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_adj_278.init = 16'hff2f;
    ORCALUT4 i569_2_lut_3_lut_4_lut (.A(n38661), .B(n38668), .C(last_tstate), 
            .D(n38740), .Z(n914)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i569_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_798 (.A(n40895), .B(n40893), .Z(n40872)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_798.init = 16'hbbbb;
    ORCALUT4 i1_4_lut_then_3_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\IR[1] ), 
            .D(\IR[2] ), .Z(n38788)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_4_lut_then_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i33203_2_lut_rep_758 (.A(ISet[1]), .B(ISet[0]), .Z(n38737)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i33203_2_lut_rep_758.init = 16'h4444;
    ORCALUT4 i18082_3_lut_4_lut (.A(ISet[1]), .B(ISet[0]), .C(\IR[1] ), 
            .D(n12372), .Z(n14336)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i18082_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i4_4_lut_adj_279 (.A(n7_adj_1835), .B(n8_adj_1836), .C(\IR[5] ), 
            .D(n34952), .Z(n10_adj_1837)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_279.init = 16'hfeee;
    ORCALUT4 i677_2_lut_rep_679_3_lut (.A(ISet[1]), .B(ISet[0]), .C(\mc[6] ), 
            .Z(n38658)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i677_2_lut_rep_679_3_lut.init = 16'hb0b0;
    ORCALUT4 i2_3_lut_4_lut_adj_280 (.A(\IR[5] ), .B(n38675), .C(n38753), 
            .D(n38744), .Z(PreserveC_N_1489)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_adj_280.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_481_3_lut_4_lut (.A(n40891), .B(n38675), .C(n38692), 
            .D(ISet[1]), .Z(n38460)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_481_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i20106_2_lut_rep_423_3_lut_4_lut (.A(n40897), .B(ISet[0]), 
            .C(Set_Addr_To_2__N_1058[0]), .D(\mc[6] ), .Z(n38402)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i20106_2_lut_rep_423_3_lut_4_lut.init = 16'h40f0;
    ORCALUT4 i20040_2_lut_rep_759 (.A(n40885), .B(n40883), .Z(n38738)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20040_2_lut_rep_759.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_641_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[7] ), 
            .Z(n38620)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_641_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_281 (.A(n38683), .B(n38662), .C(n38672), 
            .D(n38660), .Z(n5_adj_1838)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1082[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_281.init = 16'hbbb0;
    ORCALUT4 i5086_2_lut_rep_674_3_lut (.A(\IR[2] ), .B(n40883), .C(\IR[0] ), 
            .Z(n38653)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i5086_2_lut_rep_674_3_lut.init = 16'hefef;
    ORCALUT4 IR_7__bdd_3_lut_33976 (.A(\IR[7] ), .B(\IR[4] ), .C(\ALU_Op_3__N_1283[3] ), 
            .Z(n37437)) /* synthesis lut_function=(!(A (B+(C))+!A !((C)+!B))) */ ;
    defparam IR_7__bdd_3_lut_33976.init = 16'h5353;
    ORCALUT4 i1_2_lut_4_lut_adj_282 (.A(n38741), .B(n38672), .C(n40876), 
            .D(n34244), .Z(n4_adj_3)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_4_lut_adj_282.init = 16'h00fd;
    ORCALUT4 n12_bdd_4_lut (.A(Save_ALU_N_1482), .B(n38600), .C(n33672), 
            .D(n38583), .Z(n40774)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam n12_bdd_4_lut.init = 16'hfbfa;
    ORCALUT4 n40774_bdd_2_lut (.A(n40774), .B(n12_adj_1840), .Z(n40775)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n40774_bdd_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_283 (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[5] ), 
            .D(\IR[7] ), .Z(n33766)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_283.init = 16'h1000;
    ORCALUT4 i20313_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n38753), 
            .D(\IR[0] ), .Z(n5391[0])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i20313_2_lut_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_2_lut_rep_590_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n38739), 
            .D(\IR[0] ), .Z(n38569)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_rep_590_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 n40795_bdd_3_lut (.A(n40795), .B(n12370), .C(n19), .Z(n40796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40795_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_adj_284 (.A(n38598), .B(n24267), .C(n15933), .Z(n34944)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_284.init = 16'h0808;
    ORCALUT4 i1_4_lut_adj_285 (.A(n40878), .B(n38469), .C(n33771), .D(n38597), 
            .Z(n17127)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_285.init = 16'h2aaa;
    ORCALUT4 i31773_2_lut_3_lut_4_lut (.A(n38645), .B(n38662), .C(n38669), 
            .D(n38688), .Z(n35305)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1086[15:26])
    defparam i31773_2_lut_3_lut_4_lut.init = 16'hbbb0;
    ORCALUT4 i2_4_lut_adj_286 (.A(n38592), .B(n38741), .C(n38612), .D(n38654), 
            .Z(n24267)) /* synthesis lut_function=(!((B ((D)+!C))+!A)) */ ;
    defparam i2_4_lut_adj_286.init = 16'h22a2;
    ORCALUT4 n9_bdd_4_lut (.A(n9_adj_1822), .B(n10_adj_1837), .C(n38740), 
            .D(\IR[2] ), .Z(n40797)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n9_bdd_4_lut.init = 16'hfe0e;
    ORCALUT4 i33124_4_lut (.A(n40898), .B(n38699), .C(n40891), .D(n38738), 
            .Z(n15933)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i33124_4_lut.init = 16'h0010;
    ORCALUT4 n33871_bdd_3_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(\IR[2] ), 
            .C(\mc[2] ), .Z(n40794)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;
    defparam n33871_bdd_3_lut.init = 16'h7272;
    ORCALUT4 i1_2_lut_3_lut_adj_287 (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[7] ), 
            .Z(n4_adj_1807)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_287.init = 16'hf1f1;
    ORCALUT4 i20520_2_lut_rep_760 (.A(n40893), .B(n40895), .Z(n38739)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20520_2_lut_rep_760.init = 16'h8888;
    ORCALUT4 i33145_2_lut_rep_440_4_lut_4_lut (.A(n38688), .B(n38665), .C(n38461), 
            .D(n38615), .Z(n38419)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i33145_2_lut_rep_440_4_lut_4_lut.init = 16'h1f3f;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_288 (.A(n38688), .B(n38665), .C(n38680), 
            .D(n38428), .Z(n17100)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_288.init = 16'h10f0;
    ORCALUT4 i30828_2_lut_rep_675_3_lut (.A(n40893), .B(n40895), .C(n40885), 
            .Z(n38654)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30828_2_lut_rep_675_3_lut.init = 16'h8080;
    ORCALUT4 Set_BusA_To_3__N_1212_2__bdd_4_lut_34592_4_lut (.A(\IR[5] ), 
            .B(n40873), .C(n38730), .D(\IR[2] ), .Z(n38807)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam Set_BusA_To_3__N_1212_2__bdd_4_lut_34592_4_lut.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_618_3_lut_4_lut (.A(\IR[6] ), .B(n40895), .C(n38741), 
            .D(\IR[2] ), .Z(n38597)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_618_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i30697_2_lut_rep_683_3_lut_4_lut (.A(n40893), .B(n40895), .C(n40889), 
            .D(n40891), .Z(n38662)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30697_2_lut_rep_683_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i5_4_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n19_c), 
            .C(n38474), .D(n23_adj_1813), .Z(n34047)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i5_4_lut_4_lut.init = 16'hffcd;
    ORCALUT4 i13907_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n38656), .C(n38770), 
            .D(n38684), .Z(Set_BusA_To_3__N_1370[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i13907_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i1_2_lut_rep_593_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n38741), 
            .D(\IR[2] ), .Z(n38572)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i1_2_lut_rep_593_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i20285_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n38656), .C(n38756), 
            .D(n38684), .Z(n4699[0])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i20285_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i21_3_lut (.A(n8_adj_1842), .B(n34960), .C(ISet[1]), .Z(\mcycles_d[0] )) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_3_lut.init = 16'h3a3a;
    ORCALUT4 i3_4_lut_adj_289 (.A(n24831), .B(n38474), .C(n38432), .D(n13_adj_1791), 
            .Z(n34960)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_289.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_290 (.A(n38661), .B(ISet[1]), .C(n40872), .D(n40891), 
            .Z(\Special_LD[0] )) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_290.init = 16'h0008;
    ORCALUT4 i1_2_lut_rep_483_3_lut_4_lut (.A(\mc[4] ), .B(n38656), .C(n38593), 
            .D(n38594), .Z(n38462)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_rep_483_3_lut_4_lut.init = 16'h2022;
    ORCALUT4 i1_2_lut_rep_608_3_lut_3_lut_4_lut_2_lut_3_lut (.A(n40893), .B(n40895), 
            .C(n40889), .Z(n38587)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i1_2_lut_rep_608_3_lut_3_lut_4_lut_2_lut_3_lut.init = 16'h7f7f;
    ORCALUT4 MCycles_2__N_1174_0__bdd_4_lut (.A(n38428), .B(n38594), .C(n38593), 
            .Z(n17041)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam MCycles_2__N_1174_0__bdd_4_lut.init = 16'hf7f7;
    ORCALUT4 i2_3_lut_4_lut_adj_291 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38611), 
            .C(n40872), .D(n38670), .Z(n31065)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(331[21] 340[24])
    defparam i2_3_lut_4_lut_adj_291.init = 16'h0f08;
    ORCALUT4 i1_3_lut_4_lut_adj_292 (.A(n38611), .B(n40872), .C(n38670), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n33672)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_292.init = 16'h2220;
    ORCALUT4 IR_7__I_0_1661_i14_2_lut_rep_690_3_lut_4_lut (.A(n40893), .B(n40895), 
            .C(n40891), .D(n40889), .Z(n38669)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1661_i14_2_lut_rep_690_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_504_4_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), 
            .B(n38699), .C(\Set_BusA_To_3__N_1216[0] ), .D(n38653), .Z(n38483)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_2_lut_rep_504_4_lut_4_lut.init = 16'h0010;
    ORCALUT4 i14006_3_lut_4_lut (.A(\mc[3] ), .B(n38679), .C(n38680), 
            .D(n38769), .Z(n17510)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i14006_3_lut_4_lut.init = 16'h22f2;
    ORCALUT4 i20718_4_lut (.A(n38657), .B(n38759), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38670), .Z(Read_To_Reg_N_1466)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20718_4_lut.init = 16'h3022;
    ORCALUT4 i5_4_lut (.A(n38510), .B(n10_adj_1843), .C(n17198), .D(n38530), 
            .Z(n12_adj_1840)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut.init = 16'hfcfe;
    ORCALUT4 i3_4_lut_adj_293 (.A(n38521), .B(n38536), .C(n15_adj_1774), 
            .D(n38507), .Z(n10_adj_1843)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_293.init = 16'h0a3b;
    ORCALUT4 i1_3_lut_4_lut_adj_294 (.A(n38510), .B(n38530), .C(n15_adj_1774), 
            .D(n38521), .Z(n7_adj_1835)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_294.init = 16'h2f22;
    ORCALUT4 i20664_2_lut_rep_486_3_lut_4_lut (.A(n40872), .B(n38613), .C(ISet[1]), 
            .D(n38765), .Z(n38465)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20664_2_lut_rep_486_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_688_3_lut (.A(n40883), .B(\IR[0] ), .C(n40885), 
            .Z(n38667)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_688_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_4_lut_adj_295 (.A(n38604), .B(\mc[3] ), .C(n4_adj_1844), 
            .D(n20_adj_1845), .Z(n33196)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_295.init = 16'ha2a0;
    ORCALUT4 i1_3_lut_adj_296 (.A(\mc[6] ), .B(\mc[5] ), .C(\mc[4] ), 
            .Z(n4_adj_1844)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut_adj_296.init = 16'hbaba;
    ORCALUT4 i1_4_lut_adj_297 (.A(\mc[5] ), .B(n5_adj_1802), .C(n4_adj_1846), 
            .D(\mc[4] ), .Z(n20_adj_1845)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_297.init = 16'h0545;
    ORCALUT4 i1_2_lut_rep_703_3_lut_4_lut (.A(\IR[1] ), .B(n40898), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(\IR[2] ), .Z(n38682)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_703_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 IR_7__I_0_1722_i11_2_lut_rep_702_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), 
            .C(n40887), .D(\IR[2] ), .Z(n38681)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1722_i11_2_lut_rep_702_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_4_lut_adj_298 (.A(n40878), .B(n38761), .C(n38532), .D(n38469), 
            .Z(n8_adj_1836)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_298.init = 16'h0a8a;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_299 (.A(n38666), .B(n38644), .C(n38589), 
            .D(n38587), .Z(n33759)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1743[15:26])
    defparam i1_3_lut_4_lut_4_lut_adj_299.init = 16'h1e0a;
    ORCALUT4 i21079_2_lut_rep_442_3_lut_4_lut_4_lut (.A(n38666), .B(n38644), 
            .C(n38589), .D(n38587), .Z(n38421)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1743[15:26])
    defparam i21079_2_lut_rep_442_3_lut_4_lut_4_lut.init = 16'he0a0;
    ORCALUT4 i1_4_lut_adj_300 (.A(\tstate[2] ), .B(n47), .C(n28), .D(n38652), 
            .Z(n957)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(55[25:32])
    defparam i1_4_lut_adj_300.init = 16'ha088;
    ORCALUT4 i1_2_lut_rep_484_3_lut_4_lut (.A(n38645), .B(n38665), .C(\mc[5] ), 
            .D(n38604), .Z(n38463)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i1_2_lut_rep_484_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 select_924_Select_0_i6_2_lut_rep_767 (.A(\mc[6] ), .B(\ALU_Op_3__N_1283[3] ), 
            .Z(n38746)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam select_924_Select_0_i6_2_lut_rep_767.init = 16'heeee;
    ORCALUT4 i20923_2_lut_3_lut_4_lut (.A(n38645), .B(n38665), .C(n38644), 
            .D(n38666), .Z(n24417)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i20923_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 MCycle_1__I_0_1837_2_lut_rep_678_3_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .Z(n38657)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam MCycle_1__I_0_1837_2_lut_rep_678_3_lut.init = 16'h1010;
    ORCALUT4 i1_3_lut_rep_556_4_lut_3_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .Z(n38535)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam i1_3_lut_rep_556_4_lut_3_lut.init = 16'hefef;
    ORCALUT4 Read_To_Reg_N_1467_bdd_3_lut_4_lut_4_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(n38670), .D(\Set_BusA_To_3__N_1212[2] ), .Z(n37689)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam Read_To_Reg_N_1467_bdd_3_lut_4_lut_4_lut.init = 16'hc1c0;
    ORCALUT4 reduce_nor_5813_i1_2_lut_rep_768 (.A(\mc[6] ), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1212[2] ), .Z(n38747)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam reduce_nor_5813_i1_2_lut_rep_768.init = 16'hfefe;
    ORCALUT4 i20039_2_lut_rep_770 (.A(\Set_BusA_To_3__N_1212[2] ), .B(\mc[2] ), 
            .Z(n38749)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i20039_2_lut_rep_770.init = 16'heeee;
    ORCALUT4 i4_1_lut_rep_454_2_lut_3_lut_4_lut (.A(n38664), .B(n38663), 
            .C(n38652), .D(n38740), .Z(clk_op_enable_116)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i4_1_lut_rep_454_2_lut_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i20601_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .Z(n6984[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i20601_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_adj_301 (.A(\Set_BusA_To_3__N_1212[2] ), .B(\mc[2] ), 
            .C(\ALU_Op_3__N_1283[3] ), .Z(n4_adj_1846)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_adj_301.init = 16'hfefe;
    ORCALUT4 i1_2_lut_4_lut_adj_302 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38503), 
            .C(n38572), .D(n33927), .Z(n33929)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_4_lut_adj_302.init = 16'hff2a;
    ORCALUT4 i1_3_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\ALU_Op_3__N_1283[3] ), .Z(n33962)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_3_lut_3_lut.init = 16'he2e2;
    ORCALUT4 i2_4_lut_4_lut_adj_303 (.A(\Set_BusA_To_3__N_1212[2] ), .B(\mc[2] ), 
            .C(n34944), .D(n18_adj_1847), .Z(n6_adj_4)) /* synthesis lut_function=(!(A (C (D))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i2_4_lut_4_lut_adj_303.init = 16'h0aee;
    ORCALUT4 i20470_2_lut_rep_682_3_lut_4_lut (.A(\IR[2] ), .B(n40887), 
            .C(n40898), .D(\IR[1] ), .Z(n38661)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20470_2_lut_rep_682_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i20939_2_lut_rep_488_3_lut_4_lut (.A(n38664), .B(n38663), .C(n38652), 
            .D(n38740), .Z(n38467)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i20939_2_lut_rep_488_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_304 (.A(n38680), .B(n38766), .C(n38531), .D(n24094), 
            .Z(JumpE_N_1521)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_304.init = 16'h0ace;
    ORCALUT4 i2_4_lut_adj_305 (.A(\mc[2] ), .B(n34562), .C(n38591), .D(n17100), 
            .Z(Jump_N_1501)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_305.init = 16'hffce;
    ORCALUT4 i3_4_lut_adj_306 (.A(n38680), .B(n33808), .C(\IR[1] ), .D(n40885), 
            .Z(Jump_N_1519)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i3_4_lut_adj_306.init = 16'h0800;
    ORCALUT4 IR_5__I_0_i6_4_lut (.A(\F[2] ), .B(\F[7] ), .C(\IR[4] ), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n6_adj_1849)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i6_4_lut.init = 16'hca35;
    ORCALUT4 i1_2_lut_rep_772 (.A(\IR[0] ), .B(\IR[2] ), .Z(n38751)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_772.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_307 (.A(\IR[0] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\ALU_Op_r[1] ), .Z(n33821)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_307.init = 16'h00bf;
    ORCALUT4 i1_2_lut_rep_691_3_lut (.A(\IR[0] ), .B(n40885), .C(n40883), 
            .Z(n38670)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_691_3_lut.init = 16'hbfbf;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_308 (.A(\IR[0] ), .B(n40885), .C(n40872), 
            .D(\IR[1] ), .Z(n7_adj_1826)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_308.init = 16'h0b0f;
    ORCALUT4 i20678_2_lut_rep_515_3_lut_4_lut (.A(n38664), .B(n38663), .C(n38669), 
            .D(n38688), .Z(n38494)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i20678_2_lut_rep_515_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i1_4_lut_4_lut_adj_309 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(n4_adj_1807), .D(\IR[0] ), .Z(n33)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_309.init = 16'hc4c0;
    ORCALUT4 i20198_2_lut_rep_773 (.A(ISet[1]), .B(\IR[7] ), .Z(n38752)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i20198_2_lut_rep_773.init = 16'hdddd;
    ORCALUT4 i1_2_lut_rep_695_3_lut (.A(ISet[1]), .B(\IR[7] ), .C(\IR[6] ), 
            .Z(n38674)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_695_3_lut.init = 16'h2020;
    ORCALUT4 select_483_Select_0_i3_2_lut_rep_774 (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .Z(n38753)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam select_483_Select_0_i3_2_lut_rep_774.init = 16'h4444;
    ORCALUT4 i8365_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n11189)) /* synthesis lut_function=(A (D)+!A !(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i8365_4_lut_4_lut.init = 16'haa40;
    ORCALUT4 i1_3_lut_4_lut_adj_310 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[5] ), .D(n24467), .Z(n34013)) /* synthesis lut_function=(!(A (C (D))+!A (B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_3_lut_4_lut_adj_310.init = 16'h0bff;
    ORCALUT4 i21016_2_lut_rep_508_3_lut_4_lut (.A(n38683), .B(n38665), .C(n38613), 
            .D(n38640), .Z(n38487)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam i21016_2_lut_rep_508_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i1_4_lut_adj_311 (.A(n38739), .B(n38664), .C(n34370), .D(\IR[5] ), 
            .Z(n9_adj_1850)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_311.init = 16'h0a2a;
    ORCALUT4 i20960_4_lut (.A(n24071), .B(n38692), .C(\IR[2] ), .D(n38662), 
            .Z(n24465)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;
    defparam i20960_4_lut.init = 16'ha8aa;
    ORCALUT4 IR_5__I_0_i3_4_lut (.A(\F[6] ), .B(\F[0] ), .C(n40889), .D(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n3_adj_1851)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i3_4_lut.init = 16'hca35;
    ORCALUT4 i4_3_lut (.A(\PC16_B_15__N_580[15] ), .B(n8_adj_1852), .C(Inc_PC_N_1435), 
            .Z(n47)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_3_lut.init = 16'hfefe;
    ORCALUT4 i3_4_lut_adj_312 (.A(\mc[6] ), .B(n38429), .C(n38520), .D(\mc[5] ), 
            .Z(n8_adj_1852)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_312.init = 16'hffce;
    ORCALUT4 i20226_2_lut_4_lut (.A(n38753), .B(n38521), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n10965)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20226_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i2_3_lut_4_lut_adj_313 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .D(n38537), .Z(n34956)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i2_3_lut_4_lut_adj_313.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_510_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n4764), .D(\IR[2] ), .Z(n38489)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_rep_510_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_314 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38584), .D(n38605), .Z(n35130)) /* synthesis lut_function=(!(A (C)+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i2_3_lut_4_lut_4_lut_adj_314.init = 16'h0b0a;
    ORCALUT4 i30853_2_lut_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38475), .D(n38498), .Z(n34356)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i30853_2_lut_3_lut_4_lut_4_lut.init = 16'h40fa;
    ORCALUT4 i19993_2_lut_rep_699_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[7] ), .Z(n38678)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i19993_2_lut_rep_699_3_lut.init = 16'h4040;
    ORCALUT4 i20402_2_lut_2_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[1] ), .Z(n6269[0])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20402_2_lut_2_lut_3_lut.init = 16'h0404;
    ORCALUT4 i20051_2_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[4] ), .Z(ALU_Op_3__N_1398)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20051_2_lut_3_lut.init = 16'hf4f4;
    ORCALUT4 i13923_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38540), .D(\Set_BusA_To_3__N_1216[0] ), .Z(n17373)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i13923_4_lut_4_lut.init = 16'hfeaa;
    ORCALUT4 i20225_2_lut_2_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[7] ), .Z(n1756[1])) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20225_2_lut_2_lut_3_lut.init = 16'h4f4f;
    ORCALUT4 i20404_2_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[1] ), .D(n40885), .Z(n6372[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20404_2_lut_3_lut_4_lut.init = 16'h0004;
    ORCALUT4 i31763_2_lut_3_lut_4_lut (.A(n38666), .B(n38665), .C(n38668), 
            .D(n38681), .Z(n35295)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i31763_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i1_2_lut_rep_489_3_lut_4_lut (.A(n38666), .B(n38665), .C(n38595), 
            .D(n38594), .Z(n38468)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_rep_489_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_2_lut_rep_432_3_lut_4_lut (.A(n38666), .B(n38665), .C(n33872), 
            .D(n38594), .Z(n38411)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_rep_432_3_lut_4_lut.init = 16'he000;
    ORCALUT4 MCycles_2__N_1069_I_0_1670_Select_2_i25_2_lut_3_lut_4_lut (.A(n38666), 
            .B(n38665), .C(n38766), .D(n38684), .Z(n25)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam MCycles_2__N_1069_I_0_1670_Select_2_i25_2_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i20400_2_lut_rep_662_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .Z(n38641)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20400_2_lut_rep_662_3_lut.init = 16'h0404;
    ORCALUT4 i20214_2_lut_rep_538_3_lut_4_lut (.A(n38692), .B(n38654), .C(n38665), 
            .D(n38666), .Z(n38517)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20214_2_lut_rep_538_3_lut_4_lut.init = 16'hbbb0;
    ORCALUT4 i1_4_lut_4_lut_adj_315 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38701), .D(n38527), .Z(n21)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_4_lut_4_lut_adj_315.init = 16'h00e4;
    ORCALUT4 i1_2_lut_3_lut_rep_775 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .Z(n38754)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_3_lut_rep_775.init = 16'h4040;
    ORCALUT4 mux_2668_i1_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .D(\IR[1] ), .Z(n4118[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam mux_2668_i1_4_lut_4_lut_4_lut.init = 16'h0c40;
    ORCALUT4 i1_3_lut_4_lut_adj_316 (.A(n38692), .B(n38654), .C(n38655), 
            .D(n38596), .Z(n5_adj_1853)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_316.init = 16'h40ff;
    ORCALUT4 IR_7__I_0_1726_i11_2_lut_rep_681_3_lut_4_lut (.A(n40885), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[0] ), .D(n40883), .Z(n38660)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1726_i11_2_lut_rep_681_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i3_2_lut_rep_777 (.A(n40885), .B(n40883), .Z(n38756)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3_2_lut_rep_777.init = 16'h4444;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_317 (.A(n38692), .B(n38654), .C(n38655), 
            .D(n38766), .Z(n31502)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_317.init = 16'h0400;
    ORCALUT4 i3_4_lut_adj_318 (.A(n38670), .B(n38759), .C(\mc[2] ), .D(n38747), 
            .Z(Write_N_1571)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam i3_4_lut_adj_318.init = 16'h0010;
    ORCALUT4 i20329_2_lut_4_lut (.A(n38753), .B(n38521), .C(\IR[1] ), 
            .D(n11_adj_1854), .Z(n5397[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20329_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_2_lut_rep_778 (.A(\IR[2] ), .B(n40898), .Z(n38757)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_778.init = 16'h2222;
    ORCALUT4 i2_3_lut_rep_698_4_lut (.A(\IR[2] ), .B(\IR[0] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n38759), .Z(n38677)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i2_3_lut_rep_698_4_lut.init = 16'h0200;
    ORCALUT4 i4_4_lut_adj_319 (.A(n7_adj_1855), .B(\IR[1] ), .C(\IR[6] ), 
            .D(n33647), .Z(I_BTR)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_319.init = 16'h0800;
    ORCALUT4 i1_2_lut_rep_779 (.A(n40885), .B(n40895), .Z(n38758)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_779.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_696_3_lut (.A(n40885), .B(n40895), .C(\IR[6] ), 
            .Z(n38675)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_696_3_lut.init = 16'h0404;
    ORCALUT4 i1_2_lut_3_lut_adj_320 (.A(\IR[2] ), .B(\IR[7] ), .C(\IR[5] ), 
            .Z(n33643)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_320.init = 16'h4040;
    ORCALUT4 i1_2_lut_rep_596_3_lut_4_lut (.A(n40885), .B(n40895), .C(n40891), 
            .D(n40893), .Z(n38575)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_596_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i2_3_lut_4_lut_adj_321 (.A(n38739), .B(n38667), .C(n38655), 
            .D(n38766), .Z(n34562)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_321.init = 16'h2000;
    ORCALUT4 i13932_2_lut_rep_780 (.A(n40893), .B(n40895), .Z(n38759)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i13932_2_lut_rep_780.init = 16'h2222;
    ORCALUT4 i21342_3_lut_4_lut (.A(n38507), .B(n23652), .C(n38461), .D(n38536), 
            .Z(n24915)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i21342_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 i20108_2_lut_rep_541_4_lut (.A(n38741), .B(n38672), .C(n40876), 
            .D(n38737), .Z(n38520)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i20108_2_lut_rep_541_4_lut.init = 16'h00fd;
    ORCALUT4 i1_2_lut_3_lut_adj_322 (.A(n40893), .B(n40895), .C(n40898), 
            .Z(n33808)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_adj_322.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_adj_323 (.A(n40893), .B(n40895), .C(last_tstate), 
            .Z(n7_adj_1856)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_adj_323.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_324 (.A(n40893), .B(\IR[7] ), .C(n38741), 
            .D(\IR[4] ), .Z(n4_adj_1806)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_4_lut_adj_324.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_697_3_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n40889), 
            .Z(n38676)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_697_3_lut.init = 16'h0202;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_325 (.A(n38682), .B(n38672), .C(n38665), 
            .D(n38683), .Z(n18_adj_1847)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(363[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_325.init = 16'heee0;
    ORCALUT4 i31794_2_lut_3_lut_4_lut (.A(n38682), .B(n38672), .C(n38667), 
            .D(n38668), .Z(n35327)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(363[15:26])
    defparam i31794_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i4_2_lut_rep_781 (.A(n40883), .B(n40898), .Z(n38741)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_781.init = 16'h2222;
    ORCALUT4 i28_4_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n40885), .Z(n13_adj_1820)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i28_4_lut_4_lut.init = 16'hc2c0;
    ORCALUT4 i1_2_lut_rep_782 (.A(n40891), .B(n40889), .Z(n38761)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_782.init = 16'h2222;
    ORCALUT4 i13965_2_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38684), 
            .C(n38582), .D(\ALU_Op_3__N_1283[3] ), .Z(n16398)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i13965_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i1_2_lut_rep_660_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n38639)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_660_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_326 (.A(\IR[5] ), .B(n40889), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n3)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_326.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_530_3_lut_4_lut (.A(n38741), .B(n38612), .C(n38611), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n38509)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_530_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i20_4_lut_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[2] ), 
            .D(\IR[0] ), .Z(n9_adj_1777)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (C+(D)))) */ ;
    defparam i20_4_lut_3_lut_4_lut.init = 16'h200f;
    ORCALUT4 i1_2_lut_3_lut_adj_327 (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[1] ), 
            .Z(n18_adj_1830)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut_adj_327.init = 16'h2f2f;
    ORCALUT4 i1_2_lut_rep_490_3_lut_4_lut (.A(n38699), .B(n38690), .C(n38608), 
            .D(n38765), .Z(n38469)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_2_lut_rep_490_3_lut_4_lut.init = 16'hfeee;
    ORCALUT4 i20074_2_lut_rep_561_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(n40898), .D(\mc[2] ), .Z(n38540)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i20074_2_lut_rep_561_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 Set_BusA_To_3__I_119_2_lut_rep_700_3_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .Z(n38679)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_119_2_lut_rep_700_3_lut.init = 16'hfefe;
    ORCALUT4 MCycles_2__I_113_Select_2_i24_3_lut_4_lut (.A(n38582), .B(n38685), 
            .C(n38594), .D(n38553), .Z(n24)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam MCycles_2__I_113_Select_2_i24_3_lut_4_lut.init = 16'h0f0e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_328 (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(n2427), .D(\mc[2] ), .Z(n4_c)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_328.init = 16'hafbf;
    ORCALUT4 select_200_Select_2_i2_2_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\IR[5] ), .D(\mc[2] ), 
            .Z(n2_adj_1821)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam select_200_Select_2_i2_2_lut_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 MCycle_0__I_0_1791_2_lut_rep_557_3_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .Z(n38536)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_0__I_0_1791_2_lut_rep_557_3_lut_3_lut.init = 16'habab;
    ORCALUT4 select_512_Select_1_i7_2_lut_3_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[2] ), .Z(n12486)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam select_512_Select_1_i7_2_lut_3_lut_3_lut.init = 16'hcdcd;
    ORCALUT4 MCycle_3__I_0_2_lut_rep_605_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n38584)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_3__I_0_2_lut_rep_605_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_522_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n38501)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_522_3_lut_4_lut_4_lut.init = 16'haaba;
    ORCALUT4 mux_4769_i1_3_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[2] ), .Z(n6984[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam mux_4769_i1_3_lut_3_lut.init = 16'h2c2c;
    ORCALUT4 i2_3_lut_4_lut_4_lut_2_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(\ALU_Op_3__N_1283[3] ), 
            .Z(n1656[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_4_lut_2_lut.init = 16'heeee;
    ORCALUT4 Set_BusA_To_3__N_1206_I_0_2_lut_rep_626_3_lut_4_lut (.A(\ALU_Op_3__N_1283[3] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n38605)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__N_1206_I_0_2_lut_rep_626_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 reduce_or_5660_i1_2_lut_rep_579_3_lut_4_lut_3_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\mc[3] ), .Z(n38558)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam reduce_or_5660_i1_2_lut_rep_579_3_lut_4_lut_3_lut.init = 16'h3232;
    ORCALUT4 i20287_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[5] ), .Z(n4539[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i20287_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i2_3_lut_4_lut_adj_329 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n6_adj_5), .D(n40881), .Z(n10752)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_adj_329.init = 16'h2000;
    ORCALUT4 i8_4_lut_adj_330 (.A(n34053), .B(n16_adj_1859), .C(n12_adj_1815), 
            .D(n15_adj_1810), .Z(Write_N_1560)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i8_4_lut_adj_330.init = 16'hfffe;
    ORCALUT4 i14283_3_lut_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\IR[4] ), .D(\IR[5] ), .Z(Set_BusA_To_3__N_1185[0])) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A ((C (D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i14283_3_lut_3_lut_4_lut_4_lut.init = 16'h2ccc;
    ORCALUT4 i20360_4_lut_then_4_lut (.A(n40878), .B(\IR[1] ), .C(\IR[5] ), 
            .D(\IR[0] ), .Z(n38794)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20360_4_lut_then_4_lut.init = 16'h0080;
    ORCALUT4 select_450_Select_0_i2_2_lut_rep_643_3_lut_4_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1212[2] ), .C(\IR[4] ), .D(\IR[5] ), 
            .Z(n38622)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam select_450_Select_0_i2_2_lut_rep_643_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_3_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38598), .D(ISet[0]), .Z(n35031)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_4_lut_3_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n3_adj_1851), 
            .C(n15933), .Z(n8_adj_1860)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_4_lut_3_lut.init = 16'hd0d0;
    ORCALUT4 IR_7__I_0_1756_i12_2_lut_rep_788 (.A(n40889), .B(n40891), .Z(n38767)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1756_i12_2_lut_rep_788.init = 16'hbbbb;
    ORCALUT4 i30639_2_lut_3_lut_4_lut (.A(n38580), .B(n38496), .C(n38598), 
            .D(n38454), .Z(n34117)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30639_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 IR_7__I_0_1622_i14_2_lut_rep_689_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\IR[7] ), .D(\IR[6] ), .Z(n38668)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1622_i14_2_lut_rep_689_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1656_i14_2_lut_rep_665_3_lut_4_lut (.A(n40889), .B(n40891), 
            .C(n40895), .D(n40893), .Z(n38644)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1656_i14_2_lut_rep_665_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 reduce_or_5657_i1_2_lut_rep_461_3_lut_4_lut (.A(n38679), .B(\mc[3] ), 
            .C(n38680), .D(\mc[4] ), .Z(n38440)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam reduce_or_5657_i1_2_lut_rep_461_3_lut_4_lut.init = 16'hf1f0;
    ORCALUT4 i2_2_lut_rep_629_3_lut_4_lut_2_lut_2_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .Z(n38608)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_2_lut_rep_629_3_lut_4_lut_2_lut_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_rep_444_3_lut_4_lut (.A(n38560), .B(n38495), .C(n38496), 
            .D(n38580), .Z(n38423)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_444_3_lut_4_lut.init = 16'h8000;
    PFUMX i35331 (.BLUT(n40797), .ALUT(n40796), .C0(n40897), .Z(\Set_BusA_To[2] ));
    ORCALUT4 i33082_2_lut_rep_480_4_lut (.A(n40872), .B(n20), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n4472), .Z(n38459)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i33082_2_lut_rep_480_4_lut.init = 16'h00fb;
    PFUMX i35329 (.BLUT(n33871), .ALUT(n40794), .C0(n1881), .Z(n40795));
    L6MUX21 i35321 (.D0(n40776), .D1(n40773), .SD(ISet[1]), .Z(Read_To_Reg));
    ORCALUT4 i1_2_lut_rep_630_3_lut_4_lut_2_lut_3_lut (.A(n40893), .B(n40895), 
            .C(n40891), .Z(n38609)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_630_3_lut_4_lut_2_lut_3_lut.init = 16'hbfbf;
    PFUMX i35319 (.BLUT(n40775), .ALUT(Read_To_Reg_N_1466), .C0(ISet[0]), 
          .Z(n40776));
    ORCALUT4 IR_7__I_0_1750_i9_2_lut_rep_790 (.A(n40898), .B(n40883), .Z(n38769)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1750_i9_2_lut_rep_790.init = 16'hdddd;
    ORCALUT4 IR_7__I_0_1733_i11_2_lut_3_lut_4_lut (.A(n40898), .B(\IR[1] ), 
            .C(n40887), .D(\IR[2] ), .Z(n11)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1733_i11_2_lut_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 IR_7__I_0_1750_i11_2_lut_rep_709_3_lut_4_lut (.A(n40898), .B(n40883), 
            .C(n40887), .D(n40885), .Z(n38688)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1750_i11_2_lut_rep_709_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 IR_7__I_0_1734_i11_2_lut_rep_687_3_lut_4_lut (.A(n40898), .B(n40883), 
            .C(n40887), .D(n40885), .Z(n38666)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1734_i11_2_lut_rep_687_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 IR_7__I_0_1749_i11_2_lut_rep_711_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(n40887), .D(n40885), .Z(n38690)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1749_i11_2_lut_rep_711_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i20378_2_lut_rep_791 (.A(n40889), .B(n40891), .Z(n38770)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam i20378_2_lut_rep_791.init = 16'h2222;
    ORCALUT4 i1_2_lut_4_lut_adj_331 (.A(\IR[2] ), .B(n38609), .C(n38730), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n42)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_331.init = 16'h0100;
    ORCALUT4 BusB_7__I_0_129_i4_2_lut_rep_564_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(BusB[3]), .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38543)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam BusB_7__I_0_129_i4_2_lut_rep_564_3_lut_4_lut.init = 16'h2000;
    PFUMX i35317 (.BLUT(n40772), .ALUT(n36874), .C0(n4472), .Z(n40773));
    PFUMX i33649 (.BLUT(n37439), .ALUT(n37438), .C0(\Set_BusA_To_3__N_1212[2] ), 
          .Z(n37440));
    ORCALUT4 i1_2_lut_rep_571_3_lut_4_lut (.A(n38741), .B(n38691), .C(n38699), 
            .D(\IR[5] ), .Z(n38550)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam i1_2_lut_rep_571_3_lut_4_lut.init = 16'hfffd;
    PFUMX mux_5958_i2 (.BLUT(n33870), .ALUT(n6984[1]), .C0(n1881), .Z(n8247));
    ORCALUT4 i16_1_lut_rep_507_3_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n20), .Z(n38486)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i16_1_lut_rep_507_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 IR_7__I_0_1748_i14_2_lut_rep_663_3_lut_4_lut (.A(n40895), .B(n40893), 
            .C(\IR[5] ), .D(n40889), .Z(n38642)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1748_i14_2_lut_rep_663_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i33248_2_lut_4_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n20), .Z(n35544)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i33248_2_lut_4_lut_4_lut.init = 16'h3733;
    ORCALUT4 i2_3_lut_rep_627_4_lut (.A(n40895), .B(n40893), .C(n40887), 
            .D(n20), .Z(n38606)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_3_lut_rep_627_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_332 (.A(\IR[7] ), .B(\IR[6] ), .C(\IR[0] ), 
            .D(n40883), .Z(n4_adj_1784)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_332.init = 16'hfffb;
    ORCALUT4 i1_2_lut_rep_793 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n38772)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(631[19] 669[26])
    defparam i1_2_lut_rep_793.init = 16'heeee;
    ORCALUT4 i30819_2_lut_3_lut (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n24831), .Z(n34320)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(631[19] 669[26])
    defparam i30819_2_lut_3_lut.init = 16'hfefe;
    PFUMX mux_3883_i1 (.BLUT(n17510), .ALUT(n34931), .C0(\IR[6] ), .Z(n5743[0]));
    ORCALUT4 i1_3_lut_4_lut_adj_333 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n38701), 
            .C(n38670), .D(n40872), .Z(n33222)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_3_lut_4_lut_adj_333.init = 16'h00b4;
    ORCALUT4 i1_3_lut_4_lut_adj_334 (.A(n40887), .B(n38701), .C(n38670), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n7_adj_1861)) /* synthesis lut_function=(A (C+!(D))+!A !(B (C (D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_3_lut_4_lut_adj_334.init = 16'hb4ff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38701), .C(n7285), .D(n38753), .Z(n33740)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'hb000;
    ORCALUT4 i20498_2_lut_rep_524_3_lut_4_lut (.A(n40887), .B(n38701), .C(n38612), 
            .D(n38741), .Z(n38503)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i20498_2_lut_rep_524_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i2_3_lut_4_lut_adj_336 (.A(n38498), .B(n38753), .C(n40878), 
            .D(n38607), .Z(n7_adj_1862)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut_adj_336.init = 16'hddd0;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_337 (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38701), .C(last_tstate), .D(n40872), .Z(clk_op_enable_22)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i2_2_lut_3_lut_4_lut_adj_337.init = 16'h0040;
    ORCALUT4 i16274_4_lut (.A(n38546), .B(\Fp[1] ), .C(n38516), .D(n4_adj_1863), 
            .Z(n1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(196[18:28])
    defparam i16274_4_lut.init = 16'hcac0;
    ORCALUT4 i2_3_lut_rep_588_4_lut (.A(n40885), .B(n38730), .C(n38644), 
            .D(n38669), .Z(n38567)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_588_4_lut.init = 16'hf777;
    ORCALUT4 i1_3_lut_4_lut_adj_338 (.A(\IR[2] ), .B(n38730), .C(n38662), 
            .D(n38665), .Z(n16_adj_1865)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_338.init = 16'h7f77;
    ORCALUT4 i20932_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(n38730), .C(n40878), 
            .D(n38642), .Z(n24429)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20932_2_lut_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_4_lut_adj_339 (.A(\IR[0] ), .B(n38641), .C(n31777), .D(\IR[1] ), 
            .Z(n31779)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_339.init = 16'ha088;
    ORCALUT4 i2_2_lut_3_lut_adj_340 (.A(n4472), .B(n38606), .C(n16369), 
            .Z(n7_adj_1855)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_340.init = 16'h1010;
    ORCALUT4 i1_3_lut_rep_463_4_lut (.A(n38611), .B(n38600), .C(n38572), 
            .D(\Set_BusA_To_3__N_1212[2] ), .Z(n38442)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i1_3_lut_rep_463_4_lut.init = 16'h1f00;
    ORCALUT4 i2_3_lut_rep_443_4_lut (.A(n38692), .B(n38508), .C(n38680), 
            .D(\tstate[1] ), .Z(n38422)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_rep_443_4_lut.init = 16'h4000;
    ORCALUT4 i2_2_lut_rep_534_3_lut_4_lut (.A(n40885), .B(n38730), .C(n38765), 
            .D(n40872), .Z(n38513)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_534_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i31726_2_lut_rep_535_3_lut_4_lut (.A(n40885), .B(n38730), .C(n40891), 
            .D(n40872), .Z(n38514)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i31726_2_lut_rep_535_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_4_lut_adj_341 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n24244), 
            .C(n33771), .D(n38599), .Z(n17139)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_341.init = 16'h2aaa;
    ORCALUT4 i1_2_lut_rep_482 (.A(n9_adj_1850), .B(n24465), .Z(n38461)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_482.init = 16'h4444;
    ORCALUT4 i1_3_lut_rep_449_4_lut (.A(n9_adj_1850), .B(n24465), .C(n38665), 
            .D(n38615), .Z(n38428)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_3_lut_rep_449_4_lut.init = 16'h4440;
    ORCALUT4 i1_4_lut_adj_342 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38579), 
            .C(n38564), .D(n38670), .Z(n34053)) /* synthesis lut_function=(!((B (C)+!B !((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_342.init = 16'h2a0a;
    ORCALUT4 i2_3_lut_4_lut_adj_343 (.A(n38611), .B(n38600), .C(n40873), 
            .D(n38670), .Z(n10_c)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_343.init = 16'h1f11;
    ORCALUT4 i7_4_lut_adj_344 (.A(n38684), .B(n14_adj_1866), .C(n17106), 
            .D(n38596), .Z(n16_adj_1859)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_344.init = 16'hfcfe;
    ORCALUT4 i5_4_lut_adj_345 (.A(n34638), .B(n1_adj_1867), .C(\mc[2] ), 
            .D(n38503), .Z(n14_adj_1866)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_345.init = 16'heefe;
    ORCALUT4 i30817_4_lut (.A(n38536), .B(n16_adj_1865), .C(n38527), .D(n38567), 
            .Z(n34318)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i30817_4_lut.init = 16'heaaa;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_346 (.A(n38699), .B(n38693), .C(n38753), 
            .D(n38615), .Z(n3_adj_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_346.init = 16'h0010;
    ORCALUT4 i30672_2_lut_3_lut_4_lut (.A(n38699), .B(n38693), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38615), .Z(n34151)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30672_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_3_lut_4_lut_adj_347 (.A(n38581), .B(n38517), .C(n38579), 
            .D(n38670), .Z(n58)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i1_3_lut_4_lut_adj_347.init = 16'hddd0;
    ORCALUT4 i2_3_lut_4_lut_adj_348 (.A(n38699), .B(n38693), .C(n38753), 
            .D(n38681), .Z(n34638)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_348.init = 16'h0010;
    ORCALUT4 i20625_2_lut_3_lut_4_lut (.A(n38699), .B(n38693), .C(n15933), 
            .D(n38664), .Z(n24094)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i20625_2_lut_3_lut_4_lut.init = 16'h0f0e;
    ORCALUT4 i1_2_lut_rep_552_3_lut_4_lut (.A(n38692), .B(n38691), .C(n38693), 
            .D(n38699), .Z(n38531)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i1_2_lut_rep_552_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i20914_3_lut_4_lut (.A(n38692), .B(n38691), .C(n38688), .D(n38665), 
            .Z(n23652)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i20914_3_lut_4_lut.init = 16'hffe0;
    ORCALUT4 i30866_3_lut_4_lut (.A(n38692), .B(n38691), .C(n38767), .D(n38693), 
            .Z(n34370)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i30866_3_lut_4_lut.init = 16'hfeee;
    ORCALUT4 i7309_2_lut_rep_554_4_lut (.A(\IR[0] ), .B(n7243), .C(n38699), 
            .D(\IR[4] ), .Z(n38533)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i7309_2_lut_rep_554_4_lut.init = 16'h0200;
    ORCALUT4 i7151_2_lut_4_lut (.A(\IR[0] ), .B(n7243), .C(n38699), .D(\IR[5] ), 
            .Z(n9811)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i7151_2_lut_4_lut.init = 16'h0200;
    ORCALUT4 i1_2_lut (.A(\mc[6] ), .B(n63), .Z(\tstates[1] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut.init = 16'h4444;
    ORCALUT4 i33197_3_lut_4_lut (.A(n38513), .B(ISet[1]), .C(n38464), 
            .D(\Special_LD[0] ), .Z(clk_op_enable_83)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i33197_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 IR_7__I_0_1623_i15_2_lut_rep_592_3_lut_4_lut (.A(n38701), .B(n38699), 
            .C(n40877), .D(n38730), .Z(n38571)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam IR_7__I_0_1623_i15_2_lut_rep_592_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(n38513), .B(ISet[1]), .C(n38514), 
            .D(n40881), .Z(n38443)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_448_4_lut_4_lut (.A(n38513), .B(ISet[1]), .C(n38514), 
            .D(n40881), .Z(n38427)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_448_4_lut_4_lut.init = 16'h0800;
    ORCALUT4 IR_7__I_0_1624_i15_2_lut_rep_591_3_lut_4_lut (.A(n38701), .B(n38699), 
            .C(n40876), .D(n38730), .Z(n38570)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam IR_7__I_0_1624_i15_2_lut_rep_591_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_349 (.A(n38589), .B(n38515), .C(\mc[5] ), 
            .D(n38740), .Z(n4_adj_7)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_349.init = 16'h0070;
    ORCALUT4 ISet_0__bdd_3_lut_4_lut (.A(n38589), .B(n38515), .C(ISet[1]), 
            .D(ISet[0]), .Z(n37072)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam ISet_0__bdd_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i1_2_lut_rep_575_3_lut_4_lut (.A(n38701), .B(n38699), .C(n38741), 
            .D(\IR[2] ), .Z(n38554)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i1_2_lut_rep_575_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i1_2_lut_rep_501_3_lut_4_lut (.A(n38701), .B(n38699), .C(n38766), 
            .D(n38681), .Z(n38480)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i1_2_lut_rep_501_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 reduce_nor_5798_i1_2_lut_rep_505_3_lut_4_lut (.A(n38772), .B(\mc[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n38484)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam reduce_nor_5798_i1_2_lut_rep_505_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_559_3_lut_4_lut (.A(\IR[7] ), .B(n38738), .C(n38705), 
            .D(ISet[1]), .Z(n38538)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_559_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_3_lut_adj_350 (.A(n40885), .B(n61), .C(n44), .Z(n26_adj_8)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_350.init = 16'hecec;
    ORCALUT4 i14282_3_lut_4_lut_4_lut (.A(n38701), .B(n38684), .C(n38656), 
            .D(\mc[4] ), .Z(Set_BusA_To_3__N_1370[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;
    defparam i14282_3_lut_4_lut_4_lut.init = 16'h4e44;
    ORCALUT4 i2_3_lut_4_lut_adj_351 (.A(n38601), .B(n38531), .C(n38532), 
            .Z(n24755)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_4_lut_adj_351.init = 16'h8080;
    ORCALUT4 i1_4_lut_4_lut_adj_352 (.A(n38701), .B(n38766), .C(n40869), 
            .D(n38684), .Z(n9_adj_1775)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C)+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_352.init = 16'h0e04;
    ORCALUT4 i20702_4_lut (.A(n8_adj_1871), .B(\mc[6] ), .C(TStates_2__N_1424[2]), 
            .D(ISet[1]), .Z(\tstates[2] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i20702_4_lut.init = 16'hfcee;
    ORCALUT4 i5_4_lut_adj_353 (.A(n38474), .B(n10_adj_1872), .C(n33542), 
            .D(n1656[2]), .Z(TStates_2__N_1424[2])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_353.init = 16'hfdfc;
    ORCALUT4 i4_4_lut_adj_354 (.A(\ALU_Op_3__N_1283[3] ), .B(n8_adj_1873), 
            .C(n38514), .D(n23_adj_1813), .Z(n10_adj_1872)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+!(C))) */ ;
    defparam i4_4_lut_adj_354.init = 16'hefcf;
    ORCALUT4 i2_4_lut_adj_355 (.A(n17214), .B(n38551), .C(n1_c), .D(n33962), 
            .Z(n8_adj_1873)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i2_4_lut_adj_355.init = 16'hbbba;
    ORCALUT4 n33766_bdd_4_lut (.A(n33766), .B(n16_adj_1829), .C(n40893), 
            .D(n40897), .Z(n19)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n33766_bdd_4_lut.init = 16'hca00;
    ORCALUT4 i3_4_lut_adj_356 (.A(n38394), .B(n38684), .C(n38398), .D(n5_adj_1874), 
            .Z(n2295)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_356.init = 16'h8000;
    ORCALUT4 i20228_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(n38535), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38670), .Z(n253)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20228_4_lut.init = 16'h0a88;
    ORCALUT4 n4113_bdd_4_lut (.A(n4112[0]), .B(n6269[0]), .C(\IR[2] ), 
            .D(n38606), .Z(n38393)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n4113_bdd_4_lut.init = 16'hca00;
    ORCALUT4 BusA_1__bdd_3_lut_33660_4_lut (.A(\IR[5] ), .B(n38709), .C(\ALU_Op_r[1] ), 
            .D(BusB[2]), .Z(n37469)) /* synthesis lut_function=(A (C (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam BusA_1__bdd_3_lut_33660_4_lut.init = 16'hf440;
    ORCALUT4 Q_7__N_1613_6__bdd_3_lut_4_lut (.A(\IR[5] ), .B(n38709), .C(\ALU_Op_r[1] ), 
            .D(BusB[6]), .Z(n37734)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam Q_7__N_1613_6__bdd_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 i62_4_lut (.A(n40895), .B(n40893), .C(\IR[2] ), .D(n38741), 
            .Z(n61)) /* synthesis lut_function=(A (B+(C))+!A !(B (C+(D)))) */ ;
    defparam i62_4_lut.init = 16'hb9bd;
    ORCALUT4 i1_3_lut_4_lut_adj_357 (.A(n38691), .B(\IR[1] ), .C(n40872), 
            .D(n11), .Z(n22_adj_1875)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_3_lut_4_lut_adj_357.init = 16'hfef0;
    ORCALUT4 mux_4110_i1_3_lut_4_lut (.A(n40878), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(\IR[1] ), .Z(n6044[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4110_i1_3_lut_4_lut.init = 16'h202f;
    ORCALUT4 i61_4_lut (.A(\IR[1] ), .B(n17098), .C(n40898), .D(n33451), 
            .Z(n44)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i61_4_lut.init = 16'hfaca;
    ORCALUT4 i33273_2_lut (.A(clk_op_enable_119), .B(n146), .Z(n90)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i33273_2_lut.init = 16'h2222;
    ORCALUT4 i3_4_lut_adj_358 (.A(n38766), .B(n33808), .C(n38761), .D(n38733), 
            .Z(\ALU_Op_3__N_1054[3] )) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_358.init = 16'h8000;
    PFUMX i34158 (.BLUT(n38790), .ALUT(n38791), .C0(n38475), .Z(n38792));
    ORCALUT4 i2_4_lut_adj_359 (.A(n38769), .B(n38612), .C(\IR[4] ), .D(n38529), 
            .Z(n35217)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i2_4_lut_adj_359.init = 16'heeef;
    ORCALUT4 i1_4_lut_adj_360 (.A(n38497), .B(n38692), .C(n38612), .D(n38529), 
            .Z(n4_adj_1809)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_360.init = 16'haaa8;
    ORCALUT4 i1_4_lut_adj_361 (.A(\IR[0] ), .B(n38754), .C(n10_adj_1818), 
            .D(\IR[1] ), .Z(n33192)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_361.init = 16'ha088;
    ORCALUT4 IR_7__I_0_1679_Mux_0_i126_4_lut_then_3_lut (.A(n38670), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .Z(n38797)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam IR_7__I_0_1679_Mux_0_i126_4_lut_then_3_lut.init = 16'hf8f8;
    ORCALUT4 i9_4_lut (.A(n17), .B(n40873), .C(n16_adj_1876), .D(n33753), 
            .Z(n33872)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    ORCALUT4 i7_4_lut_adj_362 (.A(n33860), .B(n24535), .C(n38585), .D(n33508), 
            .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_362.init = 16'h8000;
    ORCALUT4 i6_4_lut (.A(n38563), .B(n38418), .C(n23652), .D(n38496), 
            .Z(n16_adj_1876)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    ORCALUT4 IR_7__I_0_1679_Mux_0_i126_4_lut_else_3_lut (.A(n38670), .B(\ALU_Op_3__N_1283[3] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .D(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n38796)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam IR_7__I_0_1679_Mux_0_i126_4_lut_else_3_lut.init = 16'hf9f8;
    ORCALUT4 i3_4_lut_adj_363 (.A(n38592), .B(n38578), .C(n24244), .D(n15933), 
            .Z(n24535)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_363.init = 16'h0080;
    ORCALUT4 i3_4_lut_adj_364 (.A(n24465), .B(n38495), .C(n38560), .D(n9_adj_1850), 
            .Z(n33846)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_364.init = 16'h0080;
    ORCALUT4 i4_4_lut_adj_365 (.A(n38600), .B(n40872), .C(n24519), .D(n6_c), 
            .Z(n24569)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_365.init = 16'h8000;
    ORCALUT4 mux_3879_i1_4_lut (.A(n6035[0]), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .D(n33805), .Z(n5737[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3879_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i32730_3_lut (.A(n5737[0]), .B(n38795), .C(\IR[4] ), .Z(n5746[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i32730_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4118_i1_4_lut (.A(n6035[0]), .B(n38766), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n33805), .Z(n6056[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4118_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i1_3_lut_4_lut_adj_366 (.A(n38523), .B(n38607), .C(n40878), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n18_adj_1877)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_366.init = 16'h7770;
    ORCALUT4 i3_4_lut_adj_367 (.A(n5_adj_1838), .B(n38571), .C(n38615), 
            .D(n38663), .Z(n24743)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_367.init = 16'h8880;
    ORCALUT4 i55_4_lut (.A(\IR[4] ), .B(n38730), .C(\IR[6] ), .D(n4_adj_1819), 
            .Z(n26_adj_1828)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i55_4_lut.init = 16'hca0a;
    ORCALUT4 i1_4_lut_adj_368 (.A(\IR[4] ), .B(n7_adj_1862), .C(n15_adj_1789), 
            .D(n35367), .Z(n110)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_368.init = 16'h05cd;
    ORCALUT4 i31828_4_lut (.A(n38390), .B(n38733), .C(n38475), .D(ALU_Op_3__N_1267[1]), 
            .Z(n35367)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i31828_4_lut.init = 16'hefee;
    ORCALUT4 i16_4_lut (.A(ISet[0]), .B(n38413), .C(n40897), .D(n38595), 
            .Z(n5_adj_1874)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i16_4_lut.init = 16'hc0c5;
    ORCALUT4 i2_3_lut_rep_625_4_lut (.A(n38701), .B(n38699), .C(n40876), 
            .D(n38741), .Z(n38604)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i2_3_lut_rep_625_4_lut.init = 16'hfdff;
    ORCALUT4 MCycle_4__I_0_2_lut_rep_547_3_lut_4_lut (.A(n38772), .B(\mc[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n38526)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_4__I_0_2_lut_rep_547_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_3_lut_4_lut_adj_369 (.A(n38523), .B(n38607), .C(n38542), 
            .D(n38622), .Z(n2_c)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_369.init = 16'h7770;
    ORCALUT4 n36874_bdd_3_lut_4_lut (.A(n38606), .B(n4786[0]), .C(n4777[0]), 
            .D(n16369), .Z(n40772)) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;
    defparam n36874_bdd_3_lut_4_lut.init = 16'he4a0;
    ORCALUT4 i45_4_lut_then_3_lut (.A(\IR[6] ), .B(\IR[5] ), .C(\IR[2] ), 
            .Z(n38800)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i45_4_lut_then_3_lut.init = 16'hfbfb;
    ORCALUT4 i5_4_lut_adj_370 (.A(n35262), .B(n38596), .C(n33991), .D(n38766), 
            .Z(n13_adj_1797)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;
    defparam i5_4_lut_adj_370.init = 16'hf5f7;
    ORCALUT4 i20418_4_lut (.A(n38759), .B(n38670), .C(n38746), .D(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n1431[2])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20418_4_lut.init = 16'hcecf;
    ORCALUT4 i31838_4_lut (.A(n35331), .B(\mc[2] ), .C(n23542), .D(n38599), 
            .Z(n35377)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i31838_4_lut.init = 16'ha080;
    ORCALUT4 mux_1269_i15_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[14]), .D(ACC[6]), .Z(n2048[14])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i15_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 mux_1269_i1_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[0]), .D(di_reg[0]), .Z(n2048[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i1_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i11_4_lut (.A(n35353), .B(n22_adj_1878), .C(n38563), .D(n33753), 
            .Z(n33991)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i11_4_lut.init = 16'hdfff;
    ORCALUT4 i10_4_lut (.A(n13_adj_1879), .B(n20_adj_1880), .C(n38573), 
            .D(n24535), .Z(n22_adj_1878)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i10_4_lut.init = 16'hefff;
    ORCALUT4 i1_4_lut_adj_371 (.A(n17041), .B(\Set_BusA_To_3__N_1212[2] ), 
            .C(n38600), .D(n38611), .Z(n13_adj_1879)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_371.init = 16'hafab;
    ORCALUT4 i8_4_lut_adj_372 (.A(n40872), .B(n16_adj_1881), .C(n49), 
            .D(n7_adj_1861), .Z(n20_adj_1880)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_372.init = 16'hfdfc;
    ORCALUT4 i4_4_lut_adj_373 (.A(n38772), .B(n38423), .C(n38528), .D(n38611), 
            .Z(n16_adj_1881)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;
    defparam i4_4_lut_adj_373.init = 16'h3f37;
    ORCALUT4 i30760_2_lut_rep_594_3_lut_4_lut (.A(n40891), .B(n38699), .C(n38730), 
            .D(n40885), .Z(n38573)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i30760_2_lut_rep_594_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 mux_1269_i16_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[15]), .D(ACC[7]), .Z(n2048[15])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i16_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 mux_1269_i12_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[11]), .D(ACC[3]), .Z(n2048[11])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i12_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_374 (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(\Set_Addr_To[2] ), .D(n9), .Z(n17303)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam i2_2_lut_3_lut_4_lut_adj_374.init = 16'h0d00;
    ORCALUT4 i3_4_lut_adj_375 (.A(n38421), .B(n24755), .C(n38492), .D(MCycles_2__N_1104), 
            .Z(n33837)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_375.init = 16'h0080;
    ORCALUT4 i4_4_lut_adj_376 (.A(n24467), .B(n38792), .C(n24429), .D(\ALU_Op_3__N_1283[3] ), 
            .Z(n33472)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i4_4_lut_adj_376.init = 16'hcfef;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_377 (.A(n38753), .B(\IR[2] ), .C(n38718), 
            .D(n4764), .Z(n33859)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_377.init = 16'h2000;
    ORCALUT4 i3_4_lut_adj_378 (.A(n5_adj_1883), .B(n37), .C(\IR[1] ), 
            .D(n25_adj_1814), .Z(n16403)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_378.init = 16'hfeee;
    ORCALUT4 i1_4_lut_adj_379 (.A(n38757), .B(n38753), .C(n38789), .D(n38772), 
            .Z(n5_adj_1883)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_379.init = 16'haeaf;
    ORCALUT4 i20934_2_lut_rep_572_3_lut_4_lut (.A(n38767), .B(n40872), .C(n38730), 
            .D(\IR[2] ), .Z(n38551)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20934_2_lut_rep_572_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i2_3_lut_rep_577_4_lut (.A(n38767), .B(n40872), .C(n38684), 
            .D(ISet[1]), .Z(n38556)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_3_lut_rep_577_4_lut.init = 16'h1000;
    ORCALUT4 i1_4_lut_adj_380 (.A(\ALU_Op_3__N_1283[3] ), .B(n17_adj_1884), 
            .C(n15_adj_1885), .D(n16_adj_1886), .Z(n17177)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_380.init = 16'h2aaa;
    ORCALUT4 i7_4_lut_adj_381 (.A(n38527), .B(n38590), .C(n33860), .D(n23651), 
            .Z(n17_adj_1884)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_381.init = 16'h8000;
    ORCALUT4 i6_4_lut_adj_382 (.A(n33535), .B(n33508), .C(n38447), .D(n38572), 
            .Z(n16_adj_1886)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_382.init = 16'h8000;
    ORCALUT4 mux_4361_i1_4_lut (.A(n11237), .B(n38489), .C(\IR[6] ), .D(\IR[1] ), 
            .Z(n6381[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4361_i1_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1269_i13_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[12]), .D(ACC[4]), .Z(n2048[12])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i13_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i7_4_lut_adj_383 (.A(n38531), .B(n14_adj_1887), .C(n9688), 
            .D(n16907), .Z(n16_adj_1796)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_383.init = 16'hfdfc;
    ORCALUT4 i5_4_lut_adj_384 (.A(n38766), .B(n10_adj_1888), .C(n38593), 
            .D(n16398), .Z(n14_adj_1887)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_384.init = 16'hfcec;
    ORCALUT4 i20877_2_lut_3_lut_4_lut (.A(n38767), .B(n38739), .C(n38740), 
            .D(n38688), .Z(n24365)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i20877_2_lut_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i3_4_lut_adj_385 (.A(n24_adj_1889), .B(n1_c), .C(n24094), 
            .D(n33962), .Z(n12_c)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_385.init = 16'hafae;
    ORCALUT4 select_846_Select_2_i24_4_lut (.A(n894[2]), .B(n38594), .C(n16398), 
            .D(n38766), .Z(n24_adj_1889)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_846_Select_2_i24_4_lut.init = 16'h3230;
    ORCALUT4 i20185_2_lut_rep_520_3_lut_4_lut (.A(n38767), .B(n38739), .C(n38740), 
            .D(n38645), .Z(n38499)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i20185_2_lut_rep_520_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i31753_2_lut_3_lut_4_lut_4_lut (.A(n38767), .B(n38739), .C(n38688), 
            .D(n38667), .Z(n35285)) /* synthesis lut_function=(A ((D)+!B)+!A ((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i31753_2_lut_3_lut_4_lut_4_lut.init = 16'hfb33;
    ORCALUT4 i45_4_lut_else_3_lut (.A(\IR[6] ), .B(\IR[1] ), .C(\IR[2] ), 
            .D(\IR[0] ), .Z(n38799)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i45_4_lut_else_3_lut.init = 16'h7f77;
    ORCALUT4 IR_7__I_0_1613_i15_2_lut_rep_584_3_lut_4_lut (.A(n38730), .B(n38729), 
            .C(n38739), .D(n38767), .Z(n38563)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1613_i15_2_lut_rep_584_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i3_4_lut_adj_386 (.A(n18_adj_1877), .B(n6_adj_1890), .C(\IR[6] ), 
            .D(n33), .Z(n31)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_386.init = 16'hfeee;
    ORCALUT4 i1_2_lut_rep_452_3_lut_4_lut (.A(n38589), .B(n38604), .C(n38658), 
            .D(\mc[5] ), .Z(n38431)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_rep_452_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i4_4_lut_adj_387 (.A(n34306), .B(n33991), .C(n38598), .D(n38596), 
            .Z(n10_adj_1794)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i4_4_lut_adj_387.init = 16'hdfff;
    ORCALUT4 i30805_4_lut (.A(n38559), .B(\ALU_Op_3__N_1283[3] ), .C(n24275), 
            .D(n38550), .Z(n34306)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i30805_4_lut.init = 16'ha888;
    ORCALUT4 i2_4_lut_adj_388 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n24467), 
            .C(n34576), .D(n38753), .Z(n6_adj_1890)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_388.init = 16'heca8;
    ORCALUT4 i3_4_lut_adj_389 (.A(\IR[0] ), .B(n6_adj_1891), .C(n34356), 
            .D(\IR[5] ), .Z(n34576)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i3_4_lut_adj_389.init = 16'hcfef;
    ORCALUT4 i2_4_lut_adj_390 (.A(\IR[2] ), .B(\IR[6] ), .C(n38725), .D(n71), 
            .Z(n6_adj_1891)) /* synthesis lut_function=(A ((D)+!B)+!A !(B+(C))) */ ;
    defparam i2_4_lut_adj_390.init = 16'hab23;
    ORCALUT4 i71_4_lut (.A(\IR[1] ), .B(n17124), .C(n40898), .D(n33451), 
            .Z(n71)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i71_4_lut.init = 16'hfaca;
    ORCALUT4 i2_3_lut_4_lut_adj_391 (.A(n38529), .B(n38528), .C(n38509), 
            .D(n33672), .Z(n34952)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_391.init = 16'hfff2;
    ORCALUT4 i1_2_lut_rep_445_3_lut_4_lut (.A(n38730), .B(n38729), .C(n24743), 
            .D(n38662), .Z(n38424)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_445_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 mux_3102_i1_4_lut (.A(n40878), .B(n38521), .C(\IR[0] ), .D(\Set_BusA_To_3__N_1216[0] ), 
            .Z(n4690[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3102_i1_4_lut.init = 16'hca0a;
    ORCALUT4 mux_1269_i11_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[10]), .D(ACC[2]), .Z(n2048[10])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i11_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_3_lut_4_lut_adj_392 (.A(n38730), .B(n38729), .C(n38766), 
            .D(n38669), .Z(n34544)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_4_lut_adj_392.init = 16'h0080;
    ORCALUT4 i1_3_lut_4_lut_adj_393 (.A(n38529), .B(n38528), .C(n38531), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n33918)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_393.init = 16'h2f22;
    PFUMX i34156 (.BLUT(n38788), .ALUT(n38788), .C0(n40887), .Z(n38789));
    ORCALUT4 i20292_4_lut (.A(n38521), .B(\IR[1] ), .C(n4539[0]), .D(\IR[2] ), 
            .Z(n4756[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20292_4_lut.init = 16'hc088;
    ORCALUT4 i1_2_lut_rep_532_3_lut_4_lut (.A(n38730), .B(n38729), .C(n38604), 
            .D(n38665), .Z(n38511)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_532_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 mux_3166_i1_4_lut (.A(\ALU_Op_3__N_1283[3] ), .B(n4783[0]), 
            .C(\IR[6] ), .D(\IR[1] ), .Z(n4786[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3166_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_adj_394 (.A(\ALU_Op_3__N_1283[3] ), .B(n38492), .C(n5_adj_1892), 
            .D(n6_adj_1893), .Z(n4_adj_1793)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_adj_394.init = 16'h7773;
    ORCALUT4 i1_4_lut_adj_395 (.A(n31727), .B(n38531), .C(n4_adj_1776), 
            .D(n12486), .Z(n5_adj_1892)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_adj_395.init = 16'hfbfa;
    ORCALUT4 i2_4_lut_adj_396 (.A(n24094), .B(n38483), .C(\mc[2] ), .D(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n6_adj_1893)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_4_lut_adj_396.init = 16'hddcd;
    ORCALUT4 i3_4_lut_adj_397 (.A(n5_adj_1811), .B(n38440), .C(n24915), 
            .D(n38530), .Z(n33939)) /* synthesis lut_function=(A+!(B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_397.init = 16'hafef;
    ORCALUT4 i2_4_lut_adj_398 (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38530), 
            .C(n38584), .D(n38484), .Z(n15720)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_398.init = 16'h3233;
    ORCALUT4 mux_3624_i1_4_lut (.A(n38641), .B(n38684), .C(\IR[1] ), .D(n38716), 
            .Z(n5394[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3624_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i16_4_lut_adj_399 (.A(n31_adj_1894), .B(n35307), .C(n35369), 
            .D(n35305), .Z(n31727)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i16_4_lut_adj_399.init = 16'hbfff;
    ORCALUT4 i1_2_lut_4_lut_adj_400 (.A(n38535), .B(\ALU_Op_3__N_1283[3] ), 
            .C(n38670), .D(\IR[5] ), .Z(n43)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_4_lut_adj_400.init = 16'h3a00;
    ORCALUT4 i14_4_lut (.A(n27), .B(n38563), .C(n22_adj_1895), .D(n38421), 
            .Z(n31_adj_1894)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i14_4_lut.init = 16'hfbff;
    ORCALUT4 i31830_4_lut (.A(n38487), .B(n38590), .C(n38507), .D(n35285), 
            .Z(n35369)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i31830_4_lut.init = 16'h8000;
    ORCALUT4 i10_4_lut_adj_401 (.A(n23651), .B(n35311), .C(n38450), .D(n38593), 
            .Z(n27)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i10_4_lut_adj_401.init = 16'hf777;
    ORCALUT4 i5_4_lut_adj_402 (.A(n38611), .B(n24569), .C(n38528), .D(n40875), 
            .Z(n22_adj_1895)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i5_4_lut_adj_402.init = 16'h3f3b;
    ORCALUT4 i20288_2_lut_4_lut (.A(n38541), .B(n40878), .C(\IR[1] ), 
            .D(n7285), .Z(n4759[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20288_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_403 (.A(n38766), .B(n38596), .C(n38528), 
            .D(n38529), .Z(n7_adj_1896)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_2_lut_3_lut_4_lut_adj_403.init = 16'h2f22;
    ORCALUT4 mux_1269_i14_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[13]), .D(ACC[5]), .Z(n2048[13])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i14_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 mux_1269_i9_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[8]), .D(ACC[0]), .Z(n2048[8])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i9_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i33114_3_lut (.A(\Set_BusA_To[3] ), .B(\Set_BusA_To[2] ), .C(\Set_BusA_To[1] ), 
            .Z(n23616)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i33114_3_lut.init = 16'h5757;
    ORCALUT4 i5011_2_lut (.A(\IR[2] ), .B(\IR[1] ), .Z(n7243)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5011_2_lut.init = 16'hbbbb;
    ORCALUT4 mux_4120_i1_3_lut (.A(n6044[0]), .B(\IR[2] ), .C(n4764), 
            .Z(n6059[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4120_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1269_i8_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[7]), .D(di_reg[7]), .Z(n2048[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i8_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_3644_i1 (.BLUT(n5409[0]), .ALUT(n33859), .C0(\IR[6] ), .Z(n5424[0]));
    ORCALUT4 i2_3_lut_rep_553_4_lut (.A(n38738), .B(\IR[0] ), .C(n38699), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38532)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_rep_553_4_lut.init = 16'hfbff;
    ORCALUT4 i2_2_lut_rep_528_3_lut_4_lut (.A(n38738), .B(n40898), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n38739), .Z(n38507)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_rep_528_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i30811_4_lut (.A(n35130), .B(\IR[2] ), .C(n38609), .D(n38741), 
            .Z(n34312)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i30811_4_lut.init = 16'hfeff;
    ORCALUT4 i30826_4_lut (.A(n38772), .B(n38560), .C(n38453), .D(n38495), 
            .Z(n34328)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i30826_4_lut.init = 16'heaaa;
    ORCALUT4 i11_4_lut_adj_404 (.A(n35323), .B(n22_adj_1897), .C(ISet[0]), 
            .D(n17109), .Z(n24_adj_1783)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i11_4_lut_adj_404.init = 16'hfffd;
    ORCALUT4 i9_4_lut_adj_405 (.A(n17_adj_1898), .B(n38558), .C(n24_adj_1899), 
            .D(n38593), .Z(n22_adj_1897)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i9_4_lut_adj_405.init = 16'hfbfa;
    ORCALUT4 i4_4_lut_adj_406 (.A(n34758), .B(n38526), .C(n38530), .D(n38484), 
            .Z(n17_adj_1898)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i4_4_lut_adj_406.init = 16'haeaf;
    ORCALUT4 select_819_Select_1_i24_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), 
            .B(n38594), .C(n38582), .D(n4_adj_1831), .Z(n24_adj_1899)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_819_Select_1_i24_4_lut.init = 16'h3332;
    ORCALUT4 i2_2_lut_rep_548_3_lut_4_lut (.A(\IR[2] ), .B(n38739), .C(n40887), 
            .D(n38769), .Z(n38527)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_548_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_adj_407 (.A(\IR[2] ), .B(\IR[0] ), .Z(n11_adj_1854)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_407.init = 16'h4444;
    ORCALUT4 i33207_4_lut (.A(n38592), .B(n12_adj_1900), .C(n33837), .D(n38574), 
            .Z(n34758)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i33207_4_lut.init = 16'h7fff;
    ORCALUT4 i5_4_lut_adj_408 (.A(n33535), .B(n38595), .C(n38528), .D(n38494), 
            .Z(n12_adj_1900)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_408.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_409 (.A(\IR[2] ), .B(n38739), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(n38741), .Z(n1_adj_9)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_409.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_410 (.A(n33525), .B(n16403), .C(n7946), .D(n35245), 
            .Z(n8_adj_1782)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i3_4_lut_adj_410.init = 16'hddfd;
    ORCALUT4 IR_5__I_0_i7_3_lut_rep_676 (.A(n3_adj_1851), .B(n6_adj_1849), 
            .C(n40891), .Z(n38655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i7_3_lut_rep_676.init = 16'hcaca;
    ORCALUT4 i20375_2_lut_4_lut (.A(n3_adj_1851), .B(n6_adj_1849), .C(\IR[5] ), 
            .D(\ALU_Op_3__N_1283[3] ), .Z(n894[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam i20375_2_lut_4_lut.init = 16'hffca;
    ORCALUT4 select_593_Select_1_i4_2_lut_4_lut (.A(n3_adj_1851), .B(n6_adj_1849), 
            .C(n40891), .D(n38766), .Z(n4_adj_1831)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam select_593_Select_1_i4_2_lut_4_lut.init = 16'h3500;
    ORCALUT4 i2_3_lut_4_lut_adj_411 (.A(\ALU_Op_3__N_1283[3] ), .B(n38605), 
            .C(n38555), .D(n38584), .Z(n34936)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_adj_411.init = 16'hfff1;
    ORCALUT4 select_596_Select_2_i4_2_lut_rep_574_4_lut (.A(n3_adj_1851), 
            .B(n6_adj_1849), .C(\IR[5] ), .D(n38766), .Z(n38553)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam select_596_Select_2_i4_2_lut_rep_574_4_lut.init = 16'hca00;
    ORCALUT4 i5_4_lut_adj_412 (.A(n6372[0]), .B(n7_adj_1856), .C(n40898), 
            .D(ISet[1]), .Z(n1165)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut_adj_412.init = 16'h0800;
    ORCALUT4 i21_4_lut (.A(n8_adj_1902), .B(n22_adj_1875), .C(ISet[1]), 
            .D(n4_adj_1903), .Z(\mcycles_d[1] )) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut.init = 16'h3afa;
    ORCALUT4 i1_4_lut_adj_413 (.A(n38474), .B(n38666), .C(n40872), .D(n33824), 
            .Z(n4_adj_1903)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_413.init = 16'ha8a0;
    ORCALUT4 i6_4_lut_adj_414 (.A(n8_adj_1860), .B(n17041), .C(n38530), 
            .D(n34117), .Z(n14_adj_1779)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i6_4_lut_adj_414.init = 16'hefff;
    ORCALUT4 mux_1269_i10_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[9]), .D(ACC[1]), .Z(n2048[9])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i10_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i5_4_lut_adj_415 (.A(n40872), .B(n10_adj_1904), .C(n34117), 
            .D(n6_adj_1905), .Z(n13_c)) /* synthesis lut_function=(A (B+!(C))+!A (B+((D)+!C))) */ ;
    defparam i5_4_lut_adj_415.init = 16'hdfcf;
    ORCALUT4 i2_4_lut_adj_416 (.A(n38670), .B(MCycles_2__N_1174[1]), .C(n40873), 
            .D(n38428), .Z(n10_adj_1904)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i2_4_lut_adj_416.init = 16'h05cd;
    ORCALUT4 i2_4_lut_adj_417 (.A(n38679), .B(n38655), .C(n38555), .D(\ALU_Op_3__N_1283[3] ), 
            .Z(MCycles_2__N_1174[1])) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_4_lut_adj_417.init = 16'hfdf5;
    ORCALUT4 i2_3_lut_4_lut_adj_418 (.A(n38737), .B(\mc[6] ), .C(Set_Addr_To_2__N_1058[0]), 
            .D(n31326), .Z(n34654)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_4_lut_adj_418.init = 16'hb000;
    ORCALUT4 i6_4_lut_adj_419 (.A(n31502), .B(n35357), .C(n38611), .D(n38528), 
            .Z(n14)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i6_4_lut_adj_419.init = 16'hbbbf;
    ORCALUT4 i31822_4_lut (.A(n24244), .B(n24755), .C(n31303), .D(n24267), 
            .Z(n35357)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i31822_4_lut.init = 16'h8000;
    ORCALUT4 i2_3_lut_4_lut_adj_420 (.A(n38605), .B(\mc[4] ), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(n38584), .Z(n34776)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i2_3_lut_4_lut_adj_420.init = 16'hfff1;
    ORCALUT4 i20065_2_lut_3_lut_4_lut (.A(n38737), .B(\mc[6] ), .C(n38727), 
            .D(Set_Addr_To_2__N_1058[0]), .Z(n23522)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i20065_2_lut_3_lut_4_lut.init = 16'hfbf0;
    ORCALUT4 i1_2_lut_rep_419_3_lut_4_lut (.A(n38737), .B(\mc[6] ), .C(n9), 
            .D(Set_Addr_To_2__N_1058[0]), .Z(n38398)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut_rep_419_3_lut_4_lut.init = 16'h40f0;
    ORCALUT4 Set_BusB_To_3__I_0_i2_3_lut_4_lut (.A(n38737), .B(\mc[6] ), 
            .C(n40883), .D(Set_BusB_To_3__N_1042[1]), .Z(\Set_BusB_To[1] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i2_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 IR_7__I_0_1610_i15_2_lut_rep_586_3_lut_4_lut (.A(n38741), .B(n38691), 
            .C(n38699), .D(n38767), .Z(n38565)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam IR_7__I_0_1610_i15_2_lut_rep_586_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 Set_BusB_To_3__I_0_i3_3_lut_4_lut (.A(n38737), .B(\mc[6] ), 
            .C(n40885), .D(Set_BusB_To_3__N_1042[2]), .Z(\Set_BusB_To[2] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i3_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 Set_BusB_To_3__I_0_i1_3_lut_4_lut (.A(n38737), .B(\mc[6] ), 
            .C(n40898), .D(Set_BusB_To_3__N_1042[0]), .Z(\Set_BusB_To[0] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i1_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_3887_i1_4_lut_4_lut (.A(n38606), .B(n38630), .C(n5743[0]), 
            .D(n38741), .Z(n5749[0])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam mux_3887_i1_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 i6_4_lut_adj_421 (.A(Set_BusA_To_3__N_1185[0]), .B(n12_adj_1906), 
            .C(n8_adj_1907), .D(n38469), .Z(n21552)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut_adj_421.init = 16'hfcfe;
    PFUMX i33334 (.BLUT(n36893), .ALUT(n36892), .C0(ISet[1]), .Z(LDZ));
    PFUMX i144 (.BLUT(n92), .ALUT(n35134), .C0(ISet[1]), .Z(n146));
    ORCALUT4 i5_4_lut_adj_422 (.A(n9_adj_1908), .B(n34045), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(n38532), .Z(n12_adj_1906)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_422.init = 16'heefe;
    ORCALUT4 i1_4_lut_adj_423 (.A(n33456), .B(n2_adj_1804), .C(n38507), 
            .D(n38753), .Z(n8_adj_1907)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_423.init = 16'hafae;
    ORCALUT4 i2_4_lut_adj_424 (.A(n38753), .B(n38684), .C(n38530), .D(n15_adj_1774), 
            .Z(n9_adj_1908)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_424.init = 16'h0ace;
    ORCALUT4 i1_4_lut_adj_425 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n38528), 
            .C(n38509), .D(n31065), .Z(n34045)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_425.init = 16'haaa2;
    ORCALUT4 mux_1269_i7_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[6]), .D(di_reg[6]), .Z(n2048[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i7_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i20869_2_lut_3_lut_4_lut (.A(n38730), .B(n40876), .C(n38740), 
            .D(n38672), .Z(n24357)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i20869_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 mux_1269_i6_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[5]), .D(di_reg[5]), .Z(n2048[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i6_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i5_4_lut_adj_426 (.A(n9_adj_1909), .B(n38_adj_1834), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n34203), .Z(n12)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i5_4_lut_adj_426.init = 16'heefe;
    ORCALUT4 i2_4_lut_adj_427 (.A(n38530), .B(\IR[0] ), .C(n38753), .D(n33929), 
            .Z(n9_adj_1909)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_427.init = 16'hdc50;
    ORCALUT4 i1_4_lut_adj_428 (.A(n18_adj_1911), .B(n38766), .C(n5_adj_1853), 
            .D(n35295), .Z(n8_adj_10)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_428.init = 16'heaee;
    ORCALUT4 i20188_2_lut_rep_527_3_lut_4_lut (.A(n38730), .B(n40877), .C(n38740), 
            .D(n38668), .Z(n38506)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20188_2_lut_rep_527_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i20867_2_lut_rep_525_3_lut_4_lut (.A(n38730), .B(n40877), .C(n38740), 
            .D(n38672), .Z(n38504)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20867_2_lut_rep_525_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_429 (.A(n38730), .B(n40877), .C(n33723), 
            .D(n38668), .Z(n4_adj_1863)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_429.init = 16'h0080;
    ORCALUT4 i2_3_lut_adj_430 (.A(Auto_Wait_t1), .B(last_tstate), .C(iorq), 
            .Z(clk_op_enable_326)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_adj_430.init = 16'hefef;
    ORCALUT4 i1_2_lut_adj_431 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n16562), 
            .Z(n16563)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_431.init = 16'h8888;
    PFUMX i34154 (.BLUT(n38782), .ALUT(n38783), .C0(n24094), .Z(n38784));
    ORCALUT4 IR_7__I_0_1627_i15_2_lut_rep_598_3_lut_4_lut (.A(n38739), .B(n38701), 
            .C(n38729), .D(n38730), .Z(n38577)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam IR_7__I_0_1627_i15_2_lut_rep_598_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i3_4_lut_adj_432 (.A(n38761), .B(n38437), .C(n38438), .D(n33913), 
            .Z(n8_adj_1772)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i3_4_lut_adj_432.init = 16'hffa8;
    ORCALUT4 i1_3_lut_adj_433 (.A(n38652), .B(\tstate[2] ), .C(n28), .Z(n938)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(55[25:32])
    defparam i1_3_lut_adj_433.init = 16'h2a2a;
    ORCALUT4 i20891_2_lut_rep_581_3_lut_4_lut (.A(n38739), .B(n38701), .C(n38730), 
            .D(\IR[2] ), .Z(n38560)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i20891_2_lut_rep_581_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i2_2_lut_rep_513_3_lut_4_lut (.A(n38739), .B(n38701), .C(n38616), 
            .D(n38688), .Z(n38492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C))) */ ;
    defparam i2_2_lut_rep_513_3_lut_4_lut.init = 16'h0f07;
    PFUMX i21 (.BLUT(n8_adj_1798), .ALUT(n34532), .C0(n40897), .Z(Set_Addr_To_2__N_1427[0]));
    PFUMX i22 (.BLUT(TStates_2__N_1418[2]), .ALUT(TStates_2__N_1421[2]), 
          .C0(ISet[0]), .Z(n8_adj_1871));
    ORCALUT4 i33106_2_lut_rep_533_3_lut_4_lut (.A(n38739), .B(n38701), .C(n38740), 
            .D(n38688), .Z(n38512)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i33106_2_lut_rep_533_3_lut_4_lut.init = 16'h0008;
    PFUMX i21_adj_434 (.BLUT(n8_adj_1795), .ALUT(n35062), .C0(n40897), 
          .Z(\Set_Addr_To_2__N_1427[2] ));
    ORCALUT4 i1_4_lut_adj_435 (.A(\IR[4] ), .B(n33794), .C(n38527), .D(n38772), 
            .Z(n23)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_435.init = 16'h8a88;
    ORCALUT4 i33190_2_lut (.A(\IR[0] ), .B(\IR[2] ), .Z(n7285)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i33190_2_lut.init = 16'h1111;
    PFUMX i87 (.BLUT(n60), .ALUT(n58_adj_11), .C0(ISet[1]), .Z(n63));
    ORCALUT4 i4_4_lut_adj_436 (.A(n7_adj_1896), .B(\IR[1] ), .C(n18_adj_1911), 
            .D(n34726), .Z(n10_adj_12)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_436.init = 16'hfefa;
    ORCALUT4 i2_4_lut_adj_437 (.A(n75), .B(n38442), .C(n1030), .D(n7_adj_1826), 
            .Z(n34726)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_437.init = 16'hfeee;
    ORCALUT4 i20085_2_lut_3_lut_4_lut (.A(n38699), .B(n38765), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38681), .Z(n23542)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20085_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i2_3_lut_rep_580_4_lut (.A(n38699), .B(n38765), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n38682), .Z(n38559)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_rep_580_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_438 (.A(n38770), .B(n24673), .C(n38437), .D(n38753), 
            .Z(n6_adj_1792)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_438.init = 16'heca0;
    ORCALUT4 i1_2_lut_adj_439 (.A(\IR[4] ), .B(n16562), .Z(n15767)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_439.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_440 (.A(n38584), .B(n38605), .C(n38741), 
            .D(n38555), .Z(n5_adj_1781)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2528[19] 2576[26])
    defparam i1_2_lut_3_lut_4_lut_adj_440.init = 16'hf0b0;
    ORCALUT4 i33095_2_lut_rep_537_3_lut_4_lut (.A(n38699), .B(n38765), .C(n38740), 
            .D(n38664), .Z(n38516)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i33095_2_lut_rep_537_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 mux_1269_i5_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[4]), .D(di_reg[4]), .Z(n2048[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i5_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_3_lut_4_lut_adj_441 (.A(n38585), .B(n38616), .C(n38532), 
            .D(n1656[2]), .Z(n10_adj_1888)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_adj_441.init = 16'hdfdd;
    ORCALUT4 mux_291_i1_3_lut_4_lut (.A(n38661), .B(n38556), .C(\Q_7__N_1732[0] ), 
            .D(BusB[0]), .Z(n1177[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i1_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_1269_i4_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[3]), .D(di_reg[3]), .Z(n2048[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i4_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 IR_7__I_0_1662_i15_2_lut_rep_610_3_lut_4_lut (.A(n38765), .B(n38739), 
            .C(n38729), .D(n38730), .Z(n38589)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam IR_7__I_0_1662_i15_2_lut_rep_610_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 mux_291_i2_3_lut_4_lut (.A(n38661), .B(n38556), .C(\BusA[1] ), 
            .D(BusB[1]), .Z(n1177[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i2_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i3_3_lut_4_lut (.A(n38661), .B(n38556), .C(\BusA[2] ), 
            .D(BusB[2]), .Z(n1177[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i3_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_1269_i3_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[2]), .D(di_reg[2]), .Z(n2048[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i3_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 mux_1269_i2_3_lut_4_lut (.A(Set_Addr_To_2__N_1058[0]), .B(n38658), 
            .C(SP[1]), .D(di_reg[1]), .Z(n2048[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1269_i2_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i20767_2_lut_3_lut_4_lut_4_lut (.A(n38765), .B(n38739), .C(n38683), 
            .D(n38667), .Z(n24244)) /* synthesis lut_function=(A ((D)+!B)+!A ((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i20767_2_lut_3_lut_4_lut_4_lut.init = 16'hfb33;
    ORCALUT4 mux_291_i4_3_lut_4_lut (.A(n38661), .B(n38556), .C(\BusA[3] ), 
            .D(BusB[3]), .Z(n1177[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i33244_2_lut_rep_614_3_lut_4_lut (.A(n38769), .B(n40877), .C(n38739), 
            .D(n38765), .Z(n38593)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam i33244_2_lut_rep_614_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i20317_2_lut (.A(\IR[4] ), .B(\ALU_Op_3__N_1283[3] ), .Z(ALU_Op_3__N_1267[1])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1913[23] 1918[28])
    defparam i20317_2_lut.init = 16'heeee;
    PFUMX i21_adj_442 (.BLUT(n8_adj_1788), .ALUT(TStates_2__N_1424[0]), 
          .C0(ISet[1]), .Z(\TStates_2__N_1021[0] ));
    ORCALUT4 mux_291_i5_3_lut_4_lut (.A(n38661), .B(n38556), .C(BusB[0]), 
            .D(BusB[4]), .Z(n1177[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 IR_7__I_0_1663_i15_2_lut_rep_609_3_lut_4_lut (.A(n38769), .B(n40877), 
            .C(n38739), .D(n38767), .Z(n38588)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1663_i15_2_lut_rep_609_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 mux_291_i6_3_lut_4_lut (.A(n38661), .B(n38556), .C(BusB[1]), 
            .D(BusB[5]), .Z(n1177[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_443 (.A(\IR[2] ), .B(n38741), .C(n38693), 
            .D(n38699), .Z(n24519)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_443.init = 16'hfffb;
    ORCALUT4 mux_291_i7_3_lut_4_lut (.A(n38661), .B(n38556), .C(BusB[2]), 
            .D(BusB[6]), .Z(n1177[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i7_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i8_3_lut_4_lut (.A(n38661), .B(n38556), .C(BusB[3]), 
            .D(BusB[7]), .Z(n1177[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i8_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i31734_3_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38598), 
            .C(n38595), .D(n38558), .Z(n35262)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i31734_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i31786_3_lut_4_lut (.A(\Set_BusA_To_3__N_1212[2] ), .B(n38598), 
            .C(n34108), .D(n15933), .Z(n35319)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i31786_3_lut_4_lut.init = 16'h00e0;
    PFUMX i21_adj_444 (.BLUT(n35163), .ALUT(n34723), .C0(ISet[1]), .Z(\Set_Addr_To_2__N_1427[1] ));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_445 (.A(\IR[2] ), .B(n38741), .C(n38765), 
            .D(n38699), .Z(n31303)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_445.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1622_i15_2_lut_rep_595_3_lut_4_lut (.A(n38767), .B(n38699), 
            .C(n40877), .D(n38730), .Z(n38574)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam IR_7__I_0_1622_i15_2_lut_rep_595_3_lut_4_lut.init = 16'hefff;
    PFUMX i33331 (.BLUT(n38393), .ALUT(n36889), .C0(n4472), .Z(n36891));
    ORCALUT4 i33257_2_lut_3_lut_4_lut (.A(n38767), .B(n38699), .C(n40876), 
            .D(n38730), .Z(MCycles_2__N_1104)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i33257_2_lut_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 i2_3_lut_4_lut_adj_446 (.A(n38590), .B(n38534), .C(n38572), 
            .D(n38530), .Z(n33753)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_446.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_616_3_lut_4_lut (.A(n38767), .B(n38699), .C(n38741), 
            .D(\IR[2] ), .Z(n38595)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_rep_616_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i31775_2_lut_4_lut (.A(n38595), .B(n38608), .C(n38601), .D(n24743), 
            .Z(n35307)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i31775_2_lut_4_lut.init = 16'ha800;
    ORCALUT4 i20192_2_lut_3_lut_4_lut (.A(n38767), .B(n38699), .C(n38730), 
            .D(n40885), .Z(n23651)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i20192_2_lut_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i1_2_lut_4_lut_adj_447 (.A(n38595), .B(n38608), .C(n38601), 
            .D(n24569), .Z(n33860)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_447.init = 16'ha800;
    ORCALUT4 i1_2_lut_rep_474_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(n38569), 
            .C(n38561), .D(n38580), .Z(n38453)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_474_4_lut.init = 16'hea00;
    ORCALUT4 i3_4_lut_adj_448 (.A(n5_adj_1827), .B(n33487), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(n38616), .Z(\IncDec_16_3__N_1026[3] )) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_448.init = 16'hfeee;
    ORCALUT4 i5_2_lut_3_lut_4_lut (.A(n38693), .B(n38739), .C(n40873), 
            .D(n38688), .Z(n15_adj_1885)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i5_2_lut_3_lut_4_lut.init = 16'hf0b0;
    PFUMX i34063 (.BLUT(n38199), .ALUT(n38198), .C0(n40887), .Z(n38200));
    ORCALUT4 i11195_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(n17373), .C(n38538), 
            .D(n31782), .Z(n14338)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i11195_4_lut.init = 16'hcac0;
    ORCALUT4 mux_4670_i1_3_lut (.A(Save_ALU_N_1482), .B(Read_To_Reg_N_1466), 
            .C(ISet[0]), .Z(n6797[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_4670_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_619_4_lut (.A(n38693), .B(n38739), .C(\IR[2] ), 
            .D(n38730), .Z(n38598)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i2_3_lut_rep_619_4_lut.init = 16'hfbff;
    ORCALUT4 i30868_4_lut (.A(n38604), .B(\mc[4] ), .C(n34244), .D(\mc[3] ), 
            .Z(n34372)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i30868_4_lut.init = 16'haaa8;
    ORCALUT4 i30752_2_lut (.A(\mc[6] ), .B(\mc[5] ), .Z(n34244)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30752_2_lut.init = 16'heeee;
    ORCALUT4 select_1772_Select_0_i1_2_lut_3_lut_4_lut (.A(n38693), .B(n38739), 
            .C(n38766), .D(n38683), .Z(n1_adj_1867)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam select_1772_Select_0_i1_2_lut_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i20407_4_lut (.A(n6372[0]), .B(n38436), .C(n6381[0]), .D(n38459), 
            .Z(IORQ_N_1493)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20407_4_lut.init = 16'hc088;
    ORCALUT4 i20749_2_lut_rep_536_3_lut_4_lut_4_lut (.A(n38693), .B(n38739), 
            .C(n38666), .D(n38701), .Z(n38515)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i20749_2_lut_rep_536_3_lut_4_lut_4_lut.init = 16'hf3fb;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_449 (.A(n38693), .B(n38739), .C(\Set_BusA_To_3__N_1212[2] ), 
            .D(n38683), .Z(n18_adj_1911)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_449.init = 16'h0040;
    ORCALUT4 n37440_bdd_3_lut_4_lut (.A(\IR[1] ), .B(n38751), .C(n37437), 
            .D(n37440), .Z(n37441)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam n37440_bdd_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i30957_2_lut_rep_477_4_lut (.A(\IR[2] ), .B(n38692), .C(n38609), 
            .D(n38753), .Z(n38456)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30957_2_lut_rep_477_4_lut.init = 16'hfffe;
    ORCALUT4 i20_2_lut_3_lut_4_lut (.A(\IR[1] ), .B(n38751), .C(n38701), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n6_adj_1905)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20_2_lut_3_lut_4_lut.init = 16'h22d2;
    ORCALUT4 i31881_4_lut_4_lut (.A(\IR[1] ), .B(n38751), .C(n38740), 
            .D(Halt_FF), .Z(n35424)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i31881_4_lut_4_lut.init = 16'hff02;
    PFUMX i22_adj_450 (.BLUT(MCycles_2__N_1012[0]), .ALUT(MCycles_2__N_1015[0]), 
          .C0(ISet[0]), .Z(n8_adj_1842));
    ORCALUT4 i1_3_lut_4_lut_adj_451 (.A(n40883), .B(n38751), .C(\ALU_Op_3__N_1283[3] ), 
            .D(n40873), .Z(n49)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_451.init = 16'h00df;
    ORCALUT4 i1_3_lut_4_lut_adj_452 (.A(\IR[1] ), .B(n38751), .C(n38753), 
            .D(n40873), .Z(n75)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_452.init = 16'h00fd;
    ORCALUT4 i1_4_lut_adj_453 (.A(n38701), .B(n38477), .C(n38527), .D(n38753), 
            .Z(n34043)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_4_lut_adj_453.init = 16'h8a88;
    ORCALUT4 i1_2_lut_rep_802 (.A(\ALU_Op_3__N_1283[3] ), .B(\Set_BusA_To_3__N_1212[2] ), 
            .Z(n40875)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_802.init = 16'h1111;
    PFUMX i22_adj_454 (.BLUT(MCycles_2__N_1012[1]), .ALUT(MCycles_2__N_1015[1]), 
          .C0(ISet[0]), .Z(n8_adj_1902));
    PFUMX i11200 (.BLUT(n2428[1]), .ALUT(n14342), .C0(n35784), .Z(\IncDec_16[1] ));
    PFUMX i34173 (.BLUT(n38796), .ALUT(n38797), .C0(\mc[6] ), .Z(n38816));
    ORCALUT4 i9412_4_lut (.A(n38678), .B(n38761), .C(n5_adj_1780), .D(n38521), 
            .Z(n12370)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9412_4_lut.init = 16'hca0a;
    PFUMX i11198 (.BLUT(n2428[2]), .ALUT(n14340), .C0(n35784), .Z(\IncDec_16[2] ));
    ORCALUT4 i1_2_lut_4_lut_adj_455 (.A(\IR[2] ), .B(n38730), .C(n38609), 
            .D(n38501), .Z(n33542)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_455.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_456 (.A(\ALU_Op_3__N_1283[3] ), .B(n38584), 
            .C(n38502), .D(n38680), .Z(n17214)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_456.init = 16'h0f0e;
    PFUMX i21_adj_457 (.BLUT(n32470), .ALUT(Set_BusB_To_3__N_1414[0]), .C0(n40897), 
          .Z(Set_BusB_To_3__N_1042[0]));
    PFUMX i21_adj_458 (.BLUT(n32568), .ALUT(Set_BusB_To_3__N_1414[2]), .C0(n40897), 
          .Z(Set_BusB_To_3__N_1042[2]));
    PFUMX i21_adj_459 (.BLUT(n32784), .ALUT(Set_BusB_To_3__N_1414[1]), .C0(n40897), 
          .Z(Set_BusB_To_3__N_1042[1]));
    
endmodule
//
// Verilog Description of module tv80_alu
//

module tv80_alu (n35771, \ALU_Q[1] , \Set_BusA_To_3__N_1216[0] , \BusA[6] , 
            VCC_net, \BusA[7] , \BusA[4] , \BusA[5] , \BusA[2] , \BusA[3] , 
            \F[4] , \BusA[1] , n2358, \F[1] , Q_7__N_1621, F_Out_7__N_1652, 
            n38722, n38770, ALU_Op_r, BusB, n37734, n37735, n33821, 
            n38721, \Q_7__N_1732[0] , Q_7__N_1580, \IR[5] , \F[0] , 
            n38625, n1913, n37730, n2375, \Q_v[7] , n37984, F_Out_7__N_1650, 
            n6991, n12378, n14329, \Q_7__N_1613[7] , n37184, n37185, 
            n38708, n38628, n38621, n2947, n1911, n40891, \IR[4] , 
            n38742, n38717, n40887, n40889, n38720, Save_ALU_r, 
            n13875, \ALU_Q[5] , n12389, \F_Out[2] , n38631, n17, 
            n4, \F_Out[6] , n23611, n37983, n38638, n38740, n37182, 
            n12384, n24, n12382, F_Out_7__N_1677, n38639, \Q_7__N_1715[7] , 
            n38627, n1909, n908, \Save_Mux[0] , n38444, \F_Out[0] , 
            n37478, n37469, n37471, n38624, n1908, n1949, \ALU_Q[3] , 
            n2359, n2337, n6, n2360, n2944, Z16_r, Arith16_r, 
            \F[6] , n38701, \F_Out[3] , n1165, n38445, n4_adj_1, 
            n38056, n38057, n36873, n9970, n38761, n2361, n38543, 
            n1915, n14, n2362, n9502, n38778, n2363, n31804) /* synthesis syn_module_defined=1 */ ;
    output n35771;
    output \ALU_Q[1] ;
    input \Set_BusA_To_3__N_1216[0] ;
    input \BusA[6] ;
    input VCC_net;
    input \BusA[7] ;
    input \BusA[4] ;
    input \BusA[5] ;
    input \BusA[2] ;
    input \BusA[3] ;
    input \F[4] ;
    input \BusA[1] ;
    output [7:0]n2358;
    input \F[1] ;
    output [7:0]Q_7__N_1621;
    input F_Out_7__N_1652;
    output n38722;
    input n38770;
    input [3:0]ALU_Op_r;
    input [7:0]BusB;
    input n37734;
    output n37735;
    input n33821;
    output n38721;
    input \Q_7__N_1732[0] ;
    output Q_7__N_1580;
    input \IR[5] ;
    input \F[0] ;
    input n38625;
    output n1913;
    output n37730;
    input n2375;
    output \Q_v[7] ;
    output n37984;
    input F_Out_7__N_1650;
    input n6991;
    output n12378;
    input n14329;
    output \Q_7__N_1613[7] ;
    input n37184;
    output n37185;
    output n38708;
    output n38628;
    output n38621;
    output n2947;
    output n1911;
    input n40891;
    input \IR[4] ;
    output n38742;
    output n38717;
    input n40887;
    input n40889;
    output n38720;
    input Save_ALU_r;
    input n13875;
    output \ALU_Q[5] ;
    input n12389;
    output \F_Out[2] ;
    output n38631;
    output n17;
    output n4;
    output \F_Out[6] ;
    output n23611;
    output n37983;
    output n38638;
    input n38740;
    output n37182;
    output n12384;
    output n24;
    output n12382;
    output F_Out_7__N_1677;
    input n38639;
    output \Q_7__N_1715[7] ;
    input n38627;
    output n1909;
    input n908;
    input \Save_Mux[0] ;
    input n38444;
    output \F_Out[0] ;
    output n37478;
    input n37469;
    output n37471;
    input n38624;
    output n1908;
    input n1949;
    output \ALU_Q[3] ;
    input n2359;
    output n2337;
    output n6;
    output n2360;
    output n2944;
    input Z16_r;
    input Arith16_r;
    input \F[6] ;
    input n38701;
    output \F_Out[3] ;
    input n1165;
    input n38445;
    output n4_adj_1;
    input n38056;
    output n38057;
    output n36873;
    output n9970;
    input n38761;
    output n2361;
    input n38543;
    output n1915;
    output n14;
    output n2362;
    output n9502;
    output n38778;
    output n2363;
    output n31804;
    
    
    wire n12458, n13909, n38802, n38803;
    wire [7:0]Q_7__N_1613;
    
    wire n30952, GND_net, cout, n30951;
    wire [8:0]n166;
    
    wire n30950;
    wire [8:0]Q_7__N_1732;
    
    wire n30949, n38743, n30947;
    wire [6:0]n42;
    wire [6:0]n6972;
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    wire [7:0]Q_7__N_1715;
    
    wire n38650, n30946;
    wire [8:0]Q_7__N_1723;
    wire [8:0]Q_7__N_1581;
    
    wire n30945, n38643, n9;
    wire [6:0]n6990;
    
    wire n12380;
    wire [7:0]n1898;
    
    wire n251, n38633, n38818, n38817, F_Out_7__N_1657, n38777, 
        n9_adj_1755, n8, n10, n34677, n14_c, n10_adj_1756, n34927, 
        n38776, n38780, n40867, n38417, n38482, n38779, n37729, 
        n15936, F_Out_7__N_1654, n12388;
    wire [7:0]n2358_c;
    
    wire n38651, n38406, n38399, OverFlow_v, n38439, n38414, n38412, 
        n38409, n12325, n35640, n38707, n9_adj_1757, n10_adj_1758, 
        F_Out_7__N_1635, n38626, n38714, n10_adj_1759, n10_adj_1760, 
        n38719, n33953;
    wire [7:0]n1907;
    
    wire n38636;
    wire [7:0]Q_7__N_1605;
    
    wire n35739, n38545, n12381, F_Out_7__N_1659, n9500;
    wire [4:0]n2334;
    
    wire n37470;
    wire [7:0]n2367;
    
    wire n40622, n40623, n16, n12, n36139, n2, n38568, n40624, 
        n40625, n10_adj_1762, n37477, n37476, n14_adj_1763, n10_adj_1764, 
        n12454, n14_adj_1765, n36140, HalfCarry_v_N_1674;
    wire [7:0]n2943;
    
    wire n9968, n15940, n36872, n38819, n10_adj_1767, n14_adj_1768, 
        n38781, n14_adj_1770, n10_adj_1771;
    
    PFUMX i10810 (.BLUT(n12458), .ALUT(n13909), .C0(n35771), .Z(\ALU_Q[1] ));
    PFUMX i34166 (.BLUT(n38802), .ALUT(n38803), .C0(\Set_BusA_To_3__N_1216[0] ), 
          .Z(Q_7__N_1613[0]));
    CCU2B add_5911_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n30952), .S0(cout));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5911_add_4_cout.INIT0 = 16'h0000;
    defparam add_5911_add_4_cout.INIT1 = 16'h0000;
    defparam add_5911_add_4_cout.INJECT1_0 = "NO";
    defparam add_5911_add_4_cout.INJECT1_1 = "NO";
    CCU2B add_5911_add_4_7 (.A0(\BusA[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30951), .COUT(n30952), .S0(n166[6]), .S1(n166[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5911_add_4_7.INIT0 = 16'haaaa;
    defparam add_5911_add_4_7.INIT1 = 16'haaaa;
    defparam add_5911_add_4_7.INJECT1_0 = "NO";
    defparam add_5911_add_4_7.INJECT1_1 = "NO";
    CCU2B add_5911_add_4_5 (.A0(\BusA[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n30950), .COUT(n30951), .S0(Q_7__N_1732[4]), 
          .S1(n166[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5911_add_4_5.INIT0 = 16'haaaa;
    defparam add_5911_add_4_5.INIT1 = 16'haaaa;
    defparam add_5911_add_4_5.INJECT1_0 = "NO";
    defparam add_5911_add_4_5.INJECT1_1 = "NO";
    CCU2B add_5911_add_4_3 (.A0(\BusA[2] ), .B0(\BusA[3] ), .C0(n38743), 
          .D0(\F[4] ), .A1(\BusA[3] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30949), .COUT(n30950), .S0(Q_7__N_1732[2]), .S1(Q_7__N_1732[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5911_add_4_3.INIT0 = 16'h556a;
    defparam add_5911_add_4_3.INIT1 = 16'haaaa;
    defparam add_5911_add_4_3.INJECT1_0 = "NO";
    defparam add_5911_add_4_3.INJECT1_1 = "NO";
    CCU2B add_5911_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n38743), 
          .D1(\F[4] ), .COUT(n30949), .S1(Q_7__N_1732[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5911_add_4_1.INIT0 = 16'h0000;
    defparam add_5911_add_4_1.INIT1 = 16'h556a;
    defparam add_5911_add_4_1.INJECT1_0 = "NO";
    defparam add_5911_add_4_1.INJECT1_1 = "NO";
    CCU2B add_5191_add_4_7 (.A0(\BusA[6] ), .B0(\BusA[3] ), .C0(n38743), 
          .D0(\F[4] ), .A1(\BusA[7] ), .B1(\BusA[3] ), .C1(n38743), 
          .D1(\F[4] ), .CIN(n30947), .S0(n42[5]), .S1(n6972[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5191_add_4_7.INIT0 = 16'h556a;
    defparam add_5191_add_4_7.INIT1 = 16'h556a;
    defparam add_5191_add_4_7.INJECT1_0 = "NO";
    defparam add_5191_add_4_7.INJECT1_1 = "NO";
    PFUMX mux_1453_i3 (.BLUT(Q_v[2]), .ALUT(Q_7__N_1715[2]), .C0(n38650), 
          .Z(n2358[2]));
    CCU2B add_5191_add_4_5 (.A0(\BusA[4] ), .B0(\BusA[3] ), .C0(n38743), 
          .D0(\F[4] ), .A1(\BusA[5] ), .B1(\BusA[3] ), .C1(n38743), 
          .D1(\F[4] ), .CIN(n30946), .COUT(n30947), .S0(Q_7__N_1723[4]), 
          .S1(n42[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5191_add_4_5.INIT0 = 16'h556a;
    defparam add_5191_add_4_5.INIT1 = 16'h556a;
    defparam add_5191_add_4_5.INJECT1_0 = "NO";
    defparam add_5191_add_4_5.INJECT1_1 = "NO";
    PFUMX mux_4813_i8 (.BLUT(Q_7__N_1732[8]), .ALUT(Q_7__N_1723[8]), .C0(\F[1] ), 
          .Z(Q_7__N_1581[8]));
    CCU2B add_5191_add_4_3 (.A0(\BusA[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\F[4] ), .B1(n38643), .C1(\BusA[3] ), .D1(VCC_net), 
          .CIN(n30945), .COUT(n30946), .S0(Q_7__N_1723[2]), .S1(Q_7__N_1723[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5191_add_4_3.INIT0 = 16'haaaa;
    defparam add_5191_add_4_3.INIT1 = 16'h1e1e;
    defparam add_5191_add_4_3.INJECT1_0 = "NO";
    defparam add_5191_add_4_3.INJECT1_1 = "NO";
    CCU2B add_5191_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n38743), 
          .D1(\F[4] ), .COUT(n30945), .S1(Q_7__N_1723[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5191_add_4_1.INIT0 = 16'h0000;
    defparam add_5191_add_4_1.INIT1 = 16'h556a;
    defparam add_5191_add_4_1.INJECT1_0 = "NO";
    defparam add_5191_add_4_1.INJECT1_1 = "NO";
    PFUMX mux_4813_i6 (.BLUT(Q_7__N_1732[6]), .ALUT(Q_7__N_1723[6]), .C0(\F[1] ), 
          .Z(Q_7__N_1581[6]));
    PFUMX mux_4813_i7 (.BLUT(Q_7__N_1732[7]), .ALUT(Q_7__N_1723[7]), .C0(\F[1] ), 
          .Z(Q_7__N_1581[7]));
    PFUMX mux_4813_i5 (.BLUT(Q_7__N_1732[5]), .ALUT(Q_7__N_1723[5]), .C0(\F[1] ), 
          .Z(Q_7__N_1581[5]));
    PFUMX mux_1453_i2 (.BLUT(Q_v[1]), .ALUT(Q_7__N_1715[1]), .C0(n38650), 
          .Z(n2358[1]));
    ORCALUT4 i1_2_lut (.A(Q_7__N_1621[0]), .B(Q_7__N_1621[3]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i1_2_lut.init = 16'h6666;
    PFUMX i9421 (.BLUT(F_Out_7__N_1652), .ALUT(n6990[5]), .C0(n38722), 
          .Z(n12380));
    ORCALUT4 mux_1215_i4_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38770), .C(ALU_Op_r[1]), .D(BusB[3]), .Z(n1898[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam mux_1215_i4_4_lut_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 i6136_2_lut_3_lut (.A(n42[4]), .B(n251), .C(n42[5]), .Z(Q_7__N_1723[6])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6136_2_lut_3_lut.init = 16'h7878;
    PFUMX i33829 (.BLUT(Q_7__N_1613[6]), .ALUT(n37734), .C0(n38633), .Z(n37735));
    ORCALUT4 i32830_3_lut_then_4_lut (.A(n38722), .B(Q_7__N_1613[3]), .C(BusB[3]), 
            .D(n33821), .Z(n38818)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i32830_3_lut_then_4_lut.init = 16'he444;
    ORCALUT4 i32830_3_lut_else_4_lut (.A(ALU_Op_r[2]), .B(n38721), .C(BusB[3]), 
            .D(Q_7__N_1621[3]), .Z(n38817)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i32830_3_lut_else_4_lut.init = 16'hf780;
    ORCALUT4 BusA_7__I_0_126_3_lut (.A(\BusA[7] ), .B(\Q_7__N_1732[0] ), 
            .C(\Set_BusA_To_3__N_1216[0] ), .Z(F_Out_7__N_1657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam BusA_7__I_0_126_3_lut.init = 16'hcaca;
    ORCALUT4 i5_4_lut_then_4_lut (.A(Q_7__N_1613[0]), .B(\BusA[6] ), .C(\BusA[2] ), 
            .D(\BusA[5] ), .Z(n38777)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i5_4_lut_then_4_lut.init = 16'hfffe;
    ORCALUT4 and_23_i4_2_lut (.A(\BusA[3] ), .B(BusB[3]), .Z(Q_7__N_1715[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i4_2_lut.init = 16'h8888;
    ORCALUT4 i6_4_lut (.A(Q_7__N_1580), .B(n9_adj_1755), .C(n8), .D(n10), 
            .Z(n34677)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i7_4_lut (.A(\Q_7__N_1732[0] ), .B(n14_c), .C(n10_adj_1756), 
            .D(Q_7__N_1581[3]), .Z(n34927)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i5_4_lut_else_4_lut (.A(Q_7__N_1613[0]), .B(\BusA[2] ), .C(\BusA[1] ), 
            .D(\Q_7__N_1732[0] ), .Z(n38776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i5_4_lut_else_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut_then_4_lut (.A(\IR[5] ), .B(BusB[6]), .C(BusB[7]), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38780)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_then_4_lut.init = 16'ha088;
    ORCALUT4 i2_4_lut_rep_438 (.A(n40867), .B(\F[0] ), .C(n166[7]), .D(cout), 
            .Z(n38417)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i2_4_lut_rep_438.init = 16'hffec;
    ORCALUT4 mux_1216_i3_4_lut (.A(BusB[2]), .B(n38482), .C(ALU_Op_r[2]), 
            .D(n38625), .Z(n1913)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 i6115_2_lut_3_lut_4_lut (.A(n40867), .B(\F[0] ), .C(n166[7]), 
            .D(cout), .Z(Q_7__N_1732[7])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i6115_2_lut_3_lut_4_lut.init = 16'h5a58;
    ORCALUT4 i6_4_lut_else_4_lut (.A(\IR[5] ), .B(BusB[4]), .C(BusB[5]), 
            .D(\Set_BusA_To_3__N_1216[0] ), .Z(n38779)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_else_4_lut.init = 16'ha088;
    PFUMX i33825 (.BLUT(Q_7__N_1613[5]), .ALUT(n37729), .C0(n38633), .Z(n37730));
    ORCALUT4 i33058_3_lut_4_lut (.A(n15936), .B(ALU_Op_r[1]), .C(n38722), 
            .D(F_Out_7__N_1654), .Z(n12388)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i33058_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 and_23_i5_2_lut (.A(\BusA[4] ), .B(BusB[4]), .Z(Q_7__N_1715[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i5_2_lut.init = 16'h8888;
    ORCALUT4 i6148_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6972[6]), 
            .D(n42[5]), .Z(Q_7__N_1723[8])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6148_3_lut_4_lut_4_lut.init = 16'hc8c0;
    PFUMX mux_1458_i1 (.BLUT(n2358_c[0]), .ALUT(n2375), .C0(n38651), .Z(Q_7__N_1621[0]));
    ORCALUT4 i6071_4_lut_rep_420_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), .C(\BusA[7] ), 
            .D(n38406), .Z(n38399)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i6071_4_lut_rep_420_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), .C(n38406), 
            .D(\BusA[7] ), .Z(\Q_v[7] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i2_3_lut_4_lut.init = 16'h6996;
    ORCALUT4 Carry_v_I_0_2_lut_4_lut_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), 
            .C(\BusA[7] ), .D(n38406), .Z(OverFlow_v)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam Carry_v_I_0_2_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    ORCALUT4 HalfCarry_v_bdd_2_lut_34098_4_lut_4_lut (.A(BusB[3]), .B(ALU_Op_r[1]), 
            .C(\BusA[3] ), .D(n38439), .Z(n37984)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam HalfCarry_v_bdd_2_lut_34098_4_lut_4_lut.init = 16'h3aac;
    ORCALUT4 i2_3_lut_4_lut_adj_176 (.A(BusB[3]), .B(ALU_Op_r[1]), .C(n38439), 
            .D(\BusA[3] ), .Z(Q_v[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_176.init = 16'h6996;
    ORCALUT4 i6099_4_lut_3_lut_rep_435_4_lut (.A(BusB[3]), .B(ALU_Op_r[1]), 
            .C(\BusA[3] ), .D(n38439), .Z(n38414)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6099_4_lut_3_lut_rep_435_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_177 (.A(BusB[4]), .B(ALU_Op_r[1]), .C(n38414), 
            .D(\BusA[4] ), .Z(Q_v[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_177.init = 16'h6996;
    PFUMX i9419 (.BLUT(F_Out_7__N_1650), .ALUT(n6991), .C0(n38722), .Z(n12378));
    ORCALUT4 i6050_4_lut_3_lut_rep_433_4_lut (.A(BusB[4]), .B(ALU_Op_r[1]), 
            .C(\BusA[4] ), .D(n38414), .Z(n38412)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6050_4_lut_3_lut_rep_433_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_178 (.A(BusB[5]), .B(ALU_Op_r[1]), .C(n38412), 
            .D(\BusA[5] ), .Z(Q_v[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_178.init = 16'h6996;
    ORCALUT4 i6057_4_lut_3_lut_rep_430_4_lut (.A(BusB[5]), .B(ALU_Op_r[1]), 
            .C(\BusA[5] ), .D(n38412), .Z(n38409)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6057_4_lut_3_lut_rep_430_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_179 (.A(BusB[6]), .B(ALU_Op_r[1]), .C(n38409), 
            .D(\BusA[6] ), .Z(Q_v[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_179.init = 16'h6996;
    ORCALUT4 i6064_4_lut_3_lut_rep_427_4_lut (.A(BusB[6]), .B(ALU_Op_r[1]), 
            .C(\BusA[6] ), .D(n38409), .Z(n38406)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6064_4_lut_3_lut_rep_427_4_lut.init = 16'hf660;
    PFUMX i11187 (.BLUT(n12325), .ALUT(n14329), .C0(n35640), .Z(\Q_7__N_1613[7] ));
    ORCALUT4 and_23_i6_2_lut (.A(\BusA[5] ), .B(BusB[5]), .Z(Q_7__N_1715[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i6_2_lut.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_728 (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), .Z(n38707)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_728.init = 16'h8888;
    ORCALUT4 n37184_bdd_2_lut_3_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(n37184), .D(n38721), .Z(n37185)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam n37184_bdd_2_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i1_2_lut_rep_729 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .Z(n38708)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_729.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_671_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .Z(n38650)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_671_3_lut.init = 16'h1010;
    ORCALUT4 i33179_3_lut_rep_649_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38628)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i33179_3_lut_rep_649_3_lut_4_lut.init = 16'he0ff;
    ORCALUT4 i1_2_lut_4_lut (.A(\BusA[2] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(Q_7__N_1613[0]), .Z(n9_adj_1757)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i1_2_lut_4_lut.init = 16'h35ca;
    ORCALUT4 i2_2_lut_4_lut (.A(\BusA[1] ), .B(\BusA[5] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .D(Q_7__N_1613[1]), .Z(n10_adj_1758)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i2_2_lut_4_lut.init = 16'h35ca;
    ORCALUT4 i20660_4_lut_4_lut (.A(n38621), .B(\F[1] ), .C(F_Out_7__N_1635), 
            .D(n38643), .Z(n2947)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i20660_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 mux_1216_i5_4_lut (.A(BusB[4]), .B(Q_7__N_1581[4]), .C(ALU_Op_r[2]), 
            .D(n38626), .Z(n1911)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i5_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_3_lut_rep_735 (.A(\Set_BusA_To_3__N_1216[0] ), .B(n40891), 
            .C(\IR[4] ), .Z(n38714)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i2_3_lut_rep_735.init = 16'h0202;
    ORCALUT4 i2_3_lut_4_lut_adj_180 (.A(BusB[2]), .B(n38625), .C(n38714), 
            .D(BusB[1]), .Z(n10_adj_1759)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i2_3_lut_4_lut_adj_180.init = 16'hf888;
    ORCALUT4 i2_2_lut_4_lut_adj_181 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .D(n38742), .Z(n10_adj_1760)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut_adj_181.init = 16'h35ca;
    ORCALUT4 i2_2_lut_4_lut_adj_182 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .D(\BusA[4] ), .Z(n9_adj_1755)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut_adj_182.init = 16'hffca;
    ORCALUT4 i20_2_lut_rep_738 (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), .Z(n38717)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_738.init = 16'h6666;
    ORCALUT4 and_23_i7_2_lut (.A(\BusA[6] ), .B(BusB[6]), .Z(Q_7__N_1715[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i7_2_lut.init = 16'h8888;
    ORCALUT4 i2_2_lut_rep_642_3_lut_4_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38621)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_2_lut_rep_642_3_lut_4_lut.init = 16'h6000;
    ORCALUT4 i7276_2_lut_rep_654_3_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .Z(n38633)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i7276_2_lut_rep_654_3_lut.init = 16'h0606;
    ORCALUT4 i1462_2_lut_rep_672_3_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .Z(n38651)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1462_2_lut_rep_672_3_lut.init = 16'h6060;
    ORCALUT4 BusB_3__I_0_112_3_lut_rep_740 (.A(BusB[3]), .B(BusB[7]), .C(ALU_Op_r[0]), 
            .Z(n38719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_3__I_0_112_3_lut_rep_740.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_adj_183 (.A(BusB[3]), .B(BusB[7]), .C(ALU_Op_r[0]), 
            .D(n33953), .Z(n8)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i1_2_lut_4_lut_adj_183.init = 16'hffca;
    ORCALUT4 i20149_2_lut_rep_741 (.A(n40887), .B(n40889), .Z(n38720)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20149_2_lut_rep_741.init = 16'heeee;
    ORCALUT4 i32952_3_lut_4_lut (.A(Save_ALU_r), .B(n38628), .C(n13875), 
            .D(n1907[5]), .Z(\ALU_Q[5] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i32952_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i2_2_lut_rep_647_3_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38626)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_647_3_lut.init = 16'h1010;
    ORCALUT4 i20896_2_lut_rep_657_3_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38636)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i20896_2_lut_rep_657_3_lut.init = 16'hfefe;
    ORCALUT4 BusB_7__I_0_129_i1_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(\IR[4] ), .C(BusB[0]), .D(\IR[5] ), .Z(Q_7__N_1605[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam BusB_7__I_0_129_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_742 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .Z(n38721)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_742.init = 16'h8888;
    ORCALUT4 i33193_2_lut_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n35739)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i33193_2_lut_3_lut_3_lut_4_lut.init = 16'h70ff;
    ORCALUT4 i7265_2_lut_rep_566_3_lut_3_lut_4_lut_3_lut (.A(ALU_Op_r[1]), 
            .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), .Z(n38545)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i7265_2_lut_rep_566_3_lut_3_lut_4_lut_3_lut.init = 16'h8181;
    PFUMX mux_1729_i3 (.BLUT(n12388), .ALUT(n12389), .C0(n35739), .Z(\F_Out[2] ));
    ORCALUT4 i33182_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[3]), .Z(n35771)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i33182_3_lut_4_lut.init = 16'hf8ff;
    ORCALUT4 i2_2_lut_rep_652_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38631)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i2_2_lut_rep_652_3_lut_4_lut.init = 16'h7000;
    ORCALUT4 i33_4_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(n38399), .Z(n17)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+!(D)))) */ ;
    defparam i33_4_lut_4_lut_4_lut.init = 16'h058a;
    ORCALUT4 i1_2_lut_4_lut_3_lut_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam i1_2_lut_4_lut_3_lut_3_lut.init = 16'h8a8a;
    L6MUX21 mux_1729_i7 (.D0(n12380), .D1(n12381), .SD(n35739), .Z(\F_Out[6] ));
    ORCALUT4 i33286_2_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n23611)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i33286_2_lut_3_lut_4_lut.init = 16'h7fff;
    PFUMX i9422 (.BLUT(F_Out_7__N_1659), .ALUT(n9500), .C0(n38631), .Z(n12381));
    ORCALUT4 HalfCarry_v_bdd_4_lut_34099_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(n38414), .Z(n37983)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam HalfCarry_v_bdd_4_lut_34099_3_lut.init = 16'h1919;
    ORCALUT4 i1443_2_lut_rep_659_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n38638)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1443_2_lut_rep_659_3_lut.init = 16'h8080;
    ORCALUT4 i1_3_lut_rep_743 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .Z(n38722)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_rep_743.init = 16'h8e8e;
    ORCALUT4 n23970_bdd_3_lut_33555_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(n38740), .Z(n37182)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam n23970_bdd_3_lut_33555_3_lut_4_lut.init = 16'h7504;
    ORCALUT4 i20770_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(\F[4] ), .Z(n12384)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !((C)+!B)) */ ;
    defparam i20770_3_lut_3_lut_4_lut.init = 16'h8e04;
    ORCALUT4 i38_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(n38740), .Z(n24)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam i38_3_lut_3_lut_4_lut.init = 16'h8afb;
    ORCALUT4 i9423_4_lut (.A(Q_7__N_1613[5]), .B(BusB[5]), .C(n38722), 
            .D(n33821), .Z(n12382)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i9423_4_lut.init = 16'hca0a;
    PFUMX i7266 (.BLUT(n2334[0]), .ALUT(OverFlow_v), .C0(n38545), .Z(F_Out_7__N_1677));
    ORCALUT4 mux_1216_i6_4_lut (.A(BusB[5]), .B(Q_7__N_1581[5]), .C(ALU_Op_r[2]), 
            .D(n38639), .Z(n1907[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i6_4_lut.init = 16'hc0ca;
    ORCALUT4 BusA_1__bdd_3_lut_34997 (.A(\BusA[1] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\BusA[3] ), .Z(n37470)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_1__bdd_3_lut_34997.init = 16'he2e2;
    ORCALUT4 and_23_i8_2_lut (.A(\BusA[7] ), .B(BusB[7]), .Z(\Q_7__N_1715[7] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i8_2_lut.init = 16'h8888;
    ORCALUT4 i5978_2_lut_rep_794 (.A(n166[5]), .B(n166[6]), .Z(n40867)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5978_2_lut_rep_794.init = 16'heeee;
    ORCALUT4 i6122_3_lut_4_lut_3_lut_4_lut (.A(n166[5]), .B(n166[6]), .C(cout), 
            .D(n166[7]), .Z(Q_7__N_1732[8])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i6122_3_lut_4_lut_3_lut_4_lut.init = 16'h1ef0;
    ORCALUT4 mux_1454_i8_3_lut (.A(\BusA[7] ), .B(ALU_Op_r[1]), .C(BusB[7]), 
            .Z(n2367[7])) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam mux_1454_i8_3_lut.init = 16'hdada;
    ORCALUT4 Q_7__N_1621_3__bdd_4_lut (.A(Q_7__N_1621[3]), .B(n23611), .C(n38719), 
            .D(ALU_Op_r[3]), .Z(n40622)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1621_3__bdd_4_lut.init = 16'hc0aa;
    ORCALUT4 Q_7__N_1581_3__bdd_4_lut (.A(BusB[3]), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\IR[5] ), .D(\IR[4] ), .Z(n40623)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam Q_7__N_1581_3__bdd_4_lut.init = 16'ha2aa;
    ORCALUT4 i32800_1_lut_4_lut (.A(Q_7__N_1581[4]), .B(n16), .C(n12), 
            .D(Q_7__N_1581[8]), .Z(n36139)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i32800_1_lut_4_lut.init = 16'h9669;
    ORCALUT4 i2_3_lut_4_lut_adj_184 (.A(BusB[1]), .B(ALU_Op_r[1]), .C(n2), 
            .D(\BusA[1] ), .Z(Q_v[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_184.init = 16'h6996;
    ORCALUT4 i6085_4_lut_3_lut_rep_589_4_lut (.A(BusB[1]), .B(ALU_Op_r[1]), 
            .C(\BusA[1] ), .D(n2), .Z(n38568)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6085_4_lut_3_lut_rep_589_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_185 (.A(BusB[2]), .B(ALU_Op_r[1]), .C(n38568), 
            .D(\BusA[2] ), .Z(Q_v[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_185.init = 16'h6996;
    ORCALUT4 i6092_4_lut_3_lut_rep_460_4_lut (.A(BusB[2]), .B(ALU_Op_r[1]), 
            .C(\BusA[2] ), .D(n38568), .Z(n38439)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6092_4_lut_3_lut_rep_460_4_lut.init = 16'hf660;
    ORCALUT4 n40624_bdd_3_lut (.A(n40624), .B(n40622), .C(n38628), .Z(n40625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40624_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1216_i7_4_lut (.A(BusB[6]), .B(Q_7__N_1581[6]), .C(ALU_Op_r[2]), 
            .D(n38627), .Z(n1909)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i7_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_1729_i1_3_lut (.A(n908), .B(\Save_Mux[0] ), .C(n38444), 
            .Z(\F_Out[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1729_i1_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_1__I_0_3_lut_rep_763 (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .Z(n38742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_1__I_0_3_lut_rep_763.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .D(\BusA[7] ), .Z(n10)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i3_2_lut_4_lut.init = 16'hffca;
    ORCALUT4 i5963_2_lut_rep_764 (.A(\BusA[1] ), .B(\BusA[2] ), .Z(n38743)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5963_2_lut_rep_764.init = 16'heeee;
    ORCALUT4 i5971_2_lut_rep_664_3_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[3] ), 
            .Z(n38643)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5971_2_lut_rep_664_3_lut.init = 16'he0e0;
    ORCALUT4 i5972_2_lut_3_lut_4_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[4] ), 
            .D(\BusA[3] ), .Z(n10_adj_1762)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i5972_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 BusA_3__bdd_3_lut_34994 (.A(\BusA[3] ), .B(\Set_BusA_To_3__N_1216[0] ), 
            .C(\BusA[5] ), .Z(n37477)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_3__bdd_3_lut_34994.init = 16'he2e2;
    PFUMX i33664 (.BLUT(n37477), .ALUT(n37476), .C0(n38633), .Z(n37478));
    PFUMX i33661 (.BLUT(n37470), .ALUT(n37469), .C0(n38633), .Z(n37471));
    ORCALUT4 mux_1216_i8_4_lut (.A(BusB[7]), .B(Q_7__N_1581[7]), .C(ALU_Op_r[2]), 
            .D(n38624), .Z(n1908)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i8_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6972[6]), 
            .D(n42[5]), .Z(Q_7__N_1723[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hb43c;
    ORCALUT4 i6_4_lut_adj_186 (.A(Q_7__N_1621[7]), .B(Q_7__N_1621[4]), .C(Q_7__N_1621[5]), 
            .D(Q_7__N_1621[6]), .Z(n14_adj_1763)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i6_4_lut_adj_186.init = 16'h6996;
    ORCALUT4 i2_2_lut (.A(Q_7__N_1621[1]), .B(Q_7__N_1621[2]), .Z(n10_adj_1764)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i2_2_lut.init = 16'h6666;
    ORCALUT4 and_23_i3_2_lut (.A(\BusA[2] ), .B(BusB[2]), .Z(Q_7__N_1715[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i3_2_lut.init = 16'h8888;
    ORCALUT4 mux_1216_i2_4_lut (.A(BusB[1]), .B(Q_7__N_1581[1]), .C(ALU_Op_r[2]), 
            .D(n38714), .Z(n1907[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i2_4_lut.init = 16'hc0ca;
    ORCALUT4 i20200_4_lut (.A(n9), .B(ALU_Op_r[2]), .C(n14_adj_1763), 
            .D(n10_adj_1764), .Z(n2334[0])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i20200_4_lut.init = 16'h4884;
    ORCALUT4 i32777_3_lut (.A(n1907[1]), .B(n1949), .C(n38628), .Z(n13909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i32777_3_lut.init = 16'hcaca;
    PFUMX i35242 (.BLUT(n12454), .ALUT(n40625), .C0(n35771), .Z(\ALU_Q[3] ));
    PFUMX i35240 (.BLUT(n40623), .ALUT(Q_7__N_1581[3]), .C0(ALU_Op_r[2]), 
          .Z(n40624));
    ORCALUT4 mux_4813_i1_3_lut (.A(Q_7__N_1732[1]), .B(Q_7__N_1723[1]), 
            .C(\F[1] ), .Z(Q_7__N_1581[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4813_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i32801_1_lut_4_lut (.A(Q_7__N_1580), .B(n14_adj_1765), .C(n10_adj_1760), 
            .D(n38719), .Z(n36140)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i32801_1_lut_4_lut.init = 16'h9669;
    PFUMX mux_1458_i8 (.BLUT(n2359), .ALUT(n2367[7]), .C0(n38651), .Z(Q_7__N_1621[7]));
    ORCALUT4 i20591_2_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[2]), .Z(n2337)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i20591_2_lut.init = 16'h2222;
    ORCALUT4 i14_3_lut (.A(BusB[1]), .B(ALU_Op_r[1]), .C(\BusA[1] ), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i14_3_lut.init = 16'h2525;
    ORCALUT4 i11183_3_lut (.A(\BusA[4] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(Q_7__N_1613[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11183_3_lut.init = 16'hcaca;
    ORCALUT4 i11211_else_1_lut (.A(\BusA[7] ), .B(\IR[5] ), .C(\F[0] ), 
            .D(\IR[4] ), .Z(n38802)) /* synthesis lut_function=(A (B (D)+!B (C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam i11211_else_1_lut.init = 16'hfc22;
    ORCALUT4 i2_3_lut (.A(ALU_Op_r[2]), .B(\F[0] ), .C(ALU_Op_r[0]), .Z(HalfCarry_v_N_1674)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(111[88:114])
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 mux_4813_i4_3_lut (.A(Q_7__N_1732[4]), .B(Q_7__N_1723[4]), 
            .C(\F[1] ), .Z(Q_7__N_1581[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4813_i4_3_lut.init = 16'hcaca;
    PFUMX mux_1453_i7 (.BLUT(Q_v[6]), .ALUT(Q_7__N_1715[6]), .C0(n38650), 
          .Z(n2360));
    ORCALUT4 mux_1718_i4_3_lut_4_lut (.A(n38717), .B(n38707), .C(n38719), 
            .D(Q_7__N_1581[3]), .Z(n2943[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1718_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i7275_3_lut_3_lut_4_lut (.A(n38717), .B(n38707), .C(\F[0] ), 
            .D(Q_7__N_1581[8]), .Z(n9968)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i7275_3_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i33055_3_lut_4_lut (.A(n38717), .B(n38707), .C(n34677), .D(n34927), 
            .Z(n9500)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam i33055_3_lut_4_lut.init = 16'h087f;
    ORCALUT4 mux_1718_i8_3_lut_4_lut (.A(n38717), .B(n38707), .C(\BusA[7] ), 
            .D(Q_7__N_1581[7]), .Z(n2944)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1718_i8_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_1718_i6_3_lut_4_lut (.A(n38717), .B(n38707), .C(\BusA[5] ), 
            .D(Q_7__N_1581[5]), .Z(n2943[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1718_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 F_Out_7__I_159_4_lut_4_lut (.A(Z16_r), .B(Arith16_r), .C(n15940), 
            .D(\F[6] ), .Z(F_Out_7__N_1659)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C))) */ ;
    defparam F_Out_7__I_159_4_lut_4_lut.init = 16'hcf01;
    ORCALUT4 i9374_3_lut (.A(\Q_7__N_1732[0] ), .B(\F[0] ), .C(\IR[4] ), 
            .Z(n12325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i9374_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1613_7__bdd_3_lut_33324_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38701), .C(ALU_Op_r[1]), .D(BusB[7]), .Z(n36872)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1613_7__bdd_3_lut_33324_4_lut.init = 16'hf880;
    ORCALUT4 BusA_3__bdd_3_lut_33663_4_lut (.A(\IR[5] ), .B(n38720), .C(ALU_Op_r[1]), 
            .D(BusB[4]), .Z(n37476)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam BusA_3__bdd_3_lut_33663_4_lut.init = 16'hf220;
    ORCALUT4 i32921_3_lut_4_lut (.A(n38721), .B(n38707), .C(n2943[3]), 
            .D(n38819), .Z(\F_Out[3] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i32921_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n38721), .B(n38707), .C(n1165), 
            .D(n38445), .Z(n4_adj_1)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0b00;
    ORCALUT4 n38056_bdd_3_lut_4_lut (.A(n38721), .B(n38707), .C(n2943[5]), 
            .D(n38056), .Z(n38057)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam n38056_bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 Q_7__N_1613_7__bdd_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), 
            .C(n36872), .D(\Q_7__N_1613[7] ), .Z(n36873)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Q_7__N_1613_7__bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i7277_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n1898[0]), 
            .D(Q_7__N_1613[0]), .Z(n9970)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i7277_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9474_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n1898[3]), 
            .D(Q_7__N_1613[3]), .Z(n12454)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9474_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9478_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38717), .C(n1898[1]), 
            .D(Q_7__N_1613[1]), .Z(n12458)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9478_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1215_i2_4_lut_3_lut (.A(BusB[1]), .B(n38714), .C(ALU_Op_r[1]), 
            .Z(n1898[1])) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(335[15:29])
    defparam mux_1215_i2_4_lut_3_lut.init = 16'he8e8;
    ORCALUT4 mux_1215_i1_3_lut_4_lut (.A(\IR[5] ), .B(n38720), .C(ALU_Op_r[1]), 
            .D(BusB[0]), .Z(n1898[0])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+(D)))) */ ;
    defparam mux_1215_i1_3_lut_4_lut.init = 16'hf110;
    ORCALUT4 i11179_3_lut (.A(\BusA[2] ), .B(\BusA[4] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(Q_7__N_1613[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11179_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1613_5__bdd_3_lut_4_lut (.A(\Set_BusA_To_3__N_1216[0] ), 
            .B(n38761), .C(ALU_Op_r[1]), .D(BusB[5]), .Z(n37729)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1613_5__bdd_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 i69_4_lut (.A(n10_adj_1762), .B(\F[0] ), .C(\BusA[7] ), .D(n33953), 
            .Z(n251)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[7:41])
    defparam i69_4_lut.init = 16'hfcec;
    ORCALUT4 i1_2_lut_adj_187 (.A(\BusA[5] ), .B(\BusA[6] ), .Z(n33953)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_187.init = 16'heeee;
    ORCALUT4 mux_1453_i1_4_lut (.A(\Q_7__N_1732[0] ), .B(BusB[0]), .C(n38650), 
            .D(HalfCarry_v_N_1674), .Z(n2358_c[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam mux_1453_i1_4_lut.init = 16'h8986;
    ORCALUT4 Q_7__N_1732_0__bdd_4_lut (.A(\Q_7__N_1732[0] ), .B(HalfCarry_v_N_1674), 
            .C(BusB[0]), .D(ALU_Op_r[1]), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam Q_7__N_1732_0__bdd_4_lut.init = 16'h2be8;
    PFUMX mux_1453_i6 (.BLUT(Q_v[5]), .ALUT(Q_7__N_1715[5]), .C0(n38650), 
          .Z(n2361));
    ORCALUT4 i11175_3_lut (.A(\Q_7__N_1732[0] ), .B(\BusA[2] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(Q_7__N_1613[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11175_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4813_i3_3_lut (.A(Q_7__N_1732[3]), .B(Q_7__N_1723[3]), 
            .C(\F[1] ), .Z(Q_7__N_1581[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4813_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4813_i2_3_lut_rep_503 (.A(Q_7__N_1732[2]), .B(Q_7__N_1723[2]), 
            .C(\F[1] ), .Z(n38482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4813_i2_3_lut_rep_503.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut_adj_188 (.A(Q_7__N_1732[2]), .B(Q_7__N_1723[2]), 
            .C(\F[1] ), .D(\Q_7__N_1732[0] ), .Z(n12)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i3_2_lut_4_lut_adj_188.init = 16'h35ca;
    ORCALUT4 i2_2_lut_4_lut_adj_189 (.A(Q_7__N_1732[2]), .B(Q_7__N_1723[2]), 
            .C(\F[1] ), .D(Q_7__N_1581[1]), .Z(n10_adj_1756)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i2_2_lut_4_lut_adj_189.init = 16'hffca;
    ORCALUT4 i7_4_lut_adj_190 (.A(Q_7__N_1581[7]), .B(Q_7__N_1581[3]), .C(Q_7__N_1581[1]), 
            .D(n10_adj_1767), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i7_4_lut_adj_190.init = 16'h6996;
    ORCALUT4 i1_2_lut_adj_191 (.A(Q_7__N_1581[6]), .B(Q_7__N_1581[5]), .Z(n10_adj_1767)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i1_2_lut_adj_191.init = 16'h6666;
    ORCALUT4 i6_4_lut_adj_192 (.A(\BusA[7] ), .B(\BusA[4] ), .C(\BusA[5] ), 
            .D(\BusA[6] ), .Z(n14_adj_1765)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i6_4_lut_adj_192.init = 16'h6996;
    ORCALUT4 i6_4_lut_adj_193 (.A(Q_7__N_1581[7]), .B(Q_7__N_1581[4]), .C(Q_7__N_1581[5]), 
            .D(Q_7__N_1581[6]), .Z(n14_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i6_4_lut_adj_193.init = 16'hfffe;
    ORCALUT4 mux_4772_i6_3_lut (.A(n15936), .B(\F[6] ), .C(ALU_Op_r[1]), 
            .Z(n6990[5])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_4772_i6_3_lut.init = 16'hc5c5;
    ORCALUT4 i20122_4_lut (.A(n9_adj_1757), .B(n38740), .C(n14_adj_1768), 
            .D(n10_adj_1758), .Z(F_Out_7__N_1654)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(426[6] 431[11])
    defparam i20122_4_lut.init = 16'h4884;
    ORCALUT4 BusB_0__I_0_3_lut (.A(BusB[0]), .B(BusB[4]), .C(ALU_Op_r[0]), 
            .Z(Q_7__N_1580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_0__I_0_3_lut.init = 16'hcaca;
    ORCALUT4 i11211_then_1_lut (.A(\BusA[1] ), .Z(n38803)) /* synthesis lut_function=(A) */ ;
    defparam i11211_then_1_lut.init = 16'haaaa;
    ORCALUT4 i6_4_lut_adj_194 (.A(\Q_7__N_1613[7] ), .B(\BusA[3] ), .C(\BusA[4] ), 
            .D(Q_7__N_1613[6]), .Z(n14_adj_1768)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i6_4_lut_adj_194.init = 16'h6996;
    ORCALUT4 i11185_3_lut (.A(\BusA[5] ), .B(\BusA[7] ), .C(\Set_BusA_To_3__N_1216[0] ), 
            .Z(Q_7__N_1613[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11185_3_lut.init = 16'hcaca;
    ORCALUT4 i7_4_lut_adj_195 (.A(Q_7__N_1605[0]), .B(n38781), .C(n10_adj_1759), 
            .D(n38543), .Z(n15936)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i7_4_lut_adj_195.init = 16'hfffe;
    ORCALUT4 mux_1216_i1_4_lut (.A(BusB[0]), .B(\Q_7__N_1732[0] ), .C(ALU_Op_r[2]), 
            .D(n38636), .Z(n1915)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1216_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i6_4_lut_adj_196 (.A(\Q_7__N_1613[7] ), .B(\BusA[3] ), .C(\BusA[4] ), 
            .D(Q_7__N_1613[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i6_4_lut_adj_196.init = 16'hfffe;
    ORCALUT4 and_23_i2_2_lut (.A(\BusA[1] ), .B(BusB[1]), .Z(Q_7__N_1715[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i2_2_lut.init = 16'h8888;
    ORCALUT4 i2_4_lut (.A(\BusA[3] ), .B(\F[4] ), .C(\BusA[1] ), .D(\BusA[2] ), 
            .Z(F_Out_7__N_1635)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0444;
    PFUMX mux_1453_i5 (.BLUT(Q_v[4]), .ALUT(Q_7__N_1715[4]), .C0(n38650), 
          .Z(n2362));
    ORCALUT4 i6128_2_lut (.A(n42[4]), .B(n251), .Z(Q_7__N_1723[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6128_2_lut.init = 16'h6666;
    ORCALUT4 i6100_2_lut (.A(n166[5]), .B(n38417), .Z(Q_7__N_1732[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6100_2_lut.init = 16'h6666;
    PFUMX i34152 (.BLUT(n38779), .ALUT(n38780), .C0(\IR[4] ), .Z(n38781));
    ORCALUT4 i6108_3_lut (.A(n166[6]), .B(n38417), .C(n166[5]), .Z(Q_7__N_1732[6])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6108_3_lut.init = 16'ha6a6;
    ORCALUT4 i33224_2_lut (.A(\Set_BusA_To_3__N_1216[0] ), .B(\IR[5] ), 
            .Z(n35640)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i33224_2_lut.init = 16'hdddd;
    PFUMX mux_1718_i3 (.BLUT(n36139), .ALUT(n36140), .C0(n38621), .Z(n9502));
    PFUMX i34150 (.BLUT(n38776), .ALUT(n38777), .C0(\Set_BusA_To_3__N_1216[0] ), 
          .Z(n38778));
    PFUMX mux_1453_i4 (.BLUT(Q_v[3]), .ALUT(Q_7__N_1715[3]), .C0(n38650), 
          .Z(n2363));
    ORCALUT4 i7_4_lut_adj_197 (.A(Q_7__N_1621[0]), .B(n14_adj_1770), .C(n10_adj_1771), 
            .D(Q_7__N_1621[3]), .Z(n15940)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i7_4_lut_adj_197.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_198 (.A(Q_7__N_1621[7]), .B(Q_7__N_1621[4]), .C(Q_7__N_1621[5]), 
            .D(Q_7__N_1621[6]), .Z(n14_adj_1770)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i6_4_lut_adj_198.init = 16'hfffe;
    ORCALUT4 i2_2_lut_adj_199 (.A(Q_7__N_1621[1]), .B(Q_7__N_1621[2]), .Z(n10_adj_1771)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i2_2_lut_adj_199.init = 16'heeee;
    PFUMX i32 (.BLUT(F_Out_7__N_1657), .ALUT(n9968), .C0(n38631), .Z(n31804));
    PFUMX i34175 (.BLUT(n38817), .ALUT(n38818), .C0(ALU_Op_r[3]), .Z(n38819));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (uart_rx_data, clk_op, uart_rx_avail, rst_s, n32224, 
            n40905, uart_rx_c, VCC_net, n40902, n40900, n40906, 
            n38478, n40901) /* synthesis syn_module_defined=1 */ ;
    output [7:0]uart_rx_data;
    input clk_op;
    output uart_rx_avail;
    input rst_s;
    input n32224;
    input n40905;
    input uart_rx_c;
    input VCC_net;
    input n40902;
    input n40900;
    input n40906;
    output n38478;
    input n40901;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire clk_op_enable_140;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(17[16:18])
    
    wire rx_state, n36193, rxd_d, n30884;
    wire [31:0]rx_state_N_233;
    wire [11:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    
    wire n30885, n40874;
    wire [11:0]n53;
    
    wire n17953, n30883;
    wire [3:0]bitidx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(16[16:22])
    
    wire n37909, n17951, GND_net, n17949, n17937, n17935, n17933, 
        n23344, n17929, n30944, n30943, n30982, n30942, n30941, 
        n30940, n30939, n30981;
    wire [12:0]n287;
    
    wire n30886, rx_state_N_232, n30980, n30979, n30978, n30977, 
        n38408, n38401, n33890, clk_op_enable_304, clk_op_enable_300, 
        rx_state_N_265, clk_op_enable_312, n17997, n33880, n33797, 
        n29, clk_op_enable_194, n7, n34491, n18307, n18305, n38704;
    wire [31:0]n70;
    
    wire n8459, n38702, n38617, n17959, n17957, n17955, n38745, 
        n33802, n12, n35425, clk_op_enable_303, clk_op_enable_306, 
        clk_op_enable_309, clk_op_enable_307, n10, n35426, n10_adj_1753, 
        n38618, n10_adj_1754, n38619;
    
    FD1P3AX rx_data_i0_i0 (.D(sr[0]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3DX rx_avail_73 (.D(n32224), .CK(clk_op), .CD(rst_s), .Q(uart_rx_avail)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_avail_73.GSR = "ENABLED";
    FD1S3DX rx_state_72 (.D(n36193), .CK(clk_op), .CD(n40905), .Q(rx_state)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_state_72.GSR = "ENABLED";
    FD1S3BX rxd_d_78 (.D(uart_rx_c), .CK(clk_op), .PD(n40905), .Q(rxd_d)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rxd_d_78.GSR = "ENABLED";
    CCU2B equal_4713_12 (.A0(rx_state_N_233[7]), .B0(k[7]), .C0(rx_state_N_233[6]), 
          .D0(k[6]), .A1(rx_state_N_233[5]), .B1(k[5]), .C1(rx_state_N_233[4]), 
          .D1(k[4]), .CIN(n30884), .COUT(n30885));
    defparam equal_4713_12.INIT0 = 16'h9009;
    defparam equal_4713_12.INIT1 = 16'h9009;
    defparam equal_4713_12.INJECT1_0 = "YES";
    defparam equal_4713_12.INJECT1_1 = "YES";
    ORCALUT4 i19883_4_lut (.A(n40874), .B(n53[8]), .C(rx_state), .D(k[8]), 
            .Z(n17953)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19883_4_lut.init = 16'hc5c0;
    CCU2B equal_4713_10 (.A0(rx_state_N_233[11]), .B0(k[11]), .C0(rx_state_N_233[10]), 
          .D0(k[10]), .A1(rx_state_N_233[9]), .B1(k[9]), .C1(rx_state_N_233[8]), 
          .D1(k[8]), .CIN(n30883), .COUT(n30884));
    defparam equal_4713_10.INIT0 = 16'h9009;
    defparam equal_4713_10.INIT1 = 16'h9009;
    defparam equal_4713_10.INJECT1_0 = "YES";
    defparam equal_4713_10.INJECT1_1 = "YES";
    FD1S3DX bitidx__i0 (.D(n37909), .CK(clk_op), .CD(rst_s), .Q(bitidx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i0.GSR = "ENABLED";
    ORCALUT4 i14447_4_lut (.A(k[7]), .B(n53[7]), .C(rx_state), .D(n40874), 
            .Z(n17951)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14447_4_lut.init = 16'hc0ca;
    CCU2B equal_4713_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rx_state_N_233[13]), .B1(rx_state_N_233[12]), .C1(GND_net), 
          .D1(GND_net), .COUT(n30883));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[32:71])
    defparam equal_4713_0.INIT0 = 16'h000F;
    defparam equal_4713_0.INIT1 = 16'h1111;
    defparam equal_4713_0.INJECT1_0 = "NO";
    defparam equal_4713_0.INJECT1_1 = "YES";
    ORCALUT4 i14445_4_lut (.A(k[6]), .B(n53[6]), .C(rx_state), .D(n40874), 
            .Z(n17949)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14445_4_lut.init = 16'hc0ca;
    ORCALUT4 i14433_4_lut (.A(k[5]), .B(n53[5]), .C(rx_state), .D(n40874), 
            .Z(n17937)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14433_4_lut.init = 16'hc0ca;
    ORCALUT4 i19877_4_lut (.A(n40874), .B(n53[4]), .C(rx_state), .D(k[4]), 
            .Z(n17935)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19877_4_lut.init = 16'hc5c0;
    ORCALUT4 i14429_4_lut (.A(k[3]), .B(n53[3]), .C(rx_state), .D(n40874), 
            .Z(n17933)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14429_4_lut.init = 16'hc0ca;
    ORCALUT4 i19886_4_lut (.A(n40874), .B(n53[2]), .C(rx_state), .D(k[2]), 
            .Z(n23344)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19886_4_lut.init = 16'hc5c0;
    ORCALUT4 i14425_4_lut (.A(k[1]), .B(n53[1]), .C(rx_state), .D(n40874), 
            .Z(n17929)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14425_4_lut.init = 16'hc0ca;
    CCU2B k_5704_add_4_13 (.A0(k[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n30944), 
          .S0(n53[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_13.INIT0 = 16'haaa0;
    defparam k_5704_add_4_13.INIT1 = 16'h0000;
    defparam k_5704_add_4_13.INJECT1_0 = "NO";
    defparam k_5704_add_4_13.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_11 (.A0(k[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30943), 
          .COUT(n30944), .S0(n53[9]), .S1(n53[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_11.INIT0 = 16'haaa0;
    defparam k_5704_add_4_11.INIT1 = 16'haaa0;
    defparam k_5704_add_4_11.INJECT1_0 = "NO";
    defparam k_5704_add_4_11.INJECT1_1 = "NO";
    CCU2B add_1091_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n30982), .S0(rx_state_N_233[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_cout.INIT0 = 16'h0000;
    defparam add_1091_add_4_cout.INIT1 = 16'h0000;
    defparam add_1091_add_4_cout.INJECT1_0 = "NO";
    defparam add_1091_add_4_cout.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30942), 
          .COUT(n30943), .S0(n53[7]), .S1(n53[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_9.INIT0 = 16'haaa0;
    defparam k_5704_add_4_9.INIT1 = 16'haaa0;
    defparam k_5704_add_4_9.INJECT1_0 = "NO";
    defparam k_5704_add_4_9.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30941), 
          .COUT(n30942), .S0(n53[5]), .S1(n53[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_7.INIT0 = 16'haaa0;
    defparam k_5704_add_4_7.INIT1 = 16'haaa0;
    defparam k_5704_add_4_7.INJECT1_0 = "NO";
    defparam k_5704_add_4_7.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30940), 
          .COUT(n30941), .S0(n53[3]), .S1(n53[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_5.INIT0 = 16'haaa0;
    defparam k_5704_add_4_5.INIT1 = 16'haaa0;
    defparam k_5704_add_4_5.INJECT1_0 = "NO";
    defparam k_5704_add_4_5.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30939), 
          .COUT(n30940), .S0(n53[1]), .S1(n53[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_3.INIT0 = 16'haaa0;
    defparam k_5704_add_4_3.INIT1 = 16'haaa0;
    defparam k_5704_add_4_3.INJECT1_0 = "NO";
    defparam k_5704_add_4_3.INJECT1_1 = "NO";
    CCU2B add_1091_add_4_11 (.A0(n287[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30981), .COUT(n30982), .S0(rx_state_N_233[11]), .S1(rx_state_N_233[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_11.INIT0 = 16'haaaa;
    defparam add_1091_add_4_11.INIT1 = 16'haaaa;
    defparam add_1091_add_4_11.INJECT1_0 = "NO";
    defparam add_1091_add_4_11.INJECT1_1 = "NO";
    CCU2B equal_4713_14 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n30886), 
          .S0(rx_state_N_232));
    defparam equal_4713_14.INIT0 = 16'h0000;
    defparam equal_4713_14.INIT1 = 16'h0000;
    defparam equal_4713_14.INJECT1_0 = "NO";
    defparam equal_4713_14.INJECT1_1 = "NO";
    CCU2B k_5704_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n30939), 
          .S1(n53[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704_add_4_1.INIT0 = 16'h0000;
    defparam k_5704_add_4_1.INIT1 = 16'h555f;
    defparam k_5704_add_4_1.INJECT1_0 = "NO";
    defparam k_5704_add_4_1.INJECT1_1 = "NO";
    CCU2B add_1091_add_4_9 (.A0(n287[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30980), .COUT(n30981), .S0(rx_state_N_233[9]), .S1(rx_state_N_233[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_9.INIT0 = 16'haaaa;
    defparam add_1091_add_4_9.INIT1 = 16'haaaa;
    defparam add_1091_add_4_9.INJECT1_0 = "NO";
    defparam add_1091_add_4_9.INJECT1_1 = "NO";
    CCU2B equal_4713_14_27499 (.A0(rx_state_N_233[3]), .B0(k[3]), .C0(rx_state_N_233[2]), 
          .D0(k[2]), .A1(rx_state_N_233[1]), .B1(k[1]), .C1(rx_state_N_233[0]), 
          .D1(k[0]), .CIN(n30885), .COUT(n30886));
    defparam equal_4713_14_27499.INIT0 = 16'h9009;
    defparam equal_4713_14_27499.INIT1 = 16'h9009;
    defparam equal_4713_14_27499.INJECT1_0 = "YES";
    defparam equal_4713_14_27499.INJECT1_1 = "YES";
    CCU2B add_1091_add_4_7 (.A0(n287[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30979), .COUT(n30980), .S0(rx_state_N_233[7]), .S1(rx_state_N_233[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_7.INIT0 = 16'haaaa;
    defparam add_1091_add_4_7.INIT1 = 16'haaaa;
    defparam add_1091_add_4_7.INJECT1_0 = "NO";
    defparam add_1091_add_4_7.INJECT1_1 = "NO";
    CCU2B add_1091_add_4_5 (.A0(n287[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30978), .COUT(n30979), .S0(rx_state_N_233[5]), .S1(rx_state_N_233[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_5.INIT0 = 16'h555a;
    defparam add_1091_add_4_5.INIT1 = 16'h555a;
    defparam add_1091_add_4_5.INJECT1_0 = "NO";
    defparam add_1091_add_4_5.INJECT1_1 = "NO";
    CCU2B add_1091_add_4_3 (.A0(n287[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n30977), .COUT(n30978), .S0(rx_state_N_233[3]), .S1(rx_state_N_233[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_3.INIT0 = 16'h555a;
    defparam add_1091_add_4_3.INIT1 = 16'haaaa;
    defparam add_1091_add_4_3.INJECT1_0 = "NO";
    defparam add_1091_add_4_3.INJECT1_1 = "NO";
    FD1P3AX rx_data_i0_i7 (.D(sr[7]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(sr[6]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(sr[5]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(sr[4]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(sr[3]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(sr[2]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(sr[1]), .SP(clk_op_enable_140), .CK(clk_op), 
            .Q(uart_rx_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    ORCALUT4 i20083_2_lut_rep_422_3_lut (.A(n38408), .B(rx_state), .C(bitidx[1]), 
            .Z(n38401)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i20083_2_lut_rep_422_3_lut.init = 16'h8080;
    ORCALUT4 i33168_2_lut_3_lut_4_lut (.A(n38408), .B(rx_state), .C(n33890), 
            .D(bitidx[1]), .Z(clk_op_enable_304)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33168_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i33171_2_lut_3_lut_4_lut (.A(n38408), .B(rx_state), .C(n33890), 
            .D(bitidx[1]), .Z(clk_op_enable_300)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33171_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i2_3_lut_rep_429 (.A(rx_state_N_232), .B(bitidx[3]), .C(rx_state_N_265), 
            .Z(n38408)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i2_3_lut_rep_429.init = 16'h0202;
    ORCALUT4 i538_2_lut_rep_425_4_lut (.A(rx_state_N_232), .B(bitidx[3]), 
            .C(rx_state_N_265), .D(rx_state), .Z(clk_op_enable_312)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i538_2_lut_rep_425_4_lut.init = 16'h0200;
    FD1S3DX k_5704__i0 (.D(n17997), .CK(clk_op), .CD(n40902), .Q(k[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i0.GSR = "ENABLED";
    CCU2B add_1091_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n287[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n30977), .S1(rx_state_N_233[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1091_add_4_1.INIT0 = 16'h0000;
    defparam add_1091_add_4_1.INIT1 = 16'h555a;
    defparam add_1091_add_4_1.INJECT1_0 = "NO";
    defparam add_1091_add_4_1.INJECT1_1 = "NO";
    PFUMX i42 (.BLUT(n33880), .ALUT(n33797), .C0(k[0]), .Z(n29));
    FD1P3DX bitidx__i1 (.D(n7), .SP(clk_op_enable_194), .CK(clk_op), .CD(n40905), 
            .Q(bitidx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i1.GSR = "ENABLED";
    ORCALUT4 i33075_4_lut (.A(rx_state), .B(n40874), .C(n29), .D(n34491), 
            .Z(n36193)) /* synthesis lut_function=(A ((D)+!C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i33075_4_lut.init = 16'hee4e;
    FD1P3DX bitidx__i2 (.D(n18307), .SP(clk_op_enable_194), .CK(clk_op), 
            .CD(n40905), .Q(bitidx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i2.GSR = "ENABLED";
    FD1P3DX bitidx__i3 (.D(n18305), .SP(clk_op_enable_194), .CK(clk_op), 
            .CD(n40900), .Q(bitidx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i3.GSR = "ENABLED";
    MULT9X9B mult_67 (.P12(n287[12]), .P11(n287[11]), .P10(n287[10]), 
            .P9(n287[9]), .P8(n287[8]), .P7(n287[7]), .P6(n287[6]), 
            .P5(n287[5]), .P4(n287[4]), .P3(n287[3]), .P2(n287[2]), 
            .P1(rx_state_N_233[1]), .P0(rx_state_N_233[0]), .A8(GND_net), 
            .A7(GND_net), .A6(GND_net), .A5(GND_net), .A4(n8459), .A3(n70[3]), 
            .A2(n70[2]), .A1(n70[1]), .A0(n38704), .B8(GND_net), .B7(VCC_net), 
            .B6(VCC_net), .B5(GND_net), .B4(VCC_net), .B3(VCC_net), 
            .B2(GND_net), .B1(GND_net), .B0(VCC_net), .SRIA8(GND_net), 
            .SRIA7(GND_net), .SRIA6(GND_net), .SRIA5(GND_net), .SRIA4(GND_net), 
            .SRIA3(GND_net), .SRIA2(GND_net), .SRIA1(GND_net), .SRIA0(GND_net), 
            .SRIB8(GND_net), .SRIB7(GND_net), .SRIB6(GND_net), .SRIB5(GND_net), 
            .SRIB4(GND_net), .SRIB3(GND_net), .SRIB2(GND_net), .SRIB1(GND_net), 
            .SRIB0(GND_net), .SIGNEDA(GND_net), .SIGNEDB(GND_net), .CE0(VCC_net), 
            .CE1(GND_net), .CE2(GND_net), .CE3(GND_net), .CLK0(GND_net), 
            .CLK1(GND_net), .CLK2(GND_net), .CLK3(GND_net), .RST0(GND_net), 
            .RST1(GND_net), .RST2(GND_net), .RST3(GND_net), .SOURCEA(GND_net), 
            .SOURCEB(GND_net));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:57])
    defparam mult_67.REG_INPUTA_CLK = "NONE";
    defparam mult_67.REG_INPUTA_CE = "CE0";
    defparam mult_67.REG_INPUTA_RST = "RST0";
    defparam mult_67.REG_INPUTB_CLK = "NONE";
    defparam mult_67.REG_INPUTB_CE = "CE0";
    defparam mult_67.REG_INPUTB_RST = "RST0";
    defparam mult_67.REG_PIPELINE_CLK = "NONE";
    defparam mult_67.REG_PIPELINE_CE = "CE0";
    defparam mult_67.REG_PIPELINE_RST = "RST0";
    defparam mult_67.REG_OUTPUT_CLK = "NONE";
    defparam mult_67.REG_OUTPUT_CE = "CE0";
    defparam mult_67.REG_OUTPUT_RST = "RST0";
    defparam mult_67.REG_SIGNEDA_CLK = "NONE";
    defparam mult_67.REG_SIGNEDA_CE = "CE0";
    defparam mult_67.REG_SIGNEDA_RST = "RST0";
    defparam mult_67.REG_SIGNEDB_CLK = "NONE";
    defparam mult_67.REG_SIGNEDB_CE = "CE0";
    defparam mult_67.REG_SIGNEDB_RST = "RST0";
    defparam mult_67.GSR = "ENABLED";
    ORCALUT4 i4837_3_lut_rep_426_4_lut (.A(rxd_d), .B(uart_rx_c), .C(rx_state), 
            .D(n38408), .Z(clk_op_enable_194)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i4837_3_lut_rep_426_4_lut.init = 16'hf202;
    ORCALUT4 i1_2_lut_rep_723 (.A(bitidx[0]), .B(bitidx[2]), .Z(n38702)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i1_2_lut_rep_723.init = 16'heeee;
    ORCALUT4 i30807_2_lut_rep_638_3_lut (.A(bitidx[0]), .B(bitidx[2]), .C(bitidx[1]), 
            .Z(n38617)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i30807_2_lut_rep_638_3_lut.init = 16'hfefe;
    ORCALUT4 i6792_1_lut_rep_725 (.A(bitidx[0]), .Z(n38704)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i6792_1_lut_rep_725.init = 16'h5555;
    ORCALUT4 i1_2_lut_2_lut (.A(bitidx[0]), .B(bitidx[2]), .Z(n33890)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i6009_2_lut_3_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[2]), 
            .Z(n70[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6009_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i6016_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[3]), 
            .D(bitidx[2]), .Z(n70[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6016_2_lut_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i6018_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[3]), 
            .D(bitidx[2]), .Z(n8459)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6018_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i14455_4_lut (.A(k[11]), .B(n53[11]), .C(rx_state), .D(n40874), 
            .Z(n17959)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14455_4_lut.init = 16'hc0ca;
    FD1S3DX k_5704__i11 (.D(n17959), .CK(clk_op), .CD(n40906), .Q(k[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i11.GSR = "ENABLED";
    FD1S3DX k_5704__i10 (.D(n17957), .CK(clk_op), .CD(n40905), .Q(k[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i10.GSR = "ENABLED";
    FD1S3DX k_5704__i9 (.D(n17955), .CK(clk_op), .CD(n40902), .Q(k[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i9.GSR = "ENABLED";
    FD1S3DX k_5704__i8 (.D(n17953), .CK(clk_op), .CD(n40905), .Q(k[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i8.GSR = "ENABLED";
    FD1S3DX k_5704__i7 (.D(n17951), .CK(clk_op), .CD(n40905), .Q(k[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i7.GSR = "ENABLED";
    FD1S3DX k_5704__i6 (.D(n17949), .CK(clk_op), .CD(rst_s), .Q(k[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i6.GSR = "ENABLED";
    FD1S3DX k_5704__i5 (.D(n17937), .CK(clk_op), .CD(rst_s), .Q(k[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i5.GSR = "ENABLED";
    FD1S3DX k_5704__i4 (.D(n17935), .CK(clk_op), .CD(rst_s), .Q(k[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i4.GSR = "ENABLED";
    FD1S3DX k_5704__i3 (.D(n17933), .CK(clk_op), .CD(rst_s), .Q(k[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i3.GSR = "ENABLED";
    FD1S3DX k_5704__i2 (.D(n23344), .CK(clk_op), .CD(rst_s), .Q(k[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i2.GSR = "ENABLED";
    FD1S3DX k_5704__i1 (.D(n17929), .CK(clk_op), .CD(n40902), .Q(k[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5704__i1.GSR = "ENABLED";
    ORCALUT4 rxd_d_I_0_2_lut_rep_801 (.A(rxd_d), .B(uart_rx_c), .Z(n40874)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam rxd_d_I_0_2_lut_rep_801.init = 16'h2222;
    ORCALUT4 i30705_2_lut_rep_766 (.A(bitidx[3]), .B(k[11]), .Z(n38745)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30705_2_lut_rep_766.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut (.A(bitidx[3]), .B(k[11]), .C(n33802), .Z(n33880)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i3_4_lut (.A(n38745), .B(n34491), .C(k[0]), .D(n33802), 
            .Z(rx_state_N_265)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut.init = 16'h0100;
    ORCALUT4 i6_4_lut (.A(k[6]), .B(n12), .C(bitidx[2]), .D(k[2]), .Z(n33802)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0800;
    ORCALUT4 i5_4_lut (.A(k[5]), .B(bitidx[0]), .C(uart_rx_c), .D(k[3]), 
            .Z(n12)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h2000;
    ORCALUT4 i14451_4_lut (.A(k[9]), .B(n53[9]), .C(rx_state), .D(n40874), 
            .Z(n17955)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14451_4_lut.init = 16'hc0ca;
    ORCALUT4 i31882_3_lut_4_lut (.A(n38401), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[7]), .Z(n35425)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i31882_3_lut_4_lut.init = 16'hf780;
    FD1P3DX sr_i0_i1 (.D(uart_rx_c), .SP(clk_op_enable_300), .CK(clk_op), 
            .CD(n40902), .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i1.GSR = "ENABLED";
    ORCALUT4 i33195_2_lut_3_lut_4_lut (.A(n38408), .B(rx_state), .C(n38702), 
            .D(bitidx[1]), .Z(clk_op_enable_303)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33195_2_lut_3_lut_4_lut.init = 16'h0800;
    FD1P3DX sr_i0_i2 (.D(uart_rx_c), .SP(clk_op_enable_303), .CK(clk_op), 
            .CD(n40902), .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i2.GSR = "ENABLED";
    FD1P3DX sr_i0_i3 (.D(uart_rx_c), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n40902), .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i3.GSR = "ENABLED";
    FD1P3DX sr_i0_i4 (.D(uart_rx_c), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n40902), .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i4.GSR = "ENABLED";
    ORCALUT4 i33155_2_lut_3_lut_4_lut (.A(clk_op_enable_312), .B(bitidx[1]), 
            .C(bitidx[0]), .D(bitidx[2]), .Z(clk_op_enable_309)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i33155_2_lut_3_lut_4_lut.init = 16'h0800;
    FD1P3DX sr_i0_i5 (.D(uart_rx_c), .SP(clk_op_enable_307), .CK(clk_op), 
            .CD(n40902), .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i5.GSR = "ENABLED";
    FD1P3DX sr_i0_i6 (.D(uart_rx_c), .SP(clk_op_enable_309), .CK(clk_op), 
            .CD(n40902), .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i6.GSR = "ENABLED";
    ORCALUT4 i5_3_lut_rep_499_4_lut (.A(bitidx[1]), .B(n38702), .C(uart_rx_c), 
            .D(n10), .Z(n38478)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i5_3_lut_rep_499_4_lut.init = 16'h1000;
    ORCALUT4 i31883_3_lut_4_lut (.A(bitidx[1]), .B(n38702), .C(uart_rx_c), 
            .D(sr[0]), .Z(n35426)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i31883_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i5_3_lut_rep_639 (.A(k[7]), .B(n10_adj_1753), .C(k[9]), .Z(n38618)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_rep_639.init = 16'hfefe;
    ORCALUT4 i30972_2_lut_4_lut (.A(k[7]), .B(n10_adj_1753), .C(k[9]), 
            .D(bitidx[1]), .Z(n34491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i30972_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i5_3_lut_rep_640 (.A(k[2]), .B(n10_adj_1754), .C(k[5]), .Z(n38619)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5_3_lut_rep_640.init = 16'h0808;
    ORCALUT4 i1_2_lut_4_lut (.A(k[2]), .B(n10_adj_1754), .C(k[5]), .D(n38702), 
            .Z(n33797)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0008;
    FD1P3DX sr_i0_i7 (.D(n35425), .SP(bitidx[0]), .CK(clk_op), .CD(n40905), 
            .Q(sr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i7.GSR = "ENABLED";
    ORCALUT4 i20472_2_lut_3_lut_4_lut_3_lut_4_lut (.A(rxd_d), .B(uart_rx_c), 
            .C(n70[2]), .D(rx_state), .Z(n18307)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i20472_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i33157_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(clk_op_enable_312), 
            .C(bitidx[0]), .D(bitidx[2]), .Z(clk_op_enable_307)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i33157_2_lut_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i33166_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(clk_op_enable_312), 
            .C(bitidx[0]), .D(bitidx[2]), .Z(clk_op_enable_306)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i33166_2_lut_3_lut_4_lut.init = 16'h0400;
    FD1P3DX sr_i0_i0 (.D(n35426), .SP(clk_op_enable_312), .CK(clk_op), 
            .CD(n40905), .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_173 (.A(n38617), .B(n10), .C(uart_rx_c), 
            .D(n40901), .Z(clk_op_enable_140)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_173.init = 16'h0040;
    ORCALUT4 i20465_2_lut_3_lut_4_lut_3_lut_4_lut (.A(rxd_d), .B(uart_rx_c), 
            .C(n70[3]), .D(rx_state), .Z(n18305)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i20465_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i19880_4_lut (.A(n40874), .B(n53[0]), .C(rx_state), .D(k[0]), 
            .Z(n17997)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19880_4_lut.init = 16'hc5c0;
    ORCALUT4 i14453_4_lut (.A(k[10]), .B(n53[10]), .C(rx_state), .D(n40874), 
            .Z(n17957)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14453_4_lut.init = 16'hc0ca;
    ORCALUT4 i33138_4_lut (.A(rx_state), .B(bitidx[0]), .C(n40874), .D(bitidx[1]), 
            .Z(n7)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i33138_4_lut.init = 16'h238c;
    ORCALUT4 i6002_2_lut (.A(bitidx[1]), .B(bitidx[0]), .Z(n70[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6002_2_lut.init = 16'h6666;
    ORCALUT4 bitidx_0__bdd_4_lut (.A(bitidx[0]), .B(n40874), .C(n38408), 
            .D(rx_state), .Z(n37909)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(C (D)))) */ ;
    defparam bitidx_0__bdd_4_lut.init = 16'h5a22;
    ORCALUT4 i4_4_lut (.A(n38619), .B(k[0]), .C(rx_state), .D(n38618), 
            .Z(n10)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    ORCALUT4 i4_4_lut_adj_174 (.A(k[6]), .B(k[11]), .C(k[3]), .D(bitidx[3]), 
            .Z(n10_adj_1754)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut_adj_174.init = 16'h4000;
    ORCALUT4 i4_4_lut_adj_175 (.A(k[1]), .B(k[8]), .C(k[10]), .D(k[4]), 
            .Z(n10_adj_1753)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_175.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_tx
//

module uart_tx (uart_tx_busy, clk_op, n40905, VCC_net, n605, n38476, 
            n38711, uart_wr_N_78, rst_s, \sr[7] , n40902, n37027, 
            clk_op_enable_299, n40903, n37025, n36951, n40906, n18283, 
            n18281, n18279, n18277, \cpu_dout[1] , \cpu_dout[2] , 
            n18275, n18273, \cpu_dout[3] , n40900, n18271, \cpu_dout[4] , 
            n18269, \cpu_dout[5] , n18267, n18265, \cpu_dout[0] , 
            n18263, n18261, n18259, n18257, n18255, uart_tx_c, n18152) /* synthesis syn_module_defined=1 */ ;
    output uart_tx_busy;
    input clk_op;
    input n40905;
    input VCC_net;
    output [15:0]n605;
    input n38476;
    input n38711;
    input uart_wr_N_78;
    input rst_s;
    output \sr[7] ;
    input n40902;
    input n37027;
    input clk_op_enable_299;
    input n40903;
    output n37025;
    input n36951;
    input n40906;
    input n18283;
    input n18281;
    input n18279;
    input n18277;
    input \cpu_dout[1] ;
    input \cpu_dout[2] ;
    input n18275;
    input n18273;
    input \cpu_dout[3] ;
    input n40900;
    input n18271;
    input \cpu_dout[4] ;
    input n18269;
    input \cpu_dout[5] ;
    input n18267;
    input n18265;
    input \cpu_dout[0] ;
    input n18263;
    input n18261;
    input n18259;
    input n18257;
    input n18255;
    output uart_tx_c;
    input n18152;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire tx_busy_N_141;
    wire [8:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(14[14:15])
    
    wire n15, n30924, GND_net;
    wire [8:0]n52;
    
    wire n30923, n30922, n30921, n14, n17, n77, n38809, n38808;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    
    wire clk_op_enable_313, n18317, n18315, n34578, n18311, n18303, 
        n18301, n18299, n18297, n18295, n18293, n18291, n18289, 
        clk_op_enable_305, clk_op_enable_311, n18287, n12, n18141, 
        n18154, n18137;
    
    FD1S3DX tx_busy_34 (.D(tx_busy_N_141), .CK(clk_op), .CD(n40905), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam tx_busy_34.GSR = "ENABLED";
    ORCALUT4 i6_4_lut (.A(k[2]), .B(k[1]), .C(k[4]), .D(k[0]), .Z(n15)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i6_4_lut.init = 16'hffef;
    CCU2B add_48_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30924), 
          .S0(n52[7]), .S1(n52[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_9.INIT0 = 16'haaaa;
    defparam add_48_add_4_9.INIT1 = 16'haaaa;
    defparam add_48_add_4_9.INJECT1_0 = "NO";
    defparam add_48_add_4_9.INJECT1_1 = "NO";
    CCU2B add_48_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30923), 
          .COUT(n30924), .S0(n52[5]), .S1(n52[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_7.INIT0 = 16'haaaa;
    defparam add_48_add_4_7.INIT1 = 16'haaaa;
    defparam add_48_add_4_7.INJECT1_0 = "NO";
    defparam add_48_add_4_7.INJECT1_1 = "NO";
    CCU2B add_48_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30922), 
          .COUT(n30923), .S0(n52[3]), .S1(n52[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_5.INIT0 = 16'haaaa;
    defparam add_48_add_4_5.INIT1 = 16'haaaa;
    defparam add_48_add_4_5.INJECT1_0 = "NO";
    defparam add_48_add_4_5.INJECT1_1 = "NO";
    CCU2B add_48_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n30921), 
          .COUT(n30922), .S0(n52[1]), .S1(n52[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_3.INIT0 = 16'haaaa;
    defparam add_48_add_4_3.INIT1 = 16'haaaa;
    defparam add_48_add_4_3.INJECT1_0 = "NO";
    defparam add_48_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i5_3_lut (.A(k[6]), .B(k[5]), .C(k[8]), .Z(n14)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hfdfd;
    ORCALUT4 i17949_3_lut_4_lut_then_3_lut (.A(n17), .B(n77), .C(n605[8]), 
            .Z(n38809)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i17949_3_lut_4_lut_then_3_lut.init = 16'h0101;
    ORCALUT4 i17949_3_lut_4_lut_else_3_lut (.A(n38476), .B(n17), .C(n38711), 
            .D(uart_wr_N_78), .Z(n38808)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i17949_3_lut_4_lut_else_3_lut.init = 16'h8b88;
    FD1P3DX sr_i1 (.D(n18317), .SP(clk_op_enable_313), .CK(clk_op), .CD(n40905), 
            .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i1.GSR = "ENABLED";
    FD1P3DX sr_i2 (.D(n18315), .SP(clk_op_enable_313), .CK(clk_op), .CD(rst_s), 
            .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i2.GSR = "ENABLED";
    FD1S3DX sr_i7 (.D(n37027), .CK(clk_op), .CD(n40902), .Q(\sr[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i7.GSR = "ENABLED";
    FD1P3DX k__i1 (.D(n34578), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40902), 
            .Q(k[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i1.GSR = "ENABLED";
    FD1P3DX sr_i3 (.D(n18311), .SP(clk_op_enable_313), .CK(clk_op), .CD(rst_s), 
            .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i3.GSR = "ENABLED";
    FD1P3DX k__i2 (.D(n18303), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40905), 
            .Q(k[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i2.GSR = "ENABLED";
    FD1P3DX k__i3 (.D(n18301), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40902), 
            .Q(k[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i3.GSR = "ENABLED";
    FD1P3DX sr_i4 (.D(n18299), .SP(clk_op_enable_313), .CK(clk_op), .CD(rst_s), 
            .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i4.GSR = "ENABLED";
    FD1P3DX k__i4 (.D(n18297), .SP(clk_op_enable_299), .CK(clk_op), .CD(rst_s), 
            .Q(k[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i4.GSR = "ENABLED";
    FD1P3DX k__i5 (.D(n18295), .SP(clk_op_enable_299), .CK(clk_op), .CD(rst_s), 
            .Q(k[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i5.GSR = "ENABLED";
    FD1P3DX k__i6 (.D(n18293), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40903), 
            .Q(k[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i6.GSR = "ENABLED";
    FD1P3DX k__i7 (.D(n18291), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40903), 
            .Q(k[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i7.GSR = "ENABLED";
    FD1P3DX k__i8 (.D(n18289), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40902), 
            .Q(k[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i8.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(uart_tx_busy), .B(n17), .C(n77), 
            .D(n38476), .Z(clk_op_enable_305)) /* synthesis lut_function=(!(A (B+(C))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(26[11:26])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5702;
    ORCALUT4 i14751_2_lut_3_lut_4_lut_4_lut (.A(uart_tx_busy), .B(n17), 
            .C(n38711), .D(uart_wr_N_78), .Z(clk_op_enable_311)) /* synthesis lut_function=(!(A (B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(26[11:26])
    defparam i14751_2_lut_3_lut_4_lut_4_lut.init = 16'h2722;
    FD1P3DX sr_i5 (.D(n18287), .SP(clk_op_enable_313), .CK(clk_op), .CD(n40905), 
            .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i5.GSR = "ENABLED";
    ORCALUT4 i6_4_lut_adj_165 (.A(n605[10]), .B(n12), .C(n605[11]), .D(n605[12]), 
            .Z(n77)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_165.init = 16'hfffe;
    ORCALUT4 uart_wr_N_78_bdd_3_lut_4_lut (.A(n605[8]), .B(n77), .C(\sr[7] ), 
            .D(n17), .Z(n37025)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam uart_wr_N_78_bdd_3_lut_4_lut.init = 16'hf0e0;
    FD1P3DX sr_i6 (.D(n36951), .SP(clk_op_enable_313), .CK(clk_op), .CD(n40903), 
            .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i6.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i1 (.D(n18283), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40906), .Q(n605[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i1.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(n77), .D(n17), 
            .Z(tx_busy_N_141)) /* synthesis lut_function=(A ((D)+!C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_4_lut_4_lut.init = 16'hee4e;
    FD1P3DX bitcnt_FSM_i2 (.D(n18281), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40906), .Q(n605[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i2.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i3 (.D(n18279), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40905), .Q(n605[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i3.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(n52[2]), 
            .D(n17), .Z(n18303)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[5]), .D(n17), .Z(n18295)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'hb000;
    FD1P3DX bitcnt_FSM_i4 (.D(n18277), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40906), .Q(n605[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i4.GSR = "ENABLED";
    ORCALUT4 i14812_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[1] ), 
            .D(sr[2]), .Z(n18317)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14812_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14810_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[2] ), 
            .D(sr[3]), .Z(n18315)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14810_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX bitcnt_FSM_i5 (.D(n18275), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40906), .Q(n605[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i5.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[6]), .D(n17), .Z(n18293)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'hb000;
    ORCALUT4 i2_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(n17), .D(n52[1]), 
            .Z(n34578)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i2_3_lut_4_lut.init = 16'hb000;
    FD1P3DX bitcnt_FSM_i6 (.D(n18273), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40906), .Q(n605[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i6.GSR = "ENABLED";
    ORCALUT4 i14806_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[3] ), 
            .D(sr[4]), .Z(n18311)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14806_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX bitcnt_FSM_i7 (.D(n18271), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[7]), .D(n17), .Z(n18291)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'hb000;
    ORCALUT4 i14794_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[4] ), 
            .D(sr[5]), .Z(n18299)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14794_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX bitcnt_FSM_i8 (.D(n18269), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i8.GSR = "ENABLED";
    ORCALUT4 i14782_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[5] ), 
            .D(sr[6]), .Z(n18287)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14782_3_lut_4_lut.init = 16'hfb40;
    FD1P3DX bitcnt_FSM_i9 (.D(n18267), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i9.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[8]), .D(n17), .Z(n18289)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[0]), .D(n17), .Z(n18141)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[3]), .D(n17), .Z(n18301)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(uart_tx_busy), .B(n38476), 
            .C(n52[4]), .D(n17), .Z(n18297)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hb000;
    FD1P3DX bitcnt_FSM_i10 (.D(n18265), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i10.GSR = "ENABLED";
    ORCALUT4 i20111_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(sr[0]), 
            .D(n605[8]), .Z(n18154)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i20111_3_lut_4_lut.init = 16'hbbb0;
    ORCALUT4 i14632_3_lut_4_lut (.A(uart_tx_busy), .B(n38476), .C(\cpu_dout[0] ), 
            .D(sr[1]), .Z(n18137)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i14632_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i5_4_lut (.A(n605[13]), .B(n605[14]), .C(n605[15]), .D(n605[9]), 
            .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    FD1P3DX bitcnt_FSM_i11 (.D(n18263), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(rst_s), .Q(n605[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i11.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i12 (.D(n18261), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i12.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i13 (.D(n18259), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i13.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i14 (.D(n18257), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40900), .Q(n605[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i15 (.D(n18255), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n40905), .Q(n605[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i15.GSR = "ENABLED";
    FD1P3DX k__i0 (.D(n18141), .SP(clk_op_enable_299), .CK(clk_op), .CD(n40902), 
            .Q(k[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i0.GSR = "ENABLED";
    CCU2B add_48_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n30921), 
          .S1(n52[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_1.INIT0 = 16'h0000;
    defparam add_48_add_4_1.INIT1 = 16'h555a;
    defparam add_48_add_4_1.INJECT1_0 = "NO";
    defparam add_48_add_4_1.INJECT1_1 = "NO";
    FD1P3BX txd_36 (.D(n18154), .SP(clk_op_enable_305), .CK(clk_op), .PD(rst_s), 
            .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam txd_36.GSR = "ENABLED";
    FD1P3BX bitcnt_FSM_i0 (.D(n18152), .SP(clk_op_enable_311), .CK(clk_op), 
            .PD(n40906), .Q(n605[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i0.GSR = "ENABLED";
    FD1P3DX sr_i0 (.D(n18137), .SP(clk_op_enable_313), .CK(clk_op), .CD(n40905), 
            .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i0.GSR = "ENABLED";
    ORCALUT4 i8_4_lut (.A(n15), .B(k[3]), .C(n14), .D(k[7]), .Z(n17)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i8_4_lut.init = 16'hfbff;
    PFUMX i34169 (.BLUT(n38808), .ALUT(n38809), .C0(uart_tx_busy), .Z(clk_op_enable_313));
    VLO i1 (.Z(GND_net));
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 5.7 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -arch mg5a00 -n pmi_pll0o500X125252550d29c740 -bb -bus_exp 7 -type pll -fin 50 -fclkop 25 -fclkok 12.500000 -fb_mode CLKOP -phaseadj 0 -duty 8.00000 -pmi -lang verilog  */
/* Sun Nov 15 20:02:53 2026 */


`timescale 1 ns / 1 ps
module pmi_pll0o500X125252550d29c740 (CLKI, RESET, CLKFB, CLKOP, CLKOS, 
    CLKOK, CLKOK2, LOCK)/* synthesis NGD_DRC_MASK=1 */;
    input wire CLKI;
    input wire RESET;
    input wire CLKFB;
    output wire CLKOP;
    output wire CLKOS;
    output wire CLKOK;
    output wire CLKOK2;
    output wire LOCK;

    wire CLKOP_t;
    wire scuba_vlo;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    // synopsys translate_off
    defparam PLLInst_0.CLKOK_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOS_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOP_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING" ;
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.PHASE_CNTL = "STATIC" ;
    defparam PLLInst_0.DUTY = 8 ;
    defparam PLLInst_0.PHASEADJ = "0.0" ;
    defparam PLLInst_0.CLKOK_DIV = 2 ;
    defparam PLLInst_0.CLKOP_DIV = 32 ;
    defparam PLLInst_0.CLKFB_DIV = 1 ;
    defparam PLLInst_0.CLKI_DIV = 2 ;
    // synopsys translate_on
    EHXPLLE1 PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP_t), .RST(RESET), .RSTK(scuba_vlo), 
        .WRDEL(scuba_vlo), .DRPAI3(scuba_vlo), .DRPAI2(scuba_vlo), .DRPAI1(scuba_vlo), 
        .DRPAI0(scuba_vlo), .DFPAI3(scuba_vlo), .DFPAI2(scuba_vlo), .DFPAI1(scuba_vlo), 
        .DFPAI0(scuba_vlo), .PWD(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(CLKOS), 
        .CLKOK(CLKOK), .CLKOK2(CLKOK2), .LOCK(LOCK), .CLKINTFB())
             /* synthesis CLKOK_BYPASS="DISABLED" */
             /* synthesis CLKOS_BYPASS="DISABLED" */
             /* synthesis FREQUENCY_PIN_CLKOK2="8.333333" */
             /* synthesis FREQUENCY_PIN_CLKOP="25.000000" */
             /* synthesis CLKOP_BYPASS="DISABLED" */
             /* synthesis CLKOS_TRIM_DELAY="0" */
             /* synthesis CLKOS_TRIM_POL="RISING" */
             /* synthesis CLKOP_TRIM_DELAY="0" */
             /* synthesis CLKOP_TRIM_POL="FALLING" */
             /* synthesis PHASE_CNTL="STATIC" */
             /* synthesis DUTY="8" */
             /* synthesis PHASEADJ="0.0" */
             /* synthesis FREQUENCY_PIN_CLKOS="25.000000" */
             /* synthesis FREQUENCY_PIN_CLKI="50.000000" */
             /* synthesis FREQUENCY_PIN_CLKOK="12.500000" */
             /* synthesis CLKOK_DIV="2" */
             /* synthesis CLKOP_DIV="32" */
             /* synthesis CLKFB_DIV="1" */
             /* synthesis CLKI_DIV="2" */
             /* synthesis FIN="50.000000" */;

    assign CLKOP = CLKOP_t;


    // exemplar begin
    // exemplar attribute PLLInst_0 CLKOK_BYPASS DISABLED
    // exemplar attribute PLLInst_0 CLKOS_BYPASS DISABLED
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOK2 8.333333
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 25.000000
    // exemplar attribute PLLInst_0 CLKOP_BYPASS DISABLED
    // exemplar attribute PLLInst_0 CLKOS_TRIM_DELAY 0
    // exemplar attribute PLLInst_0 CLKOS_TRIM_POL RISING
    // exemplar attribute PLLInst_0 CLKOP_TRIM_DELAY 0
    // exemplar attribute PLLInst_0 CLKOP_TRIM_POL FALLING
    // exemplar attribute PLLInst_0 PHASE_CNTL STATIC
    // exemplar attribute PLLInst_0 DUTY 8
    // exemplar attribute PLLInst_0 PHASEADJ 0.0
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS 25.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 50.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOK 12.500000
    // exemplar attribute PLLInst_0 CLKOK_DIV 2
    // exemplar attribute PLLInst_0 CLKOP_DIV 32
    // exemplar attribute PLLInst_0 CLKFB_DIV 1
    // exemplar attribute PLLInst_0 CLKI_DIV 2
    // exemplar attribute PLLInst_0 FIN 50.000000
    // exemplar end

endmodule
