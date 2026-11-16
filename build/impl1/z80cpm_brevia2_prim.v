// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Nov 15 20:10:38 2026
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
    wire clk_N_314 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    
    wire VCC_net, clk_in_c, rst_n_c, led_c_7, led_c_6, led_c_5, 
        sram_addr_0, sram_addr_1, sram_addr_2, sram_addr_3, sram_addr_4, 
        sw_c_7, sw_c_6, sw_c_5, sw_c_4, sw_c_3, sw_c_2, sw_c_1, 
        sw_c_0, uart_rx_c, uart_tx_c, sram_addr_0_15, sram_addr_0_14, 
        sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, sram_addr_0_10, 
        sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, sram_addr_0_6, 
        sram_addr_0_5;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    
    wire rst_m, mreq_n, iorq_n, rd_n, wr_n;
    wire [7:0]cpu_dout;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(63[15:23])
    wire [7:0]bus_din;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(64[15:22])
    
    wire mem_rd, sram_oen_N_94, uart_rd;
    wire [7:0]uart_rx_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(96[15:27])
    
    wire uart_rx_avail, uart_tx_busy;
    wire [7:0]io_rdata;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(103[13:21])
    
    wire rst_n_N_57, sram_go_N_68, io_rdata_7__N_46;
    wire [11:0]k_adj_2027;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    
    wire n2690, n18293;
    wire [7:0]di_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(50[17:23])
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    wire [6:0]mc;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    wire [7:0]ACC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[17:20])
    wire [15:0]SP;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[17:19])
    wire [15:0]RegBusC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(106[17:24])
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    wire [1:0]ISet;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    
    wire n611, n612, Read_To_Acc;
    wire [3:0]Set_BusA_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(178[18:29])
    wire [2:0]Set_Addr_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    
    wire n24, n9, n610, n2296, n2541, n18291, n40782, n18289, 
        n2530, n2143, n40990, n40698, n40697, n40696, n40695, 
        n18167, n18285, n16922, n18283, n3, n613, n609, n608, 
        n607, n606, n605, n604, n603, n602, n601, n600, n599, 
        n598, n23, n2063, Read_To_Acc_N_1469, Save_ALU_N_1473, Read_To_Reg_N_1457, 
        n8, n18281, Read_To_Acc_N_1472, n15, n13, n12, n18279, 
        n38354, n38353, clk_op_enable_113, n24432, n38341, n38340, 
        clk_op_enable_322, n33732, n11489, n120, n123, n108, n126, 
        n129, n111, n107, n110, n113, n114, n116, n117, n119, 
        n122, n125, n128, n18277, clk_op_enable_324, clk_op_enable_307, 
        n21023, n20, n40407, n38, n7, n18275, n22, n10, n20_adj_2016, 
        n19, n18, n12_adj_2017, n41013, n38701, n41036, n7_adj_2018, 
        n38996, n38995, n35590, n16160, n38977, n35461, n5, n18273, 
        n6789, n10_adj_2019, n8_adj_2020, n130, n127, n124, n121, 
        n118, n115, n112, n4, n109, n106, n34231, n11570, n13_adj_2021, 
        n31315, n31314, n33747, n41012, n31313, n31312, n31311, 
        n2, n6, n21, n16, n10_adj_2022, n23195, n41038, n14, 
        n11, n12_adj_2023, n14_adj_2024, n17, n25, n18271, clk_op_enable_170, 
        n38873, n24815, n38844, n41028, n38834, n10565, n31, n18267, 
        n18265, n34887, n38820, n10470, n38816, n34160, n31310, 
        n31793, n31309, n31308, sram_data_out_7, n34774, n10201, 
        n38799, n38796, n31307, n18263, n31306, sram_data_out_6, 
        sram_data_out_5, sram_data_out_4, sram_data_out_3, sram_data_out_2, 
        sram_data_out_1, sram_data_out_0, n41032, n41034, n38771, 
        n33735, n16952, n28, GND_net, n41033, n31305, n31304, 
        n34159, n38735, n18261, n38650;
    
    VHI i2 (.Z(VCC_net));
    INV i35612 (.A(clk_op), .Z(clk_N_314));
    FD1S3AY rst_m_50 (.D(rst_n_N_57), .CK(clk_op), .Q(rst_m)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_m_50.GSR = "ENABLED";
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
    CCU2B hb_5684_add_4_23 (.A0(n4), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31314), 
          .COUT(n31315), .S0(n109), .S1(n108));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_23.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_23.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_23.INJECT1_0 = "NO";
    defparam hb_5684_add_4_23.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut (.A(wr_n), .B(n33732), .C(uart_tx_busy), .Z(clk_op_enable_307)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf1f1;
    BB sram_data_pad_6 (.I(cpu_dout[6]), .T(n38834), .B(sram_data[6]), 
       .O(sram_data_out_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 i14780_2_lut_3_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n38844), 
            .D(uart_tx_busy), .Z(clk_op_enable_322)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i14780_2_lut_3_lut_3_lut_4_lut.init = 16'h0f11;
    FD1S3AY rst_s_51_rep_819 (.D(rst_m), .CK(clk_op), .Q(n41038)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_819.GSR = "ENABLED";
    FD1S3AY rst_s_51_rep_817 (.D(rst_m), .CK(clk_op), .Q(n41036)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_817.GSR = "ENABLED";
    CCU2B hb_5684_add_4_21 (.A0(n6), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31313), 
          .COUT(n31314), .S0(n111), .S1(n110));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_21.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_21.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_21.INJECT1_0 = "NO";
    defparam hb_5684_add_4_21.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n7_adj_2018), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31312), .COUT(n31313), .S0(n113), .S1(n112));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_19.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_19.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_19.INJECT1_0 = "NO";
    defparam hb_5684_add_4_19.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31311), 
          .COUT(n31312), .S0(n115), .S1(n114));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_17.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_17.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_17.INJECT1_0 = "NO";
    defparam hb_5684_add_4_17.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_15 (.A0(n12_adj_2023), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31310), .COUT(n31311), .S0(n117), .S1(n116));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_15.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_15.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_15.INJECT1_0 = "NO";
    defparam hb_5684_add_4_15.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_13 (.A0(n14_adj_2024), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n13_adj_2021), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31309), .COUT(n31310), .S0(n119), .S1(n118));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_13.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_13.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_13.INJECT1_0 = "NO";
    defparam hb_5684_add_4_13.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31308), 
          .COUT(n31309), .S0(n121), .S1(n120));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_11.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_11.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_11.INJECT1_0 = "NO";
    defparam hb_5684_add_4_11.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31307), 
          .COUT(n31308), .S0(n123), .S1(n122));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_9.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_9.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_9.INJECT1_0 = "NO";
    defparam hb_5684_add_4_9.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_7 (.A0(n20_adj_2016), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31306), .COUT(n31307), .S0(n125), .S1(n124));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_7.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_7.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_7.INJECT1_0 = "NO";
    defparam hb_5684_add_4_7.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31305), 
          .COUT(n31306), .S0(n127), .S1(n126));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_5.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_5.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_5.INJECT1_0 = "NO";
    defparam hb_5684_add_4_5.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31304), 
          .COUT(n31305), .S0(n129), .S1(n128));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_3.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_3.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_3.INJECT1_0 = "NO";
    defparam hb_5684_add_4_3.INJECT1_1 = "NO";
    CCU2B hb_5684_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n25), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n31304), 
          .S1(n130));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_1.INIT0 = 16'h0000;
    defparam hb_5684_add_4_1.INIT1 = 16'h555f;
    defparam hb_5684_add_4_1.INJECT1_0 = "NO";
    defparam hb_5684_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i19749_3_lut_4_lut (.A(ACC[2]), .B(SP[2]), .C(mc[6]), .D(n28), 
            .Z(n2690)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    defparam i19749_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 i20393_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n613), 
            .D(uart_tx_busy), .Z(n18293)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20393_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i7678_4_lut (.A(sram_data_out_2), .B(n38735), .C(sram_go_N_68), 
            .D(n7), .Z(n10470)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7678_4_lut.init = 16'h0a3a;
    ORCALUT4 io_rdata_7__I_0_55_i3_4_lut (.A(uart_rx_data[2]), .B(sw_c_2), 
            .C(io_rdata_7__N_46), .D(uart_rd), .Z(io_rdata[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_55_i3_4_lut.init = 16'hcac0;
    ORCALUT4 n37423_bdd_4_lut_35449 (.A(io_rdata_7__N_46), .B(uart_rd), 
            .C(uart_rx_data[3]), .D(sw_c_3), .Z(n38341)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam n37423_bdd_4_lut_35449.init = 16'hea40;
    ORCALUT4 i7772_4_lut (.A(sram_data_out_1), .B(n34887), .C(sram_go_N_68), 
            .D(n31), .Z(n10565)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7772_4_lut.init = 16'hfaca;
    ORCALUT4 i20392_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n612), 
            .D(uart_tx_busy), .Z(n18291)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20392_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i34_4_lut (.A(n33747), .B(sw_c_1), .C(io_rdata_7__N_46), 
            .D(n20), .Z(io_rdata[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i34_4_lut.init = 16'hcac0;
    ORCALUT4 i7438_4_lut (.A(sram_data_out_5), .B(n38995), .C(sram_go_N_68), 
            .D(n38701), .Z(n10201)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7438_4_lut.init = 16'h0a3a;
    ORCALUT4 sram_data_out_4_bdd_3_lut_35435 (.A(sram_data_out_4), .B(n38353), 
            .C(sram_go_N_68), .Z(n38354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam sram_data_out_4_bdd_3_lut_35435.init = 16'hcaca;
    ORCALUT4 io_rdata_7__I_0_55_i6_4_lut (.A(uart_rx_data[5]), .B(sw_c_5), 
            .C(io_rdata_7__N_46), .D(uart_rd), .Z(io_rdata[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_55_i6_4_lut.init = 16'hcac0;
    ORCALUT4 i3_4_lut (.A(sram_addr_0_6), .B(n34231), .C(sram_addr_0_7), 
            .D(sram_addr_4), .Z(n33732)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i3_4_lut.init = 16'hefff;
    ORCALUT4 i3_4_lut_adj_609 (.A(sram_addr_3), .B(n12_adj_2017), .C(n38995), 
            .D(iorq_n), .Z(n34231)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_609.init = 16'hfffe;
    ORCALUT4 A_7__I_0_i12_2_lut (.A(sram_addr_0), .B(sram_addr_0_5), .Z(n12_adj_2017)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[23:40])
    defparam A_7__I_0_i12_2_lut.init = 16'heeee;
    ORCALUT4 io_rdata_7__I_0_55_i5_4_lut (.A(uart_rx_data[4]), .B(sw_c_4), 
            .C(io_rdata_7__N_46), .D(uart_rd), .Z(io_rdata[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_55_i5_4_lut.init = 16'hcac0;
    ORCALUT4 i8655_3_lut (.A(sram_data_out_7), .B(n24815), .C(sram_go_N_68), 
            .Z(n11489)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8655_3_lut.init = 16'h3a3a;
    ORCALUT4 io_rdata_7__I_0_55_i8_4_lut (.A(uart_rx_data[7]), .B(sw_c_7), 
            .C(io_rdata_7__N_46), .D(uart_rd), .Z(io_rdata[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_55_i8_4_lut.init = 16'hcac0;
    FD1S3AY rst_s_51_rep_815 (.D(rst_m), .CK(clk_op), .Q(n41034)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_815.GSR = "ENABLED";
    FD1S3AY rst_s_51_rep_814 (.D(rst_m), .CK(clk_op), .Q(n41033)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_814.GSR = "ENABLED";
    FD1S3AY rst_s_51_rep_813 (.D(rst_m), .CK(clk_op), .Q(n41032)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_813.GSR = "ENABLED";
    ORCALUT4 i8729_4_lut (.A(sram_data_out_6), .B(n34160), .C(sram_go_N_68), 
            .D(n24815), .Z(n11570)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8729_4_lut.init = 16'h3afa;
    ORCALUT4 io_rdata_7__I_0_55_i7_4_lut (.A(uart_rx_data[6]), .B(sw_c_6), 
            .C(io_rdata_7__N_46), .D(uart_rd), .Z(io_rdata[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_55_i7_4_lut.init = 16'hcac0;
    FD1S3AX hb_5684__i0 (.D(n130), .CK(clk_op), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i0.GSR = "ENABLED";
    ORCALUT4 i1_4_lut (.A(n23195), .B(SP[2]), .C(SP[10]), .D(Set_BusA_To[0]), 
            .Z(n2530)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(178[18:29])
    defparam i1_4_lut.init = 16'ha088;
    ORCALUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_57)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(51[14:20])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    ORCALUT4 n40782_bdd_2_lut_rep_777 (.A(n40782), .B(sram_addr_4), .Z(n40990)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n40782_bdd_2_lut_rep_777.init = 16'h2222;
    BB sram_data_pad_7 (.I(cpu_dout[7]), .T(n38834), .B(sram_data[7]), 
       .O(sram_data_out_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 n40697_bdd_3_lut (.A(n40697), .B(sw_c_0), .C(io_rdata_7__N_46), 
            .Z(n40698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40697_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n33747_bdd_4_lut_35448 (.A(n33747), .B(sram_addr_4), .C(uart_rx_data[0]), 
            .D(uart_tx_busy), .Z(n40697)) /* synthesis lut_function=(A (B (C)+!B (D))) */ ;
    defparam n33747_bdd_4_lut_35448.init = 16'ha280;
    ORCALUT4 sram_data_out_0_bdd_3_lut (.A(sram_data_out_0), .B(n40695), 
            .C(sram_go_N_68), .Z(n40696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam sram_data_out_0_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n24432_bdd_4_lut (.A(n24432), .B(n16922), .C(n40407), .D(sram_addr_0), 
            .Z(n40695)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam n24432_bdd_4_lut.init = 16'h5575;
    ORCALUT4 sram_addr_0_bdd_4_lut (.A(sram_addr_0), .B(sram_addr_3), .C(sram_addr_1), 
            .D(sram_addr_2), .Z(n40782)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam sram_addr_0_bdd_4_lut.init = 16'h1053;
    ORCALUT4 i1_2_lut_rep_565 (.A(sram_addr_4), .B(n16922), .Z(n38799)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_2_lut_rep_565.init = 16'heeee;
    ORCALUT4 sram_addr_0_bdd_3_lut_4_lut (.A(sram_addr_4), .B(n16922), .C(n38995), 
            .D(sram_addr_3), .Z(n24432)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam sram_addr_0_bdd_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_rep_501_3_lut (.A(sram_addr_4), .B(n16922), .C(sram_addr_0), 
            .Z(n38735)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_2_lut_rep_501_3_lut.init = 16'hfefe;
    ORCALUT4 sram_data_out_3_bdd_3_lut_35450_4_lut (.A(n40990), .B(n16922), 
            .C(sram_go_N_68), .D(sram_data_out_3), .Z(n38340)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam sram_data_out_3_bdd_3_lut_35450_4_lut.init = 16'h2f20;
    ORCALUT4 i20391_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n611), 
            .D(uart_tx_busy), .Z(n18289)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20391_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_2_lut_rep_467_3_lut_4_lut (.A(sram_addr_4), .B(n16922), 
            .C(sram_addr_3), .D(sram_addr_0), .Z(n38701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_2_lut_rep_467_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i20381_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n610), 
            .D(uart_tx_busy), .Z(n18285)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20381_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i20380_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n609), 
            .D(uart_tx_busy), .Z(n18283)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20380_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i20379_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n608), 
            .D(uart_tx_busy), .Z(n18281)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20379_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i33360_4_lut (.A(sram_addr_0_14), .B(sram_addr_0_15), .C(sram_addr_0_12), 
            .D(sram_addr_0_13), .Z(sram_go_N_68)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i33360_4_lut.init = 16'h0001;
    ORCALUT4 i20378_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n607), 
            .D(uart_tx_busy), .Z(n18279)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20378_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i20377_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n606), 
            .D(uart_tx_busy), .Z(n18277)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20377_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n605), .D(uart_tx_busy), 
            .Z(n18275)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    FD1S3AX hb_5684__i24 (.D(n106), .CK(clk_op), .Q(led_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i24.GSR = "ENABLED";
    FD1S3AX hb_5684__i23 (.D(n107), .CK(clk_op), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i23.GSR = "ENABLED";
    FD1S3AX hb_5684__i22 (.D(n108), .CK(clk_op), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i22.GSR = "ENABLED";
    FD1S3AX hb_5684__i21 (.D(n109), .CK(clk_op), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i21.GSR = "ENABLED";
    FD1S3AX hb_5684__i20 (.D(n110), .CK(clk_op), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i20.GSR = "ENABLED";
    FD1S3AX hb_5684__i19 (.D(n111), .CK(clk_op), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i19.GSR = "ENABLED";
    FD1S3AX hb_5684__i18 (.D(n112), .CK(clk_op), .Q(n7_adj_2018)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i18.GSR = "ENABLED";
    FD1S3AX hb_5684__i17 (.D(n113), .CK(clk_op), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i17.GSR = "ENABLED";
    FD1S3AX hb_5684__i16 (.D(n114), .CK(clk_op), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i16.GSR = "ENABLED";
    FD1S3AX hb_5684__i15 (.D(n115), .CK(clk_op), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i15.GSR = "ENABLED";
    FD1S3AX hb_5684__i14 (.D(n116), .CK(clk_op), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i14.GSR = "ENABLED";
    FD1S3AX hb_5684__i13 (.D(n117), .CK(clk_op), .Q(n12_adj_2023)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i13.GSR = "ENABLED";
    FD1S3AX hb_5684__i12 (.D(n118), .CK(clk_op), .Q(n13_adj_2021)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i12.GSR = "ENABLED";
    FD1S3AX hb_5684__i11 (.D(n119), .CK(clk_op), .Q(n14_adj_2024)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i11.GSR = "ENABLED";
    FD1S3AX hb_5684__i10 (.D(n120), .CK(clk_op), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i10.GSR = "ENABLED";
    FD1S3AX hb_5684__i9 (.D(n121), .CK(clk_op), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i9.GSR = "ENABLED";
    FD1S3AX hb_5684__i8 (.D(n122), .CK(clk_op), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i8.GSR = "ENABLED";
    FD1S3AX hb_5684__i7 (.D(n123), .CK(clk_op), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i7.GSR = "ENABLED";
    FD1S3AX hb_5684__i6 (.D(n124), .CK(clk_op), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i6.GSR = "ENABLED";
    FD1S3AX hb_5684__i5 (.D(n125), .CK(clk_op), .Q(n20_adj_2016)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i5.GSR = "ENABLED";
    FD1S3AX hb_5684__i4 (.D(n126), .CK(clk_op), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i4.GSR = "ENABLED";
    FD1S3AX hb_5684__i3 (.D(n127), .CK(clk_op), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i3.GSR = "ENABLED";
    FD1S3AX hb_5684__i2 (.D(n128), .CK(clk_op), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i2.GSR = "ENABLED";
    FD1S3AX hb_5684__i1 (.D(n129), .CK(clk_op), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684__i1.GSR = "ENABLED";
    ORCALUT4 i14_3_lut (.A(di_reg[2]), .B(SP[2]), .C(Set_Addr_To[0]), 
            .Z(n10_adj_2022)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    defparam i14_3_lut.init = 16'hcaca;
    ORCALUT4 i17_3_lut (.A(ACC[2]), .B(SP[10]), .C(Set_Addr_To[0]), .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    defparam i17_3_lut.init = 16'hcaca;
    ORCALUT4 i10_3_lut (.A(n2063), .B(RegBusC[10]), .C(n2296), .Z(n2143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    defparam i10_3_lut.init = 16'hcaca;
    ORCALUT4 i20376_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n604), 
            .D(uart_tx_busy), .Z(n18273)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20376_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 i20375_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n603), 
            .D(uart_tx_busy), .Z(n18271)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20375_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i28_4_lut (.A(Read_To_Acc_N_1469), .B(Read_To_Acc_N_1472), 
            .C(ISet[1]), .D(ISet[0]), .Z(Read_To_Acc)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i28_4_lut.init = 16'hc0ca;
    PFUMX i35416 (.BLUT(n40698), .ALUT(n40696), .C0(mem_rd), .Z(bus_din[0]));
    ORCALUT4 i33464_2_lut_rep_537 (.A(wr_n), .B(n33732), .Z(n38771)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33464_2_lut_rep_537.init = 16'h1111;
    ORCALUT4 i2_3_lut (.A(k_adj_2027[0]), .B(n33735), .C(n41032), .Z(clk_op_enable_113)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam i2_3_lut.init = 16'h0808;
    ORCALUT4 i26395_3_lut_4_lut (.A(wr_n), .B(n33732), .C(uart_tx_busy), 
            .D(n38), .Z(clk_op_enable_324)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i26395_3_lut_4_lut.init = 16'h01f1;
    ORCALUT4 i20372_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n602), 
            .D(uart_tx_busy), .Z(n18267)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20372_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i33340_2_lut (.A(n33732), .B(rd_n), .Z(uart_rd)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33340_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_610 (.A(sram_addr_0), .B(n38799), 
            .C(sram_addr_2), .D(sram_addr_3), .Z(n16952)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i1_2_lut_3_lut_4_lut_adj_610.init = 16'hffef;
    ORCALUT4 sram_addr_3_bdd_3_lut_4_lut (.A(sram_addr_0), .B(n38799), .C(sram_addr_2), 
            .D(sram_addr_3), .Z(n38353)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam sram_addr_3_bdd_3_lut_4_lut.init = 16'h1101;
    ORCALUT4 i33524_3_lut (.A(Set_BusA_To[2]), .B(n2541), .C(Set_BusA_To[1]), 
            .Z(n23195)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i33524_3_lut.init = 16'h3737;
    ORCALUT4 i20371_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n601), 
            .D(uart_tx_busy), .Z(n18265)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20371_2_lut_3_lut_4_lut.init = 16'hf0e0;
    BB sram_data_pad_5 (.I(cpu_dout[5]), .T(n38834), .B(sram_data[5]), 
       .O(sram_data_out_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_4 (.I(cpu_dout[4]), .T(n38834), .B(sram_data[4]), 
       .O(sram_data_out_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_3 (.I(cpu_dout[3]), .T(n38834), .B(sram_data[3]), 
       .O(sram_data_out_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_2 (.I(cpu_dout[2]), .T(n38834), .B(sram_data[2]), 
       .O(sram_data_out_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_1 (.I(cpu_dout[1]), .T(n38834), .B(sram_data[1]), 
       .O(sram_data_out_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_0 (.I(cpu_dout[0]), .T(n38834), .B(sram_data[0]), 
       .O(sram_data_out_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_6 (.I(n41032), .O(led[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_4 (.I(sram_addr_0), .O(led[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_3 (.I(sram_addr_1), .O(led[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_2 (.I(sram_addr_2), .O(led[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_1 (.I(sram_addr_3), .O(led[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_0 (.I(sram_addr_4), .O(led[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
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
    OB sram_addr_pad_4 (.I(sram_addr_0), .O(sram_addr[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_3 (.I(sram_addr_1), .O(sram_addr[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_2 (.I(sram_addr_2), .O(sram_addr[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_1 (.I(sram_addr_3), .O(sram_addr[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_0 (.I(sram_addr_4), .O(sram_addr[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_cen_pad (.I(n38820), .O(sram_cen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    OB sram_oen_pad (.I(sram_oen_N_94), .O(sram_oen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    OB sram_wen_pad (.I(n38834), .O(sram_wen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
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
    ORCALUT4 i20370_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n600), 
            .D(uart_tx_busy), .Z(n18263)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20370_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_2_lut_rep_582_3_lut_4_lut (.A(ISet[1]), .B(n38977), .C(n38996), 
            .D(IR[7]), .Z(n38816)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_582_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i4_4_lut (.A(sram_addr_0_6), .B(rd_n), .C(sram_addr_4), .D(n35461), 
            .Z(io_rdata_7__N_46)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0002;
    ORCALUT4 i31971_2_lut (.A(sram_addr_0_7), .B(n34231), .Z(n35461)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i31971_2_lut.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_611 (.A(sram_addr_3), .B(sram_addr_4), .C(n16922), 
            .D(sram_addr_0), .Z(n34159)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i3_4_lut_adj_611.init = 16'hfff7;
    ORCALUT4 i17542_3_lut_4_lut (.A(wr_n), .B(n33732), .C(cpu_dout[7]), 
            .D(sr[7]), .Z(n21023)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i17542_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i7_4_lut (.A(n13), .B(sram_go_N_68), .C(n12), .D(sram_addr_0_11), 
            .Z(n16922)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i7_4_lut.init = 16'hfffb;
    ORCALUT4 i5_4_lut (.A(sram_addr_0_6), .B(sram_addr_0_9), .C(sram_addr_0_7), 
            .D(sram_addr_0_10), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i4_2_lut (.A(sram_addr_0_8), .B(sram_addr_0_5), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i4_2_lut.init = 16'heeee;
    ORCALUT4 i33336_2_lut (.A(mreq_n), .B(rd_n), .Z(mem_rd)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33336_2_lut.init = 16'h1111;
    CCU2B hb_5684_add_4_25 (.A0(n2), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(led_c_7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31315), 
          .S0(n107), .S1(n106));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5684_add_4_25.INIT0 = 16'haaa0;
    defparam hb_5684_add_4_25.INIT1 = 16'haaa0;
    defparam hb_5684_add_4_25.INJECT1_0 = "NO";
    defparam hb_5684_add_4_25.INJECT1_1 = "NO";
    FD1S3AY rst_s_51 (.D(rst_m), .CK(clk_op), .Q(led_c_6)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i33348_3_lut_rep_586_4_lut (.A(sram_go_N_68), .B(mreq_n), .C(wr_n), 
            .D(rd_n), .Z(n38820)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i33348_3_lut_rep_586_4_lut.init = 16'hfeee;
    ORCALUT4 i33350_2_lut_rep_600_3_lut (.A(sram_go_N_68), .B(mreq_n), .C(wr_n), 
            .Z(n38834)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i33350_2_lut_rep_600_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_612 (.A(wr_n), .B(n33732), .C(n598), 
            .D(uart_tx_busy), .Z(n18167)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_612.init = 16'hf0f1;
    ORCALUT4 i33352_2_lut_4_lut_3_lut_4_lut (.A(sram_go_N_68), .B(mreq_n), 
            .C(rd_n), .D(wr_n), .Z(sram_oen_N_94)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i33352_2_lut_4_lut_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i20366_2_lut_3_lut_4_lut (.A(wr_n), .B(n33732), .C(n599), 
            .D(uart_tx_busy), .Z(n18261)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i20366_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PFUMX i8730 (.BLUT(io_rdata[6]), .ALUT(n11570), .C0(mem_rd), .Z(bus_din[6]));
    PFUMX i8656 (.BLUT(io_rdata[7]), .ALUT(n11489), .C0(mem_rd), .Z(bus_din[7]));
    ORCALUT4 i6_4_lut (.A(rd_n), .B(n35590), .C(sram_addr_0_7), .D(sram_addr_3), 
            .Z(n33747)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i6_4_lut.init = 16'h0010;
    ORCALUT4 i32087_4_lut (.A(n38995), .B(n12_adj_2017), .C(iorq_n), .D(sram_addr_0_6), 
            .Z(n35590)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i32087_4_lut.init = 16'hfffe;
    uart_rx u_rx (.VCC_net(VCC_net), .uart_rx_data({uart_rx_data}), .clk_op(clk_op), 
            .clk_op_enable_113(clk_op_enable_113), .uart_rx_avail(uart_rx_avail), 
            .n41036(n41036), .uart_rx_c(uart_rx_c), .n41033(n41033), .n41034(n41034), 
            .k({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
            Open_6, Open_7, Open_8, Open_9, Open_10, k_adj_2027[0]}), 
            .led_c_6(led_c_6), .n41012(n41012), .n33735(n33735), .uart_rd(uart_rd)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(100[11] 101[63])
    ORCALUT4 i5899_2_lut (.A(tstate[2]), .B(n41032), .Z(clk_op_enable_170)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5899_2_lut.init = 16'heeee;
    ORCALUT4 i4_4_lut_adj_613 (.A(n31793), .B(n8_adj_2020), .C(n38796), 
            .D(n16160), .Z(n10_adj_2019)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i4_4_lut_adj_613.init = 16'heeef;
    PFUMX i34267 (.BLUT(io_rdata[4]), .ALUT(n38354), .C0(mem_rd), .Z(bus_din[4]));
    PFUMX i7439 (.BLUT(io_rdata[5]), .ALUT(n10201), .C0(mem_rd), .Z(bus_din[5]));
    ORCALUT4 i33_3_lut (.A(uart_rx_avail), .B(uart_rx_data[1]), .C(sram_addr_4), 
            .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i33_3_lut.init = 16'hcaca;
    PFUMX i7773 (.BLUT(io_rdata[1]), .ALUT(n10565), .C0(mem_rd), .Z(bus_din[1]));
    PFUMX i34260 (.BLUT(n38341), .ALUT(n38340), .C0(mem_rd), .Z(bus_din[3]));
    tv80n u_cpu (.wr_n(wr_n), .clk_N_314(clk_N_314), .mreq_n(mreq_n), 
          .n41033(n41033), .rd_n(rd_n), .n41034(n41034), .clk_op(clk_op), 
          .clk_op_enable_170(clk_op_enable_170), .n41038(n41038), .bus_din({bus_din}), 
          .led_c_6(led_c_6), .n41012(n41012), .\di_reg[2] (di_reg[2]), 
          .n41032(n41032), .iorq_n(iorq_n), .\tstate[2] (tstate[2]), .\mc[6] (mc[6]), 
          .sram_addr_4(sram_addr_4), .\Set_Addr_To[0] (Set_Addr_To[0]), 
          .n2296(n2296), .ISet({ISet}), .n41036(n41036), .\Set_BusA_To[1] (Set_BusA_To[1]), 
          .n41013(n41013), .sram_addr_0_6(sram_addr_0_6), .\SP[10] (SP[10]), 
          .sram_addr_0_5(sram_addr_0_5), .sram_addr_0(sram_addr_0), .\SP[2] (SP[2]), 
          .\ACC[2] (ACC[2]), .sram_addr_1(sram_addr_1), .sram_addr_2(sram_addr_2), 
          .sram_addr_3(sram_addr_3), .led_c_5(led_c_5), .n28(n28), .n23195(n23195), 
          .\Set_BusA_To[0] (Set_BusA_To[0]), .n2541(n2541), .\IR[7] (IR[7]), 
          .\IR[6] (IR[6]), .n41028(n41028), .n2530(n2530), .sram_addr_0_15(sram_addr_0_15), 
          .n2143(n2143), .sram_addr_0_14(sram_addr_0_14), .sram_addr_0_13(sram_addr_0_13), 
          .sram_addr_0_12(sram_addr_0_12), .sram_addr_0_11(sram_addr_0_11), 
          .sram_addr_0_10(sram_addr_0_10), .n38977(n38977), .n31793(n31793), 
          .n6788({n6789}), .sram_addr_0_9(sram_addr_0_9), .sram_addr_0_8(sram_addr_0_8), 
          .sram_addr_0_7(sram_addr_0_7), .\Set_BusA_To[2] (Set_BusA_To[2]), 
          .cpu_dout({cpu_dout}), .Read_To_Acc(Read_To_Acc), .n14(n14), 
          .n10(n10_adj_2022), .\RegBusC[10] (RegBusC[10]), .VCC_net(VCC_net), 
          .n2690(n2690), .n2063(n2063), .Read_To_Acc_N_1472(Read_To_Acc_N_1472), 
          .Read_To_Acc_N_1469(Read_To_Acc_N_1469), .Save_ALU_N_1473(Save_ALU_N_1473), 
          .n16160(n16160), .n38796(n38796), .n38816(n38816), .n34774(n34774), 
          .n10_adj_28(n10_adj_2019), .n38650(n38650), .n38873(n38873), 
          .n38996(n38996), .Read_To_Reg_N_1457(Read_To_Reg_N_1457), .n8(n8_adj_2020)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(123[9] 128[4])
    PFUMX i25491 (.BLUT(Save_ALU_N_1473), .ALUT(Read_To_Reg_N_1457), .C0(ISet[0]), 
          .Z(n6789));
    PFUMX i7679 (.BLUT(io_rdata[2]), .ALUT(n10470), .C0(mem_rd), .Z(bus_din[2]));
    boot_rom u_rom (.sram_addr_2(sram_addr_2), .sram_addr_3(sram_addr_3), 
            .sram_addr_1(sram_addr_1), .n7(n7), .sram_addr_4(sram_addr_4), 
            .n40407(n40407), .n38995(n38995), .n34159(n34159), .n34160(n34160), 
            .sram_addr_0(sram_addr_0), .n38735(n38735), .n31(n31), .n24432(n24432), 
            .n16952(n16952), .n24815(n24815), .n16922(n16922), .n34887(n34887)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(76[12:47])
    ORCALUT4 IR_6__bdd_4_lut_34501 (.A(IR[6]), .B(n38873), .C(n34774), 
            .D(n41028), .Z(n38650)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam IR_6__bdd_4_lut_34501.init = 16'hf088;
    FD1S3AY rst_s_51_rep_794 (.D(rst_m), .CK(clk_op), .Q(n41013)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_794.GSR = "ENABLED";
    FD1S3AY rst_s_51_rep_793 (.D(rst_m), .CK(clk_op), .Q(n41012)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_51_rep_793.GSR = "ENABLED";
    uart_tx u_tx (.clk_op(clk_op), .clk_op_enable_324(clk_op_enable_324), 
            .n41033(n41033), .uart_tx_busy(uart_tx_busy), .VCC_net(VCC_net), 
            .n21023(n21023), .n597({n598, n599, n600, n601, n602, 
            n603, n604, n605, n606, n607, n608, n609, n610, 
            n611, n612, n613}), .n38(n38), .\sr[7] (sr[7]), .n38771(n38771), 
            .\cpu_dout[3] (cpu_dout[3]), .clk_op_enable_307(clk_op_enable_307), 
            .n41034(n41034), .uart_tx_c(uart_tx_c), .n38844(n38844), .clk_op_enable_322(clk_op_enable_322), 
            .led_c_6(led_c_6), .n18293(n18293), .n18291(n18291), .n18289(n18289), 
            .n18285(n18285), .\cpu_dout[5] (cpu_dout[5]), .\cpu_dout[6] (cpu_dout[6]), 
            .n18283(n18283), .\cpu_dout[2] (cpu_dout[2]), .\cpu_dout[1] (cpu_dout[1]), 
            .\cpu_dout[0] (cpu_dout[0]), .\cpu_dout[4] (cpu_dout[4]), .n18281(n18281), 
            .n18279(n18279), .n18277(n18277), .n18275(n18275), .n18273(n18273), 
            .n18271(n18271), .n18267(n18267), .n18265(n18265), .n18263(n18263), 
            .n18167(n18167), .n18261(n18261)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(98[11] 99[54])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (VCC_net, uart_rx_data, clk_op, clk_op_enable_113, uart_rx_avail, 
            n41036, uart_rx_c, n41033, n41034, k, led_c_6, n41012, 
            n33735, uart_rd) /* synthesis syn_module_defined=1 */ ;
    input VCC_net;
    output [7:0]uart_rx_data;
    input clk_op;
    input clk_op_enable_113;
    output uart_rx_avail;
    input n41036;
    input uart_rx_c;
    input n41033;
    input n41034;
    output [11:0]k;
    input led_c_6;
    input n41012;
    output n33735;
    input uart_rd;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n31332, GND_net;
    wire [31:0]rx_state_N_224;
    
    wire n31331;
    wire [12:0]n279;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(17[16:18])
    
    wire n18104, rx_state, n36410, rxd_d, n31330, clk_op_enable_8, 
        clk_op_enable_18;
    wire [3:0]bitidx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(16[16:22])
    
    wire n38207, clk_op_enable_29, clk_op_enable_48, clk_op_enable_49, 
        n31329, n31328, clk_op_enable_57, n31327, n35645;
    wire [31:0]n70;
    
    wire n18299, n38659, n38661, n8435, n861, n34195, n38962, 
        clk_op_enable_319, n33932;
    wire [11:0]k_c;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    
    wire n38611, n38615, n17995, n35530, n1, n40993, n18301, n38612, 
        n33928, n40988, n31322;
    wire [11:0]n53;
    
    wire n31321, n40998, n18303, n31320, clk_op_enable_229, n31319, 
        n31318, n17972, n17970, n17968, n17966, n17953, n17951, 
        n17949, n17947, n17941, n17939, n17936, n15, n14, n38853, 
        n5, n6, n12, n31261, n31262, n31317, n38616, n31264, 
        rx_state_N_223, n31263;
    
    CCU2B add_1088_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31332), .S0(rx_state_N_224[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_cout.INIT0 = 16'h0000;
    defparam add_1088_add_4_cout.INIT1 = 16'h0000;
    defparam add_1088_add_4_cout.INJECT1_0 = "NO";
    defparam add_1088_add_4_cout.INJECT1_1 = "NO";
    CCU2B add_1088_add_4_11 (.A0(n279[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n279[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31331), .COUT(n31332), .S0(rx_state_N_224[11]), .S1(rx_state_N_224[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_11.INIT0 = 16'haaaa;
    defparam add_1088_add_4_11.INIT1 = 16'haaaa;
    defparam add_1088_add_4_11.INJECT1_0 = "NO";
    defparam add_1088_add_4_11.INJECT1_1 = "NO";
    FD1P3AX rx_data_i0_i0 (.D(sr[0]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3DX rx_avail_73 (.D(n18104), .CK(clk_op), .CD(n41036), .Q(uart_rx_avail)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_avail_73.GSR = "ENABLED";
    FD1S3DX rx_state_72 (.D(n36410), .CK(clk_op), .CD(n41036), .Q(rx_state)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_state_72.GSR = "ENABLED";
    FD1S3BX rxd_d_78 (.D(uart_rx_c), .CK(clk_op), .PD(n41036), .Q(rxd_d)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rxd_d_78.GSR = "ENABLED";
    CCU2B add_1088_add_4_9 (.A0(n279[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n279[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31330), .COUT(n31331), .S0(rx_state_N_224[9]), .S1(rx_state_N_224[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_9.INIT0 = 16'haaaa;
    defparam add_1088_add_4_9.INIT1 = 16'haaaa;
    defparam add_1088_add_4_9.INJECT1_0 = "NO";
    defparam add_1088_add_4_9.INJECT1_1 = "NO";
    FD1P3DX sr_i0_i1 (.D(uart_rx_c), .SP(clk_op_enable_8), .CK(clk_op), 
            .CD(n41033), .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i1.GSR = "ENABLED";
    FD1P3DX sr_i0_i2 (.D(uart_rx_c), .SP(clk_op_enable_18), .CK(clk_op), 
            .CD(n41033), .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i2.GSR = "ENABLED";
    FD1S3DX bitidx__i0 (.D(n38207), .CK(clk_op), .CD(n41034), .Q(bitidx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i0.GSR = "ENABLED";
    FD1P3DX sr_i0_i3 (.D(uart_rx_c), .SP(clk_op_enable_29), .CK(clk_op), 
            .CD(n41033), .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i3.GSR = "ENABLED";
    FD1P3DX sr_i0_i4 (.D(uart_rx_c), .SP(clk_op_enable_48), .CK(clk_op), 
            .CD(n41033), .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i4.GSR = "ENABLED";
    FD1P3DX sr_i0_i5 (.D(uart_rx_c), .SP(clk_op_enable_49), .CK(clk_op), 
            .CD(n41033), .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i5.GSR = "ENABLED";
    CCU2B add_1088_add_4_7 (.A0(n279[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n279[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31329), .COUT(n31330), .S0(rx_state_N_224[7]), .S1(rx_state_N_224[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_7.INIT0 = 16'haaaa;
    defparam add_1088_add_4_7.INIT1 = 16'haaaa;
    defparam add_1088_add_4_7.INJECT1_0 = "NO";
    defparam add_1088_add_4_7.INJECT1_1 = "NO";
    CCU2B add_1088_add_4_5 (.A0(n279[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n279[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31328), .COUT(n31329), .S0(rx_state_N_224[5]), .S1(rx_state_N_224[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_5.INIT0 = 16'h555a;
    defparam add_1088_add_4_5.INIT1 = 16'h555a;
    defparam add_1088_add_4_5.INJECT1_0 = "NO";
    defparam add_1088_add_4_5.INJECT1_1 = "NO";
    FD1P3DX sr_i0_i6 (.D(uart_rx_c), .SP(clk_op_enable_57), .CK(clk_op), 
            .CD(n41033), .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i6.GSR = "ENABLED";
    CCU2B add_1088_add_4_3 (.A0(n279[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n279[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31327), .COUT(n31328), .S0(rx_state_N_224[3]), .S1(rx_state_N_224[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_3.INIT0 = 16'h555a;
    defparam add_1088_add_4_3.INIT1 = 16'haaaa;
    defparam add_1088_add_4_3.INJECT1_0 = "NO";
    defparam add_1088_add_4_3.INJECT1_1 = "NO";
    CCU2B add_1088_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n279[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n31327), .S1(rx_state_N_224[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1088_add_4_1.INIT0 = 16'h0000;
    defparam add_1088_add_4_1.INIT1 = 16'h555a;
    defparam add_1088_add_4_1.INJECT1_0 = "NO";
    defparam add_1088_add_4_1.INJECT1_1 = "NO";
    FD1P3DX sr_i0_i7 (.D(n35645), .SP(bitidx[2]), .CK(clk_op), .CD(n41036), 
            .Q(sr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i7 (.D(sr[7]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(sr[6]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(sr[5]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(sr[4]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    ORCALUT4 i20492_2_lut_3_lut_4_lut_3_lut_4_lut (.A(rxd_d), .B(uart_rx_c), 
            .C(n70[3]), .D(rx_state), .Z(n18299)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i20492_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf0d0;
    FD1P3AX rx_data_i0_i3 (.D(sr[3]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(sr[2]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(sr[1]), .SP(clk_op_enable_113), .CK(clk_op), 
            .Q(uart_rx_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    ORCALUT4 i32137_3_lut_4_lut (.A(bitidx[0]), .B(n38659), .C(uart_rx_c), 
            .D(sr[7]), .Z(n35645)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i32137_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i33418_2_lut_3_lut_4_lut (.A(n38661), .B(bitidx[1]), .C(bitidx[2]), 
            .D(bitidx[0]), .Z(clk_op_enable_29)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i33418_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i5993_2_lut_3_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[2]), 
            .Z(n70[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i5993_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i6000_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[3]), 
            .D(bitidx[2]), .Z(n70[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6000_2_lut_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i6002_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[3]), 
            .D(bitidx[2]), .Z(n8435)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6002_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i536_2_lut_rep_427 (.A(n861), .B(rx_state), .Z(n38661)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i536_2_lut_rep_427.init = 16'h8888;
    ORCALUT4 i33416_2_lut_3_lut_4_lut (.A(n861), .B(rx_state), .C(n34195), 
            .D(bitidx[1]), .Z(clk_op_enable_48)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33416_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i33355_2_lut_3_lut_4_lut (.A(n861), .B(rx_state), .C(n38962), 
            .D(bitidx[1]), .Z(clk_op_enable_319)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33355_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 n33932_bdd_3_lut_34433 (.A(n33932), .B(k[0]), .C(k_c[11]), 
            .Z(n38611)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam n33932_bdd_3_lut_34433.init = 16'h7f7f;
    ORCALUT4 n33932_bdd_2_lut (.A(rxd_d), .B(uart_rx_c), .Z(n38615)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n33932_bdd_2_lut.init = 16'hdddd;
    ORCALUT4 i1_2_lut_rep_728 (.A(bitidx[0]), .B(bitidx[2]), .Z(n38962)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i1_2_lut_rep_728.init = 16'heeee;
    FD1S3DX k_5685__i0 (.D(n17995), .CK(clk_op), .CD(n41034), .Q(k[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i0.GSR = "ENABLED";
    ORCALUT4 i32033_2_lut_3_lut (.A(bitidx[0]), .B(bitidx[2]), .C(k_c[6]), 
            .Z(n35530)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i32033_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i20092_2_lut_rep_425_3_lut (.A(n861), .B(rx_state), .C(bitidx[1]), 
            .Z(n38659)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i20092_2_lut_rep_425_3_lut.init = 16'h8080;
    ORCALUT4 i33420_2_lut_3_lut_4_lut (.A(n861), .B(rx_state), .C(n38962), 
            .D(bitidx[1]), .Z(clk_op_enable_18)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33420_2_lut_3_lut_4_lut.init = 16'h0800;
    MULT9X9B mult_65 (.P12(n279[12]), .P11(n279[11]), .P10(n279[10]), 
            .P9(n279[9]), .P8(n279[8]), .P7(n279[7]), .P6(n279[6]), 
            .P5(n279[5]), .P4(n279[4]), .P3(n279[3]), .P2(n279[2]), 
            .P1(rx_state_N_224[1]), .P0(rx_state_N_224[0]), .A8(GND_net), 
            .A7(GND_net), .A6(GND_net), .A5(GND_net), .A4(n8435), .A3(n70[3]), 
            .A2(n70[2]), .A1(n40993), .A0(n1), .B8(GND_net), .B7(VCC_net), 
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
    defparam mult_65.REG_INPUTA_CLK = "NONE";
    defparam mult_65.REG_INPUTA_CE = "CE0";
    defparam mult_65.REG_INPUTA_RST = "RST0";
    defparam mult_65.REG_INPUTB_CLK = "NONE";
    defparam mult_65.REG_INPUTB_CE = "CE0";
    defparam mult_65.REG_INPUTB_RST = "RST0";
    defparam mult_65.REG_PIPELINE_CLK = "NONE";
    defparam mult_65.REG_PIPELINE_CE = "CE0";
    defparam mult_65.REG_PIPELINE_RST = "RST0";
    defparam mult_65.REG_OUTPUT_CLK = "NONE";
    defparam mult_65.REG_OUTPUT_CE = "CE0";
    defparam mult_65.REG_OUTPUT_RST = "RST0";
    defparam mult_65.REG_SIGNEDA_CLK = "NONE";
    defparam mult_65.REG_SIGNEDA_CE = "CE0";
    defparam mult_65.REG_SIGNEDA_RST = "RST0";
    defparam mult_65.REG_SIGNEDB_CLK = "NONE";
    defparam mult_65.REG_SIGNEDB_CE = "CE0";
    defparam mult_65.REG_SIGNEDB_RST = "RST0";
    defparam mult_65.GSR = "ENABLED";
    ORCALUT4 i20511_2_lut_3_lut_4_lut_3_lut_4_lut (.A(rxd_d), .B(uart_rx_c), 
            .C(n70[2]), .D(rx_state), .Z(n18301)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i20511_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 n38612_bdd_4_lut (.A(n38612), .B(n38611), .C(bitidx[3]), 
            .D(n33928), .Z(n40988)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam n38612_bdd_4_lut.init = 16'hcaff;
    CCU2B k_5685_add_4_13 (.A0(k_c[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31322), 
          .S0(n53[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_13.INIT0 = 16'haaa0;
    defparam k_5685_add_4_13.INIT1 = 16'h0000;
    defparam k_5685_add_4_13.INJECT1_0 = "NO";
    defparam k_5685_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i33401_2_lut_3_lut_4_lut (.A(n861), .B(rx_state), .C(n34195), 
            .D(bitidx[1]), .Z(clk_op_enable_57)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i33401_2_lut_3_lut_4_lut.init = 16'h0800;
    CCU2B k_5685_add_4_11 (.A0(k_c[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31321), 
          .COUT(n31322), .S0(n53[9]), .S1(n53[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_11.INIT0 = 16'haaa0;
    defparam k_5685_add_4_11.INIT1 = 16'haaa0;
    defparam k_5685_add_4_11.INJECT1_0 = "NO";
    defparam k_5685_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i5986_2_lut_rep_780 (.A(bitidx[1]), .B(bitidx[0]), .Z(n40993)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i5986_2_lut_rep_780.init = 16'h6666;
    ORCALUT4 i20513_2_lut_3_lut_4_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), 
            .C(rx_state), .D(n40998), .Z(n18303)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i20513_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h6066;
    CCU2B k_5685_add_4_9 (.A0(k_c[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31320), 
          .COUT(n31321), .S0(n53[7]), .S1(n53[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_9.INIT0 = 16'haaa0;
    defparam k_5685_add_4_9.INIT1 = 16'haaa0;
    defparam k_5685_add_4_9.INJECT1_0 = "NO";
    defparam k_5685_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut (.A(bitidx[0]), .B(bitidx[2]), .Z(n34195)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i1_2_lut.init = 16'hbbbb;
    FD1P3DX bitidx__i1 (.D(n18303), .SP(clk_op_enable_229), .CK(clk_op), 
            .CD(led_c_6), .Q(bitidx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i1.GSR = "ENABLED";
    CCU2B k_5685_add_4_7 (.A0(k_c[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31319), 
          .COUT(n31320), .S0(n53[5]), .S1(n53[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_7.INIT0 = 16'haaa0;
    defparam k_5685_add_4_7.INIT1 = 16'haaa0;
    defparam k_5685_add_4_7.INJECT1_0 = "NO";
    defparam k_5685_add_4_7.INJECT1_1 = "NO";
    FD1P3DX bitidx__i2 (.D(n18301), .SP(clk_op_enable_229), .CK(clk_op), 
            .CD(n41036), .Q(bitidx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i2.GSR = "ENABLED";
    FD1P3DX bitidx__i3 (.D(n18299), .SP(clk_op_enable_229), .CK(clk_op), 
            .CD(n41034), .Q(bitidx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i3.GSR = "ENABLED";
    ORCALUT4 i4833_3_lut_rep_428_4_lut (.A(rxd_d), .B(uart_rx_c), .C(rx_state), 
            .D(n861), .Z(clk_op_enable_229)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i4833_3_lut_rep_428_4_lut.init = 16'hf202;
    CCU2B k_5685_add_4_5 (.A0(k_c[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31318), 
          .COUT(n31319), .S0(n53[3]), .S1(n53[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_5.INIT0 = 16'haaa0;
    defparam k_5685_add_4_5.INIT1 = 16'haaa0;
    defparam k_5685_add_4_5.INJECT1_0 = "NO";
    defparam k_5685_add_4_5.INJECT1_1 = "NO";
    FD1S3DX k_5685__i11 (.D(n17972), .CK(clk_op), .CD(n41036), .Q(k_c[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i11.GSR = "ENABLED";
    FD1S3DX k_5685__i10 (.D(n17970), .CK(clk_op), .CD(n41036), .Q(k_c[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i10.GSR = "ENABLED";
    FD1S3DX k_5685__i9 (.D(n17968), .CK(clk_op), .CD(n41033), .Q(k_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i9.GSR = "ENABLED";
    FD1S3DX k_5685__i8 (.D(n17966), .CK(clk_op), .CD(n41033), .Q(k_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i8.GSR = "ENABLED";
    FD1S3DX k_5685__i7 (.D(n17953), .CK(clk_op), .CD(n41036), .Q(k_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i7.GSR = "ENABLED";
    FD1S3DX k_5685__i6 (.D(n17951), .CK(clk_op), .CD(n41036), .Q(k_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i6.GSR = "ENABLED";
    FD1S3DX k_5685__i5 (.D(n17949), .CK(clk_op), .CD(n41036), .Q(k_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i5.GSR = "ENABLED";
    FD1S3DX k_5685__i4 (.D(n17947), .CK(clk_op), .CD(n41034), .Q(k_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i4.GSR = "ENABLED";
    FD1S3DX k_5685__i3 (.D(n17941), .CK(clk_op), .CD(n41012), .Q(k_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i3.GSR = "ENABLED";
    FD1S3DX k_5685__i2 (.D(n17939), .CK(clk_op), .CD(led_c_6), .Q(k_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i2.GSR = "ENABLED";
    FD1S3DX k_5685__i1 (.D(n17936), .CK(clk_op), .CD(led_c_6), .Q(k_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685__i1.GSR = "ENABLED";
    ORCALUT4 i8_4_lut_rep_619 (.A(n15), .B(bitidx[0]), .C(n14), .D(k_c[5]), 
            .Z(n38853)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i8_4_lut_rep_619.init = 16'h2000;
    ORCALUT4 n33932_bdd_1_lut_4_lut (.A(n15), .B(bitidx[0]), .C(n14), 
            .D(k_c[5]), .Z(n38612)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam n33932_bdd_1_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i2_4_lut (.A(n33932), .B(n33928), .C(n5), .D(n6), .Z(n33735)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_607 (.A(rx_state), .B(k_c[11]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_607.init = 16'h8888;
    ORCALUT4 i2_2_lut (.A(uart_rx_c), .B(bitidx[3]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    ORCALUT4 i4_4_lut (.A(k_c[3]), .B(k_c[2]), .C(k_c[5]), .D(n35530), 
            .Z(n33932)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0008;
    ORCALUT4 i33511_4_lut (.A(bitidx[1]), .B(n12), .C(k_c[4]), .D(k_c[9]), 
            .Z(n33928)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i33511_4_lut.init = 16'h0001;
    ORCALUT4 i5_4_lut (.A(k_c[10]), .B(k_c[8]), .C(k_c[7]), .D(k_c[1]), 
            .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut (.A(k[0]), .B(uart_rx_avail), .C(n33735), .D(uart_rd), 
            .Z(n18104)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i1_4_lut.init = 16'ha0ec;
    ORCALUT4 i33413_2_lut_3_lut_4_lut (.A(n38661), .B(bitidx[1]), .C(bitidx[2]), 
            .D(bitidx[0]), .Z(clk_op_enable_49)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i33413_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2B equal_4710_10 (.A0(rx_state_N_224[11]), .B0(k_c[11]), .C0(rx_state_N_224[10]), 
          .D0(k_c[10]), .A1(rx_state_N_224[9]), .B1(k_c[9]), .C1(rx_state_N_224[8]), 
          .D1(k_c[8]), .CIN(n31261), .COUT(n31262));
    defparam equal_4710_10.INIT0 = 16'h9009;
    defparam equal_4710_10.INIT1 = 16'h9009;
    defparam equal_4710_10.INJECT1_0 = "YES";
    defparam equal_4710_10.INJECT1_1 = "YES";
    CCU2B k_5685_add_4_3 (.A0(k_c[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31317), 
          .COUT(n31318), .S0(n53[1]), .S1(n53[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_3.INIT0 = 16'haaa0;
    defparam k_5685_add_4_3.INIT1 = 16'haaa0;
    defparam k_5685_add_4_3.INJECT1_0 = "NO";
    defparam k_5685_add_4_3.INJECT1_1 = "NO";
    PFUMX i34431 (.BLUT(n38615), .ALUT(n40988), .C0(rx_state), .Z(n38616));
    CCU2B k_5685_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n31317), 
          .S1(n53[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5685_add_4_1.INIT0 = 16'h0000;
    defparam k_5685_add_4_1.INIT1 = 16'h555f;
    defparam k_5685_add_4_1.INJECT1_0 = "NO";
    defparam k_5685_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i19844_4_lut (.A(n40998), .B(n53[0]), .C(rx_state), .D(k[0]), 
            .Z(n17995)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19844_4_lut.init = 16'hc5c0;
    ORCALUT4 i33426_2_lut_3_lut_4_lut (.A(n38661), .B(bitidx[1]), .C(bitidx[2]), 
            .D(bitidx[0]), .Z(clk_op_enable_8)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i33426_2_lut_3_lut_4_lut.init = 16'h0200;
    ORCALUT4 i6774_1_lut (.A(bitidx[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i6774_1_lut.init = 16'h5555;
    FD1P3DX sr_i0_i0 (.D(uart_rx_c), .SP(clk_op_enable_319), .CK(clk_op), 
            .CD(n41033), .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i0.GSR = "ENABLED";
    CCU2B equal_4710_14 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31264), 
          .S0(rx_state_N_223));
    defparam equal_4710_14.INIT0 = 16'h0000;
    defparam equal_4710_14.INIT1 = 16'h0000;
    defparam equal_4710_14.INJECT1_0 = "NO";
    defparam equal_4710_14.INJECT1_1 = "NO";
    CCU2B equal_4710_14_27896 (.A0(rx_state_N_224[3]), .B0(k_c[3]), .C0(rx_state_N_224[2]), 
          .D0(k_c[2]), .A1(rx_state_N_224[1]), .B1(k_c[1]), .C1(rx_state_N_224[0]), 
          .D1(k[0]), .CIN(n31263), .COUT(n31264));
    defparam equal_4710_14_27896.INIT0 = 16'h9009;
    defparam equal_4710_14_27896.INIT1 = 16'h9009;
    defparam equal_4710_14_27896.INJECT1_0 = "YES";
    defparam equal_4710_14_27896.INJECT1_1 = "YES";
    ORCALUT4 rxd_d_I_0_2_lut_rep_785 (.A(rxd_d), .B(uart_rx_c), .Z(n40998)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam rxd_d_I_0_2_lut_rep_785.init = 16'h2222;
    ORCALUT4 i33324_2_lut (.A(rx_state), .B(n38616), .Z(n36410)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i33324_2_lut.init = 16'h9999;
    ORCALUT4 i14478_4_lut (.A(k_c[11]), .B(n53[11]), .C(rx_state), .D(n40998), 
            .Z(n17972)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14478_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_4_lut_adj_608 (.A(rx_state_N_223), .B(bitidx[3]), .C(n33928), 
            .D(n38853), .Z(n861)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i2_4_lut_adj_608.init = 16'h0222;
    ORCALUT4 i6_4_lut (.A(k_c[3]), .B(k_c[2]), .C(k[0]), .D(k_c[6]), 
            .Z(n15)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0800;
    ORCALUT4 i5_3_lut (.A(bitidx[2]), .B(k_c[11]), .C(uart_rx_c), .Z(n14)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5_3_lut.init = 16'h1010;
    ORCALUT4 i19841_4_lut (.A(n40998), .B(n53[10]), .C(rx_state), .D(k_c[10]), 
            .Z(n17970)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19841_4_lut.init = 16'hc5c0;
    ORCALUT4 i19884_4_lut (.A(n40998), .B(n53[9]), .C(rx_state), .D(k_c[9]), 
            .Z(n17968)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19884_4_lut.init = 16'hc5c0;
    ORCALUT4 i19835_4_lut (.A(n40998), .B(n53[8]), .C(rx_state), .D(k_c[8]), 
            .Z(n17966)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19835_4_lut.init = 16'hc5c0;
    ORCALUT4 i14459_4_lut (.A(k_c[7]), .B(n53[7]), .C(rx_state), .D(n40998), 
            .Z(n17953)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14459_4_lut.init = 16'hc0ca;
    ORCALUT4 i19890_4_lut (.A(n40998), .B(n53[6]), .C(rx_state), .D(k_c[6]), 
            .Z(n17951)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19890_4_lut.init = 16'hc5c0;
    ORCALUT4 i19881_4_lut (.A(n40998), .B(n53[5]), .C(rx_state), .D(k_c[5]), 
            .Z(n17949)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19881_4_lut.init = 16'hc5c0;
    ORCALUT4 i19838_4_lut (.A(n40998), .B(n53[4]), .C(rx_state), .D(k_c[4]), 
            .Z(n17947)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19838_4_lut.init = 16'hc5c0;
    ORCALUT4 i14447_4_lut (.A(k_c[3]), .B(n53[3]), .C(rx_state), .D(n40998), 
            .Z(n17941)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14447_4_lut.init = 16'hc0ca;
    ORCALUT4 i19851_4_lut (.A(n40998), .B(n53[2]), .C(rx_state), .D(k_c[2]), 
            .Z(n17939)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19851_4_lut.init = 16'hc5c0;
    ORCALUT4 i19832_4_lut (.A(n40998), .B(n53[1]), .C(rx_state), .D(k_c[1]), 
            .Z(n17936)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i19832_4_lut.init = 16'hc5c0;
    ORCALUT4 bitidx_0__bdd_4_lut (.A(bitidx[0]), .B(n40998), .C(n861), 
            .D(rx_state), .Z(n38207)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(C (D)))) */ ;
    defparam bitidx_0__bdd_4_lut.init = 16'h5a22;
    CCU2B equal_4710_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rx_state_N_224[13]), .B1(rx_state_N_224[12]), .C1(GND_net), 
          .D1(GND_net), .COUT(n31261));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[32:71])
    defparam equal_4710_0.INIT0 = 16'h000F;
    defparam equal_4710_0.INIT1 = 16'h1111;
    defparam equal_4710_0.INJECT1_0 = "NO";
    defparam equal_4710_0.INJECT1_1 = "YES";
    CCU2B equal_4710_12 (.A0(rx_state_N_224[7]), .B0(k_c[7]), .C0(rx_state_N_224[6]), 
          .D0(k_c[6]), .A1(rx_state_N_224[5]), .B1(k_c[5]), .C1(rx_state_N_224[4]), 
          .D1(k_c[4]), .CIN(n31262), .COUT(n31263));
    defparam equal_4710_12.INIT0 = 16'h9009;
    defparam equal_4710_12.INIT1 = 16'h9009;
    defparam equal_4710_12.INJECT1_0 = "YES";
    defparam equal_4710_12.INJECT1_1 = "YES";
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80n
//

module tv80n (wr_n, clk_N_314, mreq_n, n41033, rd_n, n41034, clk_op, 
            clk_op_enable_170, n41038, bus_din, led_c_6, n41012, \di_reg[2] , 
            n41032, iorq_n, \tstate[2] , \mc[6] , sram_addr_4, \Set_Addr_To[0] , 
            n2296, ISet, n41036, \Set_BusA_To[1] , n41013, sram_addr_0_6, 
            \SP[10] , sram_addr_0_5, sram_addr_0, \SP[2] , \ACC[2] , 
            sram_addr_1, sram_addr_2, sram_addr_3, led_c_5, n28, n23195, 
            \Set_BusA_To[0] , n2541, \IR[7] , \IR[6] , n41028, n2530, 
            sram_addr_0_15, n2143, sram_addr_0_14, sram_addr_0_13, sram_addr_0_12, 
            sram_addr_0_11, sram_addr_0_10, n38977, n31793, n6788, 
            sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, \Set_BusA_To[2] , 
            cpu_dout, Read_To_Acc, n14, n10, \RegBusC[10] , VCC_net, 
            n2690, n2063, Read_To_Acc_N_1472, Read_To_Acc_N_1469, Save_ALU_N_1473, 
            n16160, n38796, n38816, n34774, n10_adj_28, n38650, 
            n38873, n38996, Read_To_Reg_N_1457, n8) /* synthesis syn_module_defined=1 */ ;
    output wr_n;
    input clk_N_314;
    output mreq_n;
    input n41033;
    output rd_n;
    input n41034;
    input clk_op;
    input clk_op_enable_170;
    input n41038;
    input [7:0]bus_din;
    input led_c_6;
    input n41012;
    output \di_reg[2] ;
    input n41032;
    output iorq_n;
    output \tstate[2] ;
    output \mc[6] ;
    output sram_addr_4;
    output \Set_Addr_To[0] ;
    output n2296;
    output [1:0]ISet;
    input n41036;
    output \Set_BusA_To[1] ;
    input n41013;
    output sram_addr_0_6;
    output \SP[10] ;
    output sram_addr_0_5;
    output sram_addr_0;
    output \SP[2] ;
    output \ACC[2] ;
    output sram_addr_1;
    output sram_addr_2;
    output sram_addr_3;
    output led_c_5;
    output n28;
    input n23195;
    output \Set_BusA_To[0] ;
    output n2541;
    output \IR[7] ;
    output \IR[6] ;
    output n41028;
    input n2530;
    output sram_addr_0_15;
    input n2143;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output n38977;
    output n31793;
    input [0:0]n6788;
    output sram_addr_0_9;
    output sram_addr_0_8;
    output sram_addr_0_7;
    output \Set_BusA_To[2] ;
    output [7:0]cpu_dout;
    input Read_To_Acc;
    input n14;
    input n10;
    output \RegBusC[10] ;
    input VCC_net;
    input n2690;
    output n2063;
    output Read_To_Acc_N_1472;
    output Read_To_Acc_N_1469;
    output Save_ALU_N_1473;
    output n16160;
    output n38796;
    input n38816;
    output n34774;
    input n10_adj_28;
    input n38650;
    output n38873;
    output n38996;
    output Read_To_Reg_N_1457;
    output n8;
    
    wire clk_N_314 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n9516, n38665, nxt_mreq_n, nxt_rd_n;
    wire [7:0]di_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(50[17:23])
    
    wire n9514;
    wire [3:0]ALU_Op_3__N_1274;
    
    wire n35438, iorq, iorq_N_334, write, n38932, n23587, NoRead_N_1544, 
        n34826;
    
    FD1S3JX wr_n_45 (.D(n38665), .CK(clk_N_314), .PD(n9516), .Q(wr_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam wr_n_45.GSR = "ENABLED";
    FD1S3JX mreq_n_47 (.D(nxt_mreq_n), .CK(clk_N_314), .PD(n41033), .Q(mreq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam mreq_n_47.GSR = "ENABLED";
    FD1S3JX rd_n_44 (.D(nxt_rd_n), .CK(clk_N_314), .PD(n41034), .Q(rd_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam rd_n_44.GSR = "ENABLED";
    FD1P3IX di_reg__i0 (.D(bus_din[0]), .SP(clk_op_enable_170), .CD(n41038), 
            .CK(clk_op), .Q(di_reg[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i0.GSR = "ENABLED";
    FD1P3IX di_reg__i7 (.D(bus_din[7]), .SP(clk_op_enable_170), .CD(n41038), 
            .CK(clk_op), .Q(di_reg[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i7.GSR = "ENABLED";
    FD1P3IX di_reg__i6 (.D(bus_din[6]), .SP(clk_op_enable_170), .CD(n41038), 
            .CK(clk_op), .Q(di_reg[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i6.GSR = "ENABLED";
    FD1P3IX di_reg__i5 (.D(bus_din[5]), .SP(clk_op_enable_170), .CD(n41038), 
            .CK(clk_op), .Q(di_reg[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i5.GSR = "ENABLED";
    FD1P3IX di_reg__i4 (.D(bus_din[4]), .SP(clk_op_enable_170), .CD(led_c_6), 
            .CK(clk_op), .Q(di_reg[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i4.GSR = "ENABLED";
    FD1P3IX di_reg__i3 (.D(bus_din[3]), .SP(clk_op_enable_170), .CD(n41012), 
            .CK(clk_op), .Q(di_reg[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i3.GSR = "ENABLED";
    FD1P3IX di_reg__i2 (.D(bus_din[2]), .SP(clk_op_enable_170), .CD(led_c_6), 
            .CK(clk_op), .Q(\di_reg[2] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i2.GSR = "ENABLED";
    FD1P3IX di_reg__i1 (.D(bus_din[1]), .SP(clk_op_enable_170), .CD(n41012), 
            .CK(clk_op), .Q(di_reg[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i1.GSR = "ENABLED";
    ORCALUT4 i33369_3_lut (.A(n41032), .B(n9514), .C(ALU_Op_3__N_1274[3]), 
            .Z(n35438)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(138[9] 143[12])
    defparam i33369_3_lut.init = 16'hfbfb;
    ORCALUT4 iorq_I_0_1_lut (.A(iorq), .Z(iorq_N_334)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(104[28:34])
    defparam iorq_I_0_1_lut.init = 16'h5555;
    FD1S3JX iorq_n_46 (.D(iorq_N_334), .CK(clk_N_314), .PD(n35438), .Q(iorq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=123, LSE_RLINE=128 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam iorq_n_46.GSR = "ENABLED";
    ORCALUT4 i33367_2_lut_rep_431 (.A(\tstate[2] ), .B(write), .Z(n38665)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(109[15] 114[20])
    defparam i33367_2_lut_rep_431.init = 16'h7777;
    ORCALUT4 nxt_mreq_n_I_18_4_lut (.A(iorq), .B(n38932), .C(ALU_Op_3__N_1274[3]), 
            .D(n9514), .Z(nxt_mreq_n)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(100[9] 125[12])
    defparam nxt_mreq_n_I_18_4_lut.init = 16'h3a3f;
    ORCALUT4 i2_4_lut (.A(n23587), .B(write), .C(\mc[6] ), .D(NoRead_N_1544), 
            .Z(n34826)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut.init = 16'hffec;
    ORCALUT4 i6908_2_lut (.A(ALU_Op_3__N_1274[3]), .B(n41032), .Z(n9516)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(138[9] 143[12])
    defparam i6908_2_lut.init = 16'heeee;
    \tv80_core(Mode=0)  i_tv80_core (.sram_addr_4(sram_addr_4), .clk_op(clk_op), 
            .n41038(n41038), .Set_Addr_To({Open_11, Open_12, \Set_Addr_To[0] }), 
            .n41034(n41034), .n2296(n2296), .ISet({ISet}), .n41036(n41036), 
            .\Set_BusA_To[1] (\Set_BusA_To[1] ), .n41013(n41013), .sram_addr_0_6(sram_addr_0_6), 
            .led_c_6(led_c_6), .\SP[10] (\SP[10] ), .sram_addr_0_5(sram_addr_0_5), 
            .n41033(n41033), .sram_addr_0(sram_addr_0), .\SP[2] (\SP[2] ), 
            .\ACC[2] (\ACC[2] ), .sram_addr_1(sram_addr_1), .sram_addr_2(sram_addr_2), 
            .sram_addr_3(sram_addr_3), .led_c_5(led_c_5), .\mc[6] (\mc[6] ), 
            .\tstate[2] (\tstate[2] ), .n28(n28), .bus_din({bus_din}), 
            .di_reg({di_reg[7:3], \di_reg[2] , di_reg[1:0]}), .n38932(n38932), 
            .n34826(n34826), .write(write), .n9514(n9514), .\ALU_Op_3__N_1274[3] (ALU_Op_3__N_1274[3]), 
            .nxt_rd_n(nxt_rd_n), .n23195(n23195), .\Set_BusA_To[0] (\Set_BusA_To[0] ), 
            .n2541(n2541), .\IR[7] (\IR[7] ), .\IR[6] (\IR[6] ), .n41028(n41028), 
            .n2530(n2530), .n41012(n41012), .sram_addr_0_15(sram_addr_0_15), 
            .n2143(n2143), .sram_addr_0_14(sram_addr_0_14), .sram_addr_0_13(sram_addr_0_13), 
            .sram_addr_0_12(sram_addr_0_12), .sram_addr_0_11(sram_addr_0_11), 
            .sram_addr_0_10(sram_addr_0_10), .n38977(n38977), .n31793(n31793), 
            .n6788({n6788}), .sram_addr_0_9(sram_addr_0_9), .sram_addr_0_8(sram_addr_0_8), 
            .sram_addr_0_7(sram_addr_0_7), .\Set_BusA_To[2] (\Set_BusA_To[2] ), 
            .cpu_dout({cpu_dout}), .Read_To_Acc(Read_To_Acc), .n14(n14), 
            .n10(n10), .\RegBusC[10] (\RegBusC[10] ), .VCC_net(VCC_net), 
            .iorq(iorq), .n2690(n2690), .n2063(n2063), .Read_To_Acc_N_1472(Read_To_Acc_N_1472), 
            .Read_To_Acc_N_1469(Read_To_Acc_N_1469), .Save_ALU_N_1473(Save_ALU_N_1473), 
            .n16160(n16160), .n38796(n38796), .n38816(n38816), .n34774(n34774), 
            .n10_adj_27(n10_adj_28), .n23587(n23587), .n38650(n38650), 
            .n38873(n38873), .n38996(n38996), .Read_To_Reg_N_1457(Read_To_Reg_N_1457), 
            .n8(n8), .NoRead_N_1544(NoRead_N_1544)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    
endmodule
//
// Verilog Description of module \tv80_core(Mode=0) 
//

module \tv80_core(Mode=0)  (sram_addr_4, clk_op, n41038, Set_Addr_To, 
            n41034, n2296, ISet, n41036, \Set_BusA_To[1] , n41013, 
            sram_addr_0_6, led_c_6, \SP[10] , sram_addr_0_5, n41033, 
            sram_addr_0, \SP[2] , \ACC[2] , sram_addr_1, sram_addr_2, 
            sram_addr_3, led_c_5, \mc[6] , \tstate[2] , n28, bus_din, 
            di_reg, n38932, n34826, write, n9514, \ALU_Op_3__N_1274[3] , 
            nxt_rd_n, n23195, \Set_BusA_To[0] , n2541, \IR[7] , \IR[6] , 
            n41028, n2530, n41012, sram_addr_0_15, n2143, sram_addr_0_14, 
            sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, sram_addr_0_10, 
            n38977, n31793, n6788, sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, 
            \Set_BusA_To[2] , cpu_dout, Read_To_Acc, n14, n10, \RegBusC[10] , 
            VCC_net, iorq, n2690, n2063, Read_To_Acc_N_1472, Read_To_Acc_N_1469, 
            Save_ALU_N_1473, n16160, n38796, n38816, n34774, n10_adj_27, 
            n23587, n38650, n38873, n38996, Read_To_Reg_N_1457, n8, 
            NoRead_N_1544) /* synthesis syn_module_defined=1 */ ;
    output sram_addr_4;
    input clk_op;
    input n41038;
    output [2:0]Set_Addr_To;
    input n41034;
    output n2296;
    output [1:0]ISet;
    input n41036;
    output \Set_BusA_To[1] ;
    input n41013;
    output sram_addr_0_6;
    input led_c_6;
    output \SP[10] ;
    output sram_addr_0_5;
    input n41033;
    output sram_addr_0;
    output \SP[2] ;
    output \ACC[2] ;
    output sram_addr_1;
    output sram_addr_2;
    output sram_addr_3;
    output led_c_5;
    output \mc[6] ;
    output \tstate[2] ;
    output n28;
    input [7:0]bus_din;
    input [7:0]di_reg;
    output n38932;
    input n34826;
    output write;
    output n9514;
    output \ALU_Op_3__N_1274[3] ;
    output nxt_rd_n;
    input n23195;
    output \Set_BusA_To[0] ;
    output n2541;
    output \IR[7] ;
    output \IR[6] ;
    output n41028;
    input n2530;
    input n41012;
    output sram_addr_0_15;
    input n2143;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output n38977;
    output n31793;
    input [0:0]n6788;
    output sram_addr_0_9;
    output sram_addr_0_8;
    output sram_addr_0_7;
    output \Set_BusA_To[2] ;
    output [7:0]cpu_dout;
    input Read_To_Acc;
    input n14;
    input n10;
    output \RegBusC[10] ;
    input VCC_net;
    output iorq;
    input n2690;
    output n2063;
    output Read_To_Acc_N_1472;
    output Read_To_Acc_N_1469;
    output Save_ALU_N_1473;
    output n16160;
    output n38796;
    input n38816;
    output n34774;
    input n10_adj_27;
    output n23587;
    input n38650;
    output n38873;
    output n38996;
    output Read_To_Reg_N_1457;
    output n8;
    output NoRead_N_1544;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire clk_op_enable_227;
    wire [15:0]n2001;
    wire [7:0]ACC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[17:20])
    wire [15:0]SP;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[17:19])
    wire [15:0]n2039;
    wire [15:0]TmpAddr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(117[17:24])
    wire [15:0]PC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[21:23])
    
    wire n2284;
    wire [15:0]n2022;
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    
    wire clk_op_enable_314, n955;
    wire [4:0]Read_To_Reg_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(158[17:30])
    wire [4:0]n21;
    wire [7:0]Ap;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[17:19])
    
    wire clk_op_enable_107;
    wire [15:0]n2057;
    wire [15:0]RegBusC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(106[17:24])
    wire [15:0]n2137;
    
    wire clk_op_enable_95;
    wire [1:0]ISet_1__N_646;
    wire [7:0]Fp;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[21:23])
    wire [7:0]F;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[22:23])
    wire [2:0]mcycles;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(164[17:24])
    wire [2:0]mcycles_d;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(167[17:26])
    wire [7:0]I;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(97[17:18])
    
    wire clk_op_enable_60, clk_op_enable_51;
    wire [15:0]n2886;
    wire [2:0]RegAddrA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(107[17:27])
    
    wire n1660, PreserveC_r, PreserveC;
    wire [3:0]ALU_Op_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    
    wire n40845;
    wire [2:0]RegAddrB_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(109[17:27])
    wire [3:0]Set_BusB_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    
    wire n1669;
    wire [2:0]RegAddrC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(111[17:25])
    
    wire n1684, n35440;
    wire [15:0]RegBusA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(120[17:26])
    wire [15:0]RegBusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(104[17:24])
    wire [7:0]BusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(152[17:21])
    wire [7:0]BusB_7__N_761;
    wire [8:0]Q_7__N_1723;
    wire [7:0]BusA_7__N_769;
    wire [2:0]Pre_XY_F_M;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    
    wire clk_op_enable_208, n33422, Halt_FF, clk_op_enable_19, n35644, 
        IntE_FF2, IntE_FF2_N_909, No_BTR, No_BTR_N_953, n18097, n38041;
    wire [7:0]Save_Mux;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(123[17:25])
    
    wire n38688;
    wire [7:0]F_7__N_674;
    
    wire Z16_r, n34734, n38039;
    wire [7:0]F_Out;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(155[17:22])
    
    wire n38711, n38040, clk_op_enable_38, n38036;
    wire [7:0]Save_Mux_7__N_528;
    
    wire n35822;
    wire [7:0]n1898;
    
    wire n38034, n38859, n38035, Auto_Wait_t2, n8408, n2809;
    wire [7:0]n2735;
    
    wire clk_op_enable_64, Save_ALU_r, n8406, n17803, n24402, n933, 
        n37969, n37967, n37968, n37957, n37955, n37958, n37951, 
        n37948, n35765, n37949, n12317, n37950, Arith16_r, n34848, 
        n35055, n39042, n39043, n38855, clk_op_enable_211, n35629, 
        n35630;
    wire [2:0]tstates;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(168[17:24])
    
    wire last_tstate, n37928, n37929;
    wire [15:0]PC16_B_15__N_571;
    
    wire BTR_r_N_968, n37930;
    wire [6:0]n2210;
    
    wire clk_op_enable_306, n18246, n18244, n18242, n18240, n18238, 
        n18236, n18234, clk_op_enable_132, n18232;
    wire [6:0]mc;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    wire [3:0]Set_BusA_To_3__N_1203;
    
    wire m1_n_N_806, n38982, n3, n3_adj_1918;
    wire [4:0]n715;
    
    wire n4, n18230;
    wire [2:0]Special_LD;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(193[18:28])
    
    wire n38691, n18146, n18144, n18, n18148, n18131, n38931, 
        n18228;
    wire [6:0]ts;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(66[17:19])
    wire [2:0]TStates_2__N_1012;
    
    wire n4_adj_1919, n34962, n18136;
    wire [7:0]Q_7__N_1604;
    
    wire F_Out_7__N_1641, n18138, n5;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    
    wire n1, n18140, n934, n2, n8_adj_1920, n38655, n36014, n34222;
    wire [7:0]n2684;
    
    wire n4_adj_1921, n38439;
    wire [15:0]n29;
    
    wire n38690, n38794, n38915, n35705;
    wire [7:0]n1187;
    wire [7:0]BusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(153[17:21])
    
    wire n38860;
    wire [2:0]Set_Addr_To_c;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    
    wire n34048, n12269;
    wire [3:0]IncDec_16_3__N_1017;
    wire [15:0]ID16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(217[18:24])
    
    wire n41003, n27, n10081, n35109, n10083, JumpE_N_1512, n38682, 
        n33964, n38833, n40997, clk_op_enable_199, n41014, n38785, 
        n39010;
    wire [7:0]Q_7__N_1612;
    
    wire n23643, n38956, n38300, n38301, n38302, n18226, n1144, 
        n12320, n1165, n38713, clk_op_enable_310, n33744, n34219, 
        n33986, n38660, n18224, n24, n36, n38721, n35680, n38696, 
        n38710;
    wire [7:0]RegDIH_7__N_452;
    wire [7:0]RegDIH_7__N_744;
    wire [7:0]RegDIH;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(102[17:23])
    wire [7:0]RegDIL_7__N_461;
    wire [7:0]RegDIL_7__N_753;
    wire [7:0]RegDIL;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(103[17:23])
    
    wire n18222, n24220, n38848, n38770, n18220, n16562, n38717, 
        n7158, n38720, n38719, n50, RegsL_7_4, RegsL_6_4, n36256, 
        RegsL_5_4, RegsL_4_4, n36255, RegsL_3_4, RegsL_2_4, n36254, 
        RegsL_1_4, RegsL_0_4, n36253, RegsL_7_0, RegsL_6_0, n36249, 
        RegsL_5_0, RegsL_4_0, n36248, RegsL_3_0, RegsL_2_0, n36247;
    wire [7:0]ALU_Q;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(154[17:22])
    wire [7:0]n900;
    
    wire RegsL_1_0, RegsL_0_0, n36246, RegsL_7_1, RegsL_6_1, n36242, 
        RegsL_5_1, RegsL_4_1, n36241, RegsL_3_1, RegsL_2_1, n36240, 
        RegsL_1_1, RegsL_0_1, n36239, RegsH_7_0, RegsH_6_0, n36235, 
        clk_op_enable_131, n18162, RegsH_5_0, RegsH_4_0, n36234, RegsH_3_0, 
        RegsH_2_0, n36233, RegsH_1_0, RegsH_0_0, n36232, RegsH_7_1, 
        RegsH_6_1, n36228, RegsH_5_1, RegsH_4_1, n36227, n37809, 
        RegsH_3_1, RegsH_2_1, n36226, RegsH_1_1, RegsH_0_1, n36225, 
        RegsH_7_5, RegsH_6_5, n36221, RegsH_5_5, RegsH_4_5, n36220, 
        RegsH_3_5, RegsH_2_5, n36219, n35977, RegsH_1_5, RegsH_0_5, 
        n36218, n18218, RegsH_7_4, RegsH_6_4, n36214;
    wire [15:0]n2114;
    
    wire RegsH_5_4, RegsH_4_4, n36213;
    wire [15:0]n34;
    
    wire RegsH_3_4, RegsH_2_4, n36212, RegsH_1_4, RegsH_0_4, n36211, 
        RegsH_7_2, RegsH_6_2, n36207, n35979, RegsH_5_2, RegsH_4_2, 
        n36206, n37807, n37808, RegsH_3_2, RegsH_2_2, n36205, RegsH_1_2, 
        RegsH_0_2, n36204, RegsH_7_6, RegsH_6_6, n36200, RegsH_5_6, 
        RegsH_4_6, n36199, n37520, ExchangeRp, n35635, n35636, last_mcycle, 
        RegsH_3_6, RegsH_2_6, n36198, RegsH_1_6, RegsH_0_6, n36197, 
        n41030;
    wire [7:0]n2524;
    
    wire n35615, n35616, clk_op_enable_325, n18335, RegsL_7_2, RegsL_6_2, 
        n36193, n962, RegsL_5_2, RegsL_4_2, n36192, RegsL_3_2, RegsL_2_2, 
        n36191, RegsL_1_2, RegsL_0_2, n36190, RegsL_7_5, RegsL_6_5, 
        n36186, RegsL_5_5, RegsL_4_5, n36185, RegsL_3_5, RegsL_2_5, 
        n36184, RegsL_1_5, RegsL_0_5, n36183, RegsL_7_3, RegsL_6_3, 
        n36179, RegsL_5_3, RegsL_4_3, n36178, RegsL_3_3, RegsL_2_3, 
        n36177, n37801;
    wire [7:0]n2934;
    
    wire n38872, n37802, RegsL_1_3, RegsL_0_3, n36176, RegsH_7_7, 
        RegsH_6_7, n36284, RegsH_5_7, RegsH_4_7, n36283, RegsH_3_7, 
        RegsH_2_7, n36282, n961, n35642, n960, RegsH_1_7, RegsH_0_7, 
        n36281, RegsH_7_3, RegsH_6_3, n36277, RegsH_5_3, RegsH_4_3, 
        n36276, n959, n35643;
    wire [3:0]Set_BusA_To_3__N_1207;
    
    wire n958, n957, RegsH_3_3, RegsH_2_3, n36275, n41026, n38953, 
        RegsH_1_3, RegsH_0_3, n36274, n956, n38871, RegsL_7_6, RegsL_6_6, 
        n36270, n35639, RegsL_5_6, RegsL_4_6, n36269, RegsL_3_6, 
        RegsL_2_6, n36268, RegsL_1_6, RegsL_0_6, n36267, RegsL_7_7, 
        RegsL_6_7, n36263, RegsL_5_7, RegsL_4_7, n36262, n23793, 
        n2885, n4_adj_1923, RegsL_3_7, RegsL_2_7, n36261, n35640, 
        RegsL_1_7, RegsL_0_7, n36260, n18333, n4_adj_1924, n5_adj_1925, 
        n1_adj_1926, n2_adj_1927, n35494, RegWEH_N_872, n33756, n38993, 
        RegWEH_N_888, n4_adj_1928;
    wire [3:0]IncDec_16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(173[17:26])
    
    wire n6_adj_1929, n817, n925, n35633, n35634, n35627, n35628, 
        n35624, n24589, n33, n35625, n35621, n35622, n35618, n35619, 
        XY_Ind, clk_op_enable_171, n18330, n17999, n38729;
    wire [15:0]RegBusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(105[17:24])
    
    wire Alternate;
    wire [2:0]RegAddrB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(110[17:25])
    wire [7:0]n2675;
    
    wire n34279, n38, n40841, n40843, n10_adj_1930, n9_adj_1931, 
        n40186, n40187, n17997, n9479, n12324;
    wire [15:0]n855;
    wire [15:0]n2866;
    
    wire n18328, n17993, n35199, n17991, n38955;
    wire [7:0]n1933;
    
    wire n38918, n38914, n38917, n17985, n17983, n17979, n18326, 
        n18324, n41008, n24451, n40184, n35584, n34785, n41009, 
        n40185, Auto_Wait_t1, n35185, Alternate_N_904, BTR_r_N_970, 
        n35828, n34535, n38968, RegAddrA_2__N_476, n1228, RegWEH_N_892, 
        n41024;
    wire [1:0]XY_State;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(140[17:25])
    
    wire n38969, n38664, n23689, NextIs_XY_Fetch, n34763, n38913, 
        n41022, n1143, n1170, n35694, n18170, n17973, IncDecZ_N_977, 
        IncDecZ_N_979, n17974, n34613, n35049;
    wire [15:0]n2849;
    
    wire n38790, n4_adj_1932, n18_adj_1933;
    wire [7:0]n1177;
    
    wire n18174, n35107, n23, n2811;
    wire [7:0]n2749;
    wire [7:0]n2702;
    
    wire n41020;
    wire [15:0]n2094;
    
    wire n36639, n38775, n38782, n4_adj_1934, n47;
    wire [2:0]RegAddrA_2__N_739;
    
    wire n38767;
    wire [0:0]n6821;
    
    wire n35223, n4_adj_1935, n33038, n12, n16, n11, n32840, n38760, 
        n34811, n39003, n38894, n38926, n35215, n38830, n35478;
    wire [2:0]MCycles_2__N_1162;
    
    wire n3_adj_1936, n38822, n38885;
    wire [0:0]n6799;
    
    wire n63, n6_adj_1937, n38750, n33082, n6_adj_1938, n33709, 
        n20, n34801, n35205, Jump, n8_adj_1939, n12_adj_1940, n20_adj_1941, 
        n32886, n38997, n17129, n38675, n38438, n38685, n15, IntE_FF2_N_910, 
        n15_adj_1942, n15_adj_1943, I_BTR, n38908, No_BTR_N_963, n4_adj_1944, 
        n34744, n38766, n38843, n18149, n18176, RegAddrA_2__N_742, 
        n17806, n7, n8_adj_1945, n31, n38714, n35159, n26, n38764, 
        n38689, n34500, n31371, n949;
    wire [15:0]n559;
    wire [15:0]PC16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(215[18:24])
    
    wire n38773, n35767, n38888, n31370, n11281, n38889, n40803, 
        n6_adj_1946, n1_adj_1947, n34788, n1_adj_1948, n1_adj_1949, 
        n1_adj_1950, n38910, n41004, F_Out_7__N_1639, n4_adj_1951, 
        n17;
    wire [7:0]n1154;
    
    wire n40804, n40994, n40827, n40828, n35745, Q_7__N_1571, n40826, 
        n37212, n40825, n40844, n40840, n35, Save_ALU_N_1475, n38890, 
        n38827, n31369, n941, n942, n38984;
    wire [7:0]n2578;
    
    wire n18147, n5_adj_1952, n4_adj_1953;
    wire [15:0]SP16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[18:22])
    wire [15:0]n798;
    wire [2:0]RegAddrC_2__N_736;
    
    wire n34792;
    wire [2:0]Set_Addr_To_2__N_1418;
    wire [2:0]RegAddrB_r_2__N_733;
    wire [3:0]n37;
    
    wire n32496, n32506, n31368, n939, n940;
    wire [2:0]RegAddrA_r_2__N_730;
    
    wire n37523, n5_adj_1955, n4_adj_1956, n31367, n937, n938, n4_adj_1957, 
        IncDecZ, n13, n16_adj_1958, n32438, n35632, n18178, n35638, 
        n12_adj_1959, n35456, n32, clk_op_enable_305, n18186, n35641, 
        n18132, n35614, n1145, n1172, n35834, clk_op_enable_321, 
        n18297;
    wire [6:0]n2197;
    
    wire n39002, n38933, n39006, n38849, n35617, n18137, n10599, 
        n7_adj_1960, n35626, n31366, n935, n936, n18139, n38756, 
        n18141, n35620, n35623;
    wire [2:0]RegAddrA_2__N_472;
    wire [2:0]RegAddrA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(108[17:25])
    
    wire n33705;
    wire [15:0]ID16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(122[17:21])
    
    wire n18145, n37224, n35444, n38903, n38946, n38902;
    wire [0:0]n4690;
    
    wire n40996, n39007, n15_adj_1961, n38652, n37122, n38947;
    wire [3:0]Set_BusA_To_3__N_1361;
    
    wire n38829, n38708, n10569, n34085, n18180, n15972, n38730, 
        n9_adj_1962, n10_adj_1963, n6_adj_1964, n34223, n35997, n38673, 
        n34604, n6_adj_1965, n38768, n18184, n18182, n37276, n39004, 
        n38811, n17828, n41018, n38907, n41016, n38900, n38923, 
        n2290, n11285, n38919, n12_adj_1966, n38712, Read_To_Reg;
    wire [7:0]n2723;
    wire [7:0]n2762;
    
    wire n34366, n34027, n34438, n38727, n38930, n2390, n37337, 
        n38821, n38744, n8_adj_1968, n5_adj_1969, n36_adj_1970, n38818, 
        n38886, n38916, n35733, n6_adj_1971, n17_adj_1972, n30, 
        n26_adj_1973, n18_adj_1974, n13_adj_1975, n14_adj_1976, n32178, 
        n35676, n35143, n38669, n9781, n12273, n14821, n38809, 
        n38681, n38667, n35048, n38989, n38898, RstP_N_1517, n19;
    wire [3:0]Set_BusA_To_3__N_1025;
    
    wire n12303, n18160, n8_adj_1977, n7_adj_1978;
    wire [2:0]n8219;
    
    wire n14311, n18158, n57, n28_adj_1979, n12_adj_1980, n38858, 
        n38846, n38840, n31365, n12_adj_1981, n11_adj_1982, n14308, 
        n38676, n14_adj_1983, n39022, F_Out_7__N_1643, n38832, n38847, 
        n38817, n12271, n38672, n25, clk_op_enable_316, n22, n43, 
        n56, n2803, n12313, n31364, n932, n1142, n37803, n37804, 
        clk_op_enable_312, GND_net, n47_adj_1984, clk_op_enable_313, 
        n38965, F_Out_7__N_1666, n4_adj_1985, n34561, n4_adj_1986, 
        n38975, n6_adj_1987;
    wire [7:0]n2349;
    
    wire n6_adj_1988, n6_adj_1989, n6_adj_1990, n6_adj_1991, n6_adj_1992, 
        n38959;
    wire [7:0]Q_7__N_1706;
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    
    wire n18165, n31356, n31355, n68, n31354, n31353, n38769, 
        n31476, n13_adj_1993, n14_adj_1994, n27_adj_1995, n23_adj_1996, 
        n31352, n6_adj_1997;
    wire [15:0]SP16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[32:38])
    
    wire n34332, n31351, n4_adj_1998, n31350, n31349, n38991, n38920, 
        n34348, n38703, n34344, n36003, n609;
    wire [15:0]n87;
    
    wire n2286, n34756, n31348, n2294, n38654;
    wire [15:0]n525;
    
    wire n37956, n31745, n24398, n17821, n4_adj_2006, n38765, n38731, 
        n38787, n4_adj_2007, n31347;
    wire [3:0]ALU_Op;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(179[18:24])
    
    wire n53, n35434, n34532, n38937, n38658, n13_adj_2008, n14_adj_2009, 
        n8_adj_2010, n31346, n31345;
    wire [15:0]SP16_A;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[24:30])
    
    wire n38038, n24_adj_2011, n38762, n35282, n8_adj_2012, n31344, 
        n31343, n31342, n31341, n31340, n31339, n31338, n31337, 
        n31336, n31335, n31334, n31333, n41005, n38795, n38867, 
        n38870, n38861, n14303;
    wire [7:0]n1889;
    
    wire n38950, n38952;
    
    FD1P3DX A__i1 (.D(n2001[0]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41038), .Q(sram_addr_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i1.GSR = "ENABLED";
    ORCALUT4 mux_1266_i14_3_lut (.A(ACC[5]), .B(SP[13]), .C(Set_Addr_To[0]), 
            .Z(n2039[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i14_3_lut (.A(TmpAddr[13]), .B(PC[13]), .C(n2284), 
            .Z(n2022[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i14_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i0 (.D(n955), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(IR[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i0 (.D(n21[0]), .CK(clk_op), .CD(n41038), .Q(Read_To_Reg_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i0.GSR = "ENABLED";
    FD1P3BX Ap_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41034), .Q(Ap[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_1284_i14_3_lut (.A(n2057[13]), .B(RegBusC[13]), .C(n2296), 
            .Z(n2137[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i14_3_lut.init = 16'hcaca;
    FD1P3DX ISet_i0 (.D(ISet_1__N_646[0]), .SP(clk_op_enable_95), .CK(clk_op), 
            .CD(n41038), .Q(ISet[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0.GSR = "ENABLED";
    FD1P3BX Fp_i0_i0 (.D(F[0]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41036), 
            .Q(Fp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i0.GSR = "ENABLED";
    FD1S3DX mcycles_i0 (.D(mcycles_d[0]), .CK(clk_op), .CD(n41036), .Q(mcycles[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0.GSR = "ENABLED";
    FD1P3DX I_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41036), 
            .Q(I[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i0.GSR = "ENABLED";
    FD1P3BX SP_i0_i0 (.D(n2886[0]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41036), .Q(SP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i0.GSR = "ENABLED";
    FD1S3JX RegAddrA_r_i0 (.D(n1660), .CK(clk_op), .PD(\Set_BusA_To[1] ), 
            .Q(RegAddrA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0.GSR = "ENABLED";
    FD1S3DX PreserveC_r_762 (.D(PreserveC), .CK(clk_op), .CD(n41013), 
            .Q(PreserveC_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PreserveC_r_762.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i0 (.D(n40845), .CK(clk_op), .CD(n41034), .Q(ALU_Op_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i0.GSR = "ENABLED";
    FD1S3JX RegAddrB_r_i0 (.D(n1669), .CK(clk_op), .PD(Set_BusB_To[1]), 
            .Q(RegAddrB_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0.GSR = "ENABLED";
    FD1S3JX RegAddrC_i0 (.D(n35440), .CK(clk_op), .PD(n1684), .Q(RegAddrC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0 (.D(RegBusA[0]), .CK(clk_op), .Q(RegBusA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0.GSR = "ENABLED";
    FD1S3AX BusB_i0 (.D(BusB_7__N_761[0]), .CK(clk_op), .Q(BusB[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0.GSR = "ENABLED";
    FD1S3AX BusA_i1 (.D(BusA_7__N_769[0]), .CK(clk_op), .Q(Q_7__N_1723[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i1.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i0 (.D(n33422), .SP(clk_op_enable_208), .CK(clk_op), 
            .CD(n41038), .Q(Pre_XY_F_M[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i0.GSR = "ENABLED";
    FD1P3DX Halt_FF_778 (.D(n35644), .SP(clk_op_enable_19), .CK(clk_op), 
            .CD(n41038), .Q(Halt_FF)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Halt_FF_778.GSR = "ENABLED";
    FD1S3DX IntE_FF2_783 (.D(IntE_FF2_N_909), .CK(clk_op), .CD(n41034), 
            .Q(IntE_FF2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam IntE_FF2_783.GSR = "ENABLED";
    FD1S3DX No_BTR_784 (.D(No_BTR_N_953), .CK(clk_op), .CD(n41038), .Q(No_BTR)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam No_BTR_784.GSR = "ENABLED";
    FD1S3BX ACC_i0 (.D(n18097), .CK(clk_op), .PD(n41036), .Q(ACC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0.GSR = "ENABLED";
    ORCALUT4 mux_1266_i13_3_lut (.A(ACC[4]), .B(SP[12]), .C(Set_Addr_To[0]), 
            .Z(n2039[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i13_3_lut (.A(TmpAddr[12]), .B(PC[12]), .C(n2284), 
            .Z(n2022[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i13_3_lut (.A(n2057[12]), .B(RegBusC[12]), .C(n2296), 
            .Z(n2137[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i13_3_lut.init = 16'hcaca;
    PFUMX i34119 (.BLUT(n38041), .ALUT(Save_Mux[3]), .C0(n38688), .Z(F_7__N_674[3]));
    ORCALUT4 mux_1266_i12_3_lut (.A(ACC[3]), .B(SP[11]), .C(Set_Addr_To[0]), 
            .Z(n2039[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i12_3_lut.init = 16'hcaca;
    FD1S3DX Z16_r_759 (.D(n34734), .CK(clk_op), .CD(n41038), .Q(Z16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Z16_r_759.GSR = "ENABLED";
    FD1P3DX A__i7 (.D(n2001[6]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(led_c_6), .Q(sram_addr_0_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i7.GSR = "ENABLED";
    PFUMX i34117 (.BLUT(n38039), .ALUT(F_Out[3]), .C0(n38711), .Z(n38040));
    FD1P3BX SP_i0_i15 (.D(n2886[15]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(led_c_6), .Q(SP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i15.GSR = "ENABLED";
    FD1P3BX SP_i0_i14 (.D(n2886[14]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i14.GSR = "ENABLED";
    FD1P3BX SP_i0_i13 (.D(n2886[13]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i13.GSR = "ENABLED";
    FD1P3BX SP_i0_i12 (.D(n2886[12]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i12.GSR = "ENABLED";
    FD1P3BX SP_i0_i11 (.D(n2886[11]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i11.GSR = "ENABLED";
    FD1P3BX SP_i0_i10 (.D(n2886[10]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41036), .Q(\SP[10] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i10.GSR = "ENABLED";
    FD1P3BX SP_i0_i9 (.D(n2886[9]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1P3BX SP_i0_i8 (.D(n2886[8]), .SP(clk_op_enable_38), .CK(clk_op), 
            .PD(n41034), .Q(SP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i8.GSR = "ENABLED";
    PFUMX i34115 (.BLUT(n38036), .ALUT(Save_Mux_7__N_528[4]), .C0(n35822), 
          .Z(Save_Mux[4]));
    FD1P3BX SP_i0_i7 (.D(n2886[7]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41036), .Q(SP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1P3DX A__i6 (.D(n2001[5]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i6.GSR = "ENABLED";
    FD1P3BX SP_i0_i6 (.D(n2886[6]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(led_c_6), .Q(SP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1P3BX SP_i0_i5 (.D(n2886[5]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41038), .Q(SP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1P3BX SP_i0_i4 (.D(n2886[4]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41033), .Q(SP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1P3BX SP_i0_i3 (.D(n2886[3]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41038), .Q(SP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i3.GSR = "ENABLED";
    PFUMX i34113 (.BLUT(n1898[4]), .ALUT(n38034), .C0(n38859), .Z(n38035));
    FD1S3DX Auto_Wait_t2_786 (.D(n8408), .CK(clk_op), .CD(n41038), .Q(Auto_Wait_t2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t2_786.GSR = "ENABLED";
    FD1P3DX A__i5 (.D(n2001[4]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41034), .Q(sram_addr_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i5.GSR = "ENABLED";
    ORCALUT4 mux_1636_i5_4_lut (.A(SP[12]), .B(PC[12]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i5_4_lut.init = 16'h00ca;
    FD1P3BX SP_i0_i2 (.D(n2886[2]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41036), .Q(\SP[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1P3BX SP_i0_i1 (.D(n2886[1]), .SP(clk_op_enable_51), .CK(clk_op), 
            .PD(n41038), .Q(SP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i1.GSR = "ENABLED";
    FD1P3DX I_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41038), 
            .Q(I[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i7.GSR = "ENABLED";
    FD1P3DX I_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41034), 
            .Q(I[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i6.GSR = "ENABLED";
    FD1P3DX I_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41034), 
            .Q(I[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i5.GSR = "ENABLED";
    FD1P3DX I_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41034), 
            .Q(I[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i4.GSR = "ENABLED";
    FD1P3DX I_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_60), .CK(clk_op), .CD(n41034), 
            .Q(I[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i3.GSR = "ENABLED";
    FD1P3DX I_i0_i2 (.D(\ACC[2] ), .SP(clk_op_enable_60), .CK(clk_op), 
            .CD(n41034), .Q(I[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i2.GSR = "ENABLED";
    FD1P3DX A__i4 (.D(n2001[3]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41036), .Q(sram_addr_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i4.GSR = "ENABLED";
    FD1P3DX I_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_60), .CK(clk_op), .CD(led_c_6), 
            .Q(I[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i1.GSR = "ENABLED";
    FD1P3BX F_i5 (.D(F_7__N_674[5]), .SP(clk_op_enable_64), .CK(clk_op), 
            .PD(n41034), .Q(F[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i5.GSR = "ENABLED";
    FD1S3DX Save_ALU_r_761 (.D(n8406), .CK(clk_op), .CD(n41036), .Q(Save_ALU_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Save_ALU_r_761.GSR = "ENABLED";
    FD1P3DX A__i3 (.D(n2001[2]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41034), .Q(sram_addr_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i3.GSR = "ENABLED";
    ORCALUT4 mux_141_i3_4_lut (.A(RegBusC[2]), .B(TmpAddr[2]), .C(n17803), 
            .D(n24402), .Z(n933)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_1265_i12_3_lut (.A(TmpAddr[11]), .B(PC[11]), .C(n2284), 
            .Z(n2022[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i12_3_lut.init = 16'hcaca;
    FD1S3BX F_i4 (.D(F_7__N_674[4]), .CK(clk_op), .PD(led_c_6), .Q(F[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i4.GSR = "ENABLED";
    PFUMX i34081 (.BLUT(n37969), .ALUT(Save_Mux_7__N_528[5]), .C0(n35822), 
          .Z(Save_Mux[5]));
    FD1P3BX F_i3 (.D(F_7__N_674[3]), .SP(clk_op_enable_64), .CK(clk_op), 
            .PD(n41034), .Q(F[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i3.GSR = "ENABLED";
    FD1P3DX A__i2 (.D(n2001[1]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i2.GSR = "ENABLED";
    FD1S3DX mcycles_i2 (.D(mcycles_d[2]), .CK(clk_op), .CD(n41034), .Q(mcycles[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i2.GSR = "ENABLED";
    FD1S3DX mcycles_i1 (.D(mcycles_d[1]), .CK(clk_op), .CD(n41033), .Q(mcycles[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i1.GSR = "ENABLED";
    FD1P3BX Fp_i0_i7 (.D(F[7]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41034), 
            .Q(Fp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i7.GSR = "ENABLED";
    FD1P3BX Fp_i0_i6 (.D(F[6]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41036), 
            .Q(Fp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i6.GSR = "ENABLED";
    FD1P3BX Fp_i0_i5 (.D(F[5]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41038), 
            .Q(Fp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i5.GSR = "ENABLED";
    PFUMX i34079 (.BLUT(n1898[5]), .ALUT(n37967), .C0(n38859), .Z(n37968));
    PFUMX i34074 (.BLUT(n37957), .ALUT(n37955), .C0(n38711), .Z(n37958));
    PFUMX i34072 (.BLUT(n37951), .ALUT(n37948), .C0(n35765), .Z(F_7__N_674[5]));
    PFUMX i34070 (.BLUT(n37949), .ALUT(n12317), .C0(ALU_Op_r[3]), .Z(n37950));
    FD1S3DX Arith16_r_757 (.D(n34848), .CK(clk_op), .CD(n41034), .Q(Arith16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Arith16_r_757.GSR = "ENABLED";
    FD1S3BX m1_n_787 (.D(n35055), .CK(clk_op), .PD(n41034), .Q(led_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam m1_n_787.GSR = "ENABLED";
    FD1P3BX Fp_i0_i4 (.D(F[4]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41038), 
            .Q(Fp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i4.GSR = "ENABLED";
    FD1P3BX Fp_i0_i3 (.D(F[3]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41034), 
            .Q(Fp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i3.GSR = "ENABLED";
    PFUMX i34481 (.BLUT(n39042), .ALUT(n39043), .C0(n38855), .Z(clk_op_enable_211));
    L6MUX21 i32123 (.D0(n35629), .D1(n35630), .SD(tstates[2]), .Z(last_tstate));
    ORCALUT4 mux_1284_i12_3_lut (.A(n2057[11]), .B(RegBusC[11]), .C(n2296), 
            .Z(n2137[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1266_i10_3_lut (.A(ACC[1]), .B(SP[9]), .C(Set_Addr_To[0]), 
            .Z(n2039[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i10_3_lut.init = 16'hcaca;
    PFUMX i34057 (.BLUT(n1898[6]), .ALUT(n37928), .C0(n38859), .Z(n37929));
    FD1P3DX BTR_r_758 (.D(BTR_r_N_968), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41036), .Q(PC16_B_15__N_571[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam BTR_r_758.GSR = "ENABLED";
    PFUMX i34059 (.BLUT(n37930), .ALUT(Save_Mux_7__N_528[6]), .C0(n35822), 
          .Z(Save_Mux[6]));
    ORCALUT4 mux_1265_i10_3_lut (.A(TmpAddr[9]), .B(PC[9]), .C(n2284), 
            .Z(n2022[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i10_3_lut.init = 16'hcaca;
    FD1P3BX Fp_i0_i2 (.D(F[2]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41034), 
            .Q(Fp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i2.GSR = "ENABLED";
    FD1P3BX Fp_i0_i1 (.D(F[1]), .SP(clk_op_enable_107), .CK(clk_op), .PD(n41038), 
            .Q(Fp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i1.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i6 (.D(n2210[6]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41038), .Q(\mc[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i6.GSR = "ENABLED";
    FD1P3DX TmpAddr_i1 (.D(n18246), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i1.GSR = "ENABLED";
    FD1P3DX TmpAddr_i2 (.D(n18244), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i2.GSR = "ENABLED";
    FD1P3DX TmpAddr_i3 (.D(n18242), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i3.GSR = "ENABLED";
    FD1P3DX TmpAddr_i4 (.D(n18240), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i4.GSR = "ENABLED";
    FD1P3DX TmpAddr_i5 (.D(n18238), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i5.GSR = "ENABLED";
    FD1P3DX TmpAddr_i6 (.D(n18236), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i6.GSR = "ENABLED";
    FD1P3DX TmpAddr_i7 (.D(n18234), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i7.GSR = "ENABLED";
    FD1P3DX TmpAddr_i8 (.D(n18232), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i8.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i5 (.D(n2210[5]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41034), .Q(mc[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i5.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i4 (.D(n2210[4]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41038), .Q(mc[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i4.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i3 (.D(n2210[3]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41038), .Q(mc[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i3.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i2 (.D(n2210[2]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41038), .Q(mc[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i2.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i1 (.D(n2210[1]), .SP(last_tstate), .CK(clk_op), 
            .CD(n41038), .Q(Set_BusA_To_3__N_1203[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i1.GSR = "ENABLED";
    FD1P3DX ISet_i1 (.D(ISet_1__N_646[1]), .SP(clk_op_enable_95), .CK(clk_op), 
            .CD(n41038), .Q(ISet[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i1.GSR = "ENABLED";
    ORCALUT4 mux_1284_i10_3_lut (.A(n2057[9]), .B(RegBusC[9]), .C(n2296), 
            .Z(n2137[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i10_3_lut.init = 16'hcaca;
    FD1P3BX Ap_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41036), .Q(Ap[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i7.GSR = "ENABLED";
    FD1P3BX Ap_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41036), .Q(Ap[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i6.GSR = "ENABLED";
    FD1P3BX Ap_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41034), .Q(Ap[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i5.GSR = "ENABLED";
    FD1P3BX Ap_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41036), .Q(Ap[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i4.GSR = "ENABLED";
    FD1P3BX Ap_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41036), .Q(Ap[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i3.GSR = "ENABLED";
    FD1P3BX Ap_i0_i2 (.D(\ACC[2] ), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41038), .Q(Ap[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i2.GSR = "ENABLED";
    FD1P3BX Ap_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_107), .CK(clk_op), 
            .PD(n41036), .Q(Ap[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i1.GSR = "ENABLED";
    ORCALUT4 i20824_2_lut_4_lut (.A(m1_n_N_806), .B(\mc[6] ), .C(n38982), 
            .D(mc[4]), .Z(n3)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i20824_2_lut_4_lut.init = 16'h5400;
    ORCALUT4 i20821_2_lut_4_lut (.A(m1_n_N_806), .B(\mc[6] ), .C(n38982), 
            .D(mc[5]), .Z(n3_adj_1918)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i20821_2_lut_4_lut.init = 16'h5400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut (.A(ALU_Op_r[2]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[0]), .D(n715[0]), .Z(n4)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hab00;
    FD1P3DX TmpAddr_i9 (.D(n18230), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i9.GSR = "ENABLED";
    ORCALUT4 i14646_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[1]), 
            .D(ACC[1]), .Z(n18146)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14646_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14644_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[3]), 
            .D(ACC[3]), .Z(n18144)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14644_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i34_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[2]), 
            .D(\ACC[2] ), .Z(n18)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i34_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14648_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[0]), 
            .D(ACC[0]), .Z(n18148)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14648_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14631_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[7]), 
            .D(ACC[7]), .Z(n18131)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14631_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_2_lut_rep_697 (.A(ISet[0]), .B(ISet[1]), .Z(n38931)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_rep_697.init = 16'heeee;
    FD1P3DX TmpAddr_i10 (.D(n18228), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i10.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i4 (.D(n21[4]), .CK(clk_op), .CD(n41038), .Q(Read_To_Reg_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i4.GSR = "ENABLED";
    ORCALUT4 tstates_2__I_0_i4_3_lut_4_lut (.A(ts[4]), .B(ts[5]), .C(TStates_2__N_1012[0]), 
            .D(\mc[6] ), .Z(n4_adj_1919)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i4_3_lut_4_lut.init = 16'hccca;
    FD1S3DX Read_To_Reg_r__i3 (.D(n34962), .CK(clk_op), .CD(n41033), .Q(Read_To_Reg_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i3.GSR = "ENABLED";
    ORCALUT4 i14636_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[4]), 
            .D(ACC[4]), .Z(n18136)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14636_3_lut_4_lut.init = 16'hfb40;
    FD1S3DX Read_To_Reg_r__i2 (.D(n21[2]), .CK(clk_op), .CD(n41036), .Q(Read_To_Reg_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i2.GSR = "ENABLED";
    ORCALUT4 i20164_2_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(Q_7__N_1604[7]), 
            .Z(F_Out_7__N_1641)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i20164_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 i14638_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[5]), 
            .D(ACC[5]), .Z(n18138)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14638_3_lut_4_lut.init = 16'hfb40;
    FD1S3DX Read_To_Reg_r__i1 (.D(n21[1]), .CK(clk_op), .CD(n41038), .Q(Read_To_Reg_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i1.GSR = "ENABLED";
    ORCALUT4 i20539_2_lut_3_lut (.A(ts[6]), .B(TStates_2__N_1012[0]), .C(\mc[6] ), 
            .Z(n5)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i20539_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 tstates_2__I_0_i1_3_lut_4_lut (.A(ts[0]), .B(tstate[1]), .C(TStates_2__N_1012[0]), 
            .D(\mc[6] ), .Z(n1)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i1_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i14640_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(I[6]), 
            .D(ACC[6]), .Z(n18140)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14640_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_141_i4_4_lut (.A(RegBusC[3]), .B(TmpAddr[3]), .C(n17803), 
            .D(n24402), .Z(n934)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i4_4_lut.init = 16'hc0ca;
    ORCALUT4 tstates_2__I_0_i2_3_lut_4_lut (.A(\tstate[2] ), .B(ts[3]), 
            .C(TStates_2__N_1012[0]), .D(\mc[6] ), .Z(n2)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i2_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i33402_3_lut_4_lut (.A(Special_LD[0]), .B(n38691), .C(n8_adj_1920), 
            .D(n38655), .Z(n36014)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i33402_3_lut_4_lut.init = 16'hf444;
    ORCALUT4 i1_2_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(last_tstate), 
            .Z(n34222)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    ORCALUT4 mux_1625_i2_3_lut_4_lut (.A(ACC[1]), .B(SP[1]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i2_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1625_i4_3_lut_4_lut (.A(ACC[3]), .B(SP[3]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i4_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1625_i5_3_lut_4_lut (.A(ACC[4]), .B(SP[4]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i5_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1625_i6_3_lut_4_lut (.A(ACC[5]), .B(SP[5]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i6_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1625_i7_3_lut_4_lut (.A(ACC[6]), .B(SP[6]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i7_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 i1_2_lut_3_lut_4_lut_3_lut_3_lut_4_lut (.A(Arith16_r), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[2]), .Z(n4_adj_1921)) /* synthesis lut_function=(!(A+!(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_3_lut_3_lut_4_lut.init = 16'h5501;
    ORCALUT4 mux_1625_i8_3_lut_4_lut (.A(ACC[7]), .B(SP[7]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i8_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1625_i1_3_lut_4_lut (.A(ACC[0]), .B(SP[0]), .C(\mc[6] ), 
            .D(n28), .Z(n2684[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1625_i1_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_212_i4_3_lut_4_lut (.A(bus_din[3]), .B(di_reg[3]), .C(ts[3]), 
            .D(n38439), .Z(n29[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i4_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_212_i5_3_lut_4_lut (.A(bus_din[4]), .B(di_reg[4]), .C(ts[3]), 
            .D(n38439), .Z(n29[4])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i5_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_212_i6_3_lut_4_lut (.A(bus_din[5]), .B(di_reg[5]), .C(ts[3]), 
            .D(n38439), .Z(n29[5])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i6_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i33373_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(n38794), 
            .D(n38915), .Z(n35705)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33373_3_lut_4_lut.init = 16'h44f4;
    ORCALUT4 mux_293_i1_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[0]), 
            .D(BusB[4]), .Z(n1187[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i2_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[1]), 
            .D(BusB[5]), .Z(n1187[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i8_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[7]), 
            .D(BusA[3]), .Z(n1187[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i7_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[6]), 
            .D(BusA[2]), .Z(n1187[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i3_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[2]), 
            .D(BusB[6]), .Z(n1187[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_1_lut_rep_626_2_lut (.A(ISet[0]), .B(ISet[1]), .Z(n38860)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_1_lut_rep_626_2_lut.init = 16'h1111;
    ORCALUT4 mux_293_i4_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[3]), 
            .D(BusB[7]), .Z(n1187[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_2_lut_3_lut_adj_525 (.A(Set_Addr_To_c[1]), .B(Set_Addr_To[0]), 
            .C(Set_Addr_To_c[2]), .Z(n34048)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_525.init = 16'h0202;
    ORCALUT4 mux_293_i5_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[4]), 
            .D(Q_7__N_1723[0]), .Z(n1187[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_293_i6_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n38690), .C(Save_Mux[5]), 
            .D(BusA[1]), .Z(n1187[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_293_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9323_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n12269), 
            .D(IncDec_16_3__N_1017[3]), .Z(ID16_B[15])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i9323_3_lut_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i44_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(ALU_Op_r[1]), 
            .D(n41003), .Z(n27)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i44_3_lut_3_lut_4_lut.init = 16'hf011;
    ORCALUT4 i33025_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n10081), 
            .D(n35109), .Z(n10083)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i33025_3_lut_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20136_2_lut_rep_448_2_lut_3_lut (.A(ISet[0]), .B(ISet[1]), 
            .C(JumpE_N_1512), .Z(n38682)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i20136_2_lut_rep_448_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_2_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(last_tstate), 
            .Z(n33964)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i2_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n38833), 
            .D(n40997), .Z(n34848)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 ts_1__I_0_818_2_lut_rep_698 (.A(tstate[1]), .B(\tstate[2] ), 
            .Z(n38932)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam ts_1__I_0_818_2_lut_rep_698.init = 16'heeee;
    ORCALUT4 i6906_3_lut_4_lut_4_lut (.A(tstate[1]), .B(\tstate[2] ), .C(n34826), 
            .D(write), .Z(n9514)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam i6906_3_lut_4_lut_4_lut.init = 16'hce0e;
    ORCALUT4 i33363_3_lut_4_lut (.A(tstate[1]), .B(\tstate[2] ), .C(n34826), 
            .D(\ALU_Op_3__N_1274[3] ), .Z(nxt_rd_n)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam i33363_3_lut_4_lut.init = 16'h11f1;
    ORCALUT4 i590_1_lut_rep_566_3_lut_4_lut (.A(tstate[1]), .B(\tstate[2] ), 
            .C(ts[3]), .D(\ALU_Op_3__N_1274[3] ), .Z(clk_op_enable_199)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam i590_1_lut_rep_566_3_lut_4_lut.init = 16'h01ff;
    ORCALUT4 mux_1266_i9_3_lut (.A(ACC[0]), .B(SP[8]), .C(Set_Addr_To[0]), 
            .Z(n2039[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mc_0__I_0_797_3_lut_rep_621_4_lut (.A(tstate[1]), .B(\tstate[2] ), 
            .C(n41014), .D(\ALU_Op_3__N_1274[3] ), .Z(n38855)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam mc_0__I_0_797_3_lut_rep_621_4_lut.init = 16'hfe00;
    ORCALUT4 i607_2_lut_rep_551_4_lut_2_lut (.A(\tstate[2] ), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n38785)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[33:54])
    defparam i607_2_lut_rep_551_4_lut_2_lut.init = 16'h8888;
    ORCALUT4 ALU_Op_r_3__bdd_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[0]), .C(ALU_Op_r[1]), 
            .D(ALU_Op_r[2]), .Z(n39010)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam ALU_Op_r_3__bdd_4_lut.init = 16'hbfaf;
    ORCALUT4 Q_7__N_1612_2__bdd_4_lut_34258 (.A(Q_7__N_1612[2]), .B(n23643), 
            .C(n38956), .D(ALU_Op_r[3]), .Z(n38300)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_2__bdd_4_lut_34258.init = 16'hc0aa;
    ORCALUT4 di_reg_2__bdd_3_lut_35454 (.A(di_reg[2]), .B(n38301), .C(Save_ALU_r), 
            .Z(n38302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_2__bdd_3_lut_35454.init = 16'hcaca;
    FD1P3DX TmpAddr_i11 (.D(n18226), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41038), .Q(TmpAddr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i11.GSR = "ENABLED";
    ORCALUT4 mux_1726_i5_3_lut_3_lut (.A(n38711), .B(n1144), .C(n12320), 
            .Z(F_Out[4])) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam mux_1726_i5_3_lut_3_lut.init = 16'he4e4;
    ORCALUT4 i2_3_lut_4_lut (.A(n38688), .B(n1165), .C(n38713), .D(n37958), 
            .Z(clk_op_enable_310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 mux_1265_i9_3_lut (.A(TmpAddr[8]), .B(PC[8]), .C(n2284), 
            .Z(n2022[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_adj_526 (.A(Set_Addr_To_c[1]), .B(Set_Addr_To[0]), 
            .C(Set_Addr_To_c[2]), .Z(n33744)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_526.init = 16'h2020;
    ORCALUT4 i1_3_lut_rep_426 (.A(Read_To_Reg_r[0]), .B(n34219), .C(n33986), 
            .Z(n38660)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_426.init = 16'hecec;
    FD1P3DX TmpAddr_i12 (.D(n18224), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i12.GSR = "ENABLED";
    PFUMX i41 (.BLUT(n4_adj_1921), .ALUT(n24), .C0(ALU_Op_r[3]), .Z(n36));
    ORCALUT4 i13_4_lut (.A(mc[5]), .B(\tstate[2] ), .C(n38855), .D(n38721), 
            .Z(clk_op_enable_95)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i13_4_lut.init = 16'hcac0;
    ORCALUT4 i33452_2_lut_3_lut (.A(PreserveC_r), .B(n38711), .C(n38688), 
            .Z(n35680)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i33452_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 i33547_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[0]), 
            .D(RegDIH_7__N_744[0]), .Z(RegDIH[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33547_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33541_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[6]), 
            .D(RegDIH_7__N_744[6]), .Z(RegDIH[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33541_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33552_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[2]), 
            .D(RegDIL_7__N_753[2]), .Z(RegDIL[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33552_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33549_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[3]), 
            .D(RegDIL_7__N_753[3]), .Z(RegDIL[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33549_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33539_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[7]), 
            .D(RegDIL_7__N_753[7]), .Z(RegDIL[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33539_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33542_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[3]), 
            .D(RegDIH_7__N_744[3]), .Z(RegDIH[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33542_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33551_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[1]), 
            .D(RegDIL_7__N_753[1]), .Z(RegDIL[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33551_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1284_i9_3_lut (.A(n2057[8]), .B(RegBusC[8]), .C(n2296), 
            .Z(n2137[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1636_i6_4_lut (.A(SP[13]), .B(PC[13]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[5])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i6_4_lut.init = 16'h00ca;
    FD1P3DX TmpAddr_i13 (.D(n18222), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41038), .Q(TmpAddr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i13.GSR = "ENABLED";
    ORCALUT4 i33544_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[6]), 
            .D(RegDIL_7__N_753[6]), .Z(RegDIL[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33544_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33553_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[0]), 
            .D(RegDIL_7__N_753[0]), .Z(RegDIL[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33553_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33548_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[5]), 
            .D(RegDIL_7__N_753[5]), .Z(RegDIL[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33548_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33545_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[1]), 
            .D(RegDIH_7__N_744[1]), .Z(RegDIH[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33545_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33546_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[2]), 
            .D(RegDIH_7__N_744[2]), .Z(RegDIH[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33546_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33540_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[5]), 
            .D(RegDIH_7__N_744[5]), .Z(RegDIH[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33540_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20034_4_lut (.A(n24220), .B(n38855), .C(n38848), .D(n38770), 
            .Z(ISet_1__N_646[0])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20034_4_lut.init = 16'h3b33;
    ORCALUT4 i33538_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[7]), 
            .D(RegDIH_7__N_744[7]), .Z(RegDIH[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33538_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33543_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIH_7__N_452[4]), 
            .D(RegDIH_7__N_744[4]), .Z(RegDIH[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33543_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33550_3_lut_4_lut (.A(n38696), .B(n38710), .C(RegDIL_7__N_461[4]), 
            .D(RegDIL_7__N_753[4]), .Z(RegDIL[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i33550_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1266_i8_3_lut (.A(di_reg[7]), .B(SP[7]), .C(Set_Addr_To[0]), 
            .Z(n2039[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i8_3_lut (.A(TmpAddr[7]), .B(PC[7]), .C(n2284), 
            .Z(n2022[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i8_3_lut.init = 16'hcaca;
    FD1P3DX TmpAddr_i14 (.D(n18220), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41038), .Q(TmpAddr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i14.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut (.A(Read_To_Reg_r[2]), .B(n16562), .C(n38717), 
            .D(Read_To_Reg_r[0]), .Z(n7158)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_3_lut_4_lut (.A(n38720), .B(n38719), .C(Special_LD[0]), 
            .Z(n50)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hdfdf;
    ORCALUT4 i32748_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_4), 
            .D(RegsL_6_4), .Z(n36256)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32748_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32747_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_4), 
            .D(RegsL_4_4), .Z(n36255)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32747_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32746_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_4), 
            .D(RegsL_2_4), .Z(n36254)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32746_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32745_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_4), 
            .D(RegsL_0_4), .Z(n36253)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32745_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32741_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_0), 
            .D(RegsL_6_0), .Z(n36249)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32741_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32740_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_0), 
            .D(RegsL_4_0), .Z(n36248)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32740_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32739_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_0), 
            .D(RegsL_2_0), .Z(n36247)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32739_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_206_i6_3_lut (.A(Fp[5]), .B(ALU_Q[1]), .C(n38713), .Z(n900[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i32738_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_0), 
            .D(RegsL_0_0), .Z(n36246)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32738_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32734_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_1), 
            .D(RegsL_6_1), .Z(n36242)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32734_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32733_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_1), 
            .D(RegsL_4_1), .Z(n36241)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32733_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32732_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_1), 
            .D(RegsL_2_1), .Z(n36240)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32732_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32731_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_1), 
            .D(RegsL_0_1), .Z(n36239)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32731_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32727_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_0), 
            .D(RegsH_6_0), .Z(n36235)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32727_3_lut_4_lut.init = 16'hf1e0;
    FD1P3BX F_i0 (.D(n18162), .SP(clk_op_enable_131), .CK(clk_op), .PD(n41034), 
            .Q(F[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0.GSR = "ENABLED";
    ORCALUT4 i32726_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_0), 
            .D(RegsH_4_0), .Z(n36234)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32726_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32725_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_0), 
            .D(RegsH_2_0), .Z(n36233)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32725_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32724_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_0), 
            .D(RegsH_0_0), .Z(n36232)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32724_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32720_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_1), 
            .D(RegsH_6_1), .Z(n36228)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32720_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32719_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_1), 
            .D(RegsH_4_1), .Z(n36227)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32719_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i33981 (.BLUT(n37809), .ALUT(Save_Mux_7__N_528[7]), .C0(n35822), 
          .Z(Save_Mux[7]));
    ORCALUT4 i32718_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_1), 
            .D(RegsH_2_1), .Z(n36226)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32718_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32717_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_1), 
            .D(RegsH_0_1), .Z(n36225)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32717_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32713_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_5), 
            .D(RegsH_6_5), .Z(n36221)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32713_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32712_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_5), 
            .D(RegsH_4_5), .Z(n36220)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32712_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32711_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_5), 
            .D(RegsH_2_5), .Z(n36219)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32711_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 Set_BusB_To_3__bdd_4_lut (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n35977)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C+(D))+!B (C))) */ ;
    defparam Set_BusB_To_3__bdd_4_lut.init = 16'habad;
    ORCALUT4 i32710_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_5), 
            .D(RegsH_0_5), .Z(n36218)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32710_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX TmpAddr_i15 (.D(n18218), .SP(clk_op_enable_132), .CK(clk_op), 
            .CD(n41033), .Q(TmpAddr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i15.GSR = "ENABLED";
    ORCALUT4 i32706_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_4), 
            .D(RegsH_6_4), .Z(n36214)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32706_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1284_i8_3_lut (.A(n2114[7]), .B(RegBusC[7]), .C(n2296), 
            .Z(n2137[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i32705_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_4), 
            .D(RegsH_4_4), .Z(n36213)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32705_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1266_i7_3_lut (.A(di_reg[6]), .B(SP[6]), .C(Set_Addr_To[0]), 
            .Z(n2039[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i7_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i1 (.D(n34[1]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(led_c_6), .Q(PC[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i1.GSR = "ENABLED";
    ORCALUT4 i32704_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_4), 
            .D(RegsH_2_4), .Z(n36212)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32704_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32703_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_4), 
            .D(RegsH_0_4), .Z(n36211)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32703_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32699_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_2), 
            .D(RegsH_6_2), .Z(n36207)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32699_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 Set_BusB_To_3__bdd_4_lut_34464 (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n35979)) /* synthesis lut_function=((B (C+(D))+!B !(C (D)))+!A) */ ;
    defparam Set_BusB_To_3__bdd_4_lut_34464.init = 16'hdff7;
    ORCALUT4 i32698_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_2), 
            .D(RegsH_4_2), .Z(n36206)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32698_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i33979 (.BLUT(n1898[7]), .ALUT(n37807), .C0(n38859), .Z(n37808));
    ORCALUT4 i32697_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_2), 
            .D(RegsH_2_2), .Z(n36205)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32697_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32696_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_2), 
            .D(RegsH_0_2), .Z(n36204)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32696_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32692_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_6), 
            .D(RegsH_6_6), .Z(n36200)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32692_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32691_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_6), 
            .D(RegsH_4_6), .Z(n36199)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32691_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 ALU_Q_7__I_0_i3_3_lut (.A(n37520), .B(BusB[2]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_528[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i3_3_lut.init = 16'hcaca;
    L6MUX21 i32129 (.D0(n35635), .D1(n35636), .SD(mcycles[2]), .Z(last_mcycle));
    ORCALUT4 i32690_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_6), 
            .D(RegsH_2_6), .Z(n36198)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32690_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32689_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_6), 
            .D(RegsH_0_6), .Z(n36197)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32689_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX PC_5687__i0 (.D(n34[0]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(led_c_6), .Q(PC[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i0.GSR = "ENABLED";
    FD1P3DX IR_i0_i0_rep_811 (.D(n955), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41030)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0_rep_811.GSR = "ENABLED";
    ORCALUT4 i20724_4_lut (.A(SP[5]), .B(n23195), .C(SP[13]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20724_4_lut.init = 16'hc088;
    ORCALUT4 i32107_3_lut (.A(di_reg[5]), .B(ACC[5]), .C(\Set_BusA_To[0] ), 
            .Z(n35615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32107_3_lut.init = 16'hcaca;
    ORCALUT4 i33194_3_lut (.A(n35615), .B(n2524[5]), .C(n2541), .Z(n35616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33194_3_lut.init = 16'hcaca;
    FD1P3DX tstate_i0_i1 (.D(n18335), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(led_c_6), .Q(tstate[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i1.GSR = "ENABLED";
    ORCALUT4 i32685_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_2), 
            .D(RegsL_6_2), .Z(n36193)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32685_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX IR_i0_i7 (.D(n962), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41013), 
            .Q(\IR[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7.GSR = "ENABLED";
    ORCALUT4 i32684_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_2), 
            .D(RegsL_4_2), .Z(n36192)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32684_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32683_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_2), 
            .D(RegsL_2_2), .Z(n36191)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32683_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32682_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_2), 
            .D(RegsL_0_2), .Z(n36190)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32682_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32678_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_5), 
            .D(RegsL_6_5), .Z(n36186)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32678_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32677_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_5), 
            .D(RegsL_4_5), .Z(n36185)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32677_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32676_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_5), 
            .D(RegsL_2_5), .Z(n36184)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32676_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32675_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_5), 
            .D(RegsL_0_5), .Z(n36183)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32675_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32671_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_3), 
            .D(RegsL_6_3), .Z(n36179)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32671_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32670_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_3), 
            .D(RegsL_4_3), .Z(n36178)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32670_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32669_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_3), 
            .D(RegsL_2_3), .Z(n36177)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32669_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i33976 (.BLUT(n37801), .ALUT(n2934[7]), .C0(n38872), .Z(n37802));
    ORCALUT4 i32668_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_3), 
            .D(RegsL_0_3), .Z(n36176)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32668_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32776_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_7), 
            .D(RegsH_6_7), .Z(n36284)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32776_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32775_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_7), 
            .D(RegsH_4_7), .Z(n36283)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32775_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32774_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_7), 
            .D(RegsH_2_7), .Z(n36282)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32774_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20723_4_lut (.A(SP[6]), .B(n23195), .C(SP[14]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20723_4_lut.init = 16'hc088;
    FD1P3DX PC_5687__i2 (.D(n34[2]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(led_c_6), .Q(PC[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i2.GSR = "ENABLED";
    FD1P3DX IR_i0_i6 (.D(n961), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(\IR[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6.GSR = "ENABLED";
    ORCALUT4 i32134_3_lut (.A(di_reg[6]), .B(ACC[6]), .C(\Set_BusA_To[0] ), 
            .Z(n35642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32134_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i5 (.D(n960), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(IR[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5.GSR = "ENABLED";
    ORCALUT4 i32773_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_7), 
            .D(RegsH_0_7), .Z(n36281)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32773_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32769_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_7_3), 
            .D(RegsH_6_3), .Z(n36277)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32769_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32768_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_5_3), 
            .D(RegsH_4_3), .Z(n36276)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32768_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX IR_i0_i4 (.D(n959), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(IR[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4.GSR = "ENABLED";
    ORCALUT4 i33192_3_lut (.A(n35642), .B(n2524[6]), .C(n2541), .Z(n35643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33192_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i3 (.D(n958), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(Set_BusA_To_3__N_1207[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3.GSR = "ENABLED";
    FD1P3DX IR_i0_i2 (.D(n957), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(IR[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2.GSR = "ENABLED";
    ORCALUT4 i32767_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_3_3), 
            .D(RegsH_2_3), .Z(n36275)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32767_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_719 (.A(n41026), .B(n41028), .Z(n38953)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_719.init = 16'h4444;
    ORCALUT4 i32766_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsH_1_3), 
            .D(RegsH_0_3), .Z(n36274)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32766_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i20722_4_lut (.A(SP[7]), .B(n23195), .C(SP[15]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20722_4_lut.init = 16'hc088;
    FD1P3DX IR_i0_i1 (.D(n956), .SP(clk_op_enable_314), .CK(clk_op), .CD(n41038), 
            .Q(IR[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_637_3_lut_4_lut (.A(n41026), .B(\IR[7] ), .C(IR[2]), 
            .D(IR[5]), .Z(n38871)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_637_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i32762_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_6), 
            .D(RegsL_6_6), .Z(n36270)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32762_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32131_3_lut (.A(di_reg[7]), .B(ACC[7]), .C(\Set_BusA_To[0] ), 
            .Z(n35639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32131_3_lut.init = 16'hcaca;
    ORCALUT4 i32761_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_6), 
            .D(RegsL_4_6), .Z(n36269)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32761_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32760_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_6), 
            .D(RegsL_2_6), .Z(n36268)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32760_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32759_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_6), 
            .D(RegsL_0_6), .Z(n36267)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32759_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32755_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_7_7), 
            .D(RegsL_6_7), .Z(n36263)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32755_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32754_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_5_7), 
            .D(RegsL_4_7), .Z(n36262)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32754_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX PC_5687__i3 (.D(n34[3]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(led_c_6), .Q(PC[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i3.GSR = "ENABLED";
    ORCALUT4 i1_4_lut (.A(n23793), .B(n2885), .C(n4_adj_1923), .D(Read_To_Reg_r[0]), 
            .Z(clk_op_enable_51)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut.init = 16'hbafa;
    ORCALUT4 i32753_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_3_7), 
            .D(RegsL_2_7), .Z(n36261)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32753_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i33190_3_lut (.A(n35639), .B(n2524[7]), .C(n2541), .Z(n35640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33190_3_lut.init = 16'hcaca;
    ORCALUT4 i32752_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n38696), .C(RegsL_1_7), 
            .D(RegsL_0_7), .Z(n36260)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i32752_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX tstate_i0_i2 (.D(n18333), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41034), .Q(\tstate[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i2.GSR = "ENABLED";
    PFUMX i32128 (.BLUT(n4_adj_1924), .ALUT(n5_adj_1925), .C0(mcycles[1]), 
          .Z(n35636));
    FD1P3DX PC_5687__i4 (.D(n34[4]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41033), .Q(PC[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i4.GSR = "ENABLED";
    PFUMX i32127 (.BLUT(n1_adj_1926), .ALUT(n2_adj_1927), .C0(mcycles[1]), 
          .Z(n35635));
    ORCALUT4 i1_4_lut_adj_527 (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[2]), 
            .C(n35494), .D(Read_To_Reg_r[1]), .Z(n4_adj_1923)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_527.init = 16'h0020;
    ORCALUT4 i31998_2_lut (.A(Read_To_Reg_r[4]), .B(RegWEH_N_872), .Z(n35494)) /* synthesis lut_function=(A (B)) */ ;
    defparam i31998_2_lut.init = 16'h8888;
    FD1P3DX PC_5687__i5 (.D(n34[5]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41033), .Q(PC[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i5.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_528 (.A(n33756), .B(n38993), .C(RegWEH_N_888), 
            .D(Save_ALU_r), .Z(n4_adj_1928)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_528.init = 16'ha088;
    ORCALUT4 mux_1265_i7_3_lut (.A(TmpAddr[6]), .B(PC[6]), .C(n2284), 
            .Z(n2022[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i7_3_lut (.A(n2114[6]), .B(RegBusC[6]), .C(n2296), 
            .Z(n2137[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[3]), .C(Read_To_Reg_r[4]), 
            .Z(n33756)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 i3_4_lut (.A(IncDec_16[0]), .B(n6_adj_1929), .C(\tstate[2] ), 
            .D(n817), .Z(n925)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut.init = 16'h8880;
    ORCALUT4 i2_2_lut (.A(IncDec_16[2]), .B(IncDec_16[1]), .Z(n6_adj_1929)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    ORCALUT4 i196_2_lut (.A(ts[4]), .B(\ALU_Op_3__N_1274[3] ), .Z(n817)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(698[56:80])
    defparam i196_2_lut.init = 16'h8888;
    ORCALUT4 i20203_4_lut (.A(SP[0]), .B(n23195), .C(SP[8]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20203_4_lut.init = 16'hc088;
    ORCALUT4 i32125_3_lut (.A(di_reg[0]), .B(ACC[0]), .C(\Set_BusA_To[0] ), 
            .Z(n35633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32125_3_lut.init = 16'hcaca;
    ORCALUT4 i33187_3_lut (.A(n35633), .B(n2524[0]), .C(n2541), .Z(n35634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33187_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i6 (.D(n34[6]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i6.GSR = "ENABLED";
    ORCALUT4 i20726_4_lut (.A(SP[3]), .B(n23195), .C(SP[11]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20726_4_lut.init = 16'hc088;
    ORCALUT4 i32119_3_lut (.A(di_reg[3]), .B(ACC[3]), .C(\Set_BusA_To[0] ), 
            .Z(n35627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32119_3_lut.init = 16'hcaca;
    ORCALUT4 i33198_3_lut (.A(n35627), .B(n2524[3]), .C(n2541), .Z(n35628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33198_3_lut.init = 16'hcaca;
    ORCALUT4 i20727_4_lut (.A(SP[1]), .B(n23195), .C(SP[9]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20727_4_lut.init = 16'hc088;
    ORCALUT4 i32116_3_lut (.A(di_reg[1]), .B(ACC[1]), .C(\Set_BusA_To[0] ), 
            .Z(n35624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32116_3_lut.init = 16'hcaca;
    ORCALUT4 i38_4_lut (.A(n24589), .B(n38872), .C(n38711), .D(n36), 
            .Z(n33)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i38_4_lut.init = 16'hf5c5;
    FD1P3DX PC_5687__i7 (.D(n34[7]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i7.GSR = "ENABLED";
    ORCALUT4 i33202_3_lut (.A(n35624), .B(n2524[1]), .C(n2541), .Z(n35625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33202_3_lut.init = 16'hcaca;
    ORCALUT4 i32113_3_lut (.A(di_reg[2]), .B(\ACC[2] ), .C(\Set_BusA_To[0] ), 
            .Z(n35621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32113_3_lut.init = 16'hcaca;
    ORCALUT4 i33200_3_lut (.A(n35621), .B(n2530), .C(n2541), .Z(n35622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33200_3_lut.init = 16'hcaca;
    ORCALUT4 i20725_4_lut (.A(SP[4]), .B(n23195), .C(SP[12]), .D(\Set_BusA_To[0] ), 
            .Z(n2524[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i20725_4_lut.init = 16'hc088;
    FD1P3DX PC_5687__i8 (.D(n34[8]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i8.GSR = "ENABLED";
    ORCALUT4 i32110_3_lut (.A(di_reg[4]), .B(ACC[4]), .C(\Set_BusA_To[0] ), 
            .Z(n35618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32110_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i9 (.D(n34[9]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i9.GSR = "ENABLED";
    ORCALUT4 i33196_3_lut (.A(n35618), .B(n2524[4]), .C(n2541), .Z(n35619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33196_3_lut.init = 16'hcaca;
    FD1P3DX XY_Ind_763 (.D(clk_op_enable_199), .SP(clk_op_enable_171), .CK(clk_op), 
            .CD(n41013), .Q(XY_Ind)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_Ind_763.GSR = "ENABLED";
    FD1P3DX tstate_i0_i3 (.D(n18330), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41013), .Q(ts[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3.GSR = "ENABLED";
    FD1P3DX PC_5687__i10 (.D(n34[10]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i10.GSR = "ENABLED";
    FD1S3BX ACC_i7 (.D(n17999), .CK(clk_op), .PD(n41012), .Q(ACC[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i7.GSR = "ENABLED";
    ORCALUT4 RegDIL_7__I_34_i5_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[4]), 
            .D(RegBusA_r[4]), .Z(RegDIL_7__N_461[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i1_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[0]), 
            .D(RegBusA_r[0]), .Z(RegDIL_7__N_461[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegAddrB_r_2__I_0_794_i3_3_lut_4_lut (.A(n38729), .B(ts[3]), 
            .C(Alternate), .D(RegAddrB_r[2]), .Z(RegAddrB[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegAddrB_r_2__I_0_794_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1624_i1_3_lut (.A(di_reg[0]), .B(RegBusB[0]), .C(Set_BusB_To[0]), 
            .Z(n2675[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i1_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i11 (.D(n34[11]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i11.GSR = "ENABLED";
    ORCALUT4 n40842_bdd_3_lut_4_lut (.A(n34279), .B(n38), .C(ISet[0]), 
            .D(n40841), .Z(n40843)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam n40842_bdd_3_lut_4_lut.init = 16'hfe0e;
    ORCALUT4 n40186_bdd_3_lut_4_lut (.A(n10_adj_1930), .B(n9_adj_1931), 
            .C(ISet[1]), .D(n40186), .Z(n40187)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n40186_bdd_3_lut_4_lut.init = 16'hefe0;
    ORCALUT4 RegDIL_7__I_34_i3_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[2]), 
            .D(RegBusA_r[2]), .Z(RegDIL_7__N_461[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i6_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[5]), 
            .D(RegBusA_r[5]), .Z(RegDIL_7__N_461[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i2_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[1]), 
            .D(RegBusA_r[1]), .Z(RegDIL_7__N_461[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i4_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[3]), 
            .D(RegBusA_r[3]), .Z(RegDIL_7__N_461[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i4_3_lut_4_lut.init = 16'hfb40;
    FD1S3BX ACC_i6 (.D(n17997), .CK(clk_op), .PD(n41036), .Q(ACC[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i6.GSR = "ENABLED";
    ORCALUT4 mux_1624_i8_3_lut (.A(di_reg[7]), .B(RegBusB[7]), .C(Set_BusB_To[0]), 
            .Z(n2675[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i8_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i1_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[8]), 
            .D(RegBusA_r[8]), .Z(RegDIH_7__N_452[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i3_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[10]), 
            .D(RegBusA_r[10]), .Z(RegDIH_7__N_452[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9374_4_lut_4_lut (.A(Arith16_r), .B(n4), .C(n38872), .D(n9479), 
            .Z(n12324)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i9374_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 mux_1624_i7_3_lut (.A(di_reg[6]), .B(RegBusB[6]), .C(Set_BusB_To[0]), 
            .Z(n2675[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i7_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i12 (.D(n34[12]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i12.GSR = "ENABLED";
    ORCALUT4 mux_1624_i6_3_lut (.A(di_reg[5]), .B(RegBusB[5]), .C(Set_BusB_To[0]), 
            .Z(n2675[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i6_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i2_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[9]), 
            .D(RegBusA_r[9]), .Z(RegDIH_7__N_452[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i7_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[6]), 
            .D(RegBusA_r[6]), .Z(RegDIL_7__N_461[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i5_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[12]), 
            .D(RegBusA_r[12]), .Z(RegDIH_7__N_452[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i4_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[11]), 
            .D(RegBusA_r[11]), .Z(RegDIH_7__N_452[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1624_i5_3_lut (.A(di_reg[4]), .B(RegBusB[4]), .C(Set_BusB_To[0]), 
            .Z(n2675[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i5_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i7_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[14]), 
            .D(RegBusA_r[14]), .Z(RegDIH_7__N_452[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i6_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[13]), 
            .D(RegBusA_r[13]), .Z(RegDIH_7__N_452[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i8_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[7]), 
            .D(RegBusA_r[7]), .Z(RegDIL_7__N_461[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i8_3_lut_4_lut (.A(n38729), .B(ts[3]), .C(RegBusB[15]), 
            .D(RegBusA_r[15]), .Z(RegDIH_7__N_452[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1624_i4_3_lut (.A(di_reg[3]), .B(RegBusB[3]), .C(Set_BusB_To[0]), 
            .Z(n2675[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1624_i3_3_lut (.A(di_reg[2]), .B(RegBusB[2]), .C(Set_BusB_To[0]), 
            .Z(n2675[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1624_i2_3_lut (.A(di_reg[1]), .B(RegBusB[1]), .C(Set_BusB_To[0]), 
            .Z(n2675[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1624_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i1_3_lut (.A(Save_Mux[0]), .B(n855[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i11_3_lut (.A(n855[10]), .B(Save_Mux[2]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i11_3_lut.init = 16'hcaca;
    FD1P3DX tstate_i0_i4 (.D(n18328), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41013), .Q(ts[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i4.GSR = "ENABLED";
    ORCALUT4 mux_1695_i10_3_lut (.A(n855[9]), .B(Save_Mux[1]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i9_3_lut (.A(n855[8]), .B(Save_Mux[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i9_3_lut.init = 16'hcaca;
    FD1S3BX ACC_i5 (.D(n17993), .CK(clk_op), .PD(n41036), .Q(ACC[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i5.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_adj_529 (.A(n35199), .B(Set_Addr_To[0]), .Z(n35440)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_529.init = 16'h8888;
    FD1S3BX ACC_i4 (.D(n17991), .CK(clk_op), .PD(n41036), .Q(ACC[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i4.GSR = "ENABLED";
    ORCALUT4 mux_1224_i2_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n23643), .C(Q_7__N_1612[1]), 
            .D(n38955), .Z(n1933[1])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[61:80])
    defparam mux_1224_i2_4_lut_4_lut.init = 16'hd850;
    FD1P3DX PC_5687__i13 (.D(n34[13]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i13.GSR = "ENABLED";
    ORCALUT4 i2_4_lut (.A(n38931), .B(n38918), .C(n38914), .D(n38917), 
            .Z(n35199)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfafe;
    FD1S3BX ACC_i3 (.D(n17985), .CK(clk_op), .PD(n41036), .Q(ACC[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i3.GSR = "ENABLED";
    FD1S3BX ACC_i2 (.D(n17983), .CK(clk_op), .PD(n41034), .Q(\ACC[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i2.GSR = "ENABLED";
    FD1S3BX ACC_i1 (.D(n17979), .CK(clk_op), .PD(n41036), .Q(ACC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i1.GSR = "ENABLED";
    FD1P3DX tstate_i0_i5 (.D(n18326), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41013), .Q(ts[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i5.GSR = "ENABLED";
    ORCALUT4 mux_1266_i6_3_lut (.A(di_reg[5]), .B(SP[5]), .C(Set_Addr_To[0]), 
            .Z(n2039[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i6_3_lut (.A(TmpAddr[5]), .B(PC[5]), .C(n2284), 
            .Z(n2022[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i6_3_lut.init = 16'hcaca;
    FD1P3DX tstate_i0_i6 (.D(n18324), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41038), .Q(ts[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i6.GSR = "ENABLED";
    ORCALUT4 n253_bdd_3_lut (.A(n41008), .B(n24451), .C(\IR[7] ), .Z(n40184)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n253_bdd_3_lut.init = 16'hacac;
    ORCALUT4 n253_bdd_4_lut (.A(n35584), .B(n34785), .C(n41009), .D(IR[4]), 
            .Z(n40185)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam n253_bdd_4_lut.init = 16'hfdfc;
    FD1S3DX Auto_Wait_t1_785 (.D(n35185), .CK(clk_op), .CD(n41038), .Q(Auto_Wait_t1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t1_785.GSR = "ENABLED";
    FD1P3DX Alternate_755 (.D(Alternate_N_904), .SP(clk_op_enable_199), 
            .CK(clk_op), .CD(n41038), .Q(Alternate)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Alternate_755.GSR = "ENABLED";
    FD1P3DX IR_i0_i7_rep_809 (.D(n962), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41028)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7_rep_809.GSR = "ENABLED";
    ORCALUT4 i32320_2_lut_3_lut (.A(n1165), .B(n38711), .C(BTR_r_N_970), 
            .Z(n35828)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i32320_2_lut_3_lut.init = 16'h0404;
    FD1P3DX IR_i0_i6_rep_807 (.D(n961), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41026)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6_rep_807.GSR = "ENABLED";
    ORCALUT4 i31064_2_lut_2_lut_3_lut (.A(Set_BusA_To_3__N_1203[2]), .B(mc[2]), 
            .C(\ALU_Op_3__N_1274[3] ), .Z(n34535)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i31064_2_lut_2_lut_3_lut.init = 16'h0b0b;
    ORCALUT4 ts_3__I_0_825_2_lut_rep_734 (.A(ts[3]), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n38968)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_3__I_0_825_2_lut_rep_734.init = 16'h8888;
    ORCALUT4 ts_2__I_0_798_3_lut_4_lut (.A(n41014), .B(\ALU_Op_3__N_1274[3] ), 
            .C(IncDec_16[2]), .D(\tstate[2] ), .Z(RegAddrA_2__N_476)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_2__I_0_798_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 mux_738_i3_4_lut (.A(F_Out[2]), .B(n1228), .C(n38688), .D(n35828), 
            .Z(F_7__N_674[2])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_738_i3_4_lut.init = 16'hcacc;
    ORCALUT4 i493_4_lut_4_lut (.A(n41014), .B(\ALU_Op_3__N_1274[3] ), .C(\tstate[2] ), 
            .D(IncDec_16[2]), .Z(RegWEH_N_892)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam i493_4_lut_4_lut.init = 16'hb800;
    FD1P3DX IR_i0_i5_rep_805 (.D(n960), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41024)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5_rep_805.GSR = "ENABLED";
    ORCALUT4 XY_State_1__I_0_i3_2_lut_rep_735 (.A(XY_State[0]), .B(XY_State[1]), 
            .Z(n38969)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam XY_State_1__I_0_i3_2_lut_rep_735.init = 16'heeee;
    ORCALUT4 i403_3_lut_4_lut (.A(XY_State[0]), .B(XY_State[1]), .C(mc[5]), 
            .D(n35199), .Z(n1684)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam i403_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 RegAddrA_2__I_28_2_lut_rep_430_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_476), .Z(n38664)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam RegAddrA_2__I_28_2_lut_rep_430_3_lut.init = 16'h1010;
    FD1P3DX PC_5687__i14 (.D(n34[14]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i14.GSR = "ENABLED";
    ORCALUT4 i20243_2_lut_3_lut (.A(XY_State[0]), .B(XY_State[1]), .C(Set_Addr_To[0]), 
            .Z(n23689)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam i20243_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i2_3_lut_4_lut_adj_530 (.A(XY_State[0]), .B(XY_State[1]), .C(Set_Addr_To_c[2]), 
            .D(NextIs_XY_Fetch), .Z(n34763)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam i2_3_lut_4_lut_adj_530.init = 16'h0e00;
    ORCALUT4 i647_2_lut (.A(NextIs_XY_Fetch), .B(last_tstate), .Z(clk_op_enable_208)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i647_2_lut.init = 16'h8888;
    ORCALUT4 NextIs_XY_Fetch_I_89_2_lut_rep_679_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(XY_Ind), .Z(n38913)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:28])
    defparam NextIs_XY_Fetch_I_89_2_lut_rep_679_3_lut.init = 16'h0e0e;
    FD1P3DX IR_i0_i4_rep_803 (.D(n959), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41022)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4_rep_803.GSR = "ENABLED";
    PFUMX i14670 (.BLUT(n1143), .ALUT(n1170), .C0(n35694), .Z(n18170));
    PFUMX i14480 (.BLUT(n17973), .ALUT(IncDecZ_N_977), .C0(IncDecZ_N_979), 
          .Z(n17974));
    FD1P3DX Pre_XY_F_M_i0_i2 (.D(n34613), .SP(clk_op_enable_208), .CK(clk_op), 
            .CD(n41038), .Q(Pre_XY_F_M[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i2.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i1 (.D(n35049), .SP(clk_op_enable_208), .CK(clk_op), 
            .CD(n41034), .Q(Pre_XY_F_M[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i1.GSR = "ENABLED";
    PFUMX mux_1699_i8 (.BLUT(n2849[7]), .ALUT(n2866[7]), .C0(n2885), .Z(n2886[7]));
    PFUMX mux_1699_i16 (.BLUT(n2849[15]), .ALUT(n2866[15]), .C0(n2885), 
          .Z(n2886[15]));
    ORCALUT4 i1_4_lut_adj_531 (.A(n38790), .B(mc[3]), .C(n4_adj_1932), 
            .D(n18_adj_1933), .Z(n33422)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1282[31] 1285[36])
    defparam i1_4_lut_adj_531.init = 16'ha2a0;
    ORCALUT4 i1_3_lut (.A(\mc[6] ), .B(mc[5]), .C(mc[4]), .Z(n4_adj_1932)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1282[31] 1285[36])
    defparam i1_3_lut.init = 16'hbaba;
    PFUMX i14674 (.BLUT(n1177[7]), .ALUT(n1187[7]), .C0(n35705), .Z(n18174));
    ORCALUT4 i1_4_lut_adj_532 (.A(n35107), .B(mc[5]), .C(n23), .D(\mc[6] ), 
            .Z(n18_adj_1933)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1282[31] 1285[36])
    defparam i1_4_lut_adj_532.init = 16'h5575;
    ORCALUT4 i3_4_lut_adj_533 (.A(mc[5]), .B(\ALU_Op_3__N_1274[3] ), .C(mc[4]), 
            .D(n40997), .Z(n35107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_533.init = 16'hfffe;
    ORCALUT4 mux_1642_i1_3_lut (.A(n2735[0]), .B(RegBusB[8]), .C(n2811), 
            .Z(n2749[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i1_3_lut (.A(F[0]), .B(PC[0]), .C(Set_BusB_To[2]), 
            .Z(n2702[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i1_3_lut.init = 16'hcaca;
    FD1P3DX PC_5687__i15 (.D(n34[15]), .SP(clk_op_enable_211), .CK(clk_op), 
            .CD(n41036), .Q(PC[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687__i15.GSR = "ENABLED";
    FD1P3DX IR_i0_i3_rep_801 (.D(n958), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41020)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3_rep_801.GSR = "ENABLED";
    FD1S3AX BusA_i8 (.D(BusA_7__N_769[7]), .CK(clk_op), .Q(BusA[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i8.GSR = "ENABLED";
    FD1S3AX BusA_i7 (.D(BusA_7__N_769[6]), .CK(clk_op), .Q(BusA[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i7.GSR = "ENABLED";
    FD1S3AX BusA_i6 (.D(BusA_7__N_769[5]), .CK(clk_op), .Q(BusA[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i6.GSR = "ENABLED";
    FD1S3AX BusA_i5 (.D(BusA_7__N_769[4]), .CK(clk_op), .Q(BusA[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i5.GSR = "ENABLED";
    FD1S3AX BusA_i4 (.D(BusA_7__N_769[3]), .CK(clk_op), .Q(BusA[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i4.GSR = "ENABLED";
    FD1S3AX BusA_i3 (.D(BusA_7__N_769[2]), .CK(clk_op), .Q(BusA[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i3.GSR = "ENABLED";
    FD1S3AX BusA_i2 (.D(BusA_7__N_769[1]), .CK(clk_op), .Q(BusA[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i2.GSR = "ENABLED";
    PFUMX mux_1699_i7 (.BLUT(n2849[6]), .ALUT(n2866[6]), .C0(n2885), .Z(n2886[6]));
    PFUMX mux_1699_i15 (.BLUT(n2849[14]), .ALUT(n2866[14]), .C0(n2885), 
          .Z(n2886[14]));
    PFUMX mux_1260_i2 (.BLUT(n2094[1]), .ALUT(n2137[1]), .C0(n36639), 
          .Z(n2001[1]));
    ORCALUT4 i1_4_lut_adj_534 (.A(n38775), .B(IR[5]), .C(n38782), .D(n4_adj_1934), 
            .Z(n47)) /* synthesis lut_function=(!(A ((C (D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_534.init = 16'h5ddd;
    ORCALUT4 i20043_3_lut_4_lut_4_lut (.A(n38729), .B(ts[4]), .C(RegAddrA_r[0]), 
            .D(n41014), .Z(RegAddrA_2__N_739[0])) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(941[16:47])
    defparam i20043_3_lut_4_lut_4_lut.init = 16'ha0f4;
    ORCALUT4 NextIs_XY_Fetch_I_0_4_lut (.A(n38913), .B(n34048), .C(n38767), 
            .D(\ALU_Op_3__N_1274[3] ), .Z(NextIs_XY_Fetch)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11] 361[45])
    defparam NextIs_XY_Fetch_I_0_4_lut.init = 16'h8a88;
    PFUMX mux_1260_i3 (.BLUT(n2094[2]), .ALUT(n2137[2]), .C0(n36639), 
          .Z(n2001[2]));
    PFUMX mux_1260_i4 (.BLUT(n2094[3]), .ALUT(n2137[3]), .C0(n36639), 
          .Z(n2001[3]));
    PFUMX mux_1260_i5 (.BLUT(n2094[4]), .ALUT(n2137[4]), .C0(n36639), 
          .Z(n2001[4]));
    PFUMX mux_1260_i6 (.BLUT(n2094[5]), .ALUT(n2137[5]), .C0(n36639), 
          .Z(n2001[5]));
    PFUMX mux_1260_i7 (.BLUT(n2094[6]), .ALUT(n2137[6]), .C0(n36639), 
          .Z(n2001[6]));
    FD1P3DX A__i16 (.D(n2001[15]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i16.GSR = "ENABLED";
    ORCALUT4 i20500_3_lut_4_lut_4_lut (.A(ISet[0]), .B(JumpE_N_1512), .C(n38833), 
            .D(n40997), .Z(n6821[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20500_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i1_4_lut_4_lut (.A(ISet[0]), .B(n35223), .C(n4_adj_1935), 
            .D(Set_BusA_To_3__N_1203[2]), .Z(n33038)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut.init = 16'h5150;
    PFUMX mux_1260_i8 (.BLUT(n2094[7]), .ALUT(n2137[7]), .C0(n36639), 
          .Z(n2001[7]));
    ORCALUT4 i1_4_lut_4_lut_adj_535 (.A(ISet[0]), .B(n12), .C(n16), .D(n11), 
            .Z(n32840)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut_adj_535.init = 16'h5554;
    ORCALUT4 i274_3_lut_rep_477 (.A(n38760), .B(n34811), .C(Save_ALU_r), 
            .Z(n38711)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i274_3_lut_rep_477.init = 16'h7373;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(ISet[0]), .B(n39003), .C(n38894), 
            .D(n38926), .Z(n35215)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    ORCALUT4 i1_4_lut_4_lut_adj_536 (.A(ISet[0]), .B(n38830), .C(n35478), 
            .D(MCycles_2__N_1162[2]), .Z(n3_adj_1936)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut_adj_536.init = 16'h4505;
    ORCALUT4 i20499_2_lut_3_lut_4_lut_4_lut (.A(ISet[0]), .B(n38822), .C(n38885), 
            .D(IR[1]), .Z(n6799[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20499_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    ORCALUT4 i1_4_lut_4_lut_adj_537 (.A(ISet[0]), .B(n63), .C(n6_adj_1937), 
            .D(n38750), .Z(n33082)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut_adj_537.init = 16'h5554;
    ORCALUT4 i1_4_lut_4_lut_adj_538 (.A(ISet[0]), .B(n38750), .C(n6_adj_1938), 
            .D(n33709), .Z(n20)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut_adj_538.init = 16'h5554;
    ORCALUT4 mux_1695_i3_4_lut (.A(Save_Mux[2]), .B(n855[2]), .C(Read_To_Reg_r[0]), 
            .D(n23793), .Z(n2866[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i3_4_lut.init = 16'hca0a;
    ORCALUT4 i20710_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[4]), 
            .D(Halt_FF), .Z(n959)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20710_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i18761_4_lut_4_lut (.A(ISet[0]), .B(n34801), .C(ISet[1]), 
            .D(n35205), .Z(Jump)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i18761_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 i1_4_lut_4_lut_adj_539 (.A(ISet[0]), .B(n8_adj_1939), .C(n12_adj_1940), 
            .D(n20_adj_1941), .Z(n32886)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_4_lut_adj_539.init = 16'h5554;
    ORCALUT4 n34009_bdd_4_lut_4_lut (.A(ISet[0]), .B(n38997), .C(n17129), 
            .D(n38675), .Z(n38438)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam n34009_bdd_4_lut_4_lut.init = 16'h5450;
    ORCALUT4 mux_1695_i2_4_lut (.A(Save_Mux[1]), .B(n855[1]), .C(Read_To_Reg_r[0]), 
            .D(n23793), .Z(n2866[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i2_4_lut.init = 16'hca0a;
    PFUMX mux_1260_i9 (.BLUT(n2094[8]), .ALUT(n2137[8]), .C0(n36639), 
          .Z(n2001[8]));
    ORCALUT4 i20708_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[6]), 
            .D(Halt_FF), .Z(n961)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20708_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 mux_1642_i8_3_lut (.A(n2735[7]), .B(RegBusB[15]), .C(n2811), 
            .Z(n2749[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i20709_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[5]), 
            .D(Halt_FF), .Z(n960)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20709_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 mux_1627_i8_3_lut (.A(F[7]), .B(PC[7]), .C(Set_BusB_To[2]), 
            .Z(n2702[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i20707_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[7]), 
            .D(Halt_FF), .Z(n962)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20707_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20207_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[0]), 
            .D(Halt_FF), .Z(n955)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20207_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20711_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[3]), 
            .D(Halt_FF), .Z(n958)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20711_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i20712_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[2]), 
            .D(Halt_FF), .Z(n957)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20712_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 mux_1642_i7_3_lut (.A(n2735[6]), .B(RegBusB[14]), .C(n2811), 
            .Z(n2749[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i7_3_lut (.A(F[6]), .B(PC[6]), .C(Set_BusB_To[2]), 
            .Z(n2702[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i7_3_lut.init = 16'hcaca;
    PFUMX mux_1260_i10 (.BLUT(n2094[9]), .ALUT(n2137[9]), .C0(n36639), 
          .Z(n2001[9]));
    ORCALUT4 i20713_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n38855), .C(bus_din[1]), 
            .D(Halt_FF), .Z(n956)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i20713_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i1_2_lut_rep_451_4_lut (.A(n38760), .B(n34811), .C(Save_ALU_r), 
            .D(PreserveC_r), .Z(n38685)) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i1_2_lut_rep_451_4_lut.init = 16'hff8c;
    PFUMX mux_1260_i11 (.BLUT(n15), .ALUT(n2143), .C0(n36639), .Z(n2001[10]));
    PFUMX mux_1260_i12 (.BLUT(n2094[11]), .ALUT(n2137[11]), .C0(n36639), 
          .Z(n2001[11]));
    ORCALUT4 i20526_4_lut (.A(IntE_FF2_N_910), .B(ts[3]), .C(n38931), 
            .D(n15_adj_1942), .Z(IntE_FF2_N_909)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i20526_4_lut.init = 16'haaa2;
    PFUMX mux_1260_i13 (.BLUT(n2094[12]), .ALUT(n2137[12]), .C0(n36639), 
          .Z(n2001[12]));
    ORCALUT4 mux_1642_i6_3_lut (.A(n2735[5]), .B(RegBusB[13]), .C(n2811), 
            .Z(n2749[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i20534_4_lut (.A(IntE_FF2), .B(\tstate[2] ), .C(n15_adj_1943), 
            .D(n38931), .Z(IntE_FF2_N_910)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i20534_4_lut.init = 16'haaae;
    PFUMX mux_1260_i14 (.BLUT(n2094[13]), .ALUT(n2137[13]), .C0(n36639), 
          .Z(n2001[13]));
    ORCALUT4 mux_1627_i6_3_lut (.A(F[5]), .B(PC[5]), .C(Set_BusB_To[2]), 
            .Z(n2702[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1642_i5_3_lut (.A(n2735[4]), .B(RegBusB[12]), .C(n2811), 
            .Z(n2749[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i5_3_lut.init = 16'hcaca;
    FD1P3DX A__i15 (.D(n2001[14]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i15.GSR = "ENABLED";
    ORCALUT4 mux_1627_i5_3_lut (.A(F[4]), .B(PC[4]), .C(Set_BusB_To[2]), 
            .Z(n2702[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_540 (.A(I_BTR), .B(n38908), .C(No_BTR_N_963), 
            .D(n4_adj_1944), .Z(No_BTR_N_953)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_540.init = 16'heca0;
    FD1P3DX A__i14 (.D(n2001[13]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i14.GSR = "ENABLED";
    PFUMX mux_1260_i15 (.BLUT(n2094[14]), .ALUT(n2137[14]), .C0(n36639), 
          .Z(n2001[14]));
    ORCALUT4 i1_4_lut_adj_541 (.A(IR[4]), .B(n34744), .C(n38766), .D(F[2]), 
            .Z(n4_adj_1944)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_541.init = 16'hdcfc;
    ORCALUT4 i2_4_lut_adj_542 (.A(n38843), .B(ISet[1]), .C(No_BTR_N_963), 
            .D(F[2]), .Z(n34744)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i2_4_lut_adj_542.init = 16'h8088;
    FD1S3AX BusB_i7 (.D(BusB_7__N_761[7]), .CK(clk_op), .Q(BusB[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i7.GSR = "ENABLED";
    ORCALUT4 IR_4__N_958_I_0_2_lut (.A(IR[4]), .B(F[6]), .Z(No_BTR_N_963)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1225[35:55])
    defparam IR_4__N_958_I_0_2_lut.init = 16'hdddd;
    PFUMX mux_1260_i16 (.BLUT(n2094[15]), .ALUT(n2137[15]), .C0(n36639), 
          .Z(n2001[15]));
    FD1S3AX BusB_i6 (.D(BusB_7__N_761[6]), .CK(clk_op), .Q(BusB[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i6.GSR = "ENABLED";
    FD1P3DX A__i13 (.D(n2001[12]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41038), .Q(sram_addr_0_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i13.GSR = "ENABLED";
    FD1S3AX BusB_i5 (.D(BusB_7__N_761[5]), .CK(clk_op), .Q(BusB[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i5.GSR = "ENABLED";
    FD1S3AX BusB_i4 (.D(BusB_7__N_761[4]), .CK(clk_op), .Q(BusB[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i4.GSR = "ENABLED";
    FD1S3AX BusB_i3 (.D(BusB_7__N_761[3]), .CK(clk_op), .Q(BusB[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i3.GSR = "ENABLED";
    FD1S3AX BusB_i2 (.D(BusB_7__N_761[2]), .CK(clk_op), .Q(BusB[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i2.GSR = "ENABLED";
    FD1S3AX BusB_i1 (.D(BusB_7__N_761[1]), .CK(clk_op), .Q(BusB[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i1.GSR = "ENABLED";
    FD1P3DX A__i12 (.D(n2001[11]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i12.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i15 (.D(RegBusA[15]), .CK(clk_op), .Q(RegBusA_r[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i15.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i14 (.D(RegBusA[14]), .CK(clk_op), .Q(RegBusA_r[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i14.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i13 (.D(RegBusA[13]), .CK(clk_op), .Q(RegBusA_r[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i13.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i12 (.D(RegBusA[12]), .CK(clk_op), .Q(RegBusA_r[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i12.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i11 (.D(RegBusA[11]), .CK(clk_op), .Q(RegBusA_r[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i11.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i10 (.D(RegBusA[10]), .CK(clk_op), .Q(RegBusA_r[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i10.GSR = "ENABLED";
    PFUMX mux_1260_i1 (.BLUT(n2094[0]), .ALUT(n2137[0]), .C0(n36639), 
          .Z(n2001[0]));
    ORCALUT4 i14600_4_lut (.A(n18149), .B(Save_Mux[0]), .C(n7158), .D(n50), 
            .Z(n18097)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14600_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1642_i4_3_lut (.A(n2735[3]), .B(RegBusB[11]), .C(n2811), 
            .Z(n2749[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i4_3_lut.init = 16'hcaca;
    PFUMX i14676 (.BLUT(n1177[6]), .ALUT(n1187[6]), .C0(n35705), .Z(n18176));
    ORCALUT4 i14312_2_lut_4_lut (.A(n38729), .B(ts[4]), .C(n41014), .D(RegAddrA_2__N_742), 
            .Z(n17806)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(941[12] 944[31])
    defparam i14312_2_lut_4_lut.init = 16'h0054;
    ORCALUT4 i5_4_lut (.A(ISet[1]), .B(n7), .C(mc[2]), .D(n8_adj_1945), 
            .Z(n34734)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i5_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_543 (.A(n31), .B(n38714), .C(IR[5]), .D(n38997), 
            .Z(n7)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_543.init = 16'h888a;
    ORCALUT4 i2_3_lut_adj_544 (.A(ISet[0]), .B(IR[5]), .C(n35159), .Z(n8_adj_1945)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_adj_544.init = 16'h5151;
    ORCALUT4 i3_4_lut_adj_545 (.A(n26), .B(n38764), .C(n38689), .D(n34500), 
            .Z(n35159)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_545.init = 16'h4000;
    CCU2B PC_5687_add_4_17 (.A0(PC[14]), .B0(n949), .C0(n559[14]), .D0(PC16_B[7]), 
          .A1(PC[15]), .B1(n949), .C1(n559[15]), .D1(PC16_B[7]), .CIN(n31371), 
          .S0(n34[14]), .S1(n34[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_17.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_17.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_17.INJECT1_0 = "NO";
    defparam PC_5687_add_4_17.INJECT1_1 = "NO";
    FD1S3AX RegBusA_r_i9 (.D(RegBusA[9]), .CK(clk_op), .Q(RegBusA_r[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i9.GSR = "ENABLED";
    ORCALUT4 i33490_2_lut_4_lut (.A(n38908), .B(n38766), .C(tstate[1]), 
            .D(n38773), .Z(n35767)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i33490_2_lut_4_lut.init = 16'h80ff;
    ORCALUT4 mux_1627_i4_3_lut (.A(F[3]), .B(PC[3]), .C(Set_BusB_To[2]), 
            .Z(n2702[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i4_3_lut.init = 16'hcaca;
    FD1S3AX RegBusA_r_i8 (.D(RegBusA[8]), .CK(clk_op), .Q(RegBusA_r[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i8.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i7 (.D(RegBusA[7]), .CK(clk_op), .Q(RegBusA_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i7.GSR = "ENABLED";
    FD1P3DX A__i11 (.D(n2001[10]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i11.GSR = "ENABLED";
    ORCALUT4 mux_1642_i3_3_lut (.A(n2735[2]), .B(RegBusB[10]), .C(n2811), 
            .Z(n2749[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_743 (.A(n41024), .B(n41026), .Z(n38977)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_743.init = 16'h2222;
    ORCALUT4 mux_1627_i3_3_lut (.A(F[2]), .B(PC[2]), .C(Set_BusB_To[2]), 
            .Z(n2702[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_654_3_lut (.A(n41024), .B(n41026), .C(ISet[1]), 
            .Z(n38888)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_654_3_lut.init = 16'h2020;
    CCU2B PC_5687_add_4_15 (.A0(PC[12]), .B0(n949), .C0(n559[12]), .D0(PC16_B[7]), 
          .A1(PC[13]), .B1(n949), .C1(n559[13]), .D1(PC16_B[7]), .CIN(n31370), 
          .COUT(n31371), .S0(n34[12]), .S1(n34[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_15.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_15.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_15.INJECT1_0 = "NO";
    defparam PC_5687_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 mux_1642_i2_3_lut (.A(n2735[1]), .B(RegBusB[9]), .C(n2811), 
            .Z(n2749[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1642_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1627_i2_3_lut (.A(F[1]), .B(PC[1]), .C(Set_BusB_To[2]), 
            .Z(n2702[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1627_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i8456_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(NextIs_XY_Fetch), .D(\mc[6] ), .Z(n11281)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i8456_2_lut_3_lut_4_lut.init = 16'hf0f6;
    ORCALUT4 i865_2_lut_rep_655_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(\mc[6] ), .Z(n38889)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i865_2_lut_rep_655_3_lut.init = 16'h0606;
    ORCALUT4 Set_BusA_To_3__N_1203_2__bdd_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(Set_BusA_To_3__N_1207[0]), .D(\ALU_Op_3__N_1274[3] ), .Z(n40803)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam Set_BusA_To_3__N_1203_2__bdd_4_lut.init = 16'h66f0;
    ORCALUT4 i20267_2_lut_3_lut_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(\mc[6] ), .Z(n6_adj_1946)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i20267_2_lut_3_lut_3_lut.init = 16'h0404;
    ORCALUT4 i20086_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .C(Set_BusA_To_3__N_1203[2]), 
            .D(m1_n_N_806), .Z(n1_adj_1947)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20086_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i2_2_lut_3_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .C(Pre_XY_F_M[1]), 
            .Z(n34788)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i20094_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .C(mc[3]), 
            .D(m1_n_N_806), .Z(n1_adj_1948)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20094_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i20090_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .C(mc[2]), 
            .D(m1_n_N_806), .Z(n1_adj_1949)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20090_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i20081_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .C(\ALU_Op_3__N_1274[3] ), 
            .D(m1_n_N_806), .Z(n1_adj_1950)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i20081_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i2_3_lut_4_lut_adj_546 (.A(n38910), .B(n41004), .C(F_Out_7__N_1639), 
            .D(Set_BusA_To_3__N_1203[2]), .Z(n31793)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(61[25:36])
    defparam i2_3_lut_4_lut_adj_546.init = 16'h2220;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(Pre_XY_F_M[0]), .B(\mc[6] ), 
            .C(m1_n_N_806), .D(Pre_XY_F_M[1]), .Z(n4_adj_1951)) /* synthesis lut_function=(A (C (D))+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'ha051;
    PFUMX i6991 (.BLUT(n17), .ALUT(F_Out[0]), .C0(n35680), .Z(n1154[0]));
    ORCALUT4 IR_6__bdd_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(Set_BusA_To_3__N_1207[0]), 
            .D(\mc[6] ), .Z(n40804)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam IR_6__bdd_4_lut.init = 16'hf066;
    ORCALUT4 i1_2_lut_rep_781 (.A(IR[1]), .B(n41030), .Z(n40994)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_781.init = 16'heeee;
    ORCALUT4 mux_1284_i6_3_lut (.A(n2114[5]), .B(RegBusC[5]), .C(n2296), 
            .Z(n2137[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_547 (.A(n23793), .B(Read_To_Reg_r[0]), .C(n4_adj_1923), 
            .D(n2885), .Z(clk_op_enable_38)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_547.init = 16'heafa;
    ORCALUT4 di_reg_0__bdd_3_lut (.A(di_reg[0]), .B(n40827), .C(Save_ALU_r), 
            .Z(n40828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_0__bdd_3_lut.init = 16'hcaca;
    PFUMX mux_276_i5 (.BLUT(n715[4]), .ALUT(F_Out[4]), .C0(n35745), .Z(n1154[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 Q_7__N_1612_0__bdd_4_lut (.A(Q_7__N_1612[0]), .B(n23643), .C(Q_7__N_1571), 
            .D(ALU_Op_r[3]), .Z(n40826)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_0__bdd_4_lut.init = 16'hc0aa;
    ORCALUT4 Q_7__N_1612_0__bdd_3_lut (.A(n37212), .B(ExchangeRp), .C(BusB[0]), 
            .Z(n40825)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1612_0__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 sram_addr_c_bdd_2_lut (.A(n40844), .B(clk_op_enable_227), .Z(n40845)) /* synthesis lut_function=(A (B)) */ ;
    defparam sram_addr_c_bdd_2_lut.init = 16'h8888;
    ORCALUT4 i20038_2_lut (.A(Auto_Wait_t1), .B(last_tstate), .Z(n8408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20038_2_lut.init = 16'h2222;
    ORCALUT4 n40804_bdd_4_lut (.A(n40804), .B(Set_BusA_To_3__N_1207[0]), 
            .C(Set_BusA_To_3__N_1203[2]), .D(\ALU_Op_3__N_1274[3] ), .Z(n40840)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;
    defparam n40804_bdd_4_lut.init = 16'hccac;
    ORCALUT4 i20598_2_lut_rep_748 (.A(Pre_XY_F_M[0]), .B(Pre_XY_F_M[1]), 
            .Z(n38982)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20598_2_lut_rep_748.init = 16'h8888;
    ORCALUT4 i2_3_lut_adj_548 (.A(n38713), .B(n35), .C(n38688), .Z(clk_op_enable_64)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_548.init = 16'hfefe;
    ORCALUT4 mux_1266_i5_3_lut (.A(di_reg[4]), .B(SP[4]), .C(Set_Addr_To[0]), 
            .Z(n2039[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i20562_4_lut (.A(n6788[0]), .B(clk_op_enable_227), .C(Save_ALU_N_1475), 
            .D(ISet[1]), .Z(n8406)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20562_4_lut.init = 16'hc088;
    ORCALUT4 i6022_2_lut_rep_656_3_lut (.A(Pre_XY_F_M[0]), .B(Pre_XY_F_M[1]), 
            .C(Pre_XY_F_M[2]), .Z(n38890)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6022_2_lut_rep_656_3_lut.init = 16'h7878;
    ORCALUT4 mux_1265_i5_3_lut (.A(TmpAddr[4]), .B(PC[4]), .C(n2284), 
            .Z(n2022[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i864_2_lut_rep_593_3_lut_4_lut (.A(Pre_XY_F_M[0]), .B(Pre_XY_F_M[1]), 
            .C(\mc[6] ), .D(Pre_XY_F_M[2]), .Z(n38827)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i864_2_lut_rep_593_3_lut_4_lut.init = 16'h0708;
    CCU2B PC_5687_add_4_13 (.A0(PC[10]), .B0(n949), .C0(n941), .D0(PC16_B[7]), 
          .A1(PC[11]), .B1(n949), .C1(n942), .D1(PC16_B[7]), .CIN(n31369), 
          .COUT(n31370), .S0(n34[10]), .S1(n34[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_13.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_13.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_13.INJECT1_0 = "NO";
    defparam PC_5687_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i192_2_lut_rep_750 (.A(n41014), .B(mc[5]), .Z(n38984)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i192_2_lut_rep_750.init = 16'h8888;
    PFUMX i14647 (.BLUT(n2578[1]), .ALUT(n18146), .C0(n36014), .Z(n18147));
    ORCALUT4 i1_2_lut_4_lut_3_lut (.A(ts[3]), .B(mc[5]), .C(\ALU_Op_3__N_1274[3] ), 
            .Z(n5_adj_1952)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h0808;
    ORCALUT4 mux_738_i5_4_lut (.A(n38713), .B(Save_Mux[4]), .C(n38688), 
            .D(n4_adj_1953), .Z(F_7__N_674[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_738_i5_4_lut.init = 16'hc5c0;
    PFUMX i14649 (.BLUT(n2578[0]), .ALUT(n18148), .C0(n36014), .Z(n18149));
    ORCALUT4 mux_192_i5_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[4]), 
            .D(IR[4]), .Z(n798[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_192_i6_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[5]), 
            .D(IR[5]), .Z(n798[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut (.A(n1154[4]), .B(n1165), .Z(n4_adj_1953)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    ORCALUT4 mux_192_i4_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[3]), 
            .D(Set_BusA_To_3__N_1207[0]), .Z(n798[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i4_3_lut_4_lut.init = 16'hf780;
    FD1S3AX RegBusA_r_i6 (.D(RegBusA[6]), .CK(clk_op), .Q(RegBusA_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i6.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i5 (.D(RegBusA[5]), .CK(clk_op), .Q(RegBusA_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i5.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i4 (.D(RegBusA[4]), .CK(clk_op), .Q(RegBusA_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i4.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i3 (.D(RegBusA[3]), .CK(clk_op), .Q(RegBusA_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i3.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i2 (.D(RegBusA[2]), .CK(clk_op), .Q(RegBusA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i2.GSR = "ENABLED";
    FD1P3DX A__i10 (.D(n2001[9]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41033), .Q(sram_addr_0_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i10.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i1 (.D(RegBusA[1]), .CK(clk_op), .Q(RegBusA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i1.GSR = "ENABLED";
    FD1S3AX RegAddrC_i2 (.D(RegAddrC_2__N_736[2]), .CK(clk_op), .Q(RegAddrC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i2.GSR = "ENABLED";
    FD1S3JX RegAddrC_i1 (.D(Set_Addr_To_2__N_1418[1]), .CK(clk_op), .PD(n34792), 
            .Q(RegAddrC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i1.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i2 (.D(RegAddrB_r_2__N_733[2]), .CK(clk_op), .Q(RegAddrB_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i2.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i1 (.D(Set_BusB_To[2]), .CK(clk_op), .Q(RegAddrB_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i1.GSR = "ENABLED";
    FD1P3DX A__i9 (.D(n2001[8]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41038), .Q(sram_addr_0_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i9.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i3 (.D(n37[3]), .CK(clk_op), .CD(led_c_6), .Q(ALU_Op_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i3.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i2 (.D(n32496), .CK(clk_op), .CD(n41034), .Q(ALU_Op_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i2.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i1 (.D(n32506), .CK(clk_op), .CD(n41038), .Q(ALU_Op_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i1.GSR = "ENABLED";
    FD1P3DX A__i8 (.D(n2001[7]), .SP(clk_op_enable_227), .CK(clk_op), 
            .CD(n41034), .Q(sram_addr_0_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i8.GSR = "ENABLED";
    ORCALUT4 mux_1284_i5_3_lut (.A(n2114[4]), .B(RegBusC[4]), .C(n2296), 
            .Z(n2137[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i5_3_lut.init = 16'hcaca;
    CCU2B PC_5687_add_4_11 (.A0(PC[8]), .B0(n949), .C0(n939), .D0(PC16_B[7]), 
          .A1(PC[9]), .B1(n949), .C1(n940), .D1(PC16_B[7]), .CIN(n31368), 
          .COUT(n31369), .S0(n34[8]), .S1(n34[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_11.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_11.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_11.INJECT1_0 = "NO";
    defparam PC_5687_add_4_11.INJECT1_1 = "NO";
    FD1S3AX RegAddrA_r_i2 (.D(RegAddrA_r_2__N_730[2]), .CK(clk_op), .Q(RegAddrA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i2.GSR = "ENABLED";
    ORCALUT4 ALU_Q_7__I_0_i5_3_lut (.A(n37523), .B(BusB[4]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_528[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i5_3_lut.init = 16'hcaca;
    FD1S3AX RegAddrA_r_i1 (.D(\Set_BusA_To[2] ), .CK(clk_op), .Q(RegAddrA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i1.GSR = "ENABLED";
    ORCALUT4 mux_1266_i4_3_lut (.A(di_reg[3]), .B(SP[3]), .C(Set_Addr_To[0]), 
            .Z(n2039[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i4_3_lut.init = 16'hcaca;
    PFUMX mux_1699_i6 (.BLUT(n2849[5]), .ALUT(n2866[5]), .C0(n2885), .Z(n2886[5]));
    ORCALUT4 i2_4_lut_adj_549 (.A(n5_adj_1955), .B(n4_adj_1956), .C(\mc[6] ), 
            .D(NextIs_XY_Fetch), .Z(n35055)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_549.init = 16'hccc4;
    CCU2B PC_5687_add_4_9 (.A0(PC[6]), .B0(n949), .C0(n937), .D0(PC16_B[6]), 
          .A1(PC[7]), .B1(n949), .C1(n938), .D1(PC16_B[7]), .CIN(n31367), 
          .COUT(n31368), .S0(n34[6]), .S1(n34[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_9.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_9.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_9.INJECT1_0 = "NO";
    defparam PC_5687_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 mux_1636_i7_4_lut (.A(SP[14]), .B(PC[14]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[6])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i7_4_lut.init = 16'h00ca;
    ORCALUT4 i1_2_lut_adj_550 (.A(m1_n_N_806), .B(last_tstate), .Z(n5_adj_1955)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_550.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_551 (.A(ts[0]), .B(led_c_5), .C(\ALU_Op_3__N_1274[3] ), 
            .D(\tstate[2] ), .Z(n4_adj_1956)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_551.init = 16'h5444;
    ORCALUT4 i2_4_lut_adj_552 (.A(Set_BusA_To_3__N_1203[2]), .B(No_BTR), 
            .C(n4_adj_1957), .D(last_mcycle), .Z(m1_n_N_806)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1291[36] 1293[84])
    defparam i2_4_lut_adj_552.init = 16'hffec;
    PFUMX mux_1699_i14 (.BLUT(n2849[13]), .ALUT(n2866[13]), .C0(n2885), 
          .Z(n2886[13]));
    FD1S3AX IncDecZ_767 (.D(n17974), .CK(clk_op), .Q(IncDecZ)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam IncDecZ_767.GSR = "ENABLED";
    ORCALUT4 mux_1695_i12_3_lut (.A(n855[11]), .B(Save_Mux[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i4_3_lut (.A(Save_Mux[3]), .B(n855[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i4_3_lut.init = 16'hcaca;
    PFUMX i33 (.BLUT(n13), .ALUT(n18), .C0(n36014), .Z(n16_adj_1958));
    FD1P3BX mcycle_i0_i0 (.D(n32438), .SP(last_tstate), .CK(clk_op), .PD(n41038), 
            .Q(\ALU_Op_3__N_1274[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i0.GSR = "ENABLED";
    ORCALUT4 i32124_3_lut (.A(RegBusA[8]), .B(RegBusA[0]), .C(\Set_BusA_To[0] ), 
            .Z(n35632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32124_3_lut.init = 16'hcaca;
    PFUMX i14678 (.BLUT(n1177[5]), .ALUT(n1187[5]), .C0(n35705), .Z(n18178));
    ORCALUT4 i32130_3_lut (.A(RegBusA[15]), .B(RegBusA[7]), .C(\Set_BusA_To[0] ), 
            .Z(n35638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32130_3_lut.init = 16'hcaca;
    PFUMX i62 (.BLUT(n12_adj_1959), .ALUT(n35456), .C0(n38773), .Z(n32));
    ORCALUT4 i1_2_lut_rep_483 (.A(Read_To_Reg_r[1]), .B(RegWEH_N_872), .Z(n38717)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i1_2_lut_rep_483.init = 16'h8888;
    ORCALUT4 i290_2_lut_rep_759 (.A(tstate[1]), .B(Auto_Wait_t1), .Z(n38993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam i290_2_lut_rep_759.init = 16'h2222;
    ORCALUT4 i14661_2_lut_3_lut_4_lut (.A(tstate[1]), .B(Auto_Wait_t1), 
            .C(n38690), .D(Read_To_Reg_r[0]), .Z(clk_op_enable_305)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam i14661_2_lut_3_lut_4_lut.init = 16'h22f2;
    FD1P3DX dout_i1 (.D(n18186), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41034), .Q(cpu_dout[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i1.GSR = "ENABLED";
    ORCALUT4 BTR_r_I_100_3_lut (.A(BTR_r_N_970), .B(No_BTR), .C(I_BTR), 
            .Z(BTR_r_N_968)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(516[32:67])
    defparam BTR_r_I_100_3_lut.init = 16'h3232;
    ORCALUT4 i32133_3_lut (.A(RegBusA[14]), .B(RegBusA[6]), .C(\Set_BusA_To[0] ), 
            .Z(n35641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32133_3_lut.init = 16'hcaca;
    PFUMX i14632 (.BLUT(n2578[7]), .ALUT(n18131), .C0(n36014), .Z(n18132));
    ORCALUT4 i32106_3_lut (.A(RegBusA[13]), .B(RegBusA[5]), .C(\Set_BusA_To[0] ), 
            .Z(n35614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32106_3_lut.init = 16'hcaca;
    PFUMX i309 (.BLUT(n1145), .ALUT(n1172), .C0(n35834), .Z(n1228)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1P3DX XY_State__i1 (.D(n18297), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n41034), .Q(XY_State[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i1.GSR = "ENABLED";
    ORCALUT4 i20515_2_lut (.A(n2197[6]), .B(NextIs_XY_Fetch), .Z(n2210[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20515_2_lut.init = 16'h2222;
    ORCALUT4 IR_7__I_0_1614_i15_2_lut_rep_615_3_lut_4_lut (.A(n40994), .B(n39002), 
            .C(n38933), .D(n39006), .Z(n38849)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1614_i15_2_lut_rep_615_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i32109_3_lut (.A(RegBusA[12]), .B(RegBusA[4]), .C(\Set_BusA_To[0] ), 
            .Z(n35617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32109_3_lut.init = 16'hcaca;
    PFUMX i14637 (.BLUT(n2578[4]), .ALUT(n18136), .C0(n36014), .Z(n18137));
    ORCALUT4 i2_4_lut_adj_553 (.A(\tstate[2] ), .B(n10599), .C(n7_adj_1960), 
            .D(n5_adj_1952), .Z(clk_op_enable_306)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_553.init = 16'hffec;
    ORCALUT4 i32118_3_lut (.A(RegBusA[11]), .B(RegBusA[3]), .C(\Set_BusA_To[0] ), 
            .Z(n35626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32118_3_lut.init = 16'hcaca;
    CCU2B PC_5687_add_4_7 (.A0(PC[4]), .B0(n949), .C0(n935), .D0(PC16_B[4]), 
          .A1(PC[5]), .B1(n949), .C1(n936), .D1(PC16_B[5]), .CIN(n31366), 
          .COUT(n31367), .S0(n34[4]), .S1(n34[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_7.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_7.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_7.INJECT1_0 = "NO";
    defparam PC_5687_add_4_7.INJECT1_1 = "NO";
    PFUMX i14639 (.BLUT(n2578[5]), .ALUT(n18138), .C0(n36014), .Z(n18139));
    ORCALUT4 i20_3_lut (.A(n38756), .B(Halt_FF), .C(n38855), .Z(n7_adj_1960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i20_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_454_4_lut (.A(Read_To_Reg_r[1]), .B(RegWEH_N_872), 
            .C(Read_To_Reg_r[0]), .D(n33756), .Z(n38688)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i2_3_lut_rep_454_4_lut.init = 16'h8000;
    PFUMX i14641 (.BLUT(n2578[6]), .ALUT(n18140), .C0(n36014), .Z(n18141));
    ORCALUT4 i32112_3_lut (.A(RegBusA[10]), .B(RegBusA[2]), .C(\Set_BusA_To[0] ), 
            .Z(n35620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32112_3_lut.init = 16'hcaca;
    ORCALUT4 i32115_3_lut (.A(RegBusA[9]), .B(RegBusA[1]), .C(\Set_BusA_To[0] ), 
            .Z(n35623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32115_3_lut.init = 16'hcaca;
    ORCALUT4 RegAddrA_2__I_0_i3_4_lut (.A(RegAddrA_2__N_472[2]), .B(Alternate), 
            .C(n17806), .D(n38664), .Z(RegAddrA[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i3_4_lut.init = 16'hccca;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(ALU_Op_r[3]), .B(n41003), .C(n38872), 
            .D(ALU_Op_r[1]), .Z(n33705)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i14746_3_lut (.A(n29[1]), .B(di_reg[1]), .C(n10599), .Z(n18246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14746_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i2_4_lut (.A(SP16[1]), .B(bus_din[1]), .C(n38855), 
            .D(n38984), .Z(n29[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_494_i1_3_lut (.A(Save_Mux[0]), .B(ID16[0]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i1_3_lut.init = 16'hcaca;
    PFUMX i14645 (.BLUT(n2578[3]), .ALUT(n18144), .C0(n36014), .Z(n18145));
    ORCALUT4 mux_1695_i13_3_lut (.A(n855[12]), .B(Save_Mux[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i5_3_lut (.A(Save_Mux[4]), .B(n855[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i4_3_lut (.A(TmpAddr[3]), .B(PC[3]), .C(n2284), 
            .Z(n2022[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i4_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i6_3_lut (.A(n37224), .B(BusB[5]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_528[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i3_3_lut (.A(Save_Mux[2]), .B(ID16[2]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i2_3_lut (.A(Save_Mux[1]), .B(ID16[1]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i14744_3_lut (.A(n29[2]), .B(di_reg[2]), .C(n10599), .Z(n18244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14744_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_456_4_lut (.A(Read_To_Reg_r[1]), .B(RegWEH_N_872), 
            .C(n16562), .D(Read_To_Reg_r[2]), .Z(n38690)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i2_3_lut_rep_456_4_lut.init = 16'h8000;
    PFUMX i41_adj_554 (.BLUT(n35444), .ALUT(n33705), .C0(n38711), .Z(n35));
    ORCALUT4 i20330_2_lut_3_lut_4_lut (.A(mc[4]), .B(n38903), .C(n38946), 
            .D(n38902), .Z(n4690[0])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20330_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 mux_494_i5_3_lut (.A(Save_Mux[4]), .B(ID16[4]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_555 (.A(n40994), .B(n39002), .C(n40996), 
            .D(n39007), .Z(n15_adj_1961)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_adj_555.init = 16'hffbf;
    ORCALUT4 sram_addr_c_bdd_2_lut_33596_3_lut_4_lut (.A(mc[4]), .B(n38903), 
            .C(n38652), .D(n38902), .Z(n37122)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam sram_addr_c_bdd_2_lut_33596_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 mux_1284_i4_3_lut (.A(n2114[3]), .B(RegBusC[3]), .C(n2296), 
            .Z(n2137[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i4_3_lut (.A(Save_Mux[3]), .B(ID16[3]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i3_4_lut (.A(SP16[2]), .B(bus_din[2]), .C(n38855), 
            .D(n38984), .Z(n29[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1266_i2_3_lut (.A(di_reg[1]), .B(SP[1]), .C(Set_Addr_To[0]), 
            .Z(n2039[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1636_i8_4_lut (.A(SP[15]), .B(PC[15]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[7])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i8_4_lut.init = 16'h00ca;
    ORCALUT4 i13910_2_lut_3_lut_4_lut (.A(mc[4]), .B(n38903), .C(n38947), 
            .D(n38902), .Z(Set_BusA_To_3__N_1361[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i13910_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i1_2_lut_rep_474_3_lut_4_lut (.A(mc[4]), .B(n38903), .C(n38830), 
            .D(n38829), .Z(n38708)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut_rep_474_3_lut_4_lut.init = 16'h2022;
    PFUMX mux_1699_i5 (.BLUT(n2849[4]), .ALUT(n2866[4]), .C0(n2885), .Z(n2886[4]));
    ORCALUT4 i14736_3_lut (.A(n29[6]), .B(di_reg[6]), .C(n10599), .Z(n18236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14736_3_lut.init = 16'hcaca;
    PFUMX mux_1699_i13 (.BLUT(n2849[12]), .ALUT(n2866[12]), .C0(n2885), 
          .Z(n2886[12]));
    ORCALUT4 mux_212_i7_4_lut (.A(SP16[6]), .B(bus_din[6]), .C(n38855), 
            .D(n38984), .Z(n29[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i7_4_lut.init = 16'hcac0;
    ORCALUT4 i14734_3_lut (.A(n29[7]), .B(di_reg[7]), .C(n10599), .Z(n18234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14734_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i8_4_lut (.A(SP16[7]), .B(bus_din[7]), .C(n38855), 
            .D(n38984), .Z(n29[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i8_4_lut.init = 16'hcac0;
    ORCALUT4 i14719_4_lut (.A(n10569), .B(n38855), .C(n34085), .D(n38984), 
            .Z(clk_op_enable_132)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14719_4_lut.init = 16'hbbba;
    PFUMX i14680 (.BLUT(n1177[4]), .ALUT(n1187[4]), .C0(n35705), .Z(n18180));
    ORCALUT4 i287_3_lut (.A(n1154[2]), .B(Save_Mux[2]), .C(n38688), .Z(n1172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i287_3_lut.init = 16'hcaca;
    ORCALUT4 i7000_3_lut (.A(IntE_FF2), .B(Fp[2]), .C(n15972), .Z(n1145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i7000_3_lut.init = 16'hcaca;
    ORCALUT4 i6_4_lut (.A(n38730), .B(n9_adj_1962), .C(n33964), .D(n10_adj_1963), 
            .Z(n35456)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i6_4_lut.init = 16'hffdf;
    ORCALUT4 i12_4_lut (.A(n38773), .B(n6_adj_1964), .C(Fp[1]), .D(n34223), 
            .Z(n12_adj_1959)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i12_4_lut.init = 16'hbf3f;
    PFUMX mux_1555_i2 (.BLUT(n35623), .ALUT(n35625), .C0(n35997), .Z(BusA_7__N_769[1]));
    PFUMX mux_1555_i3 (.BLUT(n35620), .ALUT(n35622), .C0(n35997), .Z(BusA_7__N_769[2]));
    PFUMX mux_1555_i4 (.BLUT(n35626), .ALUT(n35628), .C0(n35997), .Z(BusA_7__N_769[3]));
    ORCALUT4 mux_494_i6_3_lut (.A(Save_Mux[5]), .B(ID16[5]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i14732_4_lut (.A(SP16[8]), .B(di_reg[0]), .C(n10569), .D(n38984), 
            .Z(n18232)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14732_4_lut.init = 16'hcac0;
    PFUMX mux_1555_i5 (.BLUT(n35617), .ALUT(n35619), .C0(n35997), .Z(BusA_7__N_769[4]));
    PFUMX mux_1555_i6 (.BLUT(n35614), .ALUT(n35616), .C0(n35997), .Z(BusA_7__N_769[5]));
    ORCALUT4 i17_4_lut (.A(ISet[0]), .B(n38673), .C(ISet[1]), .D(n34604), 
            .Z(n6_adj_1965)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i17_4_lut.init = 16'hc0c5;
    ORCALUT4 mux_1695_i14_3_lut (.A(n855[13]), .B(Save_Mux[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i14_3_lut.init = 16'hcaca;
    PFUMX mux_1555_i7 (.BLUT(n35641), .ALUT(n35643), .C0(n35997), .Z(BusA_7__N_769[6]));
    ORCALUT4 mux_1695_i6_3_lut (.A(Save_Mux[5]), .B(n855[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i20222_3_lut (.A(\Set_BusA_To[0] ), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n21[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20222_3_lut.init = 16'hc8c8;
    PFUMX mux_1555_i8 (.BLUT(n35638), .ALUT(n35640), .C0(n35997), .Z(BusA_7__N_769[7]));
    ORCALUT4 mux_201_i2_4_lut (.A(SP16[1]), .B(RegBusC[1]), .C(n38768), 
            .D(n925), .Z(n855[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i2_4_lut.init = 16'hcac0;
    PFUMX mux_1555_i1 (.BLUT(n35632), .ALUT(n35634), .C0(n35997), .Z(BusA_7__N_769[0]));
    FD1P3DX dout_i2 (.D(n18184), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41033), .Q(cpu_dout[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i2.GSR = "ENABLED";
    FD1P3DX dout_i3 (.D(n18182), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41033), .Q(cpu_dout[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i3.GSR = "ENABLED";
    FD1P3DX dout_i4 (.D(n18180), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41033), .Q(cpu_dout[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i4.GSR = "ENABLED";
    FD1P3DX dout_i5 (.D(n18178), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41033), .Q(cpu_dout[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i5.GSR = "ENABLED";
    FD1P3DX dout_i6 (.D(n18176), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41033), .Q(cpu_dout[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i6.GSR = "ENABLED";
    FD1P3DX dout_i7 (.D(n18174), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41034), .Q(cpu_dout[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i7.GSR = "ENABLED";
    PFUMX mux_1699_i4 (.BLUT(n2849[3]), .ALUT(n2866[3]), .C0(n2885), .Z(n2886[3]));
    ORCALUT4 i33494_2_lut_4_lut (.A(n38848), .B(n24220), .C(n38770), .D(n38785), 
            .Z(clk_op_enable_321)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i33494_2_lut_4_lut.init = 16'hbf00;
    ORCALUT4 ALU_Q_7__I_0_i7_3_lut (.A(n37276), .B(BusB[6]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_528[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i7_3_lut.init = 16'hcaca;
    PFUMX mux_1699_i12 (.BLUT(n2849[11]), .ALUT(n2866[11]), .C0(n2885), 
          .Z(n2886[11]));
    ORCALUT4 IR_7__I_0_1637_i15_2_lut_rep_577_3_lut_4_lut (.A(n40994), .B(n39002), 
            .C(n38933), .D(n39004), .Z(n38811)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1637_i15_2_lut_rep_577_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 mux_493_i1_3_lut (.A(Save_Mux[0]), .B(ID16[8]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i3_4_lut (.A(SP16[2]), .B(RegBusC[2]), .C(n38768), 
            .D(n925), .Z(n855[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i3_4_lut.init = 16'hcac0;
    ORCALUT4 RegAddrA_2__I_0_i2_3_lut_4_lut (.A(RegAddrA_2__N_476), .B(n38969), 
            .C(IncDec_16[1]), .D(RegAddrA_2__N_472[1]), .Z(RegAddrA[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[11:95])
    defparam RegAddrA_2__I_0_i2_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i20590_4_lut (.A(n900[4]), .B(n15972), .C(F[4]), .D(n17828), 
            .Z(n1144)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i20590_4_lut.init = 16'hc088;
    ORCALUT4 mux_1266_i1_3_lut (.A(di_reg[0]), .B(SP[0]), .C(Set_Addr_To[0]), 
            .Z(n2039[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i1_3_lut (.A(TmpAddr[0]), .B(PC[0]), .C(n2284), 
            .Z(n2022[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i1_3_lut (.A(n2114[0]), .B(RegBusC[0]), .C(n2296), 
            .Z(n2137[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i20516_2_lut (.A(n2197[5]), .B(NextIs_XY_Fetch), .Z(n2210[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20516_2_lut.init = 16'heeee;
    ORCALUT4 mux_493_i3_3_lut (.A(Save_Mux[2]), .B(ID16[10]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i3_3_lut.init = 16'hcaca;
    PFUMX i14682 (.BLUT(n1177[3]), .ALUT(n1187[3]), .C0(n35705), .Z(n18182));
    ORCALUT4 mux_493_i2_3_lut (.A(Save_Mux[1]), .B(ID16[9]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i20658_2_lut_rep_673_3_lut (.A(IR[1]), .B(IR[0]), .C(n41018), 
            .Z(n38907)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20658_2_lut_rep_673_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_666_3_lut_4_lut (.A(n41016), .B(n41030), .C(n41020), 
            .D(n41018), .Z(n38900)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_666_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_689_3_lut_4_lut (.A(n41016), .B(IR[0]), .C(n41020), 
            .D(n41018), .Z(n38923)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_689_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 mux_1266_i16_3_lut (.A(ACC[7]), .B(SP[15]), .C(Set_Addr_To[0]), 
            .Z(n2039[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i2_3_lut (.A(TmpAddr[1]), .B(PC[1]), .C(n2284), 
            .Z(n2022[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i2_3_lut (.A(n2114[1]), .B(RegBusC[1]), .C(n2296), 
            .Z(n2137[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i3_3_lut (.A(TmpAddr[2]), .B(PC[2]), .C(n2284), 
            .Z(n2022[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i15_3_lut (.A(n2057[14]), .B(RegBusC[14]), .C(n2296), 
            .Z(n2137[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i15_3_lut (.A(TmpAddr[14]), .B(PC[14]), .C(n2284), 
            .Z(n2022[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1266_i15_3_lut (.A(ACC[6]), .B(SP[14]), .C(Set_Addr_To[0]), 
            .Z(n2039[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1266_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1284_i3_3_lut (.A(n2114[2]), .B(RegBusC[2]), .C(n2296), 
            .Z(n2137[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i20163_4_lut (.A(n1_adj_1948), .B(n11281), .C(Pre_XY_F_M[0]), 
            .D(n38827), .Z(n2210[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20163_4_lut.init = 16'h0322;
    ORCALUT4 mux_1284_i16_3_lut (.A(n2057[15]), .B(RegBusC[15]), .C(n2296), 
            .Z(n2137[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1284_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i11_3_lut (.A(TmpAddr[10]), .B(PC[10]), .C(n2284), 
            .Z(n2022[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i33266_3_lut (.A(n2022[0]), .B(n2039[0]), .C(n2290), .Z(n2094[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33266_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1265_i16_3_lut (.A(TmpAddr[15]), .B(PC[15]), .C(n2284), 
            .Z(n2022[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1265_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i7_3_lut (.A(Save_Mux[6]), .B(ID16[6]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i5_3_lut (.A(Save_Mux[4]), .B(ID16[12]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i4_3_lut (.A(Save_Mux[3]), .B(ID16[11]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i20158_4_lut (.A(n1_adj_1949), .B(n11281), .C(Pre_XY_F_M[0]), 
            .D(n38827), .Z(n2210[3])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20158_4_lut.init = 16'h3022;
    ORCALUT4 i33271_3_lut (.A(n2022[15]), .B(n2039[15]), .C(n2290), .Z(n2094[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33271_3_lut.init = 16'hcaca;
    ORCALUT4 i20154_4_lut (.A(n1_adj_1947), .B(n11285), .C(Pre_XY_F_M[0]), 
            .D(n38889), .Z(n2210[2])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20154_4_lut.init = 16'h0322;
    ORCALUT4 i20151_4_lut (.A(n1_adj_1950), .B(n11285), .C(Pre_XY_F_M[0]), 
            .D(n38889), .Z(n2210[1])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1287[32] 1314[32])
    defparam i20151_4_lut.init = 16'h3022;
    ORCALUT4 i33273_3_lut (.A(n2022[14]), .B(n2039[14]), .C(n2290), .Z(n2094[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33273_3_lut.init = 16'hcaca;
    ORCALUT4 i33275_3_lut (.A(n2022[13]), .B(n2039[13]), .C(n2290), .Z(n2094[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33275_3_lut.init = 16'hcaca;
    ORCALUT4 i5_4_lut_adj_556 (.A(n38855), .B(n38926), .C(n38919), .D(n38918), 
            .Z(n12_adj_1966)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_4_lut_adj_556.init = 16'h0008;
    ORCALUT4 RegAddrA_2__I_32_i3_4_lut (.A(RegAddrA_r[2]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_742), .D(n38712), .Z(RegAddrA_2__N_472[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam RegAddrA_2__I_32_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 i14730_4_lut (.A(SP16[9]), .B(di_reg[1]), .C(n10569), .D(n38984), 
            .Z(n18230)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14730_4_lut.init = 16'hcac0;
    ORCALUT4 i14728_4_lut (.A(SP16[10]), .B(di_reg[2]), .C(n10569), .D(n38984), 
            .Z(n18228)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14728_4_lut.init = 16'hcac0;
    ORCALUT4 i33277_3_lut (.A(n2022[12]), .B(n2039[12]), .C(n2290), .Z(n2094[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33277_3_lut.init = 16'hcaca;
    ORCALUT4 i20664_3_lut (.A(Read_To_Reg), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n21[4])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20664_3_lut.init = 16'hc8c8;
    ORCALUT4 i2_3_lut_adj_557 (.A(n2541), .B(Read_To_Acc), .C(last_tstate), 
            .Z(n34962)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i2_3_lut_adj_557.init = 16'h2020;
    ORCALUT4 i33279_3_lut (.A(n2022[11]), .B(n2039[11]), .C(n2290), .Z(n2094[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33279_3_lut.init = 16'hcaca;
    ORCALUT4 i33281_3_lut (.A(n2022[10]), .B(n14), .C(n2290), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33281_3_lut.init = 16'hcaca;
    ORCALUT4 i33283_3_lut (.A(n2022[9]), .B(n2039[9]), .C(n2290), .Z(n2094[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33283_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i2_rep_799 (.D(n957), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41018)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2_rep_799.GSR = "ENABLED";
    L6MUX21 mux_1622_i2 (.D0(n2723[1]), .D1(n2762[1]), .SD(n35977), .Z(BusB_7__N_761[1]));
    ORCALUT4 i1_4_lut_adj_558 (.A(n34366), .B(n34027), .C(n34438), .D(n38727), 
            .Z(n4_adj_1934)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_558.init = 16'h8000;
    L6MUX21 mux_1622_i3 (.D0(n2723[2]), .D1(n2762[2]), .SD(n35977), .Z(BusB_7__N_761[2]));
    ORCALUT4 i33285_3_lut (.A(n2022[8]), .B(n2039[8]), .C(n2290), .Z(n2094[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33285_3_lut.init = 16'hcaca;
    ORCALUT4 i20665_3_lut (.A(\Set_BusA_To[2] ), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n21[2])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20665_3_lut.init = 16'hc8c8;
    L6MUX21 mux_1622_i4 (.D0(n2723[3]), .D1(n2762[3]), .SD(n35977), .Z(BusB_7__N_761[3]));
    ORCALUT4 i20666_3_lut (.A(\Set_BusA_To[1] ), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n21[1])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20666_3_lut.init = 16'hc8c8;
    L6MUX21 mux_1622_i5 (.D0(n2723[4]), .D1(n2762[4]), .SD(n35977), .Z(BusB_7__N_761[4]));
    ORCALUT4 i14726_4_lut (.A(SP16[11]), .B(di_reg[3]), .C(n10569), .D(n38984), 
            .Z(n18226)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14726_4_lut.init = 16'hcac0;
    ORCALUT4 i33287_3_lut (.A(n2022[7]), .B(n2039[7]), .C(n2290), .Z(n2094[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33287_3_lut.init = 16'hcaca;
    ORCALUT4 i14724_4_lut (.A(SP16[12]), .B(di_reg[4]), .C(n10569), .D(n38984), 
            .Z(n18224)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14724_4_lut.init = 16'hcac0;
    L6MUX21 mux_1622_i6 (.D0(n2723[5]), .D1(n2762[5]), .SD(n35977), .Z(BusB_7__N_761[5]));
    ORCALUT4 i33289_3_lut (.A(n2022[6]), .B(n2039[6]), .C(n2290), .Z(n2094[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33289_3_lut.init = 16'hcaca;
    ORCALUT4 i33291_3_lut (.A(n2022[5]), .B(n2039[5]), .C(n2290), .Z(n2094[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33291_3_lut.init = 16'hcaca;
    L6MUX21 mux_1622_i7 (.D0(n2723[6]), .D1(n2762[6]), .SD(n35977), .Z(BusB_7__N_761[6]));
    ORCALUT4 i33293_3_lut (.A(n2022[4]), .B(n2039[4]), .C(n2290), .Z(n2094[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33293_3_lut.init = 16'hcaca;
    ORCALUT4 i33295_3_lut (.A(n2022[3]), .B(n2039[3]), .C(n2290), .Z(n2094[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33295_3_lut.init = 16'hcaca;
    ORCALUT4 i33297_3_lut (.A(n2022[2]), .B(n10), .C(n2290), .Z(n2094[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33297_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_adj_559 (.A(IR[2]), .B(n38930), .C(n38888), 
            .D(\IR[7] ), .Z(n2390)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_adj_559.init = 16'h4000;
    L6MUX21 mux_1622_i8 (.D0(n2723[7]), .D1(n2762[7]), .SD(n35977), .Z(BusB_7__N_761[7]));
    ORCALUT4 i33299_3_lut (.A(n2022[1]), .B(n2039[1]), .C(n2290), .Z(n2094[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33299_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i15_3_lut (.A(n855[14]), .B(Save_Mux[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i7_3_lut (.A(Save_Mux[6]), .B(n855[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i14722_4_lut (.A(SP16[13]), .B(di_reg[5]), .C(n10569), .D(n38984), 
            .Z(n18222)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14722_4_lut.init = 16'hcac0;
    ORCALUT4 ALU_Q_7__I_0_i8_3_lut (.A(n37337), .B(BusB[7]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_528[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i8_3_lut.init = 16'hcaca;
    L6MUX21 mux_1622_i1 (.D0(n2723[0]), .D1(n2762[0]), .SD(n35977), .Z(BusB_7__N_761[0]));
    ORCALUT4 mux_493_i7_3_lut (.A(Save_Mux[6]), .B(ID16[14]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i14720_4_lut (.A(SP16[14]), .B(di_reg[6]), .C(n10569), .D(n38984), 
            .Z(n18220)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14720_4_lut.init = 16'hcac0;
    ORCALUT4 i3_3_lut_4_lut (.A(n38821), .B(n38822), .C(n34366), .D(n38744), 
            .Z(n8_adj_1968)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'he000;
    ORCALUT4 mux_493_i6_3_lut (.A(Save_Mux[5]), .B(ID16[13]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_adj_560 (.A(RegAddrA_2__N_476), .B(IncDec_16[0]), 
            .C(IncDec_16[1]), .Z(RegAddrA_2__N_742)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_560.init = 16'h2020;
    ORCALUT4 i7013_2_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38932), .C(n41014), 
            .D(last_tstate), .Z(clk_op_enable_227)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i7013_2_lut_4_lut.init = 16'h5700;
    PFUMX i35473 (.BLUT(n40840), .ALUT(n40803), .C0(F_Out_7__N_1639), 
          .Z(n40841));
    ORCALUT4 i2_2_lut_2_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38932), 
            .C(ts[3]), .D(n15972), .Z(n6_adj_1964)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i2_2_lut_2_lut_4_lut.init = 16'h5700;
    PFUMX i35475 (.BLUT(n40843), .ALUT(n31), .C0(ISet[1]), .Z(n40844));
    PFUMX i35462 (.BLUT(n40828), .ALUT(n40825), .C0(n35822), .Z(Save_Mux[0]));
    ORCALUT4 i1_2_lut_4_lut_adj_561 (.A(\ALU_Op_3__N_1274[3] ), .B(n38932), 
            .C(ts[3]), .D(n5_adj_1969), .Z(n36_adj_1970)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i1_2_lut_4_lut_adj_561.init = 16'ha8ff;
    PFUMX i35460 (.BLUT(n1898[0]), .ALUT(n40826), .C0(n38859), .Z(n40827));
    ORCALUT4 mux_494_i8_3_lut (.A(Save_Mux[7]), .B(ID16[7]), .C(RegWEH_N_892), 
            .Z(RegDIL_7__N_753[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i8_3_lut.init = 16'hcaca;
    ORCALUT4 n33964_bdd_3_lut_4_lut (.A(ALU_Op_r[1]), .B(n38818), .C(n38886), 
            .D(n38872), .Z(n37955)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam n33964_bdd_3_lut_4_lut.init = 16'hf077;
    ORCALUT4 i2_2_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38932), .C(ts[3]), 
            .D(n38916), .Z(n9_adj_1962)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i2_2_lut_4_lut.init = 16'ha8ff;
    ORCALUT4 mux_493_i8_3_lut (.A(Save_Mux[7]), .B(ID16[15]), .C(RegWEH_N_892), 
            .Z(RegDIH_7__N_744[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1695_i16_3_lut (.A(n855[15]), .B(Save_Mux[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i33502_2_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38932), 
            .C(ts[3]), .D(n10599), .Z(n35733)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i33502_2_lut_4_lut.init = 16'hffa8;
    ORCALUT4 mux_1695_i8_3_lut (.A(Save_Mux[7]), .B(n855[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2866[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1695_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i14664_4_lut (.A(n38688), .B(n38685), .C(n36_adj_1970), .D(n6_adj_1971), 
            .Z(clk_op_enable_131)) /* synthesis lut_function=(A+!(B (C)+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14664_4_lut.init = 16'hbfae;
    ORCALUT4 i15_4_lut (.A(n17_adj_1972), .B(n30), .C(n26_adj_1973), .D(n18_adj_1974), 
            .Z(IncDecZ_N_977)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i15_4_lut.init = 16'hfffe;
    PFUMX i32122 (.BLUT(n4_adj_1919), .ALUT(n5), .C0(tstates[1]), .Z(n35630));
    ORCALUT4 mux_1636_i2_4_lut (.A(SP[9]), .B(PC[9]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[1])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i2_4_lut.init = 16'h00ca;
    PFUMX mux_1647_i2 (.BLUT(n2702[1]), .ALUT(n2749[1]), .C0(n35979), 
          .Z(n2762[1]));
    PFUMX mux_1647_i3 (.BLUT(n2702[2]), .ALUT(n2749[2]), .C0(n35979), 
          .Z(n2762[2]));
    ORCALUT4 i14479_4_lut (.A(IncDecZ), .B(F_Out[6]), .C(n38760), .D(Save_ALU_r), 
            .Z(n17973)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam i14479_4_lut.init = 16'hcaaa;
    ORCALUT4 i285_3_lut (.A(n1154[6]), .B(Save_Mux[6]), .C(n38688), .Z(n1170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i285_3_lut.init = 16'hcaca;
    ORCALUT4 RegAddrA_2__I_0_i1_4_lut (.A(RegAddrA_2__N_739[0]), .B(IncDec_16[0]), 
            .C(n38664), .D(RegAddrA_2__N_742), .Z(RegAddrA[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i1_4_lut.init = 16'hcfca;
    ORCALUT4 i6996_4_lut (.A(n13_adj_1975), .B(Fp[6]), .C(n15972), .D(n14_adj_1976), 
            .Z(n1143)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6996_4_lut.init = 16'hc0c5;
    ORCALUT4 i14662_4_lut (.A(n32178), .B(n1154[0]), .C(n38688), .D(n35676), 
            .Z(n18162)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14662_4_lut.init = 16'hcacc;
    ORCALUT4 mux_201_i9_4_lut (.A(SP16[8]), .B(RegBusC[8]), .C(n38768), 
            .D(n925), .Z(n855[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i9_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i10_4_lut (.A(SP16[9]), .B(RegBusC[9]), .C(n38768), 
            .D(n925), .Z(n855[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i10_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i11_4_lut (.A(SP16[10]), .B(\RegBusC[10] ), .C(n38768), 
            .D(n925), .Z(n855[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i11_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i1_4_lut (.A(SP16[0]), .B(RegBusC[0]), .C(n38768), 
            .D(n925), .Z(n855[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i32082_4_lut (.A(n38782), .B(n34027), .C(n34438), .D(n35143), 
            .Z(n35584)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32082_4_lut.init = 16'h8000;
    PFUMX mux_1647_i4 (.BLUT(n2702[3]), .ALUT(n2749[3]), .C0(n35979), 
          .Z(n2762[3]));
    ORCALUT4 i3_4_lut_adj_562 (.A(ALU_Op_r[0]), .B(ALU_Op_r[3]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[1]), .Z(n34811)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[61:80])
    defparam i3_4_lut_adj_562.init = 16'hfff7;
    ORCALUT4 i9326_4_lut_4_lut (.A(n38931), .B(n38669), .C(n9781), .D(n38997), 
            .Z(n12273)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i9326_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i1_4_lut_adj_563 (.A(n14821), .B(n38729), .C(n41014), .D(ts[4]), 
            .Z(n34219)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_4_lut_adj_563.init = 16'hbbba;
    ORCALUT4 i11680_3_lut (.A(RegWEH_N_892), .B(IncDec_16[0]), .C(IncDec_16[1]), 
            .Z(n14821)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i11680_3_lut.init = 16'h2a2a;
    ORCALUT4 i2_4_lut_adj_564 (.A(Read_To_Reg_r[2]), .B(n16562), .C(Read_To_Reg_r[1]), 
            .D(RegWEH_N_872), .Z(n33986)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (D)))) */ ;
    defparam i2_4_lut_adj_564.init = 16'h4c00;
    ORCALUT4 i14718_4_lut (.A(SP16[15]), .B(di_reg[7]), .C(n10569), .D(n38984), 
            .Z(n18218)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14718_4_lut.init = 16'hcac0;
    ORCALUT4 i21063_2_lut_rep_433_4_lut_4_lut (.A(n38931), .B(Jump), .C(n38809), 
            .D(n38681), .Z(n38667)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;
    defparam i21063_2_lut_rep_433_4_lut_4_lut.init = 16'hddcd;
    ORCALUT4 PC16_B_15__I_0_i5_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[4]), .D(JumpE_N_1512), .Z(PC16_B[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 PC16_B_15__I_0_i8_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[7]), .D(JumpE_N_1512), .Z(PC16_B[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i1_2_lut_adj_565 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .Z(n16562)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i1_2_lut_adj_565.init = 16'h2222;
    ORCALUT4 i14309_3_lut_4_lut_4_lut (.A(n38931), .B(Jump), .C(n24402), 
            .D(n38681), .Z(n17803)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i14309_3_lut_4_lut_4_lut.init = 16'hdccc;
    ORCALUT4 i3_4_lut_4_lut (.A(n38931), .B(n38855), .C(n5_adj_1969), 
            .D(n35048), .Z(n35444)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h0010;
    ORCALUT4 PC16_B_15__I_0_i6_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[5]), .D(JumpE_N_1512), .Z(PC16_B[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 PC16_B_15__I_0_i4_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[3]), .D(JumpE_N_1512), .Z(PC16_B[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 PC16_B_15__I_0_i3_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[2]), .D(JumpE_N_1512), .Z(PC16_B[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i2_3_lut_rep_526_4_lut_4_lut (.A(n38931), .B(n38989), .C(n38898), 
            .D(n38900), .Z(n38760)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_rep_526_4_lut_4_lut.init = 16'h0004;
    ORCALUT4 PC16_B_15__I_0_i2_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[1]), .D(JumpE_N_1512), .Z(PC16_B[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(n38931), .B(\tstate[2] ), .C(RstP_N_1517), 
            .D(n38908), .Z(n34085)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i16367_4_lut_4_lut (.A(n38931), .B(n19), .C(Set_BusA_To_3__N_1025[3]), 
            .D(n12303), .Z(n2541)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam i16367_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 mux_1636_i3_4_lut (.A(Set_BusB_To[1]), .B(PC[10]), .C(n2809), 
            .D(\SP[10] ), .Z(n2735[2])) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i3_4_lut.init = 16'h4540;
    FD1P3DX dout_i0 (.D(n18160), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n41034), .Q(cpu_dout[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0.GSR = "ENABLED";
    ORCALUT4 i11174_4_lut_4_lut (.A(n38931), .B(n8_adj_1977), .C(n7_adj_1978), 
            .D(n8219[1]), .Z(n14311)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11174_4_lut_4_lut.init = 16'hfe54;
    FD1P3DX TmpAddr_i0 (.D(n18158), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n41036), .Q(TmpAddr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0.GSR = "ENABLED";
    PFUMX mux_1647_i5 (.BLUT(n2702[4]), .ALUT(n2749[4]), .C0(n35979), 
          .Z(n2762[4]));
    ORCALUT4 i2_4_lut_adj_566 (.A(Halt_FF), .B(Jump), .C(n38931), .D(n57), 
            .Z(n28_adj_1979)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_566.init = 16'h1110;
    ORCALUT4 PC16_B_15__I_0_i7_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[6]), .D(JumpE_N_1512), .Z(PC16_B[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i6_4_lut_4_lut (.A(n38931), .B(n12_adj_1980), .C(n12_adj_1966), 
            .D(n38917), .Z(ISet_1__N_646[1])) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i6_4_lut_4_lut.init = 16'h0040;
    ORCALUT4 i2_3_lut_4_lut_adj_567 (.A(n38858), .B(n38846), .C(n38840), 
            .D(n38849), .Z(n35048)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_567.init = 16'he000;
    CCU2B PC_5687_add_4_5 (.A0(PC[2]), .B0(n949), .C0(n933), .D0(PC16_B[2]), 
          .A1(PC[3]), .B1(n949), .C1(n934), .D1(PC16_B[3]), .CIN(n31365), 
          .COUT(n31366), .S0(n34[2]), .S1(n34[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_5.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_5.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_5.INJECT1_0 = "NO";
    defparam PC_5687_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_568 (.A(n38931), .B(F_Out_7__N_1639), 
            .C(n41004), .D(n38910), .Z(ExchangeRp)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_568.init = 16'h0400;
    ORCALUT4 i11171_4_lut_4_lut (.A(n38931), .B(n12_adj_1981), .C(n11_adj_1982), 
            .D(IR[2]), .Z(n14308)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11171_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i14295_4_lut (.A(tstate[1]), .B(RegWEH_N_888), .C(Save_ALU_r), 
            .D(Auto_Wait_t1), .Z(RegWEH_N_872)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[19] 854[62])
    defparam i14295_4_lut.init = 16'hc0ca;
    ORCALUT4 i20819_3_lut_rep_442_4_lut_4_lut (.A(n38931), .B(n38681), .C(n38918), 
            .D(n38914), .Z(n38676)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i20819_3_lut_rep_442_4_lut_4_lut.init = 16'h4445;
    PFUMX mux_1647_i6 (.BLUT(n2702[5]), .ALUT(n2749[5]), .C0(n35979), 
          .Z(n2762[5]));
    ORCALUT4 F_Out_7__I_156_4_lut_4_lut (.A(n38931), .B(n14_adj_1983), .C(F[6]), 
            .D(n39022), .Z(F_Out_7__N_1643)) /* synthesis lut_function=(!(A (B+(D))+!A !(C))) */ ;
    defparam F_Out_7__I_156_4_lut_4_lut.init = 16'h5072;
    ORCALUT4 i1_2_lut_4_lut_4_lut_adj_569 (.A(n38931), .B(IncDecZ), .C(n38989), 
            .D(n38832), .Z(n4_adj_1957)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_569.init = 16'h0040;
    ORCALUT4 i2_4_lut_adj_570 (.A(n38696), .B(RegAddrA_2__N_742), .C(RegAddrA_r[1]), 
            .D(n38710), .Z(RegAddrA_2__N_472[1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam i2_4_lut_adj_570.init = 16'heefe;
    ORCALUT4 i2_3_lut_rep_487_4_lut_4_lut (.A(n38931), .B(n38848), .C(n24220), 
            .D(n38847), .Z(n38721)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_487_4_lut_4_lut.init = 16'h1000;
    ORCALUT4 PC16_B_15__I_0_i1_3_lut_4_lut_4_lut (.A(n38931), .B(PC16_B_15__N_571[15]), 
            .C(di_reg[0]), .D(JumpE_N_1512), .Z(PC16_B[0])) /* synthesis lut_function=(!(A (B)+!A !(B (C (D))+!B (C+!(D))))) */ ;
    defparam PC16_B_15__I_0_i1_3_lut_4_lut_4_lut.init = 16'h7233;
    ORCALUT4 i33045_3_lut_4_lut_4_lut (.A(n38931), .B(IncDec_16_3__N_1017[2]), 
            .C(n38989), .D(n38817), .Z(n12271)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;
    defparam i33045_3_lut_4_lut_4_lut.init = 16'heee4;
    ORCALUT4 i1_2_lut_rep_438_4_lut_4_lut (.A(n38931), .B(RstP_N_1517), 
            .C(n38708), .D(n38908), .Z(n38672)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_2_lut_rep_438_4_lut_4_lut.init = 16'h5450;
    PFUMX mux_1647_i7 (.BLUT(n2702[6]), .ALUT(n2749[6]), .C0(n35979), 
          .Z(n2762[6]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_571 (.A(n38858), .B(n38846), .C(n34222), 
            .D(n38840), .Z(n34223)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_571.init = 16'hfef0;
    PFUMX mux_1647_i8 (.BLUT(n2702[7]), .ALUT(n2749[7]), .C0(n35979), 
          .Z(n2762[7]));
    PFUMX mux_1699_i2 (.BLUT(n2849[1]), .ALUT(n2866[1]), .C0(n2885), .Z(n2886[1]));
    PFUMX mux_1699_i3 (.BLUT(n2849[2]), .ALUT(n2866[2]), .C0(n2885), .Z(n2886[2]));
    PFUMX i32121 (.BLUT(n1), .ALUT(n2), .C0(tstates[1]), .Z(n35629));
    ORCALUT4 i33381_3_lut (.A(n1165), .B(n25), .C(n38688), .Z(clk_op_enable_316)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i33381_3_lut.init = 16'hfbfb;
    ORCALUT4 i42_3_lut (.A(Arith16_r), .B(n27), .C(ALU_Op_r[3]), .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i42_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1636_i4_4_lut (.A(SP[11]), .B(PC[11]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[3])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i4_4_lut.init = 16'h00ca;
    PFUMX i79 (.BLUT(n47), .ALUT(n43), .C0(ISet[0]), .Z(n56));
    ORCALUT4 Set_BusB_To_2__bdd_4_lut (.A(Set_BusB_To[2]), .B(Set_BusB_To[3]), 
            .C(Set_BusB_To[1]), .D(Set_BusB_To[0]), .Z(n2803)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam Set_BusB_To_2__bdd_4_lut.init = 16'h2004;
    PFUMX mux_1647_i1 (.BLUT(n2702[0]), .ALUT(n2749[0]), .C0(n35979), 
          .Z(n2762[0]));
    ORCALUT4 mcycles_2__I_0_i2_3_lut (.A(Set_BusA_To_3__N_1203[2]), .B(mc[2]), 
            .C(mcycles[0]), .Z(n2_adj_1927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i20017_2_lut (.A(\ALU_Op_3__N_1274[3] ), .B(mcycles[0]), .Z(n1_adj_1926)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam i20017_2_lut.init = 16'h8888;
    ORCALUT4 mcycles_2__I_0_i5_3_lut (.A(mc[5]), .B(\mc[6] ), .C(mcycles[0]), 
            .Z(n5_adj_1925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mcycles_2__I_0_i4_3_lut (.A(mc[3]), .B(mc[4]), .C(mcycles[0]), 
            .Z(n4_adj_1924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i4_3_lut.init = 16'hcaca;
    FD1P3BX F_i1 (.D(F_7__N_674[1]), .SP(clk_op_enable_310), .CK(clk_op), 
            .PD(n41036), .Q(F[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i1.GSR = "ENABLED";
    ORCALUT4 Q_7__N_1612_7__bdd_4_lut_33978 (.A(Q_7__N_1612[7]), .B(n12313), 
            .C(Arith16_r), .D(ALU_Op_r[3]), .Z(n37801)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A (B (D))) */ ;
    defparam Q_7__N_1612_7__bdd_4_lut_33978.init = 16'hcc0a;
    CCU2B PC_5687_add_4_3 (.A0(PC[0]), .B0(n949), .C0(n559[0]), .D0(PC16_B[0]), 
          .A1(PC[1]), .B1(n949), .C1(n932), .D1(PC16_B[1]), .CIN(n31364), 
          .COUT(n31365), .S0(n34[0]), .S1(n34[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_3.INIT0 = 16'h74b8;
    defparam PC_5687_add_4_3.INIT1 = 16'h74b8;
    defparam PC_5687_add_4_3.INJECT1_0 = "NO";
    defparam PC_5687_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 n1142_bdd_3_lut_34801 (.A(n1142), .B(n37802), .C(n38711), 
            .Z(n37803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1142_bdd_3_lut_34801.init = 16'hcaca;
    ORCALUT4 n37803_bdd_3_lut (.A(n37803), .B(di_reg[7]), .C(n1165), .Z(n37804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37803_bdd_3_lut.init = 16'hcaca;
    FD1P3BX F_i2 (.D(F_7__N_674[2]), .SP(clk_op_enable_312), .CK(clk_op), 
            .PD(n41038), .Q(F[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i2.GSR = "ENABLED";
    ORCALUT4 n37804_bdd_3_lut (.A(n37804), .B(Save_Mux[7]), .C(n38688), 
            .Z(F_7__N_674[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37804_bdd_3_lut.init = 16'hcaca;
    CCU2B PC_5687_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n47_adj_1984), .B1(n28_adj_1979), .C1(n38855), .D1(\tstate[2] ), 
          .COUT(n31364));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5687_add_4_1.INIT0 = 16'h0000;
    defparam PC_5687_add_4_1.INIT1 = 16'hffff;
    defparam PC_5687_add_4_1.INJECT1_0 = "NO";
    defparam PC_5687_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_adj_572 (.A(Auto_Wait_t1), .B(last_tstate), .C(iorq), 
            .Z(clk_op_enable_325)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut_adj_572.init = 16'hefef;
    ORCALUT4 i2_3_lut_4_lut_adj_573 (.A(n38688), .B(n1165), .C(BTR_r_N_970), 
            .D(n33), .Z(clk_op_enable_312)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_573.init = 16'hfffe;
    ORCALUT4 Q_7__N_1612_7__bdd_4_lut_34779 (.A(Q_7__N_1612[7]), .B(n23643), 
            .C(BusA[7]), .D(ALU_Op_r[3]), .Z(n37807)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_7__bdd_4_lut_34779.init = 16'hc0aa;
    FD1P3BX F_i6 (.D(n18170), .SP(clk_op_enable_313), .CK(clk_op), .PD(n41038), 
            .Q(F[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i6.GSR = "ENABLED";
    ORCALUT4 i3_3_lut_4_lut_adj_574 (.A(n38688), .B(n1165), .C(n24589), 
            .D(n38711), .Z(clk_op_enable_313)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_3_lut_4_lut_adj_574.init = 16'hffef;
    ORCALUT4 i2_3_lut_4_lut_adj_575 (.A(clk_op_enable_227), .B(n38667), 
            .C(Set_Addr_To_c[1]), .D(Set_Addr_To_c[2]), .Z(n2290)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_adj_575.init = 16'h0200;
    ORCALUT4 i20783_2_lut (.A(ts[0]), .B(last_tstate), .Z(n18335)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20783_2_lut.init = 16'heeee;
    FD1P3DX IR_i0_i1_rep_797 (.D(n956), .SP(clk_op_enable_314), .CK(clk_op), 
            .CD(n41013), .Q(n41016)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1_rep_797.GSR = "ENABLED";
    ORCALUT4 di_reg_7__bdd_3_lut_34782 (.A(di_reg[7]), .B(n37808), .C(Save_ALU_r), 
            .Z(n37809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_7__bdd_3_lut_34782.init = 16'hcaca;
    ORCALUT4 Q_7__N_1612_5__bdd_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38965), 
            .C(BusB[5]), .D(Q_7__N_1612[5]), .Z(n37949)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Q_7__N_1612_5__bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 Q_7__N_1612_3__I_0_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38965), 
            .C(BusB[3]), .D(Q_7__N_1612[3]), .Z(F_Out_7__N_1666)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Q_7__N_1612_3__I_0_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i14658_3_lut (.A(n29[0]), .B(di_reg[0]), .C(n10599), .Z(n18158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14658_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1636_i1_4_lut (.A(SP[8]), .B(PC[8]), .C(n2809), .D(Set_BusB_To[1]), 
            .Z(n2735[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1636_i1_4_lut.init = 16'h0fca;
    ORCALUT4 i33528_2_lut (.A(IR[5]), .B(n4_adj_1985), .Z(n34561)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33528_2_lut.init = 16'h1111;
    ORCALUT4 mux_738_i2_4_lut (.A(n38713), .B(Save_Mux[1]), .C(n38688), 
            .D(n4_adj_1986), .Z(F_7__N_674[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_738_i2_4_lut.init = 16'hc0c5;
    PFUMX i35160 (.BLUT(n40185), .ALUT(n40184), .C0(ISet[0]), .Z(n40186));
    ORCALUT4 i1_4_lut_adj_576 (.A(n32), .B(n1165), .C(n39010), .D(n38711), 
            .Z(n4_adj_1986)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i1_4_lut_adj_576.init = 16'hfcee;
    ORCALUT4 mux_1455_i4_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1987), 
            .D(n2349[3]), .Z(Q_7__N_1612[3])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i4_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1455_i6_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1988), 
            .D(n2349[5]), .Z(Q_7__N_1612[5])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i6_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i33345_3_lut_4_lut (.A(Set_BusB_To[2]), .B(Set_BusB_To[1]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[3]), .Z(n2811)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i33345_3_lut_4_lut.init = 16'h0007;
    ORCALUT4 mux_1455_i5_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1989), 
            .D(n2349[4]), .Z(Q_7__N_1612[4])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i5_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_212_i1_4_lut (.A(SP16[0]), .B(bus_din[0]), .C(n38855), 
            .D(n38984), .Z(n29[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i1_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1455_i2_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1990), 
            .D(n2349[1]), .Z(Q_7__N_1612[1])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i2_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i2_3_lut_4_lut_adj_577 (.A(Set_BusB_To[1]), .B(Set_BusB_To[0]), 
            .C(Set_BusB_To[2]), .D(Set_BusB_To[3]), .Z(n2809)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_577.init = 16'he000;
    ORCALUT4 mux_1455_i3_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1991), 
            .D(n2349[2]), .Z(Q_7__N_1612[2])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i3_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1455_i7_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n6_adj_1992), 
            .D(n2349[6]), .Z(Q_7__N_1612[6])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1455_i7_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i33234_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38959), .C(Q_7__N_1706[7]), 
            .D(Q_v[7]), .Z(n2349[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33234_3_lut_4_lut.init = 16'hfd20;
    PFUMX mux_1699_i9 (.BLUT(n2849[8]), .ALUT(n2866[8]), .C0(n2885), .Z(n2886[8]));
    PFUMX mux_1699_i10 (.BLUT(n2849[9]), .ALUT(n2866[9]), .C0(n2885), 
          .Z(n2886[9]));
    ORCALUT4 i20655_2_lut (.A(tstate[1]), .B(last_tstate), .Z(n18333)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20655_2_lut.init = 16'h2222;
    PFUMX mux_1699_i11 (.BLUT(n2849[10]), .ALUT(n2866[10]), .C0(n2885), 
          .Z(n2886[10]));
    ORCALUT4 i14689_4_lut_then_2_lut (.A(n28_adj_1979), .B(\tstate[2] ), 
            .Z(n39043)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam i14689_4_lut_then_2_lut.init = 16'h8888;
    PFUMX mux_1699_i1 (.BLUT(n2849[0]), .ALUT(n2866[0]), .C0(n2885), .Z(n2886[0]));
    ORCALUT4 i20037_2_lut (.A(ts[6]), .B(last_tstate), .Z(n18165)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20037_2_lut.init = 16'h2222;
    CCU2B RegBusA_15__I_0_add_4_17 (.A0(RegBusA[15]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31356), .S0(ID16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_17.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_17.INJECT1_1 = "NO";
    PFUMX mux_1632_i2 (.BLUT(n2675[1]), .ALUT(n2684[1]), .C0(n2803), .Z(n2723[1]));
    PFUMX mux_1632_i3 (.BLUT(n2675[2]), .ALUT(n2690), .C0(n2803), .Z(n2723[2]));
    PFUMX mux_1632_i4 (.BLUT(n2675[3]), .ALUT(n2684[3]), .C0(n2803), .Z(n2723[3]));
    CCU2B RegBusA_15__I_0_add_4_15 (.A0(RegBusA[13]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[14]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31355), .COUT(n31356), .S0(ID16[13]), .S1(ID16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_15.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_15.INJECT1_1 = "NO";
    PFUMX mux_1632_i5 (.BLUT(n2675[4]), .ALUT(n2684[4]), .C0(n2803), .Z(n2723[4]));
    PFUMX mux_1632_i6 (.BLUT(n2675[5]), .ALUT(n2684[5]), .C0(n2803), .Z(n2723[5]));
    PFUMX mux_1632_i7 (.BLUT(n2675[6]), .ALUT(n2684[6]), .C0(n2803), .Z(n2723[6]));
    PFUMX mux_1632_i8 (.BLUT(n2675[7]), .ALUT(n2684[7]), .C0(n2803), .Z(n2723[7]));
    ORCALUT4 i8460_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[2]), .B(n38982), .C(NextIs_XY_Fetch), 
            .D(\mc[6] ), .Z(n11285)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i8460_2_lut_3_lut_4_lut.init = 16'hf0f6;
    ORCALUT4 i20_4_lut (.A(mc[5]), .B(n68), .C(n38855), .D(\tstate[2] ), 
            .Z(clk_op_enable_171)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i20_4_lut.init = 16'hca0a;
    PFUMX mux_1632_i1 (.BLUT(n2675[0]), .ALUT(n2684[0]), .C0(n2803), .Z(n2723[0]));
    ORCALUT4 i20601_2_lut (.A(\tstate[2] ), .B(last_tstate), .Z(n18330)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20601_2_lut.init = 16'h2222;
    ORCALUT4 i16187_4_lut (.A(n18132), .B(Save_Mux[7]), .C(n7158), .D(n50), 
            .Z(n17999)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16187_4_lut.init = 16'hcac0;
    ORCALUT4 i16169_4_lut (.A(n18141), .B(Save_Mux[6]), .C(n7158), .D(n50), 
            .Z(n17997)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16169_4_lut.init = 16'hcac0;
    ORCALUT4 i20600_2_lut (.A(ts[3]), .B(last_tstate), .Z(n18328)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20600_2_lut.init = 16'h2222;
    PFUMX i14684 (.BLUT(n1177[2]), .ALUT(n1187[2]), .C0(n35705), .Z(n18184));
    FD1P3BX F_i7 (.D(F_7__N_674[7]), .SP(clk_op_enable_316), .CK(clk_op), 
            .PD(n41034), .Q(F[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i7.GSR = "ENABLED";
    CCU2B RegBusA_15__I_0_add_4_13 (.A0(RegBusA[11]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[12]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31354), .COUT(n31355), .S0(ID16[11]), .S1(ID16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_13.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i16182_4_lut (.A(n18139), .B(Save_Mux[5]), .C(n7158), .D(n50), 
            .Z(n17993)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16182_4_lut.init = 16'hcac0;
    ORCALUT4 i14497_4_lut (.A(n18137), .B(Save_Mux[4]), .C(n7158), .D(n50), 
            .Z(n17991)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14497_4_lut.init = 16'hcac0;
    ORCALUT4 i16192_4_lut (.A(n18145), .B(Save_Mux[3]), .C(n7158), .D(n50), 
            .Z(n17985)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16192_4_lut.init = 16'hcac0;
    ORCALUT4 Save_Mux_7__I_0_i4_3_lut (.A(Save_Mux_7__N_528[3]), .B(BusB[3]), 
            .C(ExchangeRp), .Z(Save_Mux[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i4_3_lut (.A(di_reg[3]), .B(ALU_Q[3]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_528[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i16161_4_lut (.A(n50), .B(Save_Mux[2]), .C(n7158), .D(n16_adj_1958), 
            .Z(n17983)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16161_4_lut.init = 16'hcac0;
    ORCALUT4 i16174_4_lut (.A(n18147), .B(Save_Mux[1]), .C(n7158), .D(n50), 
            .Z(n17979)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16174_4_lut.init = 16'hcac0;
    ORCALUT4 Save_Mux_7__I_0_i2_3_lut (.A(Save_Mux_7__N_528[1]), .B(BusB[1]), 
            .C(ExchangeRp), .Z(Save_Mux[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i2_3_lut (.A(di_reg[1]), .B(ALU_Q[1]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_528[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i20597_2_lut (.A(ts[4]), .B(last_tstate), .Z(n18326)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20597_2_lut.init = 16'h2222;
    ORCALUT4 i20596_2_lut (.A(ts[5]), .B(last_tstate), .Z(n18324)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i20596_2_lut.init = 16'h2222;
    ORCALUT4 i2_3_lut_adj_578 (.A(last_tstate), .B(Auto_Wait_t2), .C(iorq), 
            .Z(n35185)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut_adj_578.init = 16'h1010;
    CCU2B RegBusA_15__I_0_add_4_11 (.A0(RegBusA[9]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[10]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31353), .COUT(n31354), .S0(ID16[9]), .S1(ID16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_11.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i14689_4_lut_else_2_lut (.A(n38667), .B(\tstate[2] ), .C(last_tstate), 
            .D(n47_adj_1984), .Z(n39042)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam i14689_4_lut_else_2_lut.init = 16'heca0;
    ORCALUT4 i5_4_lut_adj_579 (.A(I[0]), .B(I[2]), .C(I[3]), .D(I[1]), 
            .Z(n13_adj_1975)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i5_4_lut_adj_579.init = 16'hfffe;
    ORCALUT4 i3_4_lut_adj_580 (.A(n38769), .B(ISet[1]), .C(n31476), .D(ts[3]), 
            .Z(n15972)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_580.init = 16'hf7ff;
    ORCALUT4 i6_4_lut_adj_581 (.A(I[7]), .B(I[4]), .C(I[5]), .D(I[6]), 
            .Z(n14_adj_1976)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i6_4_lut_adj_581.init = 16'hfffe;
    ORCALUT4 mux_276_i7_4_lut (.A(F_Out[6]), .B(n13_adj_1993), .C(n1165), 
            .D(n14_adj_1994), .Z(n1154[6])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i7_4_lut.init = 16'h0a3a;
    ORCALUT4 i5_4_lut_adj_582 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_1993)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i5_4_lut_adj_582.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_583 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_1994)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i6_4_lut_adj_583.init = 16'hfffe;
    ORCALUT4 i33395_3_lut (.A(n38688), .B(n1165), .C(n38711), .Z(n35694)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i33395_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_adj_584 (.A(ID16[0]), .B(ID16[10]), .Z(n17_adj_1972)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i1_2_lut_adj_584.init = 16'heeee;
    ORCALUT4 i14_4_lut (.A(n27_adj_1995), .B(n23_adj_1996), .C(ID16[4]), 
            .D(ID16[6]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i14_4_lut.init = 16'hfffe;
    ORCALUT4 i11_4_lut (.A(ID16[15]), .B(ID16[7]), .C(ID16[14]), .D(ID16[12]), 
            .Z(n27_adj_1995)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i11_4_lut.init = 16'hfffe;
    ORCALUT4 i7_2_lut (.A(ID16[5]), .B(ID16[13]), .Z(n23_adj_1996)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i7_2_lut.init = 16'heeee;
    CCU2B RegBusA_15__I_0_add_4_9 (.A0(RegBusA[7]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[8]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31352), .COUT(n31353), .S0(ID16[7]), .S1(ID16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_9.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i10_4_lut (.A(ID16[9]), .B(ID16[3]), .C(ID16[2]), .D(ID16[1]), 
            .Z(n26_adj_1973)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i10_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut_adj_585 (.A(ID16[11]), .B(ID16[8]), .Z(n18_adj_1974)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i2_2_lut_adj_585.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_586 (.A(\tstate[2] ), .B(n6_adj_1997), .C(IncDec_16[0]), 
            .D(n38968), .Z(IncDecZ_N_979)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_586.init = 16'h0c08;
    ORCALUT4 ID16_B_15__I_0_i8_3_lut (.A(ID16_B[15]), .B(di_reg[7]), .C(ts[3]), 
            .Z(SP16_B[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam ID16_B_15__I_0_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i2_2_lut_adj_587 (.A(IncDec_16[2]), .B(IncDec_16[1]), .Z(n6_adj_1997)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_587.init = 16'h2222;
    ORCALUT4 i31136_4_lut (.A(mc[4]), .B(n38790), .C(n34332), .D(mc[3]), 
            .Z(n34613)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i31136_4_lut.init = 16'hccc8;
    FD1P3DX XY_State__i0 (.D(n34561), .SP(clk_op_enable_321), .CK(clk_op), 
            .CD(n41038), .Q(XY_State[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i0.GSR = "ENABLED";
    CCU2B RegBusA_15__I_0_add_4_7 (.A0(RegBusA[5]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[6]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31351), .COUT(n31352), .S0(ID16[5]), .S1(ID16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_7.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i30878_2_lut (.A(\mc[6] ), .B(mc[5]), .Z(n34332)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30878_2_lut.init = 16'heeee;
    ORCALUT4 i33379_4_lut (.A(n40997), .B(n4_adj_1998), .C(mc[3]), .D(mc[4]), 
            .Z(n35049)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;
    defparam i33379_4_lut.init = 16'h333b;
    CCU2B RegBusA_15__I_0_add_4_5 (.A0(RegBusA[3]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[4]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31350), .COUT(n31351), .S0(ID16[3]), .S1(ID16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_5.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_5.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_3 (.A0(RegBusA[1]), .B0(n38931), .C0(IncDec_16_3__N_1017[3]), 
          .D0(n12269), .A1(RegBusA[2]), .B1(n38931), .C1(IncDec_16_3__N_1017[3]), 
          .D1(n12269), .CIN(n31349), .COUT(n31350), .S0(ID16[1]), .S1(ID16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_3.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 mux_201_i8_4_lut (.A(SP16[7]), .B(RegBusC[7]), .C(n38768), 
            .D(n925), .Z(n855[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i8_4_lut.init = 16'hcac0;
    ORCALUT4 i2_rep_11_2_lut (.A(Read_To_Reg_r[1]), .B(n4_adj_1928), .Z(n2885)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_rep_11_2_lut.init = 16'h4444;
    ORCALUT4 i21352_3_lut_rep_469_4_lut (.A(n40994), .B(n38991), .C(n38920), 
            .D(n34348), .Z(n38703)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i21352_3_lut_rep_469_4_lut.init = 16'hfe00;
    ORCALUT4 mux_201_i16_4_lut (.A(SP16[15]), .B(RegBusC[15]), .C(n38768), 
            .D(n925), .Z(n855[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i16_4_lut.init = 16'hcac0;
    ORCALUT4 IR_7__I_0_1640_i15_2_lut_rep_598_3_lut_4_lut (.A(n40994), .B(n38991), 
            .C(n38933), .D(n39004), .Z(n38832)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1640_i15_2_lut_rep_598_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i30890_2_lut_3_lut_4_lut (.A(n40994), .B(n38991), .C(n39004), 
            .D(n39007), .Z(n34344)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i30890_2_lut_3_lut_4_lut.init = 16'hfeee;
    PFUMX i14742 (.BLUT(n798[3]), .ALUT(n29[3]), .C0(n35733), .Z(n18242));
    PFUMX i14686 (.BLUT(n1177[1]), .ALUT(n1187[1]), .C0(n35705), .Z(n18186));
    FD1P3BX tstate_i0_i0 (.D(n18165), .SP(clk_op_enable_325), .CK(clk_op), 
            .PD(n41038), .Q(ts[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i0.GSR = "ENABLED";
    CCU2B RegBusA_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(RegBusA[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n31349), .S1(ID16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_1.INIT1 = 16'h555a;
    defparam RegBusA_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_1.INJECT1_1 = "NO";
    PFUMX i14740 (.BLUT(n798[4]), .ALUT(n29[4]), .C0(n35733), .Z(n18240));
    PFUMX i14738 (.BLUT(n798[5]), .ALUT(n29[5]), .C0(n35733), .Z(n18238));
    ORCALUT4 di_reg_6__bdd_3_lut_34656 (.A(di_reg[6]), .B(n37929), .C(Save_ALU_r), 
            .Z(n37930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_6__bdd_3_lut_34656.init = 16'hcaca;
    ORCALUT4 i33479_3_lut (.A(ExchangeRp), .B(Save_ALU_r), .C(n36003), 
            .Z(n35822)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i33479_3_lut.init = 16'haeae;
    ORCALUT4 Q_7__N_1612_6__bdd_4_lut_34651 (.A(Q_7__N_1612[6]), .B(n23643), 
            .C(BusA[6]), .D(ALU_Op_r[3]), .Z(n37928)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_6__bdd_4_lut_34651.init = 16'hc0aa;
    ORCALUT4 mux_201_i7_4_lut (.A(SP16[6]), .B(RegBusC[6]), .C(n38768), 
            .D(n925), .Z(n855[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i7_4_lut.init = 16'hcac0;
    PFUMX mux_276_i6 (.BLUT(n609), .ALUT(n900[5]), .C0(n35767), .Z(n1154[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_201_i15_4_lut (.A(SP16[14]), .B(RegBusC[14]), .C(n38768), 
            .D(n925), .Z(n855[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i15_4_lut.init = 16'hcac0;
    ORCALUT4 i11183_3_lut (.A(TmpAddr[1]), .B(n87[1]), .C(n2286), .Z(n2114[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11183_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_588 (.A(n24402), .B(clk_op_enable_227), .C(n34756), 
            .D(Jump), .Z(n2296)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!B))) */ ;
    defparam i2_4_lut_adj_588.init = 16'h004c;
    ORCALUT4 i2_4_lut_adj_589 (.A(Set_Addr_To_c[2]), .B(n23689), .C(n38672), 
            .D(Set_Addr_To_c[1]), .Z(n34756)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_589.init = 16'hfefa;
    CCU2B SP16_A_15__I_0_add_4_17 (.A0(SP16_B[7]), .B0(n41014), .C0(RegBusC[15]), 
          .D0(SP[15]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31348), .S0(SP16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_17.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i33451_rep_13_2_lut (.A(n2296), .B(n2294), .Z(n36639)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i33451_rep_13_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_590 (.A(clk_op_enable_227), .B(Jump), .C(n38676), 
            .D(n33744), .Z(n2294)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_590.init = 16'h8a88;
    ORCALUT4 i11181_3_lut (.A(TmpAddr[2]), .B(n87[2]), .C(n2286), .Z(n2114[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11181_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1612_5__bdd_3_lut_34069 (.A(Save_Mux[5]), .B(n1154[5]), 
            .C(n38688), .Z(n37948)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam Q_7__N_1612_5__bdd_3_lut_34069.init = 16'hacac;
    ORCALUT4 i12143_3_lut (.A(TmpAddr[3]), .B(n87[3]), .C(n2286), .Z(n2114[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12143_3_lut.init = 16'hcaca;
    ORCALUT4 i12141_3_lut (.A(TmpAddr[4]), .B(n87[4]), .C(n2286), .Z(n2114[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12141_3_lut.init = 16'hcaca;
    ORCALUT4 i11179_3_lut (.A(TmpAddr[5]), .B(n87[5]), .C(n2286), .Z(n2114[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11179_3_lut.init = 16'hcaca;
    ORCALUT4 i11177_3_lut (.A(TmpAddr[6]), .B(n87[6]), .C(n2286), .Z(n2114[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11177_3_lut.init = 16'hcaca;
    ORCALUT4 i12139_3_lut (.A(TmpAddr[7]), .B(n87[7]), .C(n2286), .Z(n2114[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i12139_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i9_3_lut (.A(di_reg[0]), .B(n87[8]), .C(n2286), 
            .Z(n2057[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i10_3_lut (.A(di_reg[1]), .B(n87[9]), .C(n2286), 
            .Z(n2057[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i11_3_lut (.A(di_reg[2]), .B(n87[10]), .C(n2286), 
            .Z(n2063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i12_3_lut (.A(di_reg[3]), .B(n87[11]), .C(n2286), 
            .Z(n2057[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i13_3_lut (.A(di_reg[4]), .B(n87[12]), .C(n2286), 
            .Z(n2057[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i14_3_lut (.A(di_reg[5]), .B(n87[13]), .C(n2286), 
            .Z(n2057[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i15_3_lut (.A(di_reg[6]), .B(n87[14]), .C(n2286), 
            .Z(n2057[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1268_i16_3_lut (.A(di_reg[7]), .B(n87[15]), .C(n2286), 
            .Z(n2057[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1268_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i11960_3_lut (.A(TmpAddr[0]), .B(n87[0]), .C(n2286), .Z(n2114[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11960_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_591 (.A(n38654), .B(Set_Addr_To_c[1]), .C(n34763), 
            .D(Set_Addr_To[0]), .Z(n2284)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_591.init = 16'h8880;
    ORCALUT4 mux_141_i15_3_lut (.A(n525[14]), .B(di_reg[6]), .C(Jump), 
            .Z(n559[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i15_4_lut (.A(TmpAddr[14]), .B(RegBusC[14]), .C(n24402), 
            .D(n38672), .Z(n525[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i15_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i16_3_lut (.A(n525[15]), .B(di_reg[7]), .C(Jump), 
            .Z(n559[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i16_4_lut (.A(TmpAddr[15]), .B(RegBusC[15]), .C(n24402), 
            .D(n38672), .Z(n525[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i16_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i13_3_lut (.A(n525[12]), .B(di_reg[4]), .C(Jump), 
            .Z(n559[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i13_4_lut (.A(TmpAddr[12]), .B(RegBusC[12]), .C(n24402), 
            .D(n38672), .Z(n525[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i13_4_lut.init = 16'hac0c;
    ORCALUT4 pwr_bdd_2_lut_34126 (.A(n37956), .B(n15972), .Z(n37957)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_34126.init = 16'hbbbb;
    ORCALUT4 mux_141_i14_3_lut (.A(n525[13]), .B(di_reg[5]), .C(Jump), 
            .Z(n559[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i14_4_lut (.A(TmpAddr[13]), .B(RegBusC[13]), .C(n24402), 
            .D(n38672), .Z(n525[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i14_4_lut.init = 16'hac0c;
    ORCALUT4 mux_206_i1_4_lut (.A(n31745), .B(Fp[0]), .C(n38773), .D(n24398), 
            .Z(n900[0])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A !(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i1_4_lut.init = 16'h5cfc;
    ORCALUT4 mux_206_i5_4_lut (.A(n17821), .B(Fp[4]), .C(n38773), .D(n4_adj_2006), 
            .Z(n900[4])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i5_4_lut.init = 16'h5c0c;
    ORCALUT4 i1_4_lut_adj_592 (.A(n24398), .B(F[0]), .C(n38765), .D(n38731), 
            .Z(n4_adj_2006)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_592.init = 16'h0a88;
    ORCALUT4 i1_4_lut_adj_593 (.A(n38933), .B(n34222), .C(n38787), .D(n4_adj_2007), 
            .Z(n17821)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_593.init = 16'hfcec;
    CCU2B SP16_A_15__I_0_add_4_15 (.A0(SP16_B[7]), .B0(n41014), .C0(RegBusC[13]), 
          .D0(SP[13]), .A1(SP16_B[7]), .B1(n41014), .C1(RegBusC[14]), 
          .D1(SP[14]), .CIN(n31347), .COUT(n31348), .S0(SP16[13]), .S1(SP16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_15.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_420_3_lut (.A(Jump), .B(n38676), .C(clk_op_enable_227), 
            .Z(n38654)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_420_3_lut.init = 16'h1010;
    ORCALUT4 mux_141_i11_3_lut (.A(n525[10]), .B(di_reg[2]), .C(Jump), 
            .Z(n941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i11_4_lut (.A(TmpAddr[10]), .B(\RegBusC[10] ), .C(n24402), 
            .D(n38672), .Z(n525[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i11_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i12_3_lut (.A(n525[11]), .B(di_reg[3]), .C(Jump), 
            .Z(n942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i12_4_lut (.A(TmpAddr[11]), .B(RegBusC[11]), .C(n24402), 
            .D(n38672), .Z(n525[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i12_4_lut.init = 16'hac0c;
    ORCALUT4 mux_403_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1684), 
            .Z(RegAddrC_2__N_736[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam mux_403_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_391_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1669), 
            .Z(RegAddrB_r_2__N_733[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(893[11] 896[16])
    defparam mux_391_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i20510_2_lut (.A(ALU_Op[3]), .B(clk_op_enable_227), .Z(n37[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i20510_2_lut.init = 16'h8888;
    ORCALUT4 di_reg_5__bdd_3_lut_34602 (.A(di_reg[5]), .B(n37968), .C(Save_ALU_r), 
            .Z(n37969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_5__bdd_3_lut_34602.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_594 (.A(clk_op_enable_227), .B(n56), .C(n53), 
            .D(ISet[1]), .Z(n32496)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_594.init = 16'ha088;
    ORCALUT4 i1_4_lut_adj_595 (.A(n38714), .B(IR[5]), .C(n38997), .D(n35434), 
            .Z(n53)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_595.init = 16'hdc50;
    ORCALUT4 i3_4_lut_adj_596 (.A(n38714), .B(n34532), .C(n26), .D(n34500), 
            .Z(n35434)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_596.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_adj_597 (.A(clk_op_enable_227), .B(n40187), .Z(n32506)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_adj_597.init = 16'h8888;
    ORCALUT4 Q_7__N_1612_5__bdd_4_lut_34625 (.A(Q_7__N_1612[5]), .B(n23643), 
            .C(BusA[5]), .D(ALU_Op_r[3]), .Z(n37967)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_5__bdd_4_lut_34625.init = 16'hc0aa;
    ORCALUT4 mux_141_i9_3_lut (.A(n525[8]), .B(di_reg[0]), .C(Jump), .Z(n939)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i9_4_lut (.A(TmpAddr[8]), .B(RegBusC[8]), .C(n24402), 
            .D(n38672), .Z(n525[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i9_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i10_3_lut (.A(n525[9]), .B(di_reg[1]), .C(Jump), 
            .Z(n940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i10_4_lut (.A(TmpAddr[9]), .B(RegBusC[9]), .C(n24402), 
            .D(n38672), .Z(n525[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i10_4_lut.init = 16'hac0c;
    ORCALUT4 mux_385_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1660), 
            .Z(RegAddrA_r_2__N_730[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(886[11] 889[16])
    defparam mux_385_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i6_4_lut (.A(SP16[5]), .B(RegBusC[5]), .C(n38768), 
            .D(n925), .Z(n855[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i6_4_lut.init = 16'hcac0;
    ORCALUT4 i7200_4_lut (.A(n38855), .B(\tstate[2] ), .C(n38937), .D(\mc[6] ), 
            .Z(clk_op_enable_314)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i7200_4_lut.init = 16'h8c88;
    ORCALUT4 mux_141_i7_4_lut (.A(RegBusC[6]), .B(TmpAddr[6]), .C(n17803), 
            .D(n24402), .Z(n937)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i7_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i8_4_lut (.A(RegBusC[7]), .B(TmpAddr[7]), .C(n17803), 
            .D(n24402), .Z(n938)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i8_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_3_lut_rep_424 (.A(Read_To_Reg_r[0]), .B(n34219), .C(n33986), 
            .Z(n38658)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_424.init = 16'hdcdc;
    ORCALUT4 mux_201_i14_4_lut (.A(SP16[13]), .B(RegBusC[13]), .C(n38768), 
            .D(n925), .Z(n855[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i14_4_lut.init = 16'hcac0;
    ORCALUT4 i33492_3_lut (.A(n38688), .B(n38713), .C(n38711), .Z(n35765)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i33492_3_lut.init = 16'hefef;
    FD1P3DX tstate_i0_i3_rep_795 (.D(n18330), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n41013), .Q(n41014)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3_rep_795.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_598 (.A(NextIs_XY_Fetch), .B(\mc[6] ), .C(n38890), 
            .D(n4_adj_1951), .Z(n32438)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_598.init = 16'h4544;
    PFUMX i14660 (.BLUT(n1177[0]), .ALUT(n1187[0]), .C0(n35705), .Z(n18160));
    ORCALUT4 mux_276_i3_4_lut (.A(n13_adj_2008), .B(IncDecZ), .C(BTR_r_N_970), 
            .D(n14_adj_2009), .Z(n1154[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i3_4_lut.init = 16'hcac5;
    ORCALUT4 i5_4_lut_adj_599 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_2008)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i5_4_lut_adj_599.init = 16'h6996;
    ORCALUT4 i6_4_lut_adj_600 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_2009)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i6_4_lut_adj_600.init = 16'h6996;
    ORCALUT4 i33478_3_lut (.A(n38688), .B(BTR_r_N_970), .C(n1165), .Z(n35834)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(848[15] 851[20])
    defparam i33478_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_adj_601 (.A(IR[5]), .B(n4_adj_1985), .Z(n18297)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_adj_601.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_602 (.A(n38785), .B(n38931), .C(n24220), .D(n8_adj_2010), 
            .Z(n4_adj_1985)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_602.init = 16'ha888;
    ORCALUT4 mux_141_i5_4_lut (.A(RegBusC[4]), .B(TmpAddr[4]), .C(n17803), 
            .D(n24402), .Z(n935)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i5_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i6_4_lut (.A(RegBusC[5]), .B(TmpAddr[5]), .C(n17803), 
            .D(n24402), .Z(n936)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i6_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_3_lut_4_lut_adj_603 (.A(n38969), .B(XY_Ind), .C(\Set_BusA_To[2] ), 
            .D(\Set_BusA_To[1] ), .Z(n1660)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_603.init = 16'h0020;
    ORCALUT4 i2_3_lut_4_lut_adj_604 (.A(n38969), .B(XY_Ind), .C(Set_BusB_To[2]), 
            .D(Set_BusB_To[1]), .Z(n1669)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_604.init = 16'h0020;
    ORCALUT4 i6994_3_lut (.A(I[7]), .B(Fp[7]), .C(n15972), .Z(n1142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6994_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i5_4_lut (.A(SP16[4]), .B(RegBusC[4]), .C(n38768), 
            .D(n925), .Z(n855[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i5_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i13_4_lut (.A(SP16[12]), .B(RegBusC[12]), .C(n38768), 
            .D(n925), .Z(n855[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i13_4_lut.init = 16'hcac0;
    ORCALUT4 i33411_3_lut (.A(n2541), .B(\Set_BusA_To[2] ), .C(\Set_BusA_To[1] ), 
            .Z(n35997)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i33411_3_lut.init = 16'heaea;
    CCU2B SP16_A_15__I_0_add_4_13 (.A0(SP16_B[7]), .B0(n41014), .C0(RegBusC[11]), 
          .D0(SP[11]), .A1(SP16_B[7]), .B1(n41014), .C1(RegBusC[12]), 
          .D1(SP[12]), .CIN(n31346), .COUT(n31347), .S0(SP16[11]), .S1(SP16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_13.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_13.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_11 (.A0(SP16_B[7]), .B0(n41014), .C0(RegBusC[9]), 
          .D0(SP[9]), .A1(SP16_B[7]), .B1(n41014), .C1(\RegBusC[10] ), 
          .D1(\SP[10] ), .CIN(n31345), .COUT(n31346), .S0(SP16[9]), 
          .S1(SP16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_11.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 Q_7__N_1612_4__bdd_4_lut_34563 (.A(Q_7__N_1612[4]), .B(n23643), 
            .C(BusA[4]), .D(ALU_Op_r[3]), .Z(n38034)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_4__bdd_4_lut_34563.init = 16'hc0aa;
    ORCALUT4 mux_201_i4_4_lut (.A(SP16[3]), .B(RegBusC[3]), .C(n38768), 
            .D(n925), .Z(n855[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i4_4_lut.init = 16'hcac0;
    ORCALUT4 SP_15__I_0_793_i6_3_lut (.A(SP[5]), .B(RegBusC[5]), .C(ts[3]), 
            .Z(SP16_A[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i6_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i7_3_lut (.A(SP[6]), .B(RegBusC[6]), .C(ts[3]), 
            .Z(SP16_A[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i7_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i4_3_lut (.A(SP[3]), .B(RegBusC[3]), .C(ts[3]), 
            .Z(SP16_A[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i12_4_lut (.A(SP16[11]), .B(RegBusC[11]), .C(n38768), 
            .D(n925), .Z(n855[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i12_4_lut.init = 16'hcac0;
    PFUMX i34249 (.BLUT(n38302), .ALUT(Save_Mux_7__N_528[2]), .C0(n35822), 
          .Z(Save_Mux[2]));
    ORCALUT4 di_reg_4__bdd_3_lut_34566 (.A(di_reg[4]), .B(n38035), .C(Save_ALU_r), 
            .Z(n38036)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_4__bdd_3_lut_34566.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i5_3_lut (.A(SP[4]), .B(RegBusC[4]), .C(ts[3]), 
            .Z(SP16_A[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i5_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i2_3_lut (.A(SP[1]), .B(RegBusC[1]), .C(ts[3]), 
            .Z(SP16_A[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i2_3_lut.init = 16'hcaca;
    ORCALUT4 n38961_bdd_3_lut_4_lut (.A(n41016), .B(n41030), .C(n41018), 
            .D(n41004), .Z(Read_To_Acc_N_1472)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam n38961_bdd_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 SP_15__I_0_793_i3_3_lut (.A(\SP[2] ), .B(RegBusC[2]), .C(ts[3]), 
            .Z(SP16_A[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i3_3_lut.init = 16'hcaca;
    ORCALUT4 n67_bdd_4_lut (.A(n38931), .B(n38730), .C(n38840), .D(ACC[3]), 
            .Z(n38038)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam n67_bdd_4_lut.init = 16'h1104;
    PFUMX i34247 (.BLUT(n1898[2]), .ALUT(n38300), .C0(n38859), .Z(n38301));
    ORCALUT4 i3_4_lut_adj_605 (.A(n24_adj_2011), .B(n38762), .C(IR[4]), 
            .D(n40997), .Z(n9_adj_1931)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_605.init = 16'hbbba;
    ORCALUT4 n38040_bdd_3_lut (.A(n38040), .B(ALU_Q[3]), .C(n38713), .Z(n38041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38040_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_606 (.A(IR[4]), .B(n38714), .C(n35282), .D(n38997), 
            .Z(n8_adj_2012)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_4_lut_adj_606.init = 16'hb3a2;
    PFUMX mux_605_Mux_6_i7 (.BLUT(n3_adj_1918), .ALUT(n34788), .C0(n38827), 
          .Z(n2197[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    CCU2B SP16_A_15__I_0_add_4_9 (.A0(SP16_B[7]), .B0(n41014), .C0(RegBusC[7]), 
          .D0(SP[7]), .A1(SP16_B[7]), .B1(n41014), .C1(RegBusC[8]), 
          .D1(SP[8]), .CIN(n31344), .COUT(n31345), .S0(SP16[7]), .S1(SP16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_9.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_9.INJECT1_1 = "NO";
    PFUMX mux_605_Mux_5_i7 (.BLUT(n3), .ALUT(n6_adj_1946), .C0(n38827), 
          .Z(n2197[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_141_i1_3_lut (.A(n525[0]), .B(TmpAddr[0]), .C(Jump), 
            .Z(n559[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i1_4_lut (.A(n38672), .B(RegBusC[0]), .C(n24402), 
            .D(TmpAddr[0]), .Z(n525[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i1_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i2_4_lut (.A(RegBusC[1]), .B(TmpAddr[1]), .C(n17803), 
            .D(n24402), .Z(n932)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i2_4_lut.init = 16'hc0ca;
    CCU2B SP16_A_15__I_0_add_4_7 (.A0(SP16_A[5]), .B0(n41014), .C0(di_reg[5]), 
          .D0(ID16_B[15]), .A1(SP16_A[6]), .B1(n41014), .C1(di_reg[6]), 
          .D1(ID16_B[15]), .CIN(n31343), .COUT(n31344), .S0(SP16[5]), 
          .S1(SP16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_7.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_7.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_5 (.A0(SP16_A[3]), .B0(n41014), .C0(di_reg[3]), 
          .D0(ID16_B[15]), .A1(SP16_A[4]), .B1(n41014), .C1(di_reg[4]), 
          .D1(ID16_B[15]), .CIN(n31342), .COUT(n31343), .S0(SP16[3]), 
          .S1(SP16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_5.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_5.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_3 (.A0(SP16_A[1]), .B0(n41014), .C0(di_reg[1]), 
          .D0(ID16_B[15]), .A1(SP16_A[2]), .B1(n41014), .C1(di_reg[2]), 
          .D1(ID16_B[15]), .CIN(n31341), .COUT(n31342), .S0(SP16[1]), 
          .S1(SP16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_3.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_3.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(di_reg[0]), .B1(n41014), .C1(RegBusC[0]), 
          .D1(SP[0]), .COUT(n31341), .S1(SP16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_1.INIT1 = 16'h487b;
    defparam SP16_A_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_1.INJECT1_1 = "NO";
    CCU2B add_868_add_4_17 (.A0(TmpAddr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31340), .S0(n87[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_17.INIT0 = 16'haaaa;
    defparam add_868_add_4_17.INIT1 = 16'h0000;
    defparam add_868_add_4_17.INJECT1_0 = "NO";
    defparam add_868_add_4_17.INJECT1_1 = "NO";
    CCU2B add_868_add_4_15 (.A0(TmpAddr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31339), .COUT(n31340), .S0(n87[13]), .S1(n87[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_15.INIT0 = 16'haaaa;
    defparam add_868_add_4_15.INIT1 = 16'haaaa;
    defparam add_868_add_4_15.INJECT1_0 = "NO";
    defparam add_868_add_4_15.INJECT1_1 = "NO";
    CCU2B add_868_add_4_13 (.A0(TmpAddr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31338), .COUT(n31339), .S0(n87[11]), .S1(n87[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_13.INIT0 = 16'haaaa;
    defparam add_868_add_4_13.INIT1 = 16'haaaa;
    defparam add_868_add_4_13.INJECT1_0 = "NO";
    defparam add_868_add_4_13.INJECT1_1 = "NO";
    CCU2B add_868_add_4_11 (.A0(TmpAddr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31337), .COUT(n31338), .S0(n87[9]), .S1(n87[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_11.INIT0 = 16'haaaa;
    defparam add_868_add_4_11.INIT1 = 16'haaaa;
    defparam add_868_add_4_11.INJECT1_0 = "NO";
    defparam add_868_add_4_11.INJECT1_1 = "NO";
    CCU2B add_868_add_4_9 (.A0(TmpAddr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31336), .COUT(n31337), .S0(n87[7]), .S1(n87[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_9.INIT0 = 16'haaaa;
    defparam add_868_add_4_9.INIT1 = 16'haaaa;
    defparam add_868_add_4_9.INJECT1_0 = "NO";
    defparam add_868_add_4_9.INJECT1_1 = "NO";
    CCU2B add_868_add_4_7 (.A0(TmpAddr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31335), .COUT(n31336), .S0(n87[5]), .S1(n87[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_7.INIT0 = 16'haaaa;
    defparam add_868_add_4_7.INIT1 = 16'haaaa;
    defparam add_868_add_4_7.INJECT1_0 = "NO";
    defparam add_868_add_4_7.INJECT1_1 = "NO";
    CCU2B add_868_add_4_5 (.A0(TmpAddr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31334), .COUT(n31335), .S0(n87[3]), .S1(n87[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_5.INIT0 = 16'haaaa;
    defparam add_868_add_4_5.INIT1 = 16'haaaa;
    defparam add_868_add_4_5.INJECT1_0 = "NO";
    defparam add_868_add_4_5.INJECT1_1 = "NO";
    CCU2B add_868_add_4_3 (.A0(TmpAddr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31333), .COUT(n31334), .S0(n87[1]), .S1(n87[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_3.INIT0 = 16'haaaa;
    defparam add_868_add_4_3.INIT1 = 16'haaaa;
    defparam add_868_add_4_3.INJECT1_0 = "NO";
    defparam add_868_add_4_3.INJECT1_1 = "NO";
    CCU2B add_868_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(TmpAddr[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n31333), .S1(n87[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_1.INIT0 = 16'h0000;
    defparam add_868_add_4_1.INIT1 = 16'h555a;
    defparam add_868_add_4_1.INJECT1_0 = "NO";
    defparam add_868_add_4_1.INJECT1_1 = "NO";
    tv80_reg i_reg (.\RegAddrB[2] (RegAddrB[2]), .RegBusB({RegBusB}), .n36260(n36260), 
            .n36261(n36261), .\RegAddrB[1] (RegAddrB[1]), .n36262(n36262), 
            .n36263(n36263), .RegsH_2_0(RegsH_2_0), .clk_op(clk_op), .RegDIH({RegDIH}), 
            .RegsH_3_6(RegsH_3_6), .RegsL_0_2(RegsL_0_2), .RegDIL({RegDIL}), 
            .RegsL_0_3(RegsL_0_3), .RegsL_0_7(RegsL_0_7), .RegsH_4_3(RegsH_4_3), 
            .RegsL_1_1(RegsL_1_1), .RegsL_0_6(RegsL_0_6), .RegsL_0_0(RegsL_0_0), 
            .RegsL_0_1(RegsL_0_1), .RegsL_0_5(RegsL_0_5), .RegsH_6_1(RegsH_6_1), 
            .RegsH_4_2(RegsH_4_2), .RegsH_6_5(RegsH_6_5), .RegsH_2_1(RegsH_2_1), 
            .RegsH_1_5(RegsH_1_5), .n36255(n36255), .n36256(n36256), .RegsH_3_3(RegsH_3_3), 
            .RegsH_4_7(RegsH_4_7), .RegsH_1_4(RegsH_1_4), .RegsH_1_3(RegsH_1_3), 
            .RegsH_1_2(RegsH_1_2), .RegsH_1_1(RegsH_1_1), .RegsH_1_0(RegsH_1_0), 
            .RegsH_0_7(RegsH_0_7), .RegsH_6_2(RegsH_6_2), .RegsH_6_3(RegsH_6_3), 
            .RegsH_6_4(RegsH_6_4), .RegsH_0_6(RegsH_0_6), .RegsH_4_6(RegsH_4_6), 
            .RegsH_5_0(RegsH_5_0), .RegsL_1_0(RegsL_1_0), .RegsH_0_5(RegsH_0_5), 
            .RegsH_6_6(RegsH_6_6), .RegsH_7_6(RegsH_7_6), .RegAddrC({RegAddrC}), 
            .RegsH_5_6(RegsH_5_6), .RegsH_3_4(RegsH_3_4), .RegsH_3_5(RegsH_3_5), 
            .RegsH_2_6(RegsH_2_6), .RegsH_1_6(RegsH_1_6), .RegsH_0_4(RegsH_0_4), 
            .RegsH_5_3(RegsH_5_3), .RegsH_6_7(RegsH_6_7), .RegsH_7_7(RegsH_7_7), 
            .RegsH_5_1(RegsH_5_1), .RegsH_5_5(RegsH_5_5), .RegsH_5_7(RegsH_5_7), 
            .RegsH_6_0(RegsH_6_0), .n36267(n36267), .n36268(n36268), .RegsH_5_4(RegsH_5_4), 
            .RegsH_5_2(RegsH_5_2), .RegsH_0_3(RegsH_0_3), .n36269(n36269), 
            .n36270(n36270), .n36274(n36274), .n36275(n36275), .n38660(n38660), 
            .RegAddrA({RegAddrA}), .RegsH_4_5(RegsH_4_5), .RegsH_0_2(RegsH_0_2), 
            .RegBusC({RegBusC[15:11], \RegBusC[10] , RegBusC[9:0]}), .RegsH_0_1(RegsH_0_1), 
            .RegsH_4_4(RegsH_4_4), .RegsL_0_4(RegsL_0_4), .RegsH_0_0(RegsH_0_0), 
            .n36276(n36276), .n36277(n36277), .RegsH_4_1(RegsH_4_1), .RegsH_4_0(RegsH_4_0), 
            .RegsH_3_7(RegsH_3_7), .RegsH_7_5(RegsH_7_5), .n36281(n36281), 
            .n36282(n36282), .RegsH_3_1(RegsH_3_1), .n36283(n36283), .n36284(n36284), 
            .RegsH_7_1(RegsH_7_1), .RegsH_7_2(RegsH_7_2), .RegsH_7_0(RegsH_7_0), 
            .RegsH_7_3(RegsH_7_3), .n36176(n36176), .n36177(n36177), .RegsH_7_4(RegsH_7_4), 
            .RegsL_6_6(RegsL_6_6), .RegsL_7_6(RegsL_7_6), .RegsL_4_6(RegsL_4_6), 
            .RegsL_5_6(RegsL_5_6), .RegsL_2_6(RegsL_2_6), .RegsL_3_6(RegsL_3_6), 
            .n36178(n36178), .n36179(n36179), .RegsL_1_6(RegsL_1_6), .RegsL_6_2(RegsL_6_2), 
            .RegsL_7_2(RegsL_7_2), .RegsL_4_2(RegsL_4_2), .RegsL_5_2(RegsL_5_2), 
            .n36183(n36183), .n36184(n36184), .RegsL_2_2(RegsL_2_2), .RegsL_3_2(RegsL_3_2), 
            .RegsL_1_2(RegsL_1_2), .RegsH_3_2(RegsH_3_2), .RegsL_6_4(RegsL_6_4), 
            .RegsL_7_4(RegsL_7_4), .RegsL_4_4(RegsL_4_4), .RegsL_5_4(RegsL_5_4), 
            .RegsH_2_2(RegsH_2_2), .RegsH_2_4(RegsH_2_4), .RegsL_2_4(RegsL_2_4), 
            .RegsL_3_4(RegsL_3_4), .RegsL_1_4(RegsL_1_4), .RegsH_2_5(RegsH_2_5), 
            .RegsH_2_7(RegsH_2_7), .RegsL_6_0(RegsL_6_0), .RegsL_7_0(RegsL_7_0), 
            .RegsH_3_0(RegsH_3_0), .RegsH_1_7(RegsH_1_7), .RegsL_6_7(RegsL_6_7), 
            .RegsL_7_7(RegsL_7_7), .RegsH_2_3(RegsH_2_3), .RegsL_4_7(RegsL_4_7), 
            .RegsL_5_7(RegsL_5_7), .RegsL_2_7(RegsL_2_7), .RegsL_3_7(RegsL_3_7), 
            .RegsL_1_7(RegsL_1_7), .n36185(n36185), .n36186(n36186), .RegsL_6_3(RegsL_6_3), 
            .RegsL_7_3(RegsL_7_3), .RegsL_4_3(RegsL_4_3), .RegsL_5_3(RegsL_5_3), 
            .RegsL_2_3(RegsL_2_3), .RegsL_3_3(RegsL_3_3), .RegsL_1_3(RegsL_1_3), 
            .RegsL_6_1(RegsL_6_1), .RegsL_7_1(RegsL_7_1), .RegsL_4_1(RegsL_4_1), 
            .RegsL_5_1(RegsL_5_1), .RegsL_2_1(RegsL_2_1), .RegsL_3_1(RegsL_3_1), 
            .n36190(n36190), .n36191(n36191), .n36192(n36192), .n36193(n36193), 
            .RegsL_4_0(RegsL_4_0), .RegsL_5_0(RegsL_5_0), .RegsL_2_0(RegsL_2_0), 
            .RegsL_3_0(RegsL_3_0), .RegsL_6_5(RegsL_6_5), .RegsL_7_5(RegsL_7_5), 
            .RegsL_4_5(RegsL_4_5), .RegsL_5_5(RegsL_5_5), .RegsL_2_5(RegsL_2_5), 
            .RegsL_3_5(RegsL_3_5), .RegsL_1_5(RegsL_1_5), .n38658(n38658), 
            .n36197(n36197), .n36198(n36198), .n36199(n36199), .n36200(n36200), 
            .n36204(n36204), .n36205(n36205), .n36206(n36206), .n36207(n36207), 
            .n36211(n36211), .n36212(n36212), .n36213(n36213), .n36214(n36214), 
            .n36218(n36218), .n36219(n36219), .n36220(n36220), .n36221(n36221), 
            .n36225(n36225), .n36226(n36226), .n36227(n36227), .n36228(n36228), 
            .n36232(n36232), .n36233(n36233), .n36234(n36234), .n36235(n36235), 
            .RegBusA({RegBusA}), .n36239(n36239), .n36240(n36240), .n36241(n36241), 
            .n36242(n36242), .n36246(n36246), .n36247(n36247), .n36248(n36248), 
            .n36249(n36249), .n36253(n36253), .n36254(n36254)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1017[12] 1034[7])
    tv80_mcode i_mcode (.n38991(n38991), .\Set_BusA_To_3__N_1207[0] (Set_BusA_To_3__N_1207[0]), 
            .\IR[6] (\IR[6] ), .n39006(n39006), .n40996(n40996), .n39002(n39002), 
            .n41024(n41024), .n41022(n41022), .\IR[1] (IR[1]), .n38849(n38849), 
            .n38931(n38931), .ACC({ACC[7:3], \ACC[2] , ACC[1:0]}), .Ap({Ap}), 
            .n2579(n2578[7]), .n38933(n38933), .n38923(n38923), .n38773(n38773), 
            .n41004(n41004), .n38846(n38846), .ISet({ISet}), .n38719(n38719), 
            .n38871(n38871), .\IR[7] (\IR[7] ), .\mc[3] (mc[3]), .Read_To_Acc_N_1469(Read_To_Acc_N_1469), 
            .n41005(n41005), .n41026(n41026), .n40997(n40997), .\ALU_Op_3__N_1274[3] (\ALU_Op_3__N_1274[3] ), 
            .\Set_BusA_To_3__N_1203[2] (Set_BusA_To_3__N_1203[2]), .\mc[2] (mc[2]), 
            .n41016(n41016), .n41030(n41030), .n38930(n38930), .n38821(n38821), 
            .\IR[0] (IR[0]), .\IR[2] (IR[2]), .n38833(n38833), .n38915(n38915), 
            .\IR[5] (IR[5]), .n41028(n41028), .n38762(n38762), .n2586(n2578[0]), 
            .\IR[4] (IR[4]), .n38689(n38689), .n38894(n38894), .n38652(n38652), 
            .n41018(n41018), .n38811(n38811), .n38703(n38703), .n38714(n38714), 
            .n38908(n38908), .n38673(n38673), .n38885(n38885), .Save_ALU_N_1475(Save_ALU_N_1475), 
            .n38750(n38750), .Save_ALU_N_1473(Save_ALU_N_1473), .n15972(n15972), 
            .n39007(n39007), .n10(n10_adj_1963), .n41020(n41020), .\Set_BusA_To_3__N_1361[1] (Set_BusA_To_3__N_1361[1]), 
            .n35109(n35109), .\mc[6] (\mc[6] ), .F_Out_7__N_1639(F_Out_7__N_1639), 
            .n6799({n6799}), .PreserveC(PreserveC), .n38(n38), .n16160(n16160), 
            .n38796(n38796), .n38910(n38910), .n8219({Open_13, n8219[1], 
            Open_14}), .Read_To_Acc_N_1472(Read_To_Acc_N_1472), .n2390(n2390), 
            .n38782(n38782), .\IncDec_16_3__N_1017[2] (IncDec_16_3__N_1017[2]), 
            .n38997(n38997), .n38946(n38946), .n38947(n38947), .BusB({BusB}), 
            .n38795(n38795), .n38817(n38817), .n38816(n38816), .n4690({n4690}), 
            .n38867(n38867), .n38937(n38937), .\ALU_Op[3] (ALU_Op[3]), 
            .n38953(n38953), .n38843(n38843), .n38858(n38858), .n38870(n38870), 
            .n38861(n38861), .n38916(n38916), .last_tstate(last_tstate), 
            .\Special_LD[0] (Special_LD[0]), .n38989(n38989), .n38822(n38822), 
            .n38907(n38907), .n38766(n38766), .n33964(n33964), .clk_op_enable_19(clk_op_enable_19), 
            .\Set_BusA_To[0] (\Set_BusA_To[0] ), .BTR_r_N_970(BTR_r_N_970), 
            .n38855(n38855), .n37956(n37956), .n38918(n38918), .Halt_FF(Halt_FF), 
            .n35644(n35644), .n12(n12), .n19(n19), .n38038(n38038), 
            .\Fp[3] (Fp[3]), .n38039(n38039), .n13(n13), .n2580(n2578[6]), 
            .n38655(n38655), .n2583(n2578[3]), .n2582(n2578[4]), .n17821(n17821), 
            .n17828(n17828), .n2585(n2578[1]), .n24589(n24589), .n35223(n35223), 
            .n2581(n2578[5]), .n34348(n34348), .n38900(n38900), .n38920(n38920), 
            .n41009(n41009), .n38744(n38744), .RstP_N_1517(RstP_N_1517), 
            .n38681(n38681), .n38977(n38977), .n34774(n34774), .n38926(n38926), 
            .n38898(n38898), .\BusA[7] (BusA[7]), .\BusA[6] (BusA[6]), 
            .n14303(n14303), .n41014(n41014), .n38696(n38696), .n9781(n9781), 
            .\ts[4] (ts[4]), .n38710(n38710), .n38829(n38829), .n24(n24_adj_2011), 
            .n8(n8_adj_2012), .n10_adj_7(n10_adj_1930), .Read_To_Reg(Read_To_Reg), 
            .n38902(n38902), .n6788({n6788}), .n10_adj_8(n10_adj_27), 
            .\F[0] (F[0]), .n31745(n31745), .n38848(n38848), .n38767(n38767), 
            .I_BTR(I_BTR), .n23587(n23587), .n34332(n34332), .n4(n4_adj_1998), 
            .n26(n26), .n38650(n38650), .n38914(n38914), .Alternate(Alternate), 
            .Alternate_N_904(Alternate_N_904), .n31(n31), .n34532(n34532), 
            .n38832(n38832), .n38675(n38675), .n39003(n39003), .n1165(n1165), 
            .mcycles_d({mcycles_d}), .n38919(n38919), .n31476(n31476), 
            .\tstates[2] (tstates[2]), .n38669(n38669), .n38830(n38830), 
            .n38873(n38873), .\mc[4] (mc[4]), .\MCycles_2__N_1162[2] (MCycles_2__N_1162[2]), 
            .n38996(n38996), .n38439(n38439), .n10599(n10599), .n38764(n38764), 
            .n40994(n40994), .n35143(n35143), .n38727(n38727), .n23(n23), 
            .n38903(n38903), .\mc[5] (mc[5]), .Set_Addr_To_2__N_1418({Open_15, 
            Set_Addr_To_2__N_1418[1], Open_16}), .Set_Addr_To({Set_Addr_To_c[2:1], 
            Set_Addr_To[0]}), .n38917(n38917), .n34604(n34604), .n38769(n38769), 
            .n38720(n38720), .clk_op_enable_60(clk_op_enable_60), .n34027(n34027), 
            .n38691(n38691), .\ts[3] (ts[3]), .n8_adj_9(n8_adj_1920), 
            .n6(n6_adj_1965), .n10569(n10569), .n39004(n39004), .n34438(n34438), 
            .n24220(n24220), .n8_adj_10(n8_adj_2010), .n12_adj_11(n12_adj_1980), 
            .n68(n68), .n12303(n12303), .\Set_BusA_To_3__N_1025[3] (Set_BusA_To_3__N_1025[3]), 
            .n24451(n24451), .n43(n43), .n5(n5_adj_1969), .clk_op_enable_107(clk_op_enable_107), 
            .Read_To_Reg_N_1457(Read_To_Reg_N_1457), .n10081(n10081), .\tstates[1] (tstates[1]), 
            .n15(n15_adj_1943), .\RegAddrB_r[1] (RegAddrB_r[1]), .\RegAddrB[1] (RegAddrB[1]), 
            .n38730(n38730), .n24398(n24398), .n38731(n38731), .n38790(n38790), 
            .n33709(n33709), .\IncDec_16_3__N_1017[3] (IncDec_16_3__N_1017[3]), 
            .n12269(n12269), .n38712(n38712), .n63(n63), .n34785(n34785), 
            .\tstate[2] (\tstate[2] ), .n47(n47_adj_1984), .n28(n28_adj_1979), 
            .n949(n949), .\PC16_B_15__N_571[15] (PC16_B_15__N_571[15]), 
            .n38682(n38682), .JumpE_N_1512(JumpE_N_1512), .n31793(n31793), 
            .n8_adj_12(n8), .\ALU_Op_r[1] (ALU_Op_r[1]), .n1894(n1889[3]), 
            .n34801(n34801), .n38950(n38950), .n1896(n1889[1]), .n38794(n38794), 
            .\Q_7__N_1723[0] (Q_7__N_1723[0]), .n1177({n1177}), .\BusA[1] (BusA[1]), 
            .\BusA[2] (BusA[2]), .\BusA[3] (BusA[3]), .\F[2] (F[2]), .\F[7] (F[7]), 
            .\F[6] (F[6]), .n38775(n38775), .n38888(n38888), .n34535(n34535), 
            .n15_adj_13(n15_adj_1961), .n35205(n35205), .n34344(n34344), 
            .n37122(n37122), .n38847(n38847), .n38809(n38809), .n38952(n38952), 
            .\TStates_2__N_1012[0] (TStates_2__N_1012[0]), .n57(n57), .n34366(n34366), 
            .n6_adj_14(n6_adj_1937), .n7(n7_adj_1978), .n8_adj_15(n8_adj_1977), 
            .n4_adj_16(n4_adj_1935), .n20(n20_adj_1941), .n12_adj_17(n12_adj_1940), 
            .n8_adj_18(n8_adj_1939), .n11(n11), .n12273(n12273), .\IncDec_16[1] (IncDec_16[1]), 
            .n12271(n12271), .\IncDec_16[2] (IncDec_16[2]), .n33744(n33744), 
            .n38654(n38654), .n2286(n2286), .n16(n16), .n33082(n33082), 
            .n35478(n35478), .n38860(n38860), .\IncDec_16[0] (IncDec_16[0]), 
            .n38765(n38765), .n17129(n17129), .n6_adj_19(n6_adj_1938), 
            .n38756(n38756), .n11_adj_20(n11_adj_1982), .n38438(n38438), 
            .n14311(n14311), .\Set_BusA_To[1] (\Set_BusA_To[1] ), .n12_adj_21(n12_adj_1981), 
            .\Set_BusA_To[2] (\Set_BusA_To[2] ), .n33038(n33038), .n32886(n32886), 
            .n32840(n32840), .n20_adj_22(n20), .n28_adj_23(n28), .n10083(n10083), 
            .n14308(n14308), .write(write), .n35199(n35199), .n34792(n34792), 
            .n34500(n34500), .Set_BusB_To({Set_BusB_To}), .n24402(n24402), 
            .n38768(n38768), .n35215(n35215), .iorq(iorq), .n38840(n38840), 
            .n609(n609), .n6821({n6821}), .NoRead_N_1544(NoRead_N_1544), 
            .n38787(n38787), .n3(n3_adj_1936), .\tstate[1] (tstate[1]), 
            .n38713(n38713), .n4_adj_24(n4_adj_2007), .RegBusC({RegBusC[15:11], 
            \RegBusC[10] , RegBusC[9:0]}), .SP16({SP16}), .n2849({n2849}), 
            .n35282(n35282), .n925(n925), .n23793(n23793), .n15_adj_25(n15_adj_1942), 
            .n38770(n38770), .n8_adj_26(n8_adj_1968), .n34279(n34279), 
            .n38729(n38729), .n41008(n41008)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(220[86] 274[7])
    tv80_alu i_alu (.F_Out_7__N_1643(F_Out_7__N_1643), .n41003(n41003), 
            .n37276(n37276), .\BusA[6] (BusA[6]), .VCC_net(VCC_net), .\BusA[7] (BusA[7]), 
            .BusB({BusB}), .Q_7__N_1723({Open_17, Open_18, Open_19, 
            Open_20, Open_21, Open_22, Open_23, Open_24, Q_7__N_1723[0]}), 
            .ALU_Op_r({ALU_Op_r}), .n1906(n1898[0]), .n38818(n38818), 
            .\F[0] (F[0]), .\BusA[1] (BusA[1]), .n38872(n38872), .n12320(n12320), 
            .\F[4] (F[4]), .\BusA[2] (BusA[2]), .\Q_v[7] (Q_v[7]), .n1940(n1933[1]), 
            .n38859(n38859), .\BusA[3] (BusA[3]), .\BusA[4] (BusA[4]), 
            .Save_ALU_r(Save_ALU_r), .n34811(n34811), .n38760(n38760), 
            .n35745(n35745), .\BusA[5] (BusA[5]), .\Set_BusA_To_3__N_1207[0] (Set_BusA_To_3__N_1207[0]), 
            .\IR[4] (IR[4]), .n38950(n38950), .\IR[5] (IR[5]), .Q_7__N_1612({Q_7__N_1612}), 
            .F_Out_7__N_1641(F_Out_7__N_1641), .n12313(n12313), .Q_7__N_1571(Q_7__N_1571), 
            .n41020(n41020), .n38867(n38867), .n1904(n1898[2]), .n14303(n14303), 
            .\Q_7__N_1604[7] (Q_7__N_1604[7]), .n41022(n41022), .n38952(n38952), 
            .n38955(n38955), .n38956(n38956), .n38959(n38959), .F_Out_7__N_1639(F_Out_7__N_1639), 
            .n38965(n38965), .n6(n6_adj_1971), .F_Out_7__N_1666(F_Out_7__N_1666), 
            .n23643(n23643), .n36003(n36003), .n17(n17), .RegWEH_N_888(RegWEH_N_888), 
            .n37224(n37224), .n12324(n12324), .\F_Out[2] (F_Out[2]), .\F_Out[6] (F_Out[6]), 
            .F_Out_7__N_1668(n715[0]), .n38947(n38947), .n22(n22), .n38711(n38711), 
            .n24589(n24589), .n25(n25), .n38975(n38975), .n38886(n38886), 
            .F_Out_7__N_1656(n715[4]), .n6_adj_1(n6_adj_1988), .ISet({ISet}), 
            .n24(n24), .n6_adj_2(n6_adj_1987), .n6_adj_3(n6_adj_1991), 
            .n6_adj_4(n6_adj_1989), .n6_adj_5(n6_adj_1990), .n6_adj_6(n6_adj_1992), 
            .n41005(n41005), .n1902(n1898[4]), .n2350(n2349[7]), .n12317(n12317), 
            .PreserveC_r(PreserveC_r), .n35676(n35676), .n1901(n1898[5]), 
            .\F[1] (F[1]), .\Q_7__N_1706[7] (Q_7__N_1706[7]), .n2351(n2349[6]), 
            .n38870(n38870), .n1900(n1898[6]), .n908(n900[0]), .\Save_Mux[0] (Save_Mux[0]), 
            .n38688(n38688), .\F_Out[0] (F_Out[0]), .n38861(n38861), .n1899(n1898[7]), 
            .n37523(n37523), .n37520(n37520), .n2352(n2349[5]), .\ALU_Q[3] (ALU_Q[3]), 
            .\F_Out[3] (F_Out[3]), .n37950(n37950), .n37951(n37951), .Z16_r(Z16_r), 
            .Arith16_r(Arith16_r), .\F[6] (F[6]), .n37337(n37337), .n37212(n37212), 
            .n1896(n1889[1]), .n1894(n1889[3]), .n38795(n38795), .n2935(n2934[7]), 
            .n39022(n39022), .n2353(n2349[4]), .n9479(n9479), .n2354(n2349[3]), 
            .n14(n14_adj_1983), .n32178(n32178), .\ALU_Q[1] (ALU_Q[1]), 
            .n2355(n2349[2]), .n38931(n38931), .n2356(n2349[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(276[84] 288[7])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80_reg
//

module tv80_reg (\RegAddrB[2] , RegBusB, n36260, n36261, \RegAddrB[1] , 
            n36262, n36263, RegsH_2_0, clk_op, RegDIH, RegsH_3_6, 
            RegsL_0_2, RegDIL, RegsL_0_3, RegsL_0_7, RegsH_4_3, RegsL_1_1, 
            RegsL_0_6, RegsL_0_0, RegsL_0_1, RegsL_0_5, RegsH_6_1, 
            RegsH_4_2, RegsH_6_5, RegsH_2_1, RegsH_1_5, n36255, n36256, 
            RegsH_3_3, RegsH_4_7, RegsH_1_4, RegsH_1_3, RegsH_1_2, 
            RegsH_1_1, RegsH_1_0, RegsH_0_7, RegsH_6_2, RegsH_6_3, 
            RegsH_6_4, RegsH_0_6, RegsH_4_6, RegsH_5_0, RegsL_1_0, 
            RegsH_0_5, RegsH_6_6, RegsH_7_6, RegAddrC, RegsH_5_6, 
            RegsH_3_4, RegsH_3_5, RegsH_2_6, RegsH_1_6, RegsH_0_4, 
            RegsH_5_3, RegsH_6_7, RegsH_7_7, RegsH_5_1, RegsH_5_5, 
            RegsH_5_7, RegsH_6_0, n36267, n36268, RegsH_5_4, RegsH_5_2, 
            RegsH_0_3, n36269, n36270, n36274, n36275, n38660, RegAddrA, 
            RegsH_4_5, RegsH_0_2, RegBusC, RegsH_0_1, RegsH_4_4, RegsL_0_4, 
            RegsH_0_0, n36276, n36277, RegsH_4_1, RegsH_4_0, RegsH_3_7, 
            RegsH_7_5, n36281, n36282, RegsH_3_1, n36283, n36284, 
            RegsH_7_1, RegsH_7_2, RegsH_7_0, RegsH_7_3, n36176, n36177, 
            RegsH_7_4, RegsL_6_6, RegsL_7_6, RegsL_4_6, RegsL_5_6, 
            RegsL_2_6, RegsL_3_6, n36178, n36179, RegsL_1_6, RegsL_6_2, 
            RegsL_7_2, RegsL_4_2, RegsL_5_2, n36183, n36184, RegsL_2_2, 
            RegsL_3_2, RegsL_1_2, RegsH_3_2, RegsL_6_4, RegsL_7_4, 
            RegsL_4_4, RegsL_5_4, RegsH_2_2, RegsH_2_4, RegsL_2_4, 
            RegsL_3_4, RegsL_1_4, RegsH_2_5, RegsH_2_7, RegsL_6_0, 
            RegsL_7_0, RegsH_3_0, RegsH_1_7, RegsL_6_7, RegsL_7_7, 
            RegsH_2_3, RegsL_4_7, RegsL_5_7, RegsL_2_7, RegsL_3_7, 
            RegsL_1_7, n36185, n36186, RegsL_6_3, RegsL_7_3, RegsL_4_3, 
            RegsL_5_3, RegsL_2_3, RegsL_3_3, RegsL_1_3, RegsL_6_1, 
            RegsL_7_1, RegsL_4_1, RegsL_5_1, RegsL_2_1, RegsL_3_1, 
            n36190, n36191, n36192, n36193, RegsL_4_0, RegsL_5_0, 
            RegsL_2_0, RegsL_3_0, RegsL_6_5, RegsL_7_5, RegsL_4_5, 
            RegsL_5_5, RegsL_2_5, RegsL_3_5, RegsL_1_5, n38658, n36197, 
            n36198, n36199, n36200, n36204, n36205, n36206, n36207, 
            n36211, n36212, n36213, n36214, n36218, n36219, n36220, 
            n36221, n36225, n36226, n36227, n36228, n36232, n36233, 
            n36234, n36235, RegBusA, n36239, n36240, n36241, n36242, 
            n36246, n36247, n36248, n36249, n36253, n36254) /* synthesis syn_module_defined=1 */ ;
    input \RegAddrB[2] ;
    output [15:0]RegBusB;
    input n36260;
    input n36261;
    input \RegAddrB[1] ;
    input n36262;
    input n36263;
    output RegsH_2_0;
    input clk_op;
    input [7:0]RegDIH;
    output RegsH_3_6;
    output RegsL_0_2;
    input [7:0]RegDIL;
    output RegsL_0_3;
    output RegsL_0_7;
    output RegsH_4_3;
    output RegsL_1_1;
    output RegsL_0_6;
    output RegsL_0_0;
    output RegsL_0_1;
    output RegsL_0_5;
    output RegsH_6_1;
    output RegsH_4_2;
    output RegsH_6_5;
    output RegsH_2_1;
    output RegsH_1_5;
    input n36255;
    input n36256;
    output RegsH_3_3;
    output RegsH_4_7;
    output RegsH_1_4;
    output RegsH_1_3;
    output RegsH_1_2;
    output RegsH_1_1;
    output RegsH_1_0;
    output RegsH_0_7;
    output RegsH_6_2;
    output RegsH_6_3;
    output RegsH_6_4;
    output RegsH_0_6;
    output RegsH_4_6;
    output RegsH_5_0;
    output RegsL_1_0;
    output RegsH_0_5;
    output RegsH_6_6;
    output RegsH_7_6;
    input [2:0]RegAddrC;
    output RegsH_5_6;
    output RegsH_3_4;
    output RegsH_3_5;
    output RegsH_2_6;
    output RegsH_1_6;
    output RegsH_0_4;
    output RegsH_5_3;
    output RegsH_6_7;
    output RegsH_7_7;
    output RegsH_5_1;
    output RegsH_5_5;
    output RegsH_5_7;
    output RegsH_6_0;
    input n36267;
    input n36268;
    output RegsH_5_4;
    output RegsH_5_2;
    output RegsH_0_3;
    input n36269;
    input n36270;
    input n36274;
    input n36275;
    input n38660;
    input [2:0]RegAddrA;
    output RegsH_4_5;
    output RegsH_0_2;
    output [15:0]RegBusC;
    output RegsH_0_1;
    output RegsH_4_4;
    output RegsL_0_4;
    output RegsH_0_0;
    input n36276;
    input n36277;
    output RegsH_4_1;
    output RegsH_4_0;
    output RegsH_3_7;
    output RegsH_7_5;
    input n36281;
    input n36282;
    output RegsH_3_1;
    input n36283;
    input n36284;
    output RegsH_7_1;
    output RegsH_7_2;
    output RegsH_7_0;
    output RegsH_7_3;
    input n36176;
    input n36177;
    output RegsH_7_4;
    output RegsL_6_6;
    output RegsL_7_6;
    output RegsL_4_6;
    output RegsL_5_6;
    output RegsL_2_6;
    output RegsL_3_6;
    input n36178;
    input n36179;
    output RegsL_1_6;
    output RegsL_6_2;
    output RegsL_7_2;
    output RegsL_4_2;
    output RegsL_5_2;
    input n36183;
    input n36184;
    output RegsL_2_2;
    output RegsL_3_2;
    output RegsL_1_2;
    output RegsH_3_2;
    output RegsL_6_4;
    output RegsL_7_4;
    output RegsL_4_4;
    output RegsL_5_4;
    output RegsH_2_2;
    output RegsH_2_4;
    output RegsL_2_4;
    output RegsL_3_4;
    output RegsL_1_4;
    output RegsH_2_5;
    output RegsH_2_7;
    output RegsL_6_0;
    output RegsL_7_0;
    output RegsH_3_0;
    output RegsH_1_7;
    output RegsL_6_7;
    output RegsL_7_7;
    output RegsH_2_3;
    output RegsL_4_7;
    output RegsL_5_7;
    output RegsL_2_7;
    output RegsL_3_7;
    output RegsL_1_7;
    input n36185;
    input n36186;
    output RegsL_6_3;
    output RegsL_7_3;
    output RegsL_4_3;
    output RegsL_5_3;
    output RegsL_2_3;
    output RegsL_3_3;
    output RegsL_1_3;
    output RegsL_6_1;
    output RegsL_7_1;
    output RegsL_4_1;
    output RegsL_5_1;
    output RegsL_2_1;
    output RegsL_3_1;
    input n36190;
    input n36191;
    input n36192;
    input n36193;
    output RegsL_4_0;
    output RegsL_5_0;
    output RegsL_2_0;
    output RegsL_3_0;
    output RegsL_6_5;
    output RegsL_7_5;
    output RegsL_4_5;
    output RegsL_5_5;
    output RegsL_2_5;
    output RegsL_3_5;
    output RegsL_1_5;
    input n38658;
    input n36197;
    input n36198;
    input n36199;
    input n36200;
    input n36204;
    input n36205;
    input n36206;
    input n36207;
    input n36211;
    input n36212;
    input n36213;
    input n36214;
    input n36218;
    input n36219;
    input n36220;
    input n36221;
    input n36225;
    input n36226;
    input n36227;
    input n36228;
    input n36232;
    input n36233;
    input n36234;
    input n36235;
    output [15:0]RegBusA;
    input n36239;
    input n36240;
    input n36241;
    input n36242;
    input n36246;
    input n36247;
    input n36248;
    input n36249;
    input n36253;
    input n36254;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n36257, n36258, n36264, n36265;
    wire [7:0]n1;
    wire [7:0]n1_adj_1917;
    
    wire n36347, n36346, n36345, n36344, n36340, n36271, n36272, 
        n36278, n36339, n36019, n36020, n36026, n36027, n36033, 
        n36034, n36279, n36040, n36041, n36047, n36048, n36054, 
        n36055, n36061, n36062, n36068, n36069, n36075, n36076, 
        n36292, n36293, n36299, n36300, n36306, n36307, n36327, 
        n36328, n36334, n36335, n36341, n36342, n36348, n36349, 
        n36015, n36016, n36017, n36018, n36285, n36286, n36022, 
        n36023, n36024, n36025, n36029, n36030, n36031, n36032, 
        n36180, n36172, n36036, n36037, n36171, n36170, n36169, 
        n36165, n36038, n36039, n36164, n36163, n36043, n36044, 
        n36181, n36162, n36045, n36046, n36050, n36051, n36158, 
        n36157, n36052, n36053, n36187, n36156, n36155, n36319, 
        n36057, n36058, n36059, n36060, n36318, n36317, n36316, 
        n36151, n36150, n36298, n36149, n36148, n36144, n36143, 
        n36142, n36141, n36137, n36136, n36338, n36135, n36134, 
        n36130, n36129, n36188, n36128, n36127, n36064, n36065, 
        n36312, n36311, n36310, n36309, n36123, n36122, n36066, 
        n36067, n36121, n36120, n36116, n36115, n36114, n36113, 
        n36109, n36108, n36107, n36106, n36194, n36071, n36072, 
        n36102, n36101, n36073, n36074, n36288, n36289, n36100, 
        n36290, n36291, n36099, n36295, n36296, n36297, n36195, 
        n36095, n36094, n36093, n36092, n36088, n36087, n36086, 
        n36085, n36081, n36080, n36079, n36078, n36337, n36333, 
        n36332, n36302, n36303, n36304, n36305, n36331, n36323, 
        n36324, n36330, n36325, n36326, n36201, n36202, n36208, 
        n36209, n36215, n36216, n36222, n36223, n36229, n36230, 
        n36236, n36237, n36082, n36083, n36089, n36090, n36096, 
        n36097, n36103, n36104, n36110, n36111, n36117, n36118, 
        n36124, n36125, n36313, n36314, n36131, n36132, n36138, 
        n36139, n36145, n36146, n36152, n36153, n36320, n36321, 
        n36159, n36160, n36166, n36167, n36173, n36174, n36243, 
        n36244, n36250, n36251;
    
    L6MUX21 i32751 (.D0(n36257), .D1(n36258), .SD(\RegAddrB[2] ), .Z(RegBusB[4]));
    PFUMX i32756 (.BLUT(n36260), .ALUT(n36261), .C0(\RegAddrB[1] ), .Z(n36264));
    PFUMX i32757 (.BLUT(n36262), .ALUT(n36263), .C0(\RegAddrB[1] ), .Z(n36265));
    FD1P3AX i80_81 (.D(RegDIH[0]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i80_81.GSR = "ENABLED";
    FD1P3AX i122_123 (.D(RegDIH[6]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i122_123.GSR = "ENABLED";
    FD1P3AX i38_39 (.D(RegDIL[2]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i38_39.GSR = "ENABLED";
    FD1P3AX i41_42 (.D(RegDIL[3]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i41_42.GSR = "ENABLED";
    FD1P3AX i53_54 (.D(RegDIL[7]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i53_54.GSR = "ENABLED";
    FD1P3AX i137_138 (.D(RegDIH[3]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i137_138.GSR = "ENABLED";
    FD1P3AX i59_60 (.D(RegDIL[1]), .SP(n1_adj_1917[1]), .CK(clk_op), .Q(RegsL_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i59_60.GSR = "ENABLED";
    FD1P3AX i50_51 (.D(RegDIL[6]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i50_51.GSR = "ENABLED";
    FD1P3AX i32_33 (.D(RegDIL[0]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i32_33.GSR = "ENABLED";
    FD1P3AX i35_36 (.D(RegDIL[1]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i35_36.GSR = "ENABLED";
    FD1P3AX i47_48 (.D(RegDIL[5]), .SP(n1_adj_1917[0]), .CK(clk_op), .Q(RegsL_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i47_48.GSR = "ENABLED";
    FD1P3AX i179_180 (.D(RegDIH[1]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i179_180.GSR = "ENABLED";
    FD1P3AX i134_135 (.D(RegDIH[2]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i134_135.GSR = "ENABLED";
    FD1P3AX i191_192 (.D(RegDIH[5]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i191_192.GSR = "ENABLED";
    FD1P3AX i83_84 (.D(RegDIH[1]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i83_84.GSR = "ENABLED";
    FD1P3AX i71_72 (.D(RegDIH[5]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i71_72.GSR = "ENABLED";
    PFUMX i32750 (.BLUT(n36255), .ALUT(n36256), .C0(\RegAddrB[1] ), .Z(n36258));
    FD1P3AX i113_114 (.D(RegDIH[3]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i113_114.GSR = "ENABLED";
    FD1P3AX i149_150 (.D(RegDIH[7]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i149_150.GSR = "ENABLED";
    FD1P3AX i68_69 (.D(RegDIH[4]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i68_69.GSR = "ENABLED";
    FD1P3AX i65_66 (.D(RegDIH[3]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i65_66.GSR = "ENABLED";
    FD1P3AX i62_63 (.D(RegDIH[2]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i62_63.GSR = "ENABLED";
    FD1P3AX i59_60_adj_446 (.D(RegDIH[1]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i59_60_adj_446.GSR = "ENABLED";
    FD1P3AX i56_57 (.D(RegDIH[0]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i56_57.GSR = "ENABLED";
    FD1P3AX i53_54_adj_447 (.D(RegDIH[7]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i53_54_adj_447.GSR = "ENABLED";
    FD1P3AX i182_183 (.D(RegDIH[2]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i182_183.GSR = "ENABLED";
    FD1P3AX i185_186 (.D(RegDIH[3]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i185_186.GSR = "ENABLED";
    FD1P3AX i188_189 (.D(RegDIH[4]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i188_189.GSR = "ENABLED";
    FD1P3AX i50_51_adj_448 (.D(RegDIH[6]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i50_51_adj_448.GSR = "ENABLED";
    FD1P3AX i146_147 (.D(RegDIH[6]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i146_147.GSR = "ENABLED";
    FD1P3AX i152_153 (.D(RegDIH[0]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i152_153.GSR = "ENABLED";
    FD1P3AX i56_57_adj_449 (.D(RegDIL[0]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i56_57_adj_449.GSR = "ENABLED";
    FD1P3AX i47_48_adj_450 (.D(RegDIH[5]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i47_48_adj_450.GSR = "ENABLED";
    ORCALUT4 i32839_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrC[0]), 
            .Z(n36347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32839_3_lut.init = 16'hcaca;
    ORCALUT4 i32838_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrC[0]), 
            .Z(n36346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32838_3_lut.init = 16'hcaca;
    FD1P3AX i116_117 (.D(RegDIH[4]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i116_117.GSR = "ENABLED";
    FD1P3AX i119_120 (.D(RegDIH[5]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i119_120.GSR = "ENABLED";
    ORCALUT4 i32837_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrC[0]), 
            .Z(n36345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32837_3_lut.init = 16'hcaca;
    ORCALUT4 i32836_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrC[0]), 
            .Z(n36344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32836_3_lut.init = 16'hcaca;
    FD1P3AX i44_45 (.D(RegDIH[4]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i44_45.GSR = "ENABLED";
    FD1P3AX i161_162 (.D(RegDIH[3]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i161_162.GSR = "ENABLED";
    ORCALUT4 i32832_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrC[0]), 
            .Z(n36340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32832_3_lut.init = 16'hcaca;
    FD1P3AX i155_156 (.D(RegDIH[1]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i155_156.GSR = "ENABLED";
    FD1P3AX i167_168 (.D(RegDIH[5]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i167_168.GSR = "ENABLED";
    FD1P3AX i173_174 (.D(RegDIH[7]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i173_174.GSR = "ENABLED";
    FD1P3AX i176_177 (.D(RegDIH[0]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i176_177.GSR = "ENABLED";
    PFUMX i32763 (.BLUT(n36267), .ALUT(n36268), .C0(\RegAddrB[1] ), .Z(n36271));
    FD1P3AX i164_165 (.D(RegDIH[4]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i164_165.GSR = "ENABLED";
    FD1P3AX i170_171 (.D(RegDIH[6]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i170_171.GSR = "ENABLED";
    FD1P3AX i158_159 (.D(RegDIH[2]), .SP(n1[5]), .CK(clk_op), .Q(RegsH_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i158_159.GSR = "ENABLED";
    FD1P3AX i41_42_adj_451 (.D(RegDIH[3]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i41_42_adj_451.GSR = "ENABLED";
    PFUMX i32764 (.BLUT(n36269), .ALUT(n36270), .C0(\RegAddrB[1] ), .Z(n36272));
    PFUMX i32770 (.BLUT(n36274), .ALUT(n36275), .C0(\RegAddrB[1] ), .Z(n36278));
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n38660), .B(RegAddrA[0]), .C(RegAddrA[2]), 
            .D(RegAddrA[1]), .Z(n1_adj_1917[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i32831_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrC[0]), 
            .Z(n36339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32831_3_lut.init = 16'hcaca;
    FD1P3AX i143_144 (.D(RegDIH[5]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i143_144.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_452 (.A(n38660), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1917[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_452.init = 16'h8000;
    FD1P3AX i38_39_adj_453 (.D(RegDIH[2]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i38_39_adj_453.GSR = "ENABLED";
    L6MUX21 i32513 (.D0(n36019), .D1(n36020), .SD(RegAddrC[2]), .Z(RegBusC[13]));
    FD1P3AX i35_36_adj_454 (.D(RegDIH[1]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i35_36_adj_454.GSR = "ENABLED";
    FD1P3AX i140_141 (.D(RegDIH[4]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i140_141.GSR = "ENABLED";
    L6MUX21 i32520 (.D0(n36026), .D1(n36027), .SD(RegAddrC[2]), .Z(RegBusC[12]));
    FD1P3AX i44_45_adj_455 (.D(RegDIL[4]), .SP(n1_adj_1917[0]), .CK(clk_op), 
            .Q(RegsL_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i44_45_adj_455.GSR = "ENABLED";
    L6MUX21 i32527 (.D0(n36033), .D1(n36034), .SD(RegAddrC[2]), .Z(RegBusC[11]));
    FD1P3AX i32_33_adj_456 (.D(RegDIH[0]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i32_33_adj_456.GSR = "ENABLED";
    PFUMX i32771 (.BLUT(n36276), .ALUT(n36277), .C0(\RegAddrB[1] ), .Z(n36279));
    FD1P3AX i131_132 (.D(RegDIH[1]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i131_132.GSR = "ENABLED";
    L6MUX21 i32534 (.D0(n36040), .D1(n36041), .SD(RegAddrC[2]), .Z(RegBusC[10]));
    L6MUX21 i32541 (.D0(n36047), .D1(n36048), .SD(RegAddrC[2]), .Z(RegBusC[9]));
    L6MUX21 i32548 (.D0(n36054), .D1(n36055), .SD(RegAddrC[2]), .Z(RegBusC[8]));
    L6MUX21 i32555 (.D0(n36061), .D1(n36062), .SD(RegAddrC[2]), .Z(RegBusC[7]));
    L6MUX21 i32562 (.D0(n36068), .D1(n36069), .SD(RegAddrC[2]), .Z(RegBusC[6]));
    L6MUX21 i32569 (.D0(n36075), .D1(n36076), .SD(RegAddrC[2]), .Z(RegBusC[5]));
    L6MUX21 i32786 (.D0(n36292), .D1(n36293), .SD(RegAddrC[2]), .Z(RegBusC[1]));
    L6MUX21 i32793 (.D0(n36299), .D1(n36300), .SD(RegAddrC[2]), .Z(RegBusC[0]));
    L6MUX21 i32800 (.D0(n36306), .D1(n36307), .SD(RegAddrC[2]), .Z(RegBusC[4]));
    L6MUX21 i32821 (.D0(n36327), .D1(n36328), .SD(RegAddrC[2]), .Z(RegBusC[3]));
    L6MUX21 i32828 (.D0(n36334), .D1(n36335), .SD(RegAddrC[2]), .Z(RegBusC[2]));
    L6MUX21 i32835 (.D0(n36341), .D1(n36342), .SD(RegAddrC[2]), .Z(RegBusC[15]));
    L6MUX21 i32842 (.D0(n36348), .D1(n36349), .SD(RegAddrC[2]), .Z(RegBusC[14]));
    PFUMX i32511 (.BLUT(n36015), .ALUT(n36016), .C0(RegAddrC[1]), .Z(n36019));
    PFUMX i32512 (.BLUT(n36017), .ALUT(n36018), .C0(RegAddrC[1]), .Z(n36020));
    FD1P3AX i128_129 (.D(RegDIH[0]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i128_129.GSR = "ENABLED";
    FD1P3AX i125_126 (.D(RegDIH[7]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i125_126.GSR = "ENABLED";
    FD1P3AX i215_216 (.D(RegDIH[5]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i215_216.GSR = "ENABLED";
    PFUMX i32777 (.BLUT(n36281), .ALUT(n36282), .C0(\RegAddrB[1] ), .Z(n36285));
    FD1P3AX i218_219 (.D(RegDIH[6]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i218_219.GSR = "ENABLED";
    FD1P3AX i107_108 (.D(RegDIH[1]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i107_108.GSR = "ENABLED";
    PFUMX i32778 (.BLUT(n36283), .ALUT(n36284), .C0(\RegAddrB[1] ), .Z(n36286));
    FD1P3AX i221_222 (.D(RegDIH[7]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i221_222.GSR = "ENABLED";
    FD1P3AX i203_204 (.D(RegDIH[1]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i203_204.GSR = "ENABLED";
    PFUMX i32518 (.BLUT(n36022), .ALUT(n36023), .C0(RegAddrC[1]), .Z(n36026));
    PFUMX i32519 (.BLUT(n36024), .ALUT(n36025), .C0(RegAddrC[1]), .Z(n36027));
    PFUMX i32525 (.BLUT(n36029), .ALUT(n36030), .C0(RegAddrC[1]), .Z(n36033));
    PFUMX i32526 (.BLUT(n36031), .ALUT(n36032), .C0(RegAddrC[1]), .Z(n36034));
    FD1P3AX i194_195 (.D(RegDIH[6]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i194_195.GSR = "ENABLED";
    FD1P3AX i206_207 (.D(RegDIH[2]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i206_207.GSR = "ENABLED";
    FD1P3AX i200_201 (.D(RegDIH[0]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i200_201.GSR = "ENABLED";
    FD1P3AX i209_210 (.D(RegDIH[3]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i209_210.GSR = "ENABLED";
    PFUMX i32672 (.BLUT(n36176), .ALUT(n36177), .C0(\RegAddrB[1] ), .Z(n36180));
    FD1P3AX i197_198 (.D(RegDIH[7]), .SP(n1[6]), .CK(clk_op), .Q(RegsH_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i197_198.GSR = "ENABLED";
    ORCALUT4 i32664_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrA[0]), 
            .Z(n36172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32664_3_lut.init = 16'hcaca;
    PFUMX i32532 (.BLUT(n36036), .ALUT(n36037), .C0(RegAddrC[1]), .Z(n36040));
    ORCALUT4 i32663_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrA[0]), 
            .Z(n36171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32663_3_lut.init = 16'hcaca;
    FD1P3AX i212_213 (.D(RegDIH[4]), .SP(n1[7]), .CK(clk_op), .Q(RegsH_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i212_213.GSR = "ENABLED";
    ORCALUT4 i32662_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrA[0]), 
            .Z(n36170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32662_3_lut.init = 16'hcaca;
    ORCALUT4 i32661_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrA[0]), 
            .Z(n36169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32661_3_lut.init = 16'hcaca;
    ORCALUT4 i32657_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrA[0]), 
            .Z(n36165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32657_3_lut.init = 16'hcaca;
    PFUMX i32533 (.BLUT(n36038), .ALUT(n36039), .C0(RegAddrC[1]), .Z(n36041));
    ORCALUT4 i32656_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrA[0]), 
            .Z(n36164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32656_3_lut.init = 16'hcaca;
    ORCALUT4 i32655_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrA[0]), 
            .Z(n36163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32655_3_lut.init = 16'hcaca;
    PFUMX i32539 (.BLUT(n36043), .ALUT(n36044), .C0(RegAddrC[1]), .Z(n36047));
    PFUMX i32673 (.BLUT(n36178), .ALUT(n36179), .C0(\RegAddrB[1] ), .Z(n36181));
    ORCALUT4 i32654_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrA[0]), 
            .Z(n36162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32654_3_lut.init = 16'hcaca;
    PFUMX i32540 (.BLUT(n36045), .ALUT(n36046), .C0(RegAddrC[1]), .Z(n36048));
    PFUMX i32546 (.BLUT(n36050), .ALUT(n36051), .C0(RegAddrC[1]), .Z(n36054));
    ORCALUT4 i32650_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrA[0]), 
            .Z(n36158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32650_3_lut.init = 16'hcaca;
    ORCALUT4 i32649_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrA[0]), 
            .Z(n36157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32649_3_lut.init = 16'hcaca;
    PFUMX i32547 (.BLUT(n36052), .ALUT(n36053), .C0(RegAddrC[1]), .Z(n36055));
    PFUMX i32679 (.BLUT(n36183), .ALUT(n36184), .C0(\RegAddrB[1] ), .Z(n36187));
    ORCALUT4 i32648_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrA[0]), 
            .Z(n36156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32648_3_lut.init = 16'hcaca;
    ORCALUT4 i32647_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrA[0]), 
            .Z(n36155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32647_3_lut.init = 16'hcaca;
    FD1P3AX i74_75 (.D(RegDIH[6]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i74_75.GSR = "ENABLED";
    FD1P3AX i110_111 (.D(RegDIH[2]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i110_111.GSR = "ENABLED";
    ORCALUT4 i32811_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrA[0]), 
            .Z(n36319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32811_3_lut.init = 16'hcaca;
    PFUMX i32553 (.BLUT(n36057), .ALUT(n36058), .C0(RegAddrC[1]), .Z(n36061));
    PFUMX i32554 (.BLUT(n36059), .ALUT(n36060), .C0(RegAddrC[1]), .Z(n36062));
    ORCALUT4 i32810_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrA[0]), 
            .Z(n36318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32810_3_lut.init = 16'hcaca;
    FD1P3AX i86_87 (.D(RegDIH[2]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i86_87.GSR = "ENABLED";
    FD1P3AX i92_93 (.D(RegDIH[4]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i92_93.GSR = "ENABLED";
    ORCALUT4 i32809_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrA[0]), 
            .Z(n36317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32809_3_lut.init = 16'hcaca;
    FD1P3AX i98_99 (.D(RegDIH[6]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i98_99.GSR = "ENABLED";
    ORCALUT4 i32808_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrA[0]), 
            .Z(n36316)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32808_3_lut.init = 16'hcaca;
    ORCALUT4 i32643_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrA[0]), 
            .Z(n36151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32643_3_lut.init = 16'hcaca;
    FD1P3AX i95_96 (.D(RegDIH[5]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i95_96.GSR = "ENABLED";
    ORCALUT4 i32642_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrA[0]), 
            .Z(n36150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32642_3_lut.init = 16'hcaca;
    FD1P3AX i101_102 (.D(RegDIH[7]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i101_102.GSR = "ENABLED";
    ORCALUT4 i32790_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrC[0]), 
            .Z(n36298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32790_3_lut.init = 16'hcaca;
    ORCALUT4 i32641_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrA[0]), 
            .Z(n36149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32641_3_lut.init = 16'hcaca;
    FD1P3AX i104_105 (.D(RegDIH[0]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i104_105.GSR = "ENABLED";
    ORCALUT4 i32640_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrA[0]), 
            .Z(n36148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32640_3_lut.init = 16'hcaca;
    ORCALUT4 i32636_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrA[0]), 
            .Z(n36144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32636_3_lut.init = 16'hcaca;
    FD1P3AX i77_78 (.D(RegDIH[7]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i77_78.GSR = "ENABLED";
    FD1P3AX i89_90 (.D(RegDIH[3]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i89_90.GSR = "ENABLED";
    ORCALUT4 i32635_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrA[0]), 
            .Z(n36143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32635_3_lut.init = 16'hcaca;
    ORCALUT4 i32634_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrA[0]), 
            .Z(n36142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32634_3_lut.init = 16'hcaca;
    ORCALUT4 i32633_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrA[0]), 
            .Z(n36141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32633_3_lut.init = 16'hcaca;
    ORCALUT4 i32629_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrA[0]), 
            .Z(n36137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32629_3_lut.init = 16'hcaca;
    ORCALUT4 i32628_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrA[0]), 
            .Z(n36136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32628_3_lut.init = 16'hcaca;
    ORCALUT4 i32830_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrC[0]), 
            .Z(n36338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32830_3_lut.init = 16'hcaca;
    ORCALUT4 i32627_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrA[0]), 
            .Z(n36135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32627_3_lut.init = 16'hcaca;
    ORCALUT4 i32626_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrA[0]), 
            .Z(n36134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32626_3_lut.init = 16'hcaca;
    ORCALUT4 i32622_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrA[0]), 
            .Z(n36130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32622_3_lut.init = 16'hcaca;
    ORCALUT4 i32621_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrA[0]), 
            .Z(n36129)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32621_3_lut.init = 16'hcaca;
    PFUMX i32680 (.BLUT(n36185), .ALUT(n36186), .C0(\RegAddrB[1] ), .Z(n36188));
    ORCALUT4 i32620_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrA[0]), 
            .Z(n36128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32620_3_lut.init = 16'hcaca;
    ORCALUT4 i32619_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrA[0]), 
            .Z(n36127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32619_3_lut.init = 16'hcaca;
    PFUMX i32560 (.BLUT(n36064), .ALUT(n36065), .C0(RegAddrC[1]), .Z(n36068));
    ORCALUT4 i32804_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrA[0]), 
            .Z(n36312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32804_3_lut.init = 16'hcaca;
    ORCALUT4 i32803_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrA[0]), 
            .Z(n36311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32803_3_lut.init = 16'hcaca;
    ORCALUT4 i32802_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrA[0]), 
            .Z(n36310)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32802_3_lut.init = 16'hcaca;
    ORCALUT4 i32801_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrA[0]), 
            .Z(n36309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32801_3_lut.init = 16'hcaca;
    ORCALUT4 i32615_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrA[0]), 
            .Z(n36123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32615_3_lut.init = 16'hcaca;
    ORCALUT4 i32614_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrA[0]), 
            .Z(n36122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32614_3_lut.init = 16'hcaca;
    PFUMX i32561 (.BLUT(n36066), .ALUT(n36067), .C0(RegAddrC[1]), .Z(n36069));
    ORCALUT4 i32613_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrA[0]), 
            .Z(n36121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32613_3_lut.init = 16'hcaca;
    ORCALUT4 i32612_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrA[0]), 
            .Z(n36120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32612_3_lut.init = 16'hcaca;
    ORCALUT4 i32608_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrA[0]), 
            .Z(n36116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32608_3_lut.init = 16'hcaca;
    ORCALUT4 i32607_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrA[0]), 
            .Z(n36115)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32607_3_lut.init = 16'hcaca;
    ORCALUT4 i32606_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrA[0]), 
            .Z(n36114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32606_3_lut.init = 16'hcaca;
    ORCALUT4 i32605_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrA[0]), 
            .Z(n36113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32605_3_lut.init = 16'hcaca;
    ORCALUT4 i32601_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrA[0]), 
            .Z(n36109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32601_3_lut.init = 16'hcaca;
    ORCALUT4 i32600_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrA[0]), 
            .Z(n36108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32600_3_lut.init = 16'hcaca;
    ORCALUT4 i32599_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrA[0]), 
            .Z(n36107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32599_3_lut.init = 16'hcaca;
    ORCALUT4 i32598_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrA[0]), 
            .Z(n36106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32598_3_lut.init = 16'hcaca;
    PFUMX i32686 (.BLUT(n36190), .ALUT(n36191), .C0(\RegAddrB[1] ), .Z(n36194));
    PFUMX i32567 (.BLUT(n36071), .ALUT(n36072), .C0(RegAddrC[1]), .Z(n36075));
    ORCALUT4 i32594_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrA[0]), 
            .Z(n36102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32594_3_lut.init = 16'hcaca;
    ORCALUT4 i32593_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrA[0]), 
            .Z(n36101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32593_3_lut.init = 16'hcaca;
    PFUMX i32568 (.BLUT(n36073), .ALUT(n36074), .C0(RegAddrC[1]), .Z(n36076));
    PFUMX i32784 (.BLUT(n36288), .ALUT(n36289), .C0(RegAddrC[1]), .Z(n36292));
    ORCALUT4 i32592_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrA[0]), 
            .Z(n36100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32592_3_lut.init = 16'hcaca;
    PFUMX i32785 (.BLUT(n36290), .ALUT(n36291), .C0(RegAddrC[1]), .Z(n36293));
    ORCALUT4 i32591_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrA[0]), 
            .Z(n36099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32591_3_lut.init = 16'hcaca;
    PFUMX i32791 (.BLUT(n36295), .ALUT(n36296), .C0(RegAddrC[1]), .Z(n36299));
    PFUMX i32792 (.BLUT(n36297), .ALUT(n36298), .C0(RegAddrC[1]), .Z(n36300));
    PFUMX i32687 (.BLUT(n36192), .ALUT(n36193), .C0(\RegAddrB[1] ), .Z(n36195));
    ORCALUT4 i32587_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrA[0]), 
            .Z(n36095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32587_3_lut.init = 16'hcaca;
    ORCALUT4 i32586_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrA[0]), 
            .Z(n36094)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32586_3_lut.init = 16'hcaca;
    ORCALUT4 i32585_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrA[0]), 
            .Z(n36093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32585_3_lut.init = 16'hcaca;
    ORCALUT4 i32584_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrA[0]), 
            .Z(n36092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32584_3_lut.init = 16'hcaca;
    ORCALUT4 i32580_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrA[0]), 
            .Z(n36088)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32580_3_lut.init = 16'hcaca;
    ORCALUT4 i32579_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrA[0]), 
            .Z(n36087)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32579_3_lut.init = 16'hcaca;
    ORCALUT4 i32578_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrA[0]), 
            .Z(n36086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32578_3_lut.init = 16'hcaca;
    ORCALUT4 i32577_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrA[0]), 
            .Z(n36085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32577_3_lut.init = 16'hcaca;
    ORCALUT4 i32573_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrA[0]), 
            .Z(n36081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32573_3_lut.init = 16'hcaca;
    ORCALUT4 i32572_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrA[0]), 
            .Z(n36080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32572_3_lut.init = 16'hcaca;
    ORCALUT4 i32571_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrA[0]), 
            .Z(n36079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32571_3_lut.init = 16'hcaca;
    ORCALUT4 i32570_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrA[0]), 
            .Z(n36078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32570_3_lut.init = 16'hcaca;
    ORCALUT4 i32829_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrC[0]), 
            .Z(n36337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32829_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_457 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_457.init = 16'h2000;
    ORCALUT4 i32825_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrC[0]), 
            .Z(n36333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32825_3_lut.init = 16'hcaca;
    ORCALUT4 i32824_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrC[0]), 
            .Z(n36332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32824_3_lut.init = 16'hcaca;
    PFUMX i32798 (.BLUT(n36302), .ALUT(n36303), .C0(RegAddrC[1]), .Z(n36306));
    PFUMX i32799 (.BLUT(n36304), .ALUT(n36305), .C0(RegAddrC[1]), .Z(n36307));
    ORCALUT4 i32823_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrC[0]), 
            .Z(n36331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32823_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_458 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38660), .Z(n1_adj_1917[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_458.init = 16'h2000;
    PFUMX i32819 (.BLUT(n36323), .ALUT(n36324), .C0(RegAddrC[1]), .Z(n36327));
    ORCALUT4 i32822_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrC[0]), 
            .Z(n36330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32822_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_459 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_459.init = 16'h0200;
    FD1P3AX i221_222_adj_460 (.D(RegDIL[7]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i221_222_adj_460.GSR = "ENABLED";
    PFUMX i32820 (.BLUT(n36325), .ALUT(n36326), .C0(RegAddrC[1]), .Z(n36328));
    ORCALUT4 i32818_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrC[0]), 
            .Z(n36326)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32818_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_461 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[1])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_461.init = 16'h1000;
    ORCALUT4 i32789_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrC[0]), 
            .Z(n36297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32789_3_lut.init = 16'hcaca;
    FD1P3AX i218_219_adj_462 (.D(RegDIL[6]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i218_219_adj_462.GSR = "ENABLED";
    FD1P3AX i215_216_adj_463 (.D(RegDIL[5]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i215_216_adj_463.GSR = "ENABLED";
    FD1P3AX i212_213_adj_464 (.D(RegDIL[4]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i212_213_adj_464.GSR = "ENABLED";
    FD1P3AX i209_210_adj_465 (.D(RegDIL[3]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i209_210_adj_465.GSR = "ENABLED";
    FD1P3AX i206_207_adj_466 (.D(RegDIL[2]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i206_207_adj_466.GSR = "ENABLED";
    FD1P3AX i203_204_adj_467 (.D(RegDIL[1]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i203_204_adj_467.GSR = "ENABLED";
    FD1P3AX i200_201_adj_468 (.D(RegDIL[0]), .SP(n1_adj_1917[7]), .CK(clk_op), 
            .Q(RegsL_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i200_201_adj_468.GSR = "ENABLED";
    FD1P3AX i197_198_adj_469 (.D(RegDIL[7]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i197_198_adj_469.GSR = "ENABLED";
    FD1P3AX i194_195_adj_470 (.D(RegDIL[6]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i194_195_adj_470.GSR = "ENABLED";
    FD1P3AX i191_192_adj_471 (.D(RegDIL[5]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i191_192_adj_471.GSR = "ENABLED";
    FD1P3AX i188_189_adj_472 (.D(RegDIL[4]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i188_189_adj_472.GSR = "ENABLED";
    FD1P3AX i185_186_adj_473 (.D(RegDIL[3]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i185_186_adj_473.GSR = "ENABLED";
    FD1P3AX i182_183_adj_474 (.D(RegDIL[2]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i182_183_adj_474.GSR = "ENABLED";
    FD1P3AX i179_180_adj_475 (.D(RegDIL[1]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i179_180_adj_475.GSR = "ENABLED";
    FD1P3AX i176_177_adj_476 (.D(RegDIL[0]), .SP(n1_adj_1917[6]), .CK(clk_op), 
            .Q(RegsL_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i176_177_adj_476.GSR = "ENABLED";
    FD1P3AX i173_174_adj_477 (.D(RegDIL[7]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i173_174_adj_477.GSR = "ENABLED";
    FD1P3AX i170_171_adj_478 (.D(RegDIL[6]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i170_171_adj_478.GSR = "ENABLED";
    FD1P3AX i167_168_adj_479 (.D(RegDIL[5]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i167_168_adj_479.GSR = "ENABLED";
    FD1P3AX i164_165_adj_480 (.D(RegDIL[4]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i164_165_adj_480.GSR = "ENABLED";
    FD1P3AX i161_162_adj_481 (.D(RegDIL[3]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i161_162_adj_481.GSR = "ENABLED";
    FD1P3AX i158_159_adj_482 (.D(RegDIL[2]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i158_159_adj_482.GSR = "ENABLED";
    FD1P3AX i155_156_adj_483 (.D(RegDIL[1]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i155_156_adj_483.GSR = "ENABLED";
    FD1P3AX i152_153_adj_484 (.D(RegDIL[0]), .SP(n1_adj_1917[5]), .CK(clk_op), 
            .Q(RegsL_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i152_153_adj_484.GSR = "ENABLED";
    FD1P3AX i149_150_adj_485 (.D(RegDIL[7]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i149_150_adj_485.GSR = "ENABLED";
    FD1P3AX i146_147_adj_486 (.D(RegDIL[6]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i146_147_adj_486.GSR = "ENABLED";
    FD1P3AX i143_144_adj_487 (.D(RegDIL[5]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i143_144_adj_487.GSR = "ENABLED";
    FD1P3AX i140_141_adj_488 (.D(RegDIL[4]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i140_141_adj_488.GSR = "ENABLED";
    FD1P3AX i137_138_adj_489 (.D(RegDIL[3]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i137_138_adj_489.GSR = "ENABLED";
    FD1P3AX i134_135_adj_490 (.D(RegDIL[2]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i134_135_adj_490.GSR = "ENABLED";
    FD1P3AX i131_132_adj_491 (.D(RegDIL[1]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i131_132_adj_491.GSR = "ENABLED";
    FD1P3AX i128_129_adj_492 (.D(RegDIL[0]), .SP(n1_adj_1917[4]), .CK(clk_op), 
            .Q(RegsL_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i128_129_adj_492.GSR = "ENABLED";
    FD1P3AX i125_126_adj_493 (.D(RegDIL[7]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i125_126_adj_493.GSR = "ENABLED";
    FD1P3AX i122_123_adj_494 (.D(RegDIL[6]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i122_123_adj_494.GSR = "ENABLED";
    FD1P3AX i119_120_adj_495 (.D(RegDIL[5]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i119_120_adj_495.GSR = "ENABLED";
    FD1P3AX i116_117_adj_496 (.D(RegDIL[4]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i116_117_adj_496.GSR = "ENABLED";
    FD1P3AX i113_114_adj_497 (.D(RegDIL[3]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i113_114_adj_497.GSR = "ENABLED";
    FD1P3AX i110_111_adj_498 (.D(RegDIL[2]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i110_111_adj_498.GSR = "ENABLED";
    FD1P3AX i107_108_adj_499 (.D(RegDIL[1]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i107_108_adj_499.GSR = "ENABLED";
    FD1P3AX i104_105_adj_500 (.D(RegDIL[0]), .SP(n1_adj_1917[3]), .CK(clk_op), 
            .Q(RegsL_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i104_105_adj_500.GSR = "ENABLED";
    FD1P3AX i101_102_adj_501 (.D(RegDIL[7]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i101_102_adj_501.GSR = "ENABLED";
    FD1P3AX i98_99_adj_502 (.D(RegDIL[6]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i98_99_adj_502.GSR = "ENABLED";
    FD1P3AX i95_96_adj_503 (.D(RegDIL[5]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i95_96_adj_503.GSR = "ENABLED";
    FD1P3AX i92_93_adj_504 (.D(RegDIL[4]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i92_93_adj_504.GSR = "ENABLED";
    FD1P3AX i89_90_adj_505 (.D(RegDIL[3]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i89_90_adj_505.GSR = "ENABLED";
    FD1P3AX i86_87_adj_506 (.D(RegDIL[2]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i86_87_adj_506.GSR = "ENABLED";
    FD1P3AX i83_84_adj_507 (.D(RegDIL[1]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i83_84_adj_507.GSR = "ENABLED";
    FD1P3AX i80_81_adj_508 (.D(RegDIL[0]), .SP(n1_adj_1917[2]), .CK(clk_op), 
            .Q(RegsL_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i80_81_adj_508.GSR = "ENABLED";
    FD1P3AX i77_78_adj_509 (.D(RegDIL[7]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i77_78_adj_509.GSR = "ENABLED";
    FD1P3AX i74_75_adj_510 (.D(RegDIL[6]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i74_75_adj_510.GSR = "ENABLED";
    FD1P3AX i71_72_adj_511 (.D(RegDIL[5]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i71_72_adj_511.GSR = "ENABLED";
    FD1P3AX i68_69_adj_512 (.D(RegDIL[4]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i68_69_adj_512.GSR = "ENABLED";
    FD1P3AX i65_66_adj_513 (.D(RegDIL[3]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i65_66_adj_513.GSR = "ENABLED";
    FD1P3AX i62_63_adj_514 (.D(RegDIL[2]), .SP(n1_adj_1917[1]), .CK(clk_op), 
            .Q(RegsL_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i62_63_adj_514.GSR = "ENABLED";
    ORCALUT4 i32817_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrC[0]), 
            .Z(n36325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32817_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_515 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_515.init = 16'h0100;
    ORCALUT4 i32816_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrC[0]), 
            .Z(n36324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32816_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_516 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[6])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_516.init = 16'h0800;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_517 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38660), .Z(n1_adj_1917[1])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_517.init = 16'h1000;
    ORCALUT4 i32815_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrC[0]), 
            .Z(n36323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32815_3_lut.init = 16'hcaca;
    PFUMX i32693 (.BLUT(n36197), .ALUT(n36198), .C0(\RegAddrB[1] ), .Z(n36201));
    ORCALUT4 i32797_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrC[0]), 
            .Z(n36305)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32797_3_lut.init = 16'hcaca;
    ORCALUT4 i32796_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrC[0]), 
            .Z(n36304)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32796_3_lut.init = 16'hcaca;
    PFUMX i32694 (.BLUT(n36199), .ALUT(n36200), .C0(\RegAddrB[1] ), .Z(n36202));
    PFUMX i32700 (.BLUT(n36204), .ALUT(n36205), .C0(\RegAddrB[1] ), .Z(n36208));
    PFUMX i32701 (.BLUT(n36206), .ALUT(n36207), .C0(\RegAddrB[1] ), .Z(n36209));
    PFUMX i32707 (.BLUT(n36211), .ALUT(n36212), .C0(\RegAddrB[1] ), .Z(n36215));
    PFUMX i32708 (.BLUT(n36213), .ALUT(n36214), .C0(\RegAddrB[1] ), .Z(n36216));
    PFUMX i32714 (.BLUT(n36218), .ALUT(n36219), .C0(\RegAddrB[1] ), .Z(n36222));
    ORCALUT4 i32794_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrC[0]), 
            .Z(n36302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32794_3_lut.init = 16'hcaca;
    PFUMX i32715 (.BLUT(n36220), .ALUT(n36221), .C0(\RegAddrB[1] ), .Z(n36223));
    ORCALUT4 i32795_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrC[0]), 
            .Z(n36303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32795_3_lut.init = 16'hcaca;
    PFUMX i32826 (.BLUT(n36330), .ALUT(n36331), .C0(RegAddrC[1]), .Z(n36334));
    PFUMX i32721 (.BLUT(n36225), .ALUT(n36226), .C0(\RegAddrB[1] ), .Z(n36229));
    PFUMX i32722 (.BLUT(n36227), .ALUT(n36228), .C0(\RegAddrB[1] ), .Z(n36230));
    PFUMX i32728 (.BLUT(n36232), .ALUT(n36233), .C0(\RegAddrB[1] ), .Z(n36236));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_518 (.A(n38660), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1917[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_518.init = 16'h0200;
    PFUMX i32729 (.BLUT(n36234), .ALUT(n36235), .C0(\RegAddrB[1] ), .Z(n36237));
    L6MUX21 i32576 (.D0(n36082), .D1(n36083), .SD(RegAddrA[2]), .Z(RegBusA[5]));
    L6MUX21 i32583 (.D0(n36089), .D1(n36090), .SD(RegAddrA[2]), .Z(RegBusA[0]));
    L6MUX21 i32590 (.D0(n36096), .D1(n36097), .SD(RegAddrA[2]), .Z(RegBusA[9]));
    ORCALUT4 i32788_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrC[0]), 
            .Z(n36296)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32788_3_lut.init = 16'hcaca;
    ORCALUT4 i32787_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrC[0]), 
            .Z(n36295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32787_3_lut.init = 16'hcaca;
    ORCALUT4 i32783_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrC[0]), 
            .Z(n36291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32783_3_lut.init = 16'hcaca;
    ORCALUT4 i32782_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrC[0]), 
            .Z(n36290)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32782_3_lut.init = 16'hcaca;
    L6MUX21 i32597 (.D0(n36103), .D1(n36104), .SD(RegAddrA[2]), .Z(RegBusA[8]));
    L6MUX21 i32604 (.D0(n36110), .D1(n36111), .SD(RegAddrA[2]), .Z(RegBusA[1]));
    ORCALUT4 i32781_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrC[0]), 
            .Z(n36289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32781_3_lut.init = 16'hcaca;
    L6MUX21 i32611 (.D0(n36117), .D1(n36118), .SD(RegAddrA[2]), .Z(RegBusA[12]));
    ORCALUT4 i32780_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrC[0]), 
            .Z(n36288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32780_3_lut.init = 16'hcaca;
    ORCALUT4 i32566_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrC[0]), 
            .Z(n36074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32566_3_lut.init = 16'hcaca;
    ORCALUT4 i32565_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrC[0]), 
            .Z(n36073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32565_3_lut.init = 16'hcaca;
    ORCALUT4 i32564_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrC[0]), 
            .Z(n36072)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32564_3_lut.init = 16'hcaca;
    ORCALUT4 i32563_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrC[0]), 
            .Z(n36071)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32563_3_lut.init = 16'hcaca;
    L6MUX21 i32618 (.D0(n36124), .D1(n36125), .SD(RegAddrA[2]), .Z(RegBusA[11]));
    L6MUX21 i32807 (.D0(n36313), .D1(n36314), .SD(RegAddrA[2]), .Z(RegBusA[3]));
    L6MUX21 i32625 (.D0(n36131), .D1(n36132), .SD(RegAddrA[2]), .Z(RegBusA[13]));
    L6MUX21 i32632 (.D0(n36138), .D1(n36139), .SD(RegAddrA[2]), .Z(RegBusA[10]));
    L6MUX21 i32639 (.D0(n36145), .D1(n36146), .SD(RegAddrA[2]), .Z(RegBusA[7]));
    L6MUX21 i32646 (.D0(n36152), .D1(n36153), .SD(RegAddrA[2]), .Z(RegBusA[15]));
    L6MUX21 i32814 (.D0(n36320), .D1(n36321), .SD(RegAddrA[2]), .Z(RegBusA[4]));
    L6MUX21 i32653 (.D0(n36159), .D1(n36160), .SD(RegAddrA[2]), .Z(RegBusA[2]));
    ORCALUT4 i32559_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrC[0]), 
            .Z(n36067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32559_3_lut.init = 16'hcaca;
    L6MUX21 i32660 (.D0(n36166), .D1(n36167), .SD(RegAddrA[2]), .Z(RegBusA[6]));
    L6MUX21 i32667 (.D0(n36173), .D1(n36174), .SD(RegAddrA[2]), .Z(RegBusA[14]));
    ORCALUT4 i32558_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrC[0]), 
            .Z(n36066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32558_3_lut.init = 16'hcaca;
    ORCALUT4 i32557_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrC[0]), 
            .Z(n36065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32557_3_lut.init = 16'hcaca;
    ORCALUT4 i32556_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrC[0]), 
            .Z(n36064)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32556_3_lut.init = 16'hcaca;
    ORCALUT4 i32552_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrC[0]), 
            .Z(n36060)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32552_3_lut.init = 16'hcaca;
    PFUMX i32827 (.BLUT(n36332), .ALUT(n36333), .C0(RegAddrC[1]), .Z(n36335));
    ORCALUT4 i32551_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrC[0]), 
            .Z(n36059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32551_3_lut.init = 16'hcaca;
    ORCALUT4 i32550_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrC[0]), 
            .Z(n36058)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32550_3_lut.init = 16'hcaca;
    ORCALUT4 i32549_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrC[0]), 
            .Z(n36057)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32549_3_lut.init = 16'hcaca;
    ORCALUT4 i32545_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrC[0]), 
            .Z(n36053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32545_3_lut.init = 16'hcaca;
    ORCALUT4 i32544_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrC[0]), 
            .Z(n36052)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32544_3_lut.init = 16'hcaca;
    ORCALUT4 i32543_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrC[0]), 
            .Z(n36051)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32543_3_lut.init = 16'hcaca;
    ORCALUT4 i32542_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrC[0]), 
            .Z(n36050)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32542_3_lut.init = 16'hcaca;
    ORCALUT4 i32538_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrC[0]), 
            .Z(n36046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32538_3_lut.init = 16'hcaca;
    ORCALUT4 i32537_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrC[0]), 
            .Z(n36045)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32537_3_lut.init = 16'hcaca;
    ORCALUT4 i32536_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrC[0]), 
            .Z(n36044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32536_3_lut.init = 16'hcaca;
    ORCALUT4 i32535_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrC[0]), 
            .Z(n36043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32535_3_lut.init = 16'hcaca;
    ORCALUT4 i32531_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrC[0]), 
            .Z(n36039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32531_3_lut.init = 16'hcaca;
    ORCALUT4 i32530_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrC[0]), 
            .Z(n36038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32530_3_lut.init = 16'hcaca;
    ORCALUT4 i32529_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrC[0]), 
            .Z(n36037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32529_3_lut.init = 16'hcaca;
    ORCALUT4 i32528_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrC[0]), 
            .Z(n36036)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32528_3_lut.init = 16'hcaca;
    ORCALUT4 i32524_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrC[0]), 
            .Z(n36032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32524_3_lut.init = 16'hcaca;
    ORCALUT4 i32523_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrC[0]), 
            .Z(n36031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32523_3_lut.init = 16'hcaca;
    ORCALUT4 i32522_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrC[0]), 
            .Z(n36030)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32522_3_lut.init = 16'hcaca;
    ORCALUT4 i32521_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrC[0]), 
            .Z(n36029)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32521_3_lut.init = 16'hcaca;
    ORCALUT4 i32517_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrC[0]), 
            .Z(n36025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32517_3_lut.init = 16'hcaca;
    ORCALUT4 i32516_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrC[0]), 
            .Z(n36024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32516_3_lut.init = 16'hcaca;
    PFUMX i32735 (.BLUT(n36239), .ALUT(n36240), .C0(\RegAddrB[1] ), .Z(n36243));
    ORCALUT4 i32515_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrC[0]), 
            .Z(n36023)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32515_3_lut.init = 16'hcaca;
    ORCALUT4 i32514_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrC[0]), 
            .Z(n36022)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32514_3_lut.init = 16'hcaca;
    PFUMX i32736 (.BLUT(n36241), .ALUT(n36242), .C0(\RegAddrB[1] ), .Z(n36244));
    PFUMX i32742 (.BLUT(n36246), .ALUT(n36247), .C0(\RegAddrB[1] ), .Z(n36250));
    ORCALUT4 i32510_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrC[0]), 
            .Z(n36018)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32510_3_lut.init = 16'hcaca;
    PFUMX i32833 (.BLUT(n36337), .ALUT(n36338), .C0(RegAddrC[1]), .Z(n36341));
    PFUMX i32743 (.BLUT(n36248), .ALUT(n36249), .C0(\RegAddrB[1] ), .Z(n36251));
    PFUMX i32574 (.BLUT(n36078), .ALUT(n36079), .C0(RegAddrA[1]), .Z(n36082));
    PFUMX i32575 (.BLUT(n36080), .ALUT(n36081), .C0(RegAddrA[1]), .Z(n36083));
    PFUMX i32581 (.BLUT(n36085), .ALUT(n36086), .C0(RegAddrA[1]), .Z(n36089));
    PFUMX i32582 (.BLUT(n36087), .ALUT(n36088), .C0(RegAddrA[1]), .Z(n36090));
    PFUMX i32588 (.BLUT(n36092), .ALUT(n36093), .C0(RegAddrA[1]), .Z(n36096));
    PFUMX i32589 (.BLUT(n36094), .ALUT(n36095), .C0(RegAddrA[1]), .Z(n36097));
    ORCALUT4 i32509_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrC[0]), 
            .Z(n36017)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32509_3_lut.init = 16'hcaca;
    ORCALUT4 i32508_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrC[0]), 
            .Z(n36016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32508_3_lut.init = 16'hcaca;
    ORCALUT4 i32507_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrC[0]), 
            .Z(n36015)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32507_3_lut.init = 16'hcaca;
    PFUMX i32595 (.BLUT(n36099), .ALUT(n36100), .C0(RegAddrA[1]), .Z(n36103));
    PFUMX i32596 (.BLUT(n36101), .ALUT(n36102), .C0(RegAddrA[1]), .Z(n36104));
    PFUMX i32602 (.BLUT(n36106), .ALUT(n36107), .C0(RegAddrA[1]), .Z(n36110));
    PFUMX i32603 (.BLUT(n36108), .ALUT(n36109), .C0(RegAddrA[1]), .Z(n36111));
    PFUMX i32609 (.BLUT(n36113), .ALUT(n36114), .C0(RegAddrA[1]), .Z(n36117));
    PFUMX i32610 (.BLUT(n36115), .ALUT(n36116), .C0(RegAddrA[1]), .Z(n36118));
    PFUMX i32616 (.BLUT(n36120), .ALUT(n36121), .C0(RegAddrA[1]), .Z(n36124));
    PFUMX i32617 (.BLUT(n36122), .ALUT(n36123), .C0(RegAddrA[1]), .Z(n36125));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_519 (.A(n38660), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1917[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_519.init = 16'h0002;
    PFUMX i32805 (.BLUT(n36309), .ALUT(n36310), .C0(RegAddrA[1]), .Z(n36313));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_520 (.A(n38660), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1917[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_520.init = 16'h2000;
    PFUMX i32806 (.BLUT(n36311), .ALUT(n36312), .C0(RegAddrA[1]), .Z(n36314));
    PFUMX i32623 (.BLUT(n36127), .ALUT(n36128), .C0(RegAddrA[1]), .Z(n36131));
    PFUMX i32624 (.BLUT(n36129), .ALUT(n36130), .C0(RegAddrA[1]), .Z(n36132));
    PFUMX i32630 (.BLUT(n36134), .ALUT(n36135), .C0(RegAddrA[1]), .Z(n36138));
    PFUMX i32834 (.BLUT(n36339), .ALUT(n36340), .C0(RegAddrC[1]), .Z(n36342));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_521 (.A(n38660), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1_adj_1917[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_521.init = 16'h0200;
    PFUMX i32631 (.BLUT(n36136), .ALUT(n36137), .C0(RegAddrA[1]), .Z(n36139));
    PFUMX i32749 (.BLUT(n36253), .ALUT(n36254), .C0(\RegAddrB[1] ), .Z(n36257));
    PFUMX i32637 (.BLUT(n36141), .ALUT(n36142), .C0(RegAddrA[1]), .Z(n36145));
    PFUMX i32638 (.BLUT(n36143), .ALUT(n36144), .C0(RegAddrA[1]), .Z(n36146));
    PFUMX i32644 (.BLUT(n36148), .ALUT(n36149), .C0(RegAddrA[1]), .Z(n36152));
    PFUMX i32645 (.BLUT(n36150), .ALUT(n36151), .C0(RegAddrA[1]), .Z(n36153));
    PFUMX i32812 (.BLUT(n36316), .ALUT(n36317), .C0(RegAddrA[1]), .Z(n36320));
    PFUMX i32813 (.BLUT(n36318), .ALUT(n36319), .C0(RegAddrA[1]), .Z(n36321));
    PFUMX i32651 (.BLUT(n36155), .ALUT(n36156), .C0(RegAddrA[1]), .Z(n36159));
    PFUMX i32652 (.BLUT(n36157), .ALUT(n36158), .C0(RegAddrA[1]), .Z(n36160));
    PFUMX i32658 (.BLUT(n36162), .ALUT(n36163), .C0(RegAddrA[1]), .Z(n36166));
    PFUMX i32659 (.BLUT(n36164), .ALUT(n36165), .C0(RegAddrA[1]), .Z(n36167));
    PFUMX i32665 (.BLUT(n36169), .ALUT(n36170), .C0(RegAddrA[1]), .Z(n36173));
    PFUMX i32666 (.BLUT(n36171), .ALUT(n36172), .C0(RegAddrA[1]), .Z(n36174));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_522 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_522.init = 16'h2000;
    PFUMX i32840 (.BLUT(n36344), .ALUT(n36345), .C0(RegAddrC[1]), .Z(n36348));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_523 (.A(n38658), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_523.init = 16'h0200;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_524 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n38658), .Z(n1[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_524.init = 16'h8000;
    L6MUX21 i32758 (.D0(n36264), .D1(n36265), .SD(\RegAddrB[2] ), .Z(RegBusB[7]));
    L6MUX21 i32765 (.D0(n36271), .D1(n36272), .SD(\RegAddrB[2] ), .Z(RegBusB[6]));
    L6MUX21 i32772 (.D0(n36278), .D1(n36279), .SD(\RegAddrB[2] ), .Z(RegBusB[11]));
    L6MUX21 i32779 (.D0(n36285), .D1(n36286), .SD(\RegAddrB[2] ), .Z(RegBusB[15]));
    PFUMX i32841 (.BLUT(n36346), .ALUT(n36347), .C0(RegAddrC[1]), .Z(n36349));
    L6MUX21 i32674 (.D0(n36180), .D1(n36181), .SD(\RegAddrB[2] ), .Z(RegBusB[3]));
    L6MUX21 i32681 (.D0(n36187), .D1(n36188), .SD(\RegAddrB[2] ), .Z(RegBusB[5]));
    L6MUX21 i32688 (.D0(n36194), .D1(n36195), .SD(\RegAddrB[2] ), .Z(RegBusB[2]));
    L6MUX21 i32695 (.D0(n36201), .D1(n36202), .SD(\RegAddrB[2] ), .Z(RegBusB[14]));
    L6MUX21 i32702 (.D0(n36208), .D1(n36209), .SD(\RegAddrB[2] ), .Z(RegBusB[10]));
    L6MUX21 i32709 (.D0(n36215), .D1(n36216), .SD(\RegAddrB[2] ), .Z(RegBusB[12]));
    L6MUX21 i32716 (.D0(n36222), .D1(n36223), .SD(\RegAddrB[2] ), .Z(RegBusB[13]));
    L6MUX21 i32723 (.D0(n36229), .D1(n36230), .SD(\RegAddrB[2] ), .Z(RegBusB[9]));
    L6MUX21 i32730 (.D0(n36236), .D1(n36237), .SD(\RegAddrB[2] ), .Z(RegBusB[8]));
    L6MUX21 i32737 (.D0(n36243), .D1(n36244), .SD(\RegAddrB[2] ), .Z(RegBusB[1]));
    L6MUX21 i32744 (.D0(n36250), .D1(n36251), .SD(\RegAddrB[2] ), .Z(RegBusB[0]));
    
endmodule
//
// Verilog Description of module tv80_mcode
//

module tv80_mcode (n38991, \Set_BusA_To_3__N_1207[0] , \IR[6] , n39006, 
            n40996, n39002, n41024, n41022, \IR[1] , n38849, n38931, 
            ACC, Ap, n2579, n38933, n38923, n38773, n41004, n38846, 
            ISet, n38719, n38871, \IR[7] , \mc[3] , Read_To_Acc_N_1469, 
            n41005, n41026, n40997, \ALU_Op_3__N_1274[3] , \Set_BusA_To_3__N_1203[2] , 
            \mc[2] , n41016, n41030, n38930, n38821, \IR[0] , \IR[2] , 
            n38833, n38915, \IR[5] , n41028, n38762, n2586, \IR[4] , 
            n38689, n38894, n38652, n41018, n38811, n38703, n38714, 
            n38908, n38673, n38885, Save_ALU_N_1475, n38750, Save_ALU_N_1473, 
            n15972, n39007, n10, n41020, \Set_BusA_To_3__N_1361[1] , 
            n35109, \mc[6] , F_Out_7__N_1639, n6799, PreserveC, n38, 
            n16160, n38796, n38910, n8219, Read_To_Acc_N_1472, n2390, 
            n38782, \IncDec_16_3__N_1017[2] , n38997, n38946, n38947, 
            BusB, n38795, n38817, n38816, n4690, n38867, n38937, 
            \ALU_Op[3] , n38953, n38843, n38858, n38870, n38861, 
            n38916, last_tstate, \Special_LD[0] , n38989, n38822, 
            n38907, n38766, n33964, clk_op_enable_19, \Set_BusA_To[0] , 
            BTR_r_N_970, n38855, n37956, n38918, Halt_FF, n35644, 
            n12, n19, n38038, \Fp[3] , n38039, n13, n2580, n38655, 
            n2583, n2582, n17821, n17828, n2585, n24589, n35223, 
            n2581, n34348, n38900, n38920, n41009, n38744, RstP_N_1517, 
            n38681, n38977, n34774, n38926, n38898, \BusA[7] , \BusA[6] , 
            n14303, n41014, n38696, n9781, \ts[4] , n38710, n38829, 
            n24, n8, n10_adj_7, Read_To_Reg, n38902, n6788, n10_adj_8, 
            \F[0] , n31745, n38848, n38767, I_BTR, n23587, n34332, 
            n4, n26, n38650, n38914, Alternate, Alternate_N_904, 
            n31, n34532, n38832, n38675, n39003, n1165, mcycles_d, 
            n38919, n31476, \tstates[2] , n38669, n38830, n38873, 
            \mc[4] , \MCycles_2__N_1162[2] , n38996, n38439, n10599, 
            n38764, n40994, n35143, n38727, n23, n38903, \mc[5] , 
            Set_Addr_To_2__N_1418, Set_Addr_To, n38917, n34604, n38769, 
            n38720, clk_op_enable_60, n34027, n38691, \ts[3] , n8_adj_9, 
            n6, n10569, n39004, n34438, n24220, n8_adj_10, n12_adj_11, 
            n68, n12303, \Set_BusA_To_3__N_1025[3] , n24451, n43, 
            n5, clk_op_enable_107, Read_To_Reg_N_1457, n10081, \tstates[1] , 
            n15, \RegAddrB_r[1] , \RegAddrB[1] , n38730, n24398, n38731, 
            n38790, n33709, \IncDec_16_3__N_1017[3] , n12269, n38712, 
            n63, n34785, \tstate[2] , n47, n28, n949, \PC16_B_15__N_571[15] , 
            n38682, JumpE_N_1512, n31793, n8_adj_12, \ALU_Op_r[1] , 
            n1894, n34801, n38950, n1896, n38794, \Q_7__N_1723[0] , 
            n1177, \BusA[1] , \BusA[2] , \BusA[3] , \F[2] , \F[7] , 
            \F[6] , n38775, n38888, n34535, n15_adj_13, n35205, 
            n34344, n37122, n38847, n38809, n38952, \TStates_2__N_1012[0] , 
            n57, n34366, n6_adj_14, n7, n8_adj_15, n4_adj_16, n20, 
            n12_adj_17, n8_adj_18, n11, n12273, \IncDec_16[1] , n12271, 
            \IncDec_16[2] , n33744, n38654, n2286, n16, n33082, 
            n35478, n38860, \IncDec_16[0] , n38765, n17129, n6_adj_19, 
            n38756, n11_adj_20, n38438, n14311, \Set_BusA_To[1] , 
            n12_adj_21, \Set_BusA_To[2] , n33038, n32886, n32840, 
            n20_adj_22, n28_adj_23, n10083, n14308, write, n35199, 
            n34792, n34500, Set_BusB_To, n24402, n38768, n35215, 
            iorq, n38840, n609, n6821, NoRead_N_1544, n38787, n3, 
            \tstate[1] , n38713, n4_adj_24, RegBusC, SP16, n2849, 
            n35282, n925, n23793, n15_adj_25, n38770, n8_adj_26, 
            n34279, n38729, n41008) /* synthesis syn_module_defined=1 */ ;
    output n38991;
    input \Set_BusA_To_3__N_1207[0] ;
    input \IR[6] ;
    output n39006;
    output n40996;
    output n39002;
    input n41024;
    input n41022;
    input \IR[1] ;
    input n38849;
    input n38931;
    input [7:0]ACC;
    input [7:0]Ap;
    output n2579;
    output n38933;
    input n38923;
    output n38773;
    output n41004;
    output n38846;
    input [1:0]ISet;
    output n38719;
    input n38871;
    input \IR[7] ;
    input \mc[3] ;
    output Read_To_Acc_N_1469;
    output n41005;
    input n41026;
    output n40997;
    input \ALU_Op_3__N_1274[3] ;
    input \Set_BusA_To_3__N_1203[2] ;
    input \mc[2] ;
    input n41016;
    input n41030;
    output n38930;
    output n38821;
    input \IR[0] ;
    input \IR[2] ;
    output n38833;
    output n38915;
    input \IR[5] ;
    input n41028;
    output n38762;
    output n2586;
    input \IR[4] ;
    output n38689;
    output n38894;
    output n38652;
    input n41018;
    input n38811;
    input n38703;
    output n38714;
    output n38908;
    output n38673;
    output n38885;
    output Save_ALU_N_1475;
    output n38750;
    output Save_ALU_N_1473;
    input n15972;
    output n39007;
    output n10;
    input n41020;
    input \Set_BusA_To_3__N_1361[1] ;
    output n35109;
    input \mc[6] ;
    output F_Out_7__N_1639;
    input [0:0]n6799;
    output PreserveC;
    output n38;
    output n16160;
    output n38796;
    output n38910;
    output [2:0]n8219;
    input Read_To_Acc_N_1472;
    input n2390;
    output n38782;
    output \IncDec_16_3__N_1017[2] ;
    output n38997;
    output n38946;
    output n38947;
    input [7:0]BusB;
    output n38795;
    output n38817;
    input n38816;
    input [0:0]n4690;
    output n38867;
    output n38937;
    output \ALU_Op[3] ;
    input n38953;
    output n38843;
    output n38858;
    output n38870;
    output n38861;
    output n38916;
    input last_tstate;
    output \Special_LD[0] ;
    output n38989;
    output n38822;
    input n38907;
    output n38766;
    input n33964;
    output clk_op_enable_19;
    output \Set_BusA_To[0] ;
    output BTR_r_N_970;
    input n38855;
    output n37956;
    output n38918;
    input Halt_FF;
    output n35644;
    output n12;
    output n19;
    input n38038;
    input \Fp[3] ;
    output n38039;
    output n13;
    output n2580;
    output n38655;
    output n2583;
    output n2582;
    input n17821;
    output n17828;
    output n2585;
    output n24589;
    output n35223;
    output n2581;
    output n34348;
    input n38900;
    output n38920;
    output n41009;
    output n38744;
    output RstP_N_1517;
    output n38681;
    input n38977;
    output n34774;
    output n38926;
    output n38898;
    input \BusA[7] ;
    input \BusA[6] ;
    output n14303;
    input n41014;
    output n38696;
    output n9781;
    input \ts[4] ;
    output n38710;
    output n38829;
    output n24;
    input n8;
    output n10_adj_7;
    output Read_To_Reg;
    output n38902;
    input [0:0]n6788;
    input n10_adj_8;
    input \F[0] ;
    output n31745;
    output n38848;
    output n38767;
    output I_BTR;
    output n23587;
    input n34332;
    output n4;
    output n26;
    input n38650;
    output n38914;
    input Alternate;
    output Alternate_N_904;
    output n31;
    output n34532;
    input n38832;
    output n38675;
    output n39003;
    output n1165;
    output [2:0]mcycles_d;
    output n38919;
    output n31476;
    output \tstates[2] ;
    output n38669;
    output n38830;
    output n38873;
    input \mc[4] ;
    output \MCycles_2__N_1162[2] ;
    output n38996;
    output n38439;
    output n10599;
    output n38764;
    input n40994;
    output n35143;
    output n38727;
    output n23;
    output n38903;
    input \mc[5] ;
    output [2:0]Set_Addr_To_2__N_1418;
    output [2:0]Set_Addr_To;
    output n38917;
    output n34604;
    output n38769;
    output n38720;
    output clk_op_enable_60;
    output n34027;
    output n38691;
    input \ts[3] ;
    output n8_adj_9;
    input n6;
    output n10569;
    output n39004;
    output n34438;
    output n24220;
    output n8_adj_10;
    output n12_adj_11;
    output n68;
    output n12303;
    output \Set_BusA_To_3__N_1025[3] ;
    output n24451;
    output n43;
    output n5;
    output clk_op_enable_107;
    output Read_To_Reg_N_1457;
    output n10081;
    output \tstates[1] ;
    output n15;
    input \RegAddrB_r[1] ;
    output \RegAddrB[1] ;
    output n38730;
    output n24398;
    output n38731;
    output n38790;
    output n33709;
    output \IncDec_16_3__N_1017[3] ;
    output n12269;
    output n38712;
    output n63;
    output n34785;
    input \tstate[2] ;
    output n47;
    input n28;
    output n949;
    input \PC16_B_15__N_571[15] ;
    input n38682;
    output JumpE_N_1512;
    input n31793;
    output n8_adj_12;
    input \ALU_Op_r[1] ;
    output n1894;
    output n34801;
    input n38950;
    output n1896;
    output n38794;
    input \Q_7__N_1723[0] ;
    output [7:0]n1177;
    input \BusA[1] ;
    input \BusA[2] ;
    input \BusA[3] ;
    input \F[2] ;
    input \F[7] ;
    input \F[6] ;
    output n38775;
    input n38888;
    input n34535;
    input n15_adj_13;
    output n35205;
    input n34344;
    input n37122;
    output n38847;
    output n38809;
    input n38952;
    output \TStates_2__N_1012[0] ;
    output n57;
    output n34366;
    output n6_adj_14;
    output n7;
    output n8_adj_15;
    output n4_adj_16;
    output n20;
    output n12_adj_17;
    output n8_adj_18;
    output n11;
    input n12273;
    output \IncDec_16[1] ;
    input n12271;
    output \IncDec_16[2] ;
    input n33744;
    input n38654;
    output n2286;
    output n16;
    input n33082;
    output n35478;
    input n38860;
    output \IncDec_16[0] ;
    output n38765;
    output n17129;
    output n6_adj_19;
    output n38756;
    output n11_adj_20;
    input n38438;
    input n14311;
    output \Set_BusA_To[1] ;
    output n12_adj_21;
    output \Set_BusA_To[2] ;
    input n33038;
    input n32886;
    input n32840;
    input n20_adj_22;
    output n28_adj_23;
    input n10083;
    input n14308;
    output write;
    input n35199;
    output n34792;
    output n34500;
    output [3:0]Set_BusB_To;
    output n24402;
    output n38768;
    input n35215;
    output iorq;
    output n38840;
    output n609;
    input [0:0]n6821;
    output NoRead_N_1544;
    output n38787;
    input n3;
    input \tstate[1] ;
    output n38713;
    output n4_adj_24;
    input [15:0]RegBusC;
    input [15:0]SP16;
    output [15:0]n2849;
    output n35282;
    input n925;
    output n23793;
    output n15_adj_25;
    output n38770;
    input n8_adj_26;
    output n34279;
    output n38729;
    output n41008;
    
    
    wire n39048, n39049, n24935;
    wire [0:0]n6050;
    wire [0:0]n6053;
    
    wire n35799;
    wire [0:0]n6059;
    
    wire n37299;
    wire [0:0]n4109;
    
    wire n37300;
    wire [0:0]n5406;
    wire [0:0]n5415;
    
    wire n38772;
    wire [0:0]n5421;
    
    wire n38047, n38046, n38048, n38994, n38805, n18, n5_c, n4_c, 
        n16401, n17515, n34766;
    wire [0:0]n5734;
    wire [0:0]n5400;
    
    wire n34018, n37917, n37916, n37918, n38909, n38925, n38705, 
        n35327, n35331, n15_c, n40991, n38808, n38706, n38936, 
        n38929, n38904, n38715, n34352, n38732, n38726, n24931, 
        n37531, n37532, n32109, n34273, n31582;
    wire [0:0]n5740;
    wire [0:0]n5737;
    
    wire n3825, n38678, NoRead_N_1547, n38839, n38739, n38899, n38724, 
        n35609, n38828, n38693, n38763, n37149, n38774, n37919, 
        n37148;
    wire [0:0]n6035;
    
    wire n4755, n10925, n33918, n41007, n39056;
    wire [0:0]n4750;
    wire [0:0]n4747;
    wire [0:0]n4771;
    
    wire n39055, n38680, n24677, n35522, n24518, n38758, n39058, 
        n33944;
    wire [0:0]n4681;
    wire [0:0]n4735;
    
    wire n38709, n38684, n12_c, n41000, n24635, n38679, n38875, 
        n17158, n38686, n16790, n17089, n34208, n4_adj_1768, n6_c, 
        n37920, n38776, n38928;
    wire [0:0]n6062;
    
    wire n32154, n32155, n38751, n32156, n38436, n38437, n1, n16978, 
        n38728, n4_adj_1769, n38934;
    wire [3:0]n1747;
    
    wire n5_adj_1770, n12307;
    wire [0:0]n6363;
    wire [0:0]n6372;
    
    wire n38718, IORQ_N_1484, n41001, n38896, n14, n10_adj_1771, 
        n1_adj_1772, n3_c, n38792, n5_adj_1773, n61, n41002, n34035, 
        n38741, n38707, n37357, n37358, n38838, n38912, n38954, 
        n38971, Write_N_1562, n35575, n35323, n14_adj_1774, n10_adj_1775, 
        n1_adj_1776, Write_N_1551, n38854, n38945, n38753, n12305, 
        n38777, PreserveC_N_1480, n33989, n34569, n22, n34582, n30, 
        n38716, n37356, n34112;
    wire [2:0]n6974;
    
    wire n1872, n39035, n38435, n11164, n8_c, n9, n38699;
    wire [3:0]Set_BusB_To_3__N_1405;
    
    wire n34113;
    wire [2:0]n8219_c;
    
    wire n15742, n2, n1_adj_1777;
    wire [0:0]n4744;
    
    wire n38972;
    wire [0:0]n4765;
    
    wire n34144, n16943;
    wire [3:0]Set_BusA_To_3__N_1187;
    
    wire n3_adj_1778, n18_adj_1779;
    wire [0:0]n4759;
    
    wire n35395;
    wire [0:0]n4774;
    
    wire n38979, n38980, n34106, n24332, n38921, n38745, n24921, 
        n13_c;
    wire [2:0]MCycles_2__N_1009;
    
    wire n4_adj_1780, n13677;
    wire [0:0]n4720;
    
    wire n23835, n26_c, n15992;
    wire [2:0]MCycles_2__N_1003;
    wire [3:0]ALU_Op_3__N_1041;
    
    wire n8_adj_1781, n38949, n8_adj_1782, n7_c, n34030, n38990, 
        n4_adj_1783, n38_adj_1784, n38651;
    wire [3:0]n2396;
    wire [3:0]n2419;
    
    wire n38812, n16_c, n38788, n6_adj_1785;
    wire [0:0]n6047;
    
    wire n33530;
    wire [0:0]n6056;
    
    wire n38455, n16397, n20_c, n35490, n34828, n34625, n35604, 
        n12_adj_1786, n35319, n38906, n906, n35249, n2_adj_1787, 
        n38798, n38803, n38823, n33723, n38704, n35214;
    wire [2:0]n1431;
    
    wire n4_adj_1788, n8_adj_1789, n38911, n20_adj_1790, n8_adj_1791, 
        n7_adj_1792, n38876, n38964, n38723, n10084, n38841, n38725, 
        n24695, n34127, n24919, n38778, n39018, n38883, n38963;
    wire [2:0]TStates_2__N_1412;
    
    wire n9652, n16_adj_1793, n12_adj_1794, n50, n35218, n33, n38695, 
        n38851, n8_adj_1795, n34282, n34960;
    wire [2:0]TStates_2__N_1415;
    
    wire n9_adj_1796, n10_adj_1797, n8_adj_1798, n38740, n34567, n34726, 
        n15_adj_1799, n35602, n8_adj_1800, n38683, n39017, n24_c, 
        n4_adj_1801, n60, n20_adj_1802, n39013, n39023, n34060, 
        n39025, n38779, n34104, n34033, n39057, n12_adj_1805;
    wire [0:0]n6026;
    
    wire n38815, n38700, n66, n58, n4_adj_1806, n50_adj_1807, n7_adj_1808, 
        n35271, n38749, n24907, n38742, n38781, n39014, n37303, 
        n38734, n4_adj_1809, n38780, n38702, n38922, n35469, n38970, 
        n38891, n38884, n38748, n38784, n24905, n40995, n6_adj_1810, 
        n38814, n50_adj_1811, n38831, n38697, n38797, n34122, n38786, 
        n37124, n29858, n38824, n7291, n34228, n38813, n34116, 
        n10_adj_1812, n38746, n37530, n9_adj_1813, n38752;
    wire [0:0]n6014;
    wire [0:0]n4768;
    
    wire n38845, n4_adj_1814, n8_adj_1815, n38677, n25, n39036, 
        n39037, n39038, n39024, n26_adj_1817, n40545, n40544, n58_adj_1820, 
        n9_adj_1821;
    wire [0:0]n4777;
    
    wire n40543, n6_adj_1823, n7_adj_1824, n38842, n61_adj_1826, n44, 
        n17150, n33698, n38733, n4_adj_1828, n38978, n34094, n4_adj_1829, 
        n38807, n34856, n34432, n38895, n35566, n38759, n28_c, 
        n6_adj_1830, n35117, n6_adj_1831, n36790, n71, n17078, n39031, 
        n34588, n34472, n38983, n38892;
    wire [2:0]MCycles_2__N_1006;
    
    wire n38986, n37, n39033, n39034, n9_adj_1832, n8_adj_1833, 
        n38687, n4_adj_1834, n37123, n37126, n43_c, n4_adj_1835, 
        n16917, n35079;
    wire [2:0]n1656;
    
    wire n7_adj_1836, n23601, n4_adj_1837, n10_adj_1838, n23_c, n39046, 
        n5_adj_1839, n3_adj_1840, n34205, n2_adj_1841;
    wire [3:0]IncDec_16_3__N_1217;
    
    wire n39030, n11_c, n38835, n24_adj_1842, n17359, n37568, n39032, 
        n38757, n17358, n37567, n38857, n11126, Inc_PC_N_1435, n38924, 
        n39000, n35880, n35918, n14310, n38692, n35922;
    wire [2:0]Set_Addr_To_2__N_1418_c;
    
    wire n38755, n33781, n25_adj_1844, n35520;
    wire [0:0]n4530;
    
    wire n37569, n3_adj_1847, n36, n24202, n38825, n38893, n39008, 
        n41006, n23760, n38694, n39012, n35594, n7258, n35546, 
        n38670, n38783, n63_c, n37150, n34555, n38806, n34097, 
        n9_adj_1854, n10_adj_1855, n7_adj_1856, n38747, n27, n19_adj_1857, 
        n35592, n35516, n17, n24436, n24867, Inc_PC_N_1426, n8_adj_1859, 
        n39026, n34931, n8_adj_1861, n33962, n35482;
    wire [3:0]IncDec_16_3__N_1017;
    
    wire n33961, n6_adj_1862, n35600, n18_adj_1863, n12_adj_1864, 
        n13_adj_1865, n36001, n17072, n5_adj_1866, n17060, n38793, 
        n6_adj_1868, n35269, n37118, n7_adj_1869, n14_adj_1870, n4_adj_1871;
    wire [3:0]ALU_Op_3__N_1045;
    wire [3:0]ALU_Op_3__N_1037;
    wire [0:0]n5728;
    
    wire n24579, n13_adj_1872, n35526;
    wire [3:0]Set_BusA_To_3__N_1361;
    
    wire n5_adj_1873, n23496, n23964, n34, n38737, n38743, n10_adj_1874, 
        n39019, n4_adj_1875, n38810, n34044, n38789, n4_adj_1876, 
        n38802, n17_adj_1877, n4_adj_1878, n19_adj_1880, n15_adj_1881, 
        n34237, n58_adj_1882, n23_adj_1883, n18_adj_1884, n60_adj_1885, 
        n19_adj_1886, n8_adj_1888, n34892;
    wire [0:0]n6044;
    
    wire n5_adj_1895, n13_adj_1896, n10_adj_1897, n4_adj_1899;
    wire [3:0]Set_BusB_To_3__N_1033;
    
    wire n10_adj_1902, n14309, n33948, n12_adj_1904, n50_adj_1907, 
        n11_adj_1908;
    wire [0:0]n6722;
    
    wire n15453, n12_adj_1909, n19_adj_1910;
    wire [0:0]n5424;
    
    wire n15_adj_1915, n16_adj_1916;
    
    PFUMX i34483 (.BLUT(n39048), .ALUT(n39049), .C0(n38991), .Z(n24935));
    PFUMX mux_4123_i1 (.BLUT(n6050[0]), .ALUT(n6053[0]), .C0(n35799), 
          .Z(n6059[0]));
    PFUMX i33685 (.BLUT(n37299), .ALUT(n4109[0]), .C0(\Set_BusA_To_3__N_1207[0] ), 
          .Z(n37300));
    L6MUX21 mux_3645_i1 (.D0(n5406[0]), .D1(n5415[0]), .SD(n38772), .Z(n5421[0]));
    PFUMX i34124 (.BLUT(n38047), .ALUT(n38046), .C0(\IR[6] ), .Z(n38048));
    ORCALUT4 IR_7__I_0_1643_i15_2_lut_rep_571_3_lut_4_lut (.A(n39006), .B(n40996), 
            .C(n39002), .D(n38994), .Z(n38805)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam IR_7__I_0_1643_i15_2_lut_rep_571_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_3_lut (.A(n41024), .B(n41022), .C(\IR[1] ), .Z(n18)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;
    defparam i1_3_lut.init = 16'h5c5c;
    ORCALUT4 mux_1567_i8_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[7]), 
            .D(Ap[7]), .Z(n2579)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i8_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i20923_2_lut_rep_539_3_lut_4_lut (.A(n39006), .B(n38933), .C(n38931), 
            .D(n38923), .Z(n38773)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam i20923_2_lut_rep_539_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i20737_2_lut_rep_485_4_lut (.A(n41004), .B(n39006), .C(n38846), 
            .D(ISet[1]), .Z(n38719)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i20737_2_lut_rep_485_4_lut.init = 16'h0100;
    ORCALUT4 i3_4_lut (.A(n5_c), .B(\Set_BusA_To_3__N_1207[0] ), .C(n38871), 
            .D(n4_c), .Z(n16401)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i3_4_lut.init = 16'hfefa;
    PFUMX mux_3880_i1 (.BLUT(n17515), .ALUT(n34766), .C0(\IR[6] ), .Z(n5734[0]));
    PFUMX mux_3641_i1 (.BLUT(n5400[0]), .ALUT(n34018), .C0(\IR[6] ), .Z(n5415[0]));
    PFUMX i34054 (.BLUT(n37917), .ALUT(n37916), .C0(n41022), .Z(n37918));
    ORCALUT4 i21318_3_lut_rep_471_4_lut_4_lut (.A(n38909), .B(\IR[6] ), 
            .C(\IR[7] ), .D(n38925), .Z(n38705)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((C)+!B)) */ ;
    defparam i21318_3_lut_rep_471_4_lut_4_lut.init = 16'hfbf3;
    ORCALUT4 i2_4_lut (.A(n35327), .B(n35331), .C(\mc[3] ), .D(n15_c), 
            .Z(Read_To_Acc_N_1469)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut.init = 16'heefe;
    ORCALUT4 i1_2_lut_rep_472_4_lut_4_lut (.A(n40991), .B(n38808), .Z(n38706)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_472_4_lut_4_lut.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1601_i15_2_lut_3_lut_4_lut (.A(n38936), .B(n39002), 
            .C(n38933), .D(n41005), .Z(n15_c)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1601_i15_2_lut_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i21193_2_lut_rep_481_3_lut_4_lut_4_lut (.A(n38929), .B(n41026), 
            .C(\IR[7] ), .D(n38904), .Z(n38715)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((C)+!B)) */ ;
    defparam i21193_2_lut_rep_481_3_lut_4_lut_4_lut.init = 16'hfbf3;
    ORCALUT4 i30898_2_lut_3_lut_4_lut (.A(n38936), .B(n39002), .C(n40997), 
            .D(n41004), .Z(n34352)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i30898_2_lut_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 Set_BusA_To_3__I_117_2_lut_rep_498_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .D(\mc[3] ), 
            .Z(n38732)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_117_2_lut_rep_498_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i4_2_lut_rep_696 (.A(n41016), .B(n41030), .Z(n38930)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_rep_696.init = 16'h8888;
    ORCALUT4 pwr_bdd_2_lut_33831_4_lut (.A(n38726), .B(n38821), .C(n24931), 
            .D(n37531), .Z(n37532)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam pwr_bdd_2_lut_33831_4_lut.init = 16'hff7f;
    ORCALUT4 n4110_bdd_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\IR[2] ), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n37299)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n4110_bdd_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i5_2_lut_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(n32109), 
            .C(n38833), .Z(n34273)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i5_2_lut_3_lut_4_lut_4_lut.init = 16'hcdcd;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n41022), .B(n41024), .C(n38915), 
            .D(n38933), .Z(n31582)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfff9;
    ORCALUT4 i20417_2_lut_4_lut (.A(n5740[0]), .B(n5737[0]), .C(n3825), 
            .D(n38678), .Z(NoRead_N_1547)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i20417_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i20841_2_lut_rep_605_3_lut_4_lut_2_lut_4_lut (.A(\IR[5] ), .B(n41026), 
            .C(n41028), .Z(n38839)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20841_2_lut_rep_605_3_lut_4_lut_2_lut_4_lut.init = 16'hdfdf;
    ORCALUT4 i1_2_lut_rep_528_4_lut_2_lut_4_lut (.A(n38904), .B(\IR[6] ), 
            .C(\IR[7] ), .Z(n38762)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_528_4_lut_2_lut_4_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_rep_505_4_lut_2_lut_4_lut (.A(n38909), .B(n41026), 
            .C(n41028), .Z(n38739)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_505_4_lut_2_lut_4_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_rep_490_3_lut_4_lut_4_lut_4_lut (.A(n41024), .B(n41022), 
            .C(n38899), .D(n38933), .Z(n38724)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_490_3_lut_4_lut_4_lut_4_lut.init = 16'hfff1;
    ORCALUT4 mux_1567_i1_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[0]), 
            .D(Ap[0]), .Z(n2586)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i1_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i32103_2_lut_3_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[4] ), 
            .D(\IR[5] ), .Z(n35609)) /* synthesis lut_function=(((C (D)+!C !(D))+!B)+!A) */ ;
    defparam i32103_2_lut_3_lut_4_lut_4_lut.init = 16'hf77f;
    ORCALUT4 n7228_bdd_4_lut_34363_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\IR[2] ), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n37917)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;
    defparam n7228_bdd_4_lut_34363_4_lut.init = 16'h0a08;
    ORCALUT4 i21068_2_lut_rep_459_3_lut_4_lut_4_lut (.A(n41022), .B(\IR[5] ), 
            .C(n38828), .D(n40991), .Z(n38693)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i21068_2_lut_rep_459_3_lut_4_lut_4_lut.init = 16'hf010;
    ORCALUT4 i30901_2_lut_rep_455_4_lut_4_lut (.A(\IR[1] ), .B(n38763), 
            .C(\ALU_Op_3__N_1274[3] ), .Z(n38689)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i30901_2_lut_rep_455_4_lut_4_lut.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_rep_660_3_lut (.A(n41016), .B(\IR[0] ), .C(\IR[2] ), 
            .Z(n38894)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_660_3_lut.init = 16'hf7f7;
    ORCALUT4 IR_2__bdd_4_lut_33773_4_lut (.A(\IR[2] ), .B(\IR[5] ), .C(\IR[4] ), 
            .D(\IR[1] ), .Z(n37149)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam IR_2__bdd_4_lut_33773_4_lut.init = 16'h4404;
    ORCALUT4 n3825_bdd_3_lut_34162_4_lut (.A(n41016), .B(n41030), .C(\IR[2] ), 
            .D(n38774), .Z(n37919)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n3825_bdd_3_lut_34162_4_lut.init = 16'h0800;
    ORCALUT4 IR_2__bdd_4_lut_33600_4_lut (.A(\IR[2] ), .B(\IR[4] ), .C(\IR[5] ), 
            .D(\IR[1] ), .Z(n37148)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam IR_2__bdd_4_lut_33600_4_lut.init = 16'h4ccc;
    ORCALUT4 n1_bdd_4_lut_4_lut_4_lut (.A(\IR[0] ), .B(\IR[4] ), .C(\IR[2] ), 
            .D(\IR[5] ), .Z(n38652)) /* synthesis lut_function=(A (B (D)+!B !(C))) */ ;
    defparam n1_bdd_4_lut_4_lut_4_lut.init = 16'h8a02;
    ORCALUT4 mux_4117_i1_3_lut (.A(n6035[0]), .B(\IR[2] ), .C(n4755), 
            .Z(n6050[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4117_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_612_3_lut_3_lut_4_lut_4_lut (.A(n41016), .B(n41030), 
            .C(n41018), .Z(n38846)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i1_2_lut_rep_612_3_lut_3_lut_4_lut_4_lut.init = 16'h7f7f;
    PFUMX mux_3635_i1 (.BLUT(n10925), .ALUT(n33918), .C0(\IR[2] ), .Z(n5406[0]));
    ORCALUT4 IR_7__I_0_1679_Mux_1_i253_4_lut_then_2_lut (.A(\IR[4] ), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n41007)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam IR_7__I_0_1679_Mux_1_i253_4_lut_then_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_4_lut_then_3_lut (.A(\IR[7] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(n39056)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_then_3_lut.init = 16'h0101;
    PFUMX mux_3159_i1 (.BLUT(n4750[0]), .ALUT(n4747[0]), .C0(\Set_BusA_To_3__N_1207[0] ), 
          .Z(n4771[0]));
    ORCALUT4 i1_4_lut_4_lut_else_3_lut (.A(\IR[7] ), .B(\IR[1] ), .C(\IR[0] ), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n39055)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_else_3_lut.init = 16'h4000;
    ORCALUT4 i32025_3_lut_4_lut (.A(n38811), .B(n38680), .C(n24677), .D(n38703), 
            .Z(n35522)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32025_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 n24518_bdd_4_lut (.A(n24518), .B(n38758), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(\ALU_Op_3__N_1274[3] ), .Z(n39058)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C))) */ ;
    defparam n24518_bdd_4_lut.init = 16'hee0e;
    PFUMX mux_3135_i1 (.BLUT(n33944), .ALUT(n4681[0]), .C0(\IR[1] ), .Z(n4735[0]));
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n38709), .D(n38684), .Z(n12_c)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0ddd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n41024), .B(n41000), .C(n38936), 
            .D(\IR[2] ), .Z(n24635)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i1_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n38679), .D(n38875), .Z(n17158)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_4_lut_4_lut.init = 16'h010b;
    ORCALUT4 i1_2_lut_rep_480_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(n41018), 
            .C(n38994), .D(n41000), .Z(n38714)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_480_3_lut_4_lut_4_lut.init = 16'hfffd;
    ORCALUT4 equal_114_i9_2_lut_rep_699 (.A(\IR[6] ), .B(n41028), .Z(n38933)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_114_i9_2_lut_rep_699.init = 16'heeee;
    ORCALUT4 i1_3_lut_4_lut (.A(n24635), .B(n38686), .C(n16790), .D(n38908), 
            .Z(n17089)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hddd0;
    ORCALUT4 IR_7__I_0_1757_i13_2_lut_rep_787 (.A(\IR[6] ), .B(\IR[7] ), 
            .Z(n41000)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1757_i13_2_lut_rep_787.init = 16'hbbbb;
    ORCALUT4 i2_3_lut_4_lut (.A(n24635), .B(n38686), .C(n34208), .D(n4_adj_1768), 
            .Z(n6_c)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hffd0;
    ORCALUT4 i2_3_lut_rep_444 (.A(n3825), .B(n38774), .C(n16401), .Z(n38678)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_444.init = 16'hfefe;
    ORCALUT4 sram_addr_c_bdd_2_lut_34056_rep_439_4_lut (.A(n3825), .B(n38774), 
            .C(n16401), .D(n37920), .Z(n38673)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_34056_rep_439_4_lut.init = 16'hfe00;
    ORCALUT4 equal_112_i8_2_lut_rep_651_3_lut (.A(n41026), .B(n41028), .C(\IR[2] ), 
            .Z(n38885)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_112_i8_2_lut_rep_651_3_lut.init = 16'hefef;
    ORCALUT4 equal_107_i9_2_lut_rep_542_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n38936), .D(\IR[2] ), .Z(n38776)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_107_i9_2_lut_rep_542_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i1_2_lut_rep_587_3_lut_4_lut (.A(\IR[6] ), .B(n41028), .C(n41016), 
            .D(n41018), .Z(n38821)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_587_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i32093_2_lut_rep_694_3_lut (.A(\IR[6] ), .B(n41028), .C(\IR[5] ), 
            .Z(n38928)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i32093_2_lut_rep_694_3_lut.init = 16'hfefe;
    ORCALUT4 i20448_2_lut_4_lut (.A(n3825), .B(n38774), .C(n16401), .D(n6062[0]), 
            .Z(Save_ALU_N_1475)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i20448_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i1_2_lut_rep_529_3_lut_4_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[2] ), .D(\IR[5] ), .Z(n38763)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_529_3_lut_4_lut_4_lut_4_lut.init = 16'hfbff;
    PFUMX i28716 (.BLUT(n32154), .ALUT(n32155), .C0(n38751), .Z(n32156));
    ORCALUT4 sram_addr_c_bdd_2_lut_34319_4_lut (.A(n3825), .B(n38774), .C(n16401), 
            .D(n38436), .Z(n38437)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_34319_4_lut.init = 16'hfe00;
    ORCALUT4 i3_4_lut_adj_201 (.A(n1), .B(n16978), .C(n38728), .D(n38750), 
            .Z(Save_ALU_N_1473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_201.init = 16'hfffe;
    ORCALUT4 i3_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n15972), 
            .D(n39007), .Z(n10)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_2_lut_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n39006), .Z(n4_adj_1769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1733_i10_2_lut_rep_700 (.A(n41018), .B(n41020), .Z(n38934)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1733_i10_2_lut_rep_700.init = 16'hdddd;
    PFUMX i9357 (.BLUT(n1747[1]), .ALUT(\Set_BusA_To_3__N_1361[1] ), .C0(n5_adj_1770), 
          .Z(n12307));
    ORCALUT4 IR_7__I_0_1726_i11_2_lut_rep_681_3_lut_4_lut (.A(n41018), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n38915)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1726_i11_2_lut_rep_681_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i33385_2_lut_rep_524_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(n41000), 
            .C(n38930), .D(n41018), .Z(n38758)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i33385_2_lut_rep_524_3_lut_4_lut_4_lut.init = 16'h0020;
    ORCALUT4 i33476_2_lut_rep_702 (.A(\IR[0] ), .B(\IR[1] ), .Z(n38936)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i33476_2_lut_rep_702.init = 16'h4444;
    ORCALUT4 i20464_4_lut (.A(n6363[0]), .B(n38678), .C(n6372[0]), .D(n38718), 
            .Z(IORQ_N_1484)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20464_4_lut.init = 16'hc088;
    ORCALUT4 i1_2_lut_2_lut_3_lut_rep_788 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n41024), .Z(n41001)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_2_lut_3_lut_rep_788.init = 16'h0e0e;
    ORCALUT4 i1_2_lut_rep_662_3_lut (.A(n41030), .B(\IR[1] ), .C(\IR[2] ), 
            .Z(n38896)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_662_3_lut.init = 16'hfbfb;
    ORCALUT4 i7_4_lut (.A(n16978), .B(n14), .C(n10_adj_1771), .D(n1_adj_1772), 
            .Z(n35109)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[5] ), .D(n40991), .Z(n3_c)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h000e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(n38792), .D(n38885), .Z(n5_adj_1773)) /* synthesis lut_function=(!(A (B+(D))+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0073;
    ORCALUT4 i75_2_lut_3_lut_4_lut (.A(n24677), .B(n38703), .C(n38908), 
            .D(n38805), .Z(n61)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i75_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i1_2_lut_rep_574_3_lut_4_lut (.A(\IR[0] ), .B(n41016), .C(n41018), 
            .D(n40996), .Z(n38808)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_574_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 select_450_Select_2_i4_2_lut_rep_789 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .Z(n41002)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam select_450_Select_2_i4_2_lut_rep_789.init = 16'heeee;
    ORCALUT4 i1_2_lut_4_lut_4_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n40991), .Z(n34035)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_4_lut_4_lut_3_lut.init = 16'h0e0e;
    ORCALUT4 pwr_bdd_2_lut_33713_3_lut_4_lut (.A(n38741), .B(n38707), .C(n37357), 
            .D(n38811), .Z(n37358)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam pwr_bdd_2_lut_33713_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_604_3_lut_4_lut (.A(n41030), .B(n41016), .C(n41004), 
            .D(n39002), .Z(n38838)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_604_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i675_2_lut_rep_678_3_lut (.A(ISet[0]), .B(ISet[1]), .C(\mc[6] ), 
            .Z(n38912)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i675_2_lut_rep_678_3_lut.init = 16'hd0d0;
    ORCALUT4 i3_4_lut_adj_202 (.A(F_Out_7__N_1639), .B(n38954), .C(\mc[2] ), 
            .D(n38971), .Z(Write_N_1562)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam i3_4_lut_adj_202.init = 16'h0010;
    ORCALUT4 i32075_3_lut_4_lut_4_lut (.A(\IR[4] ), .B(n38933), .C(n38936), 
            .D(\IR[2] ), .Z(n35575)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i32075_3_lut_4_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i7_4_lut_adj_203 (.A(n35323), .B(n14_adj_1774), .C(n10_adj_1775), 
            .D(n1_adj_1776), .Z(Write_N_1551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_203.init = 16'hfffe;
    ORCALUT4 i9355_4_lut (.A(n38854), .B(n38945), .C(n5_adj_1770), .D(n38753), 
            .Z(n12305)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9355_4_lut.init = 16'hca0a;
    ORCALUT4 i20373_2_lut_rep_543_3_lut_4_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(\IR[2] ), .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38777)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i20373_2_lut_rep_543_3_lut_4_lut_4_lut.init = 16'hfbfd;
    ORCALUT4 i3_3_lut_4_lut (.A(n38933), .B(n41024), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n38929), .Z(n35331)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0010;
    PFUMX mux_4679_i1 (.BLUT(n6799[0]), .ALUT(PreserveC_N_1480), .C0(ISet[1]), 
          .Z(PreserveC));
    ORCALUT4 i1_2_lut_rep_450 (.A(n24677), .B(n33989), .Z(n38684)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_450.init = 16'h8888;
    ORCALUT4 MCycles_2__N_1060_I_0_1677_Select_0_i38_4_lut_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), 
            .B(n38833), .C(\mc[2] ), .D(\Set_BusA_To_3__N_1203[2] ), .Z(n38)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1060_I_0_1677_Select_0_i38_4_lut_4_lut.init = 16'h0032;
    ORCALUT4 i31095_3_lut_4_lut (.A(n24677), .B(n33989), .C(n16160), .D(n38796), 
            .Z(n34569)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i31095_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 i1_4_lut (.A(n41005), .B(\ALU_Op_3__N_1274[3] ), .C(n22), 
            .D(n34582), .Z(n30)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut.init = 16'ha0ec;
    ORCALUT4 i1_3_lut_rep_482_4_lut_4_lut (.A(\IR[2] ), .B(n38839), .C(\IR[1] ), 
            .Z(n38716)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_rep_482_4_lut_4_lut.init = 16'hefef;
    ORCALUT4 n13_bdd_4_lut (.A(n41004), .B(n38776), .C(n38910), .D(F_Out_7__N_1639), 
            .Z(n37356)) /* synthesis lut_function=(!(A (B)+!A (B (C (D)+!C !(D))))) */ ;
    defparam n13_bdd_4_lut.init = 16'h3773;
    PFUMX mux_5940_i2 (.BLUT(n34112), .ALUT(n6974[1]), .C0(n1872), .Z(n8219[1]));
    ORCALUT4 n3825_bdd_3_lut (.A(n37300), .B(n39035), .C(\IR[4] ), .Z(n38435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3825_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i8351_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .D(\IR[0] ), .Z(n11164)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8351_3_lut_4_lut_4_lut.init = 16'h0230;
    ORCALUT4 i1_2_lut_rep_791 (.A(n41026), .B(n41028), .Z(n41004)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_791.init = 16'hdddd;
    ORCALUT4 i4_4_lut (.A(n38945), .B(n8_c), .C(n9), .D(n38699), .Z(Set_BusB_To_3__N_1405[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut.init = 16'hfefc;
    PFUMX mux_5940_i3 (.BLUT(n34113), .ALUT(n6974[2]), .C0(n1872), .Z(n8219_c[2]));
    ORCALUT4 i3_4_lut_adj_204 (.A(Read_To_Acc_N_1472), .B(n15742), .C(n2), 
            .D(n1_adj_1777), .Z(Set_BusB_To_3__N_1405[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_204.init = 16'hfffe;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_205 (.A(\mc[2] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .D(n2390), .Z(n32154)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_3_lut_4_lut_4_lut_adj_205.init = 16'h3200;
    L6MUX21 mux_3155_i1 (.D0(n4744[0]), .D1(n4771[0]), .SD(n38972), .Z(n4765[0]));
    ORCALUT4 i2_4_lut_adj_206 (.A(\Set_BusA_To_3__N_1207[0] ), .B(n34144), 
            .C(n38782), .D(n16943), .Z(\IncDec_16_3__N_1017[2] )) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_206.init = 16'hffcd;
    ORCALUT4 i1_2_lut_rep_711 (.A(\IR[5] ), .B(\IR[4] ), .Z(n38945)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_rep_711.init = 16'h2222;
    ORCALUT4 select_200_Select_2_i7_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(n38908), .D(n38997), .Z(Set_BusA_To_3__N_1187[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam select_200_Select_2_i7_3_lut_4_lut_4_lut.init = 16'ha2a0;
    ORCALUT4 i2_2_lut_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[0] ), .Z(n3_adj_1778)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i2_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[1] ), .Z(n18_adj_1779)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_3_lut.init = 16'h2f2f;
    PFUMX mux_3161_i1 (.BLUT(n4759[0]), .ALUT(n35395), .C0(n4755), .Z(n4774[0]));
    ORCALUT4 i3_2_lut_rep_712 (.A(\IR[2] ), .B(\IR[1] ), .Z(n38946)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3_2_lut_rep_712.init = 16'h4444;
    ORCALUT4 i2_3_lut_4_lut_adj_207 (.A(n41018), .B(n41016), .C(n38979), 
            .D(n38980), .Z(n5_adj_1770)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_207.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_713 (.A(n41022), .B(n41024), .Z(n38947)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_713.init = 16'h2222;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_208 (.A(n40991), .B(n34106), .C(n24332), 
            .D(n38808), .Z(n24931)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_208.init = 16'h8000;
    ORCALUT4 i1_3_lut_4_lut_adj_209 (.A(n24518), .B(n38714), .C(n38716), 
            .D(n38997), .Z(n9)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i1_3_lut_4_lut_adj_209.init = 16'hbf00;
    ORCALUT4 i1_2_lut_rep_511_4_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(n38933), .C(\Set_BusA_To_3__N_1207[0] ), .D(n38921), .Z(n38745)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_2_lut_rep_511_4_lut_4_lut.init = 16'h0010;
    ORCALUT4 BusB_7__I_0_129_i4_2_lut_rep_561_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(BusB[3]), .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38795)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam BusB_7__I_0_129_i4_2_lut_rep_561_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i21413_3_lut_4_lut (.A(n24921), .B(n38715), .C(n13_c), .D(n38705), 
            .Z(MCycles_2__N_1009[0])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i21413_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i10623_4_lut (.A(\IR[7] ), .B(n38817), .C(n38816), .D(n4_adj_1780), 
            .Z(n13677)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i10623_4_lut.init = 16'hc0c5;
    PFUMX mux_3141_i1 (.BLUT(n4720[0]), .ALUT(n4690[0]), .C0(\IR[0] ), 
          .Z(n4744[0]));
    ORCALUT4 i1_2_lut_rep_633_3_lut (.A(n41022), .B(n41024), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n38867)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_633_3_lut.init = 16'h0202;
    ORCALUT4 i13_4_lut (.A(n23835), .B(n26_c), .C(n37358), .D(n15992), 
            .Z(MCycles_2__N_1003[1])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i13_4_lut.init = 16'hfdff;
    PFUMX i21 (.BLUT(ALU_Op_3__N_1041[3]), .ALUT(n8_adj_1781), .C0(n38937), 
          .Z(\ALU_Op[3] ));
    ORCALUT4 i1_2_lut_rep_715 (.A(\IR[5] ), .B(\IR[2] ), .Z(n38949)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_715.init = 16'h2222;
    ORCALUT4 i4_4_lut_adj_210 (.A(n38686), .B(n8_adj_1782), .C(n7_c), 
            .D(n38997), .Z(Set_BusB_To_3__N_1405[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_210.init = 16'hfefc;
    ORCALUT4 i1_2_lut_3_lut_adj_211 (.A(\IR[5] ), .B(\IR[2] ), .C(\IR[7] ), 
            .Z(n34030)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_211.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_609_3_lut_4_lut (.A(n41024), .B(n41018), .C(n38990), 
            .D(n38953), .Z(n38843)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_609_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 IR_0__bdd_4_lut_34572 (.A(n41030), .B(n4_adj_1783), .C(n38_adj_1784), 
            .D(\IR[6] ), .Z(n38651)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam IR_0__bdd_4_lut_34572.init = 16'heef0;
    ORCALUT4 mux_1484_i3_4_lut (.A(n38997), .B(n2396[2]), .C(n38751), 
            .D(n2390), .Z(n2419[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1484_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1484_i2_4_lut (.A(n2390), .B(n2396[2]), .C(n38751), .D(n38812), 
            .Z(n2419[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1484_i2_4_lut.init = 16'hcac0;
    PFUMX i30 (.BLUT(n34030), .ALUT(n16_c), .C0(\IR[6] ), .Z(n13_c));
    ORCALUT4 IR_7__I_0_1789_i14_2_lut_rep_624_3_lut_4_lut (.A(n41022), .B(n41024), 
            .C(n41028), .D(\IR[6] ), .Z(n38858)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1789_i14_2_lut_rep_624_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 select_450_Select_0_i3_2_lut_rep_554_2_lut_3_lut (.A(\IR[4] ), 
            .B(\IR[5] ), .C(\Set_BusA_To_3__N_1203[2] ), .Z(n38788)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam select_450_Select_0_i3_2_lut_rep_554_2_lut_3_lut.init = 16'h7070;
    ORCALUT4 i1_4_lut_adj_212 (.A(n4755), .B(n41020), .C(n6_adj_1785), 
            .D(n38954), .Z(n5_c)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_212.init = 16'hbaaa;
    ORCALUT4 i1_2_lut_rep_636_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n38870)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_636_3_lut.init = 16'h0808;
    PFUMX mux_4121_i1 (.BLUT(n6047[0]), .ALUT(n33530), .C0(\IR[4] ), .Z(n6056[0]));
    ORCALUT4 n4784_bdd_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n4735[0]), 
            .D(n4765[0]), .Z(n38455)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n4784_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i4_4_lut_adj_213 (.A(n16397), .B(n39058), .C(n20_c), .D(n35490), 
            .Z(n34828)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4_4_lut_adj_213.init = 16'hfeff;
    ORCALUT4 i1_2_lut_rep_627_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n38861)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_627_3_lut.init = 16'h8080;
    ORCALUT4 i8_4_lut (.A(n34625), .B(n35604), .C(n12_adj_1786), .D(n41004), 
            .Z(n35319)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i8_4_lut.init = 16'hf7ff;
    ORCALUT4 IR_5__I_0_1786_i5_2_lut_rep_676_3_lut (.A(n41022), .B(\IR[5] ), 
            .C(n41020), .Z(n38910)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam IR_5__I_0_1786_i5_2_lut_rep_676_3_lut.init = 16'hf7f7;
    ORCALUT4 i567_2_lut_3_lut_4_lut (.A(n38916), .B(n38906), .C(last_tstate), 
            .D(n38931), .Z(n906)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i567_2_lut_3_lut_4_lut.init = 16'h0020;
    PFUMX mux_5940_i1 (.BLUT(n35249), .ALUT(n6974[0]), .C0(n1872), .Z(n8219_c[0]));
    ORCALUT4 i3_4_lut_adj_214 (.A(n38916), .B(ISet[1]), .C(n41004), .D(n41024), 
            .Z(\Special_LD[0] )) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_214.init = 16'h0008;
    ORCALUT4 select_200_Select_0_i2_2_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n38989), .D(\mc[2] ), .Z(n2_adj_1787)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam select_200_Select_0_i2_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_2_lut_rep_564_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n41004), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38798)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C))) */ ;
    defparam i1_2_lut_rep_564_3_lut_4_lut.init = 16'h0f07;
    ORCALUT4 i20074_2_lut_rep_588_3_lut_4_lut (.A(\IR[4] ), .B(n41024), 
            .C(n38997), .D(n41020), .Z(n38822)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20074_2_lut_rep_588_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i7179_2_lut_rep_532_4_lut (.A(n38953), .B(\IR[5] ), .C(n38907), 
            .D(ISet[1]), .Z(n38766)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i7179_2_lut_rep_532_4_lut.init = 16'h0800;
    ORCALUT4 i10917_2_lut_rep_569_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .D(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n38803)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i10917_2_lut_rep_569_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i20111_2_lut_rep_589_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n38997), .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38823)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i20111_2_lut_rep_589_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 i7087_2_lut_rep_558_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .D(n41020), .Z(n38792)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i7087_2_lut_rep_558_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 i2_4_lut_adj_215 (.A(n24518), .B(n33723), .C(n38704), .D(n38705), 
            .Z(n35214)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_215.init = 16'hecff;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n33964), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(clk_op_enable_19)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i22_4_lut (.A(n34625), .B(n1431[2]), .C(ISet[0]), .D(n4_adj_1788), 
            .Z(n8_adj_1789)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut.init = 16'hcfc5;
    ORCALUT4 i22_4_lut_adj_216 (.A(n37532), .B(n38911), .C(ISet[0]), .D(n20_adj_1790), 
            .Z(n8_adj_1791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_216.init = 16'hcfca;
    ORCALUT4 i13937_2_lut_rep_720 (.A(n41026), .B(n41028), .Z(n38954)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i13937_2_lut_rep_720.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_217 (.A(n41026), .B(n41028), .C(last_tstate), 
            .Z(n7_adj_1792)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_adj_217.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_642_3_lut (.A(n41026), .B(n41028), .C(n41022), 
            .Z(n38876)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_642_3_lut.init = 16'h0202;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(\IR[6] ), .B(n41028), .C(n38964), 
            .D(\IR[4] ), .Z(n4_c)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'h0020;
    ORCALUT4 i25498_3_lut_4_lut (.A(n38931), .B(n38723), .C(n10084), .D(n8219_c[0]), 
            .Z(\Set_BusA_To[0] )) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i25498_3_lut_4_lut.init = 16'hf870;
    ORCALUT4 i1_3_lut_4_lut_adj_219 (.A(ISet[1]), .B(n38908), .C(n38841), 
            .D(n38843), .Z(BTR_r_N_970)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_3_lut_4_lut_adj_219.init = 16'h8880;
    ORCALUT4 i2_3_lut_4_lut_adj_220 (.A(n38828), .B(n38724), .C(n38725), 
            .D(n24695), .Z(n34127)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_220.init = 16'h8000;
    ORCALUT4 i2_4_lut_then_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n24919), 
            .D(n38923), .Z(n39049)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i2_4_lut_then_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i20479_2_lut_rep_792 (.A(n41022), .B(\IR[5] ), .Z(n41005)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20479_2_lut_rep_792.init = 16'h8888;
    ORCALUT4 i2_4_lut_then_2_lut_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n38778), 
            .Z(n39018)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_4_lut_then_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i1_4_lut_adj_221 (.A(\ALU_Op_3__N_1274[3] ), .B(n38883), .C(n38963), 
            .D(\IR[1] ), .Z(TStates_2__N_1412[2])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_4_lut_adj_221.init = 16'heaaa;
    ORCALUT4 i8_4_lut_adj_222 (.A(n9652), .B(n16_adj_1793), .C(n12_adj_1794), 
            .D(n50), .Z(n35218)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i8_4_lut_adj_222.init = 16'hfffe;
    ORCALUT4 i1_4_lut_4_lut_adj_223 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n4_adj_1783), .D(\IR[0] ), .Z(n33)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_223.init = 16'hc4c0;
    ORCALUT4 n33964_bdd_4_lut_4_lut (.A(n38773), .B(n38855), .C(n38695), 
            .D(n33964), .Z(n37956)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B))) */ ;
    defparam n33964_bdd_4_lut_4_lut.init = 16'h1311;
    ORCALUT4 i5006_2_lut_rep_617_2_lut (.A(\IR[1] ), .B(n41018), .Z(n38851)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2247[15:26])
    defparam i5006_2_lut_rep_617_2_lut.init = 16'hdddd;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_224 (.A(n41020), .B(n38782), .C(n38778), 
            .D(n38989), .Z(n34144)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_224.init = 16'h2f22;
    ORCALUT4 i4_4_lut_adj_225 (.A(n38758), .B(n8_adj_1795), .C(n34282), 
            .D(n34960), .Z(TStates_2__N_1415[0])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_225.init = 16'hfefc;
    ORCALUT4 i22_4_lut_adj_226 (.A(n9_adj_1796), .B(TStates_2__N_1412[1]), 
            .C(ISet[0]), .D(n10_adj_1797), .Z(n8_adj_1798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_226.init = 16'hcfca;
    ORCALUT4 i2_4_lut_adj_227 (.A(n24518), .B(n33723), .C(n38740), .D(n34567), 
            .Z(n34726)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut_adj_227.init = 16'hecff;
    ORCALUT4 i1_2_lut_2_lut (.A(n41024), .B(n41018), .Z(n38_adj_1784)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i22_4_lut_adj_228 (.A(n15_adj_1799), .B(n1431[2]), .C(ISet[0]), 
            .D(n35602), .Z(n8_adj_1800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_228.init = 16'hcacf;
    ORCALUT4 i1_2_lut_rep_449_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(n38838), .C(n41004), .D(n38904), .Z(n38683)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_2_lut_rep_449_3_lut_4_lut_4_lut.init = 16'h1115;
    ORCALUT4 i2_4_lut_else_2_lut (.A(n38918), .B(n38909), .C(n38778), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n39017)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_else_2_lut.init = 16'h1f00;
    ORCALUT4 i87_4_lut (.A(n24_c), .B(TStates_2__N_1412[1]), .C(ISet[0]), 
            .D(n4_adj_1801), .Z(n60)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i87_4_lut.init = 16'hcfca;
    ORCALUT4 i16_1_lut_rep_538_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n20_adj_1802), .Z(n38772)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i16_1_lut_rep_538_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i2_3_lut_rep_540_4_lut (.A(n41026), .B(n41028), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n20_adj_1802), .Z(n38774)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_rep_540_4_lut.init = 16'h0200;
    ORCALUT4 n3813_bdd_4_lut_then_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n39013)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n3813_bdd_4_lut_then_4_lut.init = 16'h2000;
    ORCALUT4 i32136_3_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(Halt_FF), 
            .D(F_Out_7__N_1639), .Z(n35644)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i32136_3_lut_3_lut_4_lut.init = 16'hf0f2;
    ORCALUT4 i33485_2_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n20_adj_1802), .Z(n35799)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;
    defparam i33485_2_lut_4_lut_4_lut.init = 16'h5755;
    ORCALUT4 mc_2__bdd_4_lut_34567 (.A(\mc[2] ), .B(n41020), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n41022), .Z(n39023)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (D)) */ ;
    defparam mc_2__bdd_4_lut_34567.init = 16'hf702;
    ORCALUT4 i1_2_lut_3_lut_adj_229 (.A(\IR[6] ), .B(\IR[7] ), .C(F_Out_7__N_1639), 
            .Z(n34060)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_229.init = 16'h2020;
    ORCALUT4 i1_4_lut_then_4_lut (.A(n38875), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\mc[2] ), .D(\mc[3] ), .Z(n39025)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hdcdf;
    ORCALUT4 i1_2_lut_rep_677_3_lut (.A(\IR[6] ), .B(\IR[7] ), .C(F_Out_7__N_1639), 
            .Z(n38911)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_rep_677_3_lut.init = 16'hfdfd;
    ORCALUT4 i3_3_lut_4_lut_adj_230 (.A(n38732), .B(n38779), .C(n34104), 
            .D(n38945), .Z(n12)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_3_lut_4_lut_adj_230.init = 16'hf222;
    ORCALUT4 n34033_bdd_4_lut (.A(n34033), .B(n39057), .C(n41026), .D(ISet[1]), 
            .Z(n19)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n34033_bdd_4_lut.init = 16'hca00;
    ORCALUT4 Fp_3__bdd_3_lut_34208_4_lut (.A(n38849), .B(n38931), .C(n38038), 
            .D(\Fp[3] ), .Z(n38039)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Fp_3__bdd_3_lut_34208_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_729 (.A(\IR[2] ), .B(n41030), .Z(n38963)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_729.init = 16'h2222;
    ORCALUT4 i2_2_lut_3_lut_adj_231 (.A(n41018), .B(\IR[0] ), .C(\IR[4] ), 
            .Z(n6_adj_1785)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_2_lut_3_lut_adj_231.init = 16'h2020;
    ORCALUT4 i4_2_lut_rep_730 (.A(\IR[1] ), .B(n41030), .Z(n38964)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_730.init = 16'h2222;
    ORCALUT4 i35_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[2]), .D(Ap[2]), 
            .Z(n13)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam i35_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i27_4_lut_4_lut (.A(n41016), .B(\IR[0] ), .C(n41018), .D(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n12_adj_1805)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A (B (D))) */ ;
    defparam i27_4_lut_4_lut.init = 16'hcc20;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_232 (.A(\IR[1] ), .B(\IR[0] ), .C(\IR[2] ), 
            .D(n40997), .Z(n6026[0])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_232.init = 16'h0200;
    ORCALUT4 mux_1567_i7_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[6]), 
            .D(Ap[6]), .Z(n2580)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i7_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_233 (.A(n38815), .B(n38739), .C(n41002), 
            .D(n38715), .Z(n22)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_233.init = 16'h22f2;
    ORCALUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(n38715), 
            .C(n4_adj_1768), .D(\ALU_Op_3__N_1274[3] ), .Z(n34282)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h00f1;
    ORCALUT4 i1_2_lut_rep_466 (.A(\ALU_Op_3__N_1274[3] ), .B(n24919), .Z(n38700)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_466.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_234 (.A(\ALU_Op_3__N_1274[3] ), .B(n24919), 
            .C(\Set_BusA_To_3__N_1207[0] ), .Z(n15742)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_234.init = 16'h2020;
    ORCALUT4 i705_3_lut_rep_421_4_lut (.A(n38849), .B(n38931), .C(n38855), 
            .D(n906), .Z(n38655)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i705_3_lut_rep_421_4_lut.init = 16'hf0fe;
    ORCALUT4 i1_4_lut_4_lut_adj_235 (.A(\ALU_Op_3__N_1274[3] ), .B(n66), 
            .C(n6_c), .D(n38683), .Z(n58)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_4_lut_adj_235.init = 16'h5554;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_236 (.A(\ALU_Op_3__N_1274[3] ), .B(F_Out_7__N_1639), 
            .C(n41005), .D(n41020), .Z(n4_adj_1806)) /* synthesis lut_function=((B ((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_3_lut_4_lut_4_lut_adj_236.init = 16'hdd5d;
    ORCALUT4 i4_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n34273), .C(n50_adj_1807), 
            .D(n7_adj_1808), .Z(n10_adj_1797)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i4_4_lut_4_lut.init = 16'hfff4;
    ORCALUT4 select_846_Select_0_i50_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(n35271), .C(n38779), .D(n38749), .Z(n50_adj_1807)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam select_846_Select_0_i50_4_lut_4_lut.init = 16'h0f04;
    ORCALUT4 mux_1567_i4_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[3]), 
            .D(Ap[3]), .Z(n2583)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i4_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 mux_1567_i5_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[4]), 
            .D(Ap[4]), .Z(n2582)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i5_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i14334_3_lut_4_lut (.A(n38849), .B(n38931), .C(n38855), .D(n17821), 
            .Z(n17828)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i14334_3_lut_4_lut.init = 16'hfef0;
    ORCALUT4 i2_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38908), .C(n34208), 
            .D(n16790), .Z(n34960)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_4_lut_4_lut.init = 16'hfff4;
    ORCALUT4 i21409_3_lut_4_lut (.A(n24518), .B(n38758), .C(n24907), .D(n24635), 
            .Z(MCycles_2__N_1009[2])) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i21409_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 mux_1567_i2_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[1]), 
            .D(Ap[1]), .Z(n2585)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i2_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i21092_2_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(n15972), 
            .D(n38855), .Z(n24589)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i21092_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i2_3_lut_4_lut_adj_237 (.A(n38776), .B(n38742), .C(n38781), 
            .D(n15992), .Z(n35223)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_237.init = 16'h8000;
    ORCALUT4 sram_addr_c_bdd_2_lut_33694_4_lut (.A(n41004), .B(n20_adj_1802), 
            .C(\Set_BusA_To_3__N_1207[0] ), .D(n39014), .Z(n37303)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam sram_addr_c_bdd_2_lut_33694_4_lut.init = 16'h0400;
    ORCALUT4 mux_1567_i6_3_lut_3_lut_4_lut (.A(n38849), .B(n38931), .C(ACC[5]), 
            .D(Ap[5]), .Z(n2581)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_1567_i6_3_lut_3_lut_4_lut.init = 16'h1f0e;
    ORCALUT4 i33488_2_lut_rep_484_4_lut (.A(n41004), .B(n20_adj_1802), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n3825), .Z(n38718)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i33488_2_lut_rep_484_4_lut.init = 16'h00fb;
    ORCALUT4 i1_3_lut_4_lut_adj_238 (.A(n38936), .B(n38885), .C(n38803), 
            .D(n38734), .Z(n4_adj_1809)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_238.init = 16'hff20;
    ORCALUT4 i1_2_lut_rep_468_3_lut_4_lut (.A(n38936), .B(n38885), .C(n38811), 
            .D(n38780), .Z(n38702)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_468_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i31977_3_lut_4_lut (.A(n38899), .B(n38929), .C(n38904), .D(n38922), 
            .Z(n35469)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i31977_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 select_924_Select_0_i6_2_lut_rep_736 (.A(\mc[6] ), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n38970)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam select_924_Select_0_i6_2_lut_rep_736.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_445_4_lut (.A(n34348), .B(n38900), .C(n38920), 
            .D(n24677), .Z(n38679)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_445_4_lut.init = 16'ha800;
    ORCALUT4 MCycles_2__N_1060_I_0_1670_Select_3_i55_2_lut_rep_514_4_lut (.A(\IR[1] ), 
            .B(n38891), .C(n38884), .D(n38989), .Z(n38748)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1060_I_0_1670_Select_3_i55_2_lut_rep_514_4_lut.init = 16'h0400;
    ORCALUT4 i1_3_lut_rep_550_4_lut_3_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .Z(n38784)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam i1_3_lut_rep_550_4_lut_3_lut.init = 16'hefef;
    ORCALUT4 i1_2_lut_rep_475_4_lut (.A(n41016), .B(n38891), .C(n38884), 
            .D(n24905), .Z(n38709)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_475_4_lut.init = 16'hfb00;
    ORCALUT4 n38933_bdd_4_lut (.A(n38933), .B(\IR[4] ), .C(n38900), .D(\IR[5] ), 
            .Z(n41009)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n38933_bdd_4_lut.init = 16'h0004;
    ORCALUT4 i1_2_lut_rep_782 (.A(n41026), .B(\IR[7] ), .C(\IR[1] ), .D(\IR[0] ), 
            .Z(n40995)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_782.init = 16'hff7f;
    ORCALUT4 i1_2_lut_rep_491_4_lut (.A(n41016), .B(n38891), .C(n38884), 
            .D(n16160), .Z(n38725)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_491_4_lut.init = 16'hfb00;
    ORCALUT4 IR_7__I_0_1679_Mux_3_i255_3_lut_4_lut_4_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(F_Out_7__N_1639), .D(\Set_BusA_To_3__N_1203[2] ), .Z(ALU_Op_3__N_1041[3])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam IR_7__I_0_1679_Mux_3_i255_3_lut_4_lut_4_lut.init = 16'hc1c0;
    ORCALUT4 MCycle_1__I_0_1837_2_lut_rep_649_3_lut (.A(\mc[6] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .Z(n38883)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam MCycle_1__I_0_1837_2_lut_rep_649_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_4_lut (.A(\IR[1] ), .B(n38891), .C(n38884), .D(n38997), 
            .Z(n6_adj_1810)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut.init = 16'h0400;
    ORCALUT4 reduce_nor_5794_i1_2_lut_rep_737 (.A(\mc[6] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\Set_BusA_To_3__N_1203[2] ), .Z(n38971)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1851[19] 1861[26])
    defparam reduce_nor_5794_i1_2_lut_rep_737.init = 16'hfefe;
    ORCALUT4 pwr_bdd_2_lut_33712_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(n38781), 
            .C(n37356), .D(n40995), .Z(n37357)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam pwr_bdd_2_lut_33712_3_lut_4_lut_4_lut.init = 16'hf3fb;
    ORCALUT4 select_819_Select_1_i50_3_lut_4_lut_2_lut_3_lut (.A(n38909), 
            .B(n38918), .C(n38814), .Z(n50_adj_1811)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(799[15:26])
    defparam select_819_Select_1_i50_3_lut_4_lut_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 select_825_Select_2_i50_2_lut_rep_463_3_lut_4_lut (.A(n38909), 
            .B(n38918), .C(n38831), .D(n38997), .Z(n38697)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(799[15:26])
    defparam select_825_Select_2_i50_2_lut_rep_463_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i31093_2_lut_4_lut (.A(n38739), .B(n38925), .C(n41004), .D(n38815), 
            .Z(n34567)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i31093_2_lut_4_lut.init = 16'hffa8;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_239 (.A(n38909), .B(n38918), .C(n38797), 
            .D(n38849), .Z(n34122)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(799[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_239.init = 16'he000;
    ORCALUT4 IR_7__I_0_1609_i15_2_lut_rep_552_3_lut_4_lut (.A(n38936), .B(n39002), 
            .C(n38933), .D(n39007), .Z(n38786)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1609_i15_2_lut_rep_552_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 IR_4__bdd_4_lut_33603 (.A(n41022), .B(n38997), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n41030), .Z(n37124)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam IR_4__bdd_4_lut_33603.init = 16'hcc40;
    ORCALUT4 i1_2_lut_rep_778 (.A(\IR[6] ), .B(\IR[7] ), .C(n38994), .D(n38991), 
            .Z(n40991)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_778.init = 16'hfffe;
    ORCALUT4 i3_2_lut_rep_446_4_lut (.A(n38725), .B(n24905), .C(n38805), 
            .D(n38741), .Z(n38680)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_2_lut_rep_446_4_lut.init = 16'h8000;
    ORCALUT4 i1_3_lut_rep_500_4_lut_4_lut (.A(\IR[2] ), .B(n29858), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n40995), .Z(n38734)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_3_lut_rep_500_4_lut_4_lut.init = 16'hccec;
    ORCALUT4 i76_3_lut_rep_447_4_lut (.A(n38824), .B(n38744), .C(RstP_N_1517), 
            .D(n38908), .Z(n38681)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;
    defparam i76_3_lut_rep_447_4_lut.init = 16'hf222;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_240 (.A(\IR[2] ), .B(n7291), .C(n38997), 
            .D(n38910), .Z(n35395)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i2_3_lut_4_lut_4_lut_adj_240.init = 16'h1000;
    ORCALUT4 i58_2_lut_rep_546_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(n40996), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n38780)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i58_2_lut_rep_546_3_lut_4_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_241 (.A(\IR[2] ), .B(n38977), .C(\IR[0] ), 
            .D(\IR[1] ), .Z(n34774)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i2_3_lut_4_lut_4_lut_adj_241.init = 16'h0400;
    ORCALUT4 i20337_2_lut_4_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n40997), 
            .D(n38823), .Z(n4720[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i20337_2_lut_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_242 (.A(n38926), .B(n38894), .C(n34228), 
            .D(n38813), .Z(n4_adj_1788)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_242.init = 16'hf1ff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_243 (.A(\IR[2] ), .B(n41000), 
            .C(n34116), .D(n40995), .Z(n10_adj_1812)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_243.init = 16'hc040;
    ORCALUT4 i31055_2_lut_rep_512_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(n40995), 
            .C(n38894), .D(n38926), .Z(n38746)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i31055_2_lut_rep_512_3_lut_4_lut_4_lut.init = 16'hddd0;
    ORCALUT4 pwr_bdd_2_lut_33804_3_lut_4_lut (.A(n38926), .B(n38894), .C(n37530), 
            .D(n38813), .Z(n37531)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam pwr_bdd_2_lut_33804_3_lut_4_lut.init = 16'hf1ff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n9_adj_1813)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_2_lut_3_lut_4_lut.init = 16'hbb3b;
    ORCALUT4 i1_2_lut_rep_508_3_lut_4_lut_4_lut (.A(n41018), .B(n40995), 
            .C(n38898), .D(n38923), .Z(n38742)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_2_lut_rep_508_3_lut_4_lut_4_lut.init = 16'hddd0;
    ORCALUT4 i6371_1_lut_rep_738 (.A(\IR[4] ), .Z(n38972)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i6371_1_lut_rep_738.init = 16'h5555;
    ORCALUT4 i11166_4_lut_4_lut_4_lut (.A(\IR[4] ), .B(\BusA[7] ), .C(\BusA[6] ), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n14303)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i11166_4_lut_4_lut_4_lut.init = 16'h44f0;
    ORCALUT4 mux_3157_i1_4_lut_4_lut (.A(\IR[0] ), .B(n38752), .C(\IR[2] ), 
            .D(n6014[0]), .Z(n4768[0])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_3157_i1_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 i2_2_lut_4_lut_4_lut (.A(n41030), .B(n38845), .C(n38933), 
            .D(n38851), .Z(n24332)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i2_2_lut_4_lut_4_lut.init = 16'hccc4;
    ORCALUT4 i2_4_lut_4_lut_adj_244 (.A(\IR[0] ), .B(\IR[2] ), .C(n3_adj_1778), 
            .D(n4_adj_1814), .Z(n1872)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i2_4_lut_4_lut_adj_244.init = 16'hd100;
    ORCALUT4 i20563_2_lut_rep_783 (.A(n41026), .B(n41028), .Z(n40996)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20563_2_lut_rep_783.init = 16'h8888;
    ORCALUT4 i1_4_lut_4_lut_adj_245 (.A(\IR[0] ), .B(\IR[1] ), .C(n8_adj_1815), 
            .D(\IR[2] ), .Z(n33530)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_245.init = 16'h5140;
    ORCALUT4 i2_2_lut_rep_443_3_lut_4_lut (.A(n24905), .B(n38778), .C(n33989), 
            .D(n24677), .Z(n38677)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_rep_443_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_650_2_lut (.A(n41030), .B(n41020), .Z(n38884)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_650_2_lut.init = 16'hdddd;
    ORCALUT4 i2_3_lut_rep_544_4_lut_4_lut (.A(n41030), .B(n41016), .C(n38891), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38778)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_3_lut_rep_544_4_lut_4_lut.init = 16'hffdf;
    ORCALUT4 ExchangeDH_I_0_795_2_lut_rep_462_3_lut_4_lut (.A(n38925), .B(n38918), 
            .C(n41014), .D(n38931), .Z(n38696)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(716[15:26])
    defparam ExchangeDH_I_0_795_2_lut_rep_462_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_4_lut_adj_246 (.A(\IR[0] ), .B(n39007), .C(\IR[2] ), 
            .D(n41026), .Z(n25)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_246.init = 16'hd5c0;
    ORCALUT4 i7132_2_lut_4_lut_4_lut (.A(\IR[0] ), .B(\IR[5] ), .C(n38933), 
            .D(n38851), .Z(n9781)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i7132_2_lut_4_lut_4_lut.init = 16'h0008;
    PFUMX i34477 (.BLUT(n39036), .ALUT(n39037), .C0(\mc[2] ), .Z(n39038));
    ORCALUT4 ExchangeDH_I_0_824_2_lut_rep_476_3_lut_4_lut (.A(n38925), .B(n38918), 
            .C(\ts[4] ), .D(n38931), .Z(n38710)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(716[15:26])
    defparam ExchangeDH_I_0_824_2_lut_rep_476_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_else_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .C(n38829), .D(\mc[3] ), .Z(n39024)) /* synthesis lut_function=(!(A (C)+!A (B+(C+(D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0a0b;
    ORCALUT4 i2_3_lut_rep_548_4_lut_4_lut_4_lut (.A(n41030), .B(n41018), 
            .C(n38933), .D(n41016), .Z(n38782)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_3_lut_rep_548_4_lut_4_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i1_2_lut_4_lut_4_lut_4_lut_adj_247 (.A(\IR[4] ), .B(\ALU_Op_3__N_1274[3] ), 
            .C(n38763), .D(\IR[1] ), .Z(n24)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1913[23] 1918[28])
    defparam i1_2_lut_4_lut_4_lut_4_lut_adj_247.init = 16'h0e00;
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(\IR[7] ), .B(\IR[0] ), .C(n18_adj_1779), 
            .D(\IR[2] ), .Z(n16_c)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4055;
    ORCALUT4 i4_4_lut_4_lut_adj_248 (.A(\IR[7] ), .B(n26_adj_1817), .C(n8), 
            .D(Read_To_Acc_N_1472), .Z(n10_adj_7)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_4_lut_adj_248.init = 16'hfff4;
    ORCALUT4 n39001_bdd_2_lut_3_lut (.A(n41026), .B(\IR[7] ), .C(n38846), 
            .Z(n24905)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam n39001_bdd_2_lut_3_lut.init = 16'hf7f7;
    ORCALUT4 n40545_bdd_3_lut (.A(n40545), .B(n40544), .C(ISet[1]), .Z(Read_To_Reg)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40545_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 MCycles_2__N_1060_I_0_1668_Select_2_i58_2_lut_3_lut_4_lut (.A(n38929), 
            .B(n38906), .C(n38902), .D(n38824), .Z(n58_adj_1820)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(516[15:26])
    defparam MCycles_2__N_1060_I_0_1668_Select_2_i58_2_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 n6789_bdd_4_lut (.A(n6788[0]), .B(n9_adj_1821), .C(n10_adj_8), 
            .D(ISet[0]), .Z(n40545)) /* synthesis lut_function=(A+!(B (D)+!B ((D)+!C))) */ ;
    defparam n6789_bdd_4_lut.init = 16'haafe;
    ORCALUT4 i2_3_lut (.A(n41016), .B(n41018), .C(n41030), .Z(F_Out_7__N_1639)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut.init = 16'hf7f7;
    ORCALUT4 n38455_bdd_4_lut (.A(n16401), .B(n4777[0]), .C(n38774), .D(n4768[0]), 
            .Z(n40543)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n38455_bdd_4_lut.init = 16'hf808;
    ORCALUT4 i1_3_lut_4_lut_adj_249 (.A(n38916), .B(n38858), .C(n38922), 
            .D(n38900), .Z(n6_adj_1823)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(998[15:26])
    defparam i1_3_lut_4_lut_adj_249.init = 16'hddd0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_250 (.A(n38916), .B(n38858), .C(\F[0] ), 
            .D(n38931), .Z(n31745)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(998[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_250.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_rep_533_4_lut (.A(n38936), .B(n38858), .C(n38934), 
            .D(n38848), .Z(n38767)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_rep_533_4_lut.init = 16'hfd00;
    ORCALUT4 i4_4_lut_adj_251 (.A(n7_adj_1824), .B(\IR[1] ), .C(\IR[6] ), 
            .D(n38842), .Z(I_BTR)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_251.init = 16'h0800;
    ORCALUT4 i20141_2_lut_4_lut (.A(n38936), .B(n38858), .C(n38934), .D(n38937), 
            .Z(n23587)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i20141_2_lut_4_lut.init = 16'hfd00;
    ORCALUT4 i1_2_lut_4_lut_adj_252 (.A(n38936), .B(n38858), .C(n38934), 
            .D(n34332), .Z(n4)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_4_lut_adj_252.init = 16'h00fd;
    ORCALUT4 i20273_2_lut_4_lut (.A(n38997), .B(n38753), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n10925)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20273_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_3_lut_adj_253 (.A(\IR[2] ), .B(n61_adj_1826), .C(n44), 
            .Z(n26)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_253.init = 16'hecec;
    ORCALUT4 i62_4_lut (.A(\IR[7] ), .B(n41026), .C(\IR[2] ), .D(n38936), 
            .Z(n61_adj_1826)) /* synthesis lut_function=(A (B+(C))+!A !(B (C+(D)))) */ ;
    defparam i62_4_lut.init = 16'hb9bd;
    ORCALUT4 i61_4_lut (.A(n41016), .B(n17150), .C(\IR[0] ), .D(n33698), 
            .Z(n44)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i61_4_lut.init = 16'hfaca;
    ORCALUT4 i2_2_lut_rep_499_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(n38910), .C(n38885), .D(n38936), .Z(n38733)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(331[21] 340[24])
    defparam i2_2_lut_rep_499_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_3_lut_4_lut_adj_254 (.A(\ALU_Op_3__N_1274[3] ), .B(n38910), 
            .C(n34060), .D(n29858), .Z(n4_adj_1828)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(306[21] 311[24])
    defparam i1_3_lut_4_lut_adj_254.init = 16'hffe0;
    ORCALUT4 i5078_2_lut_rep_744 (.A(\IR[5] ), .B(\IR[2] ), .Z(n38978)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5078_2_lut_rep_744.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_adj_255 (.A(\IR[5] ), .B(\IR[2] ), .C(\IR[1] ), 
            .Z(n34094)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_adj_255.init = 16'h8080;
    ORCALUT4 i1_2_lut_3_lut_adj_256 (.A(\IR[5] ), .B(\IR[2] ), .C(n39023), 
            .Z(n4_adj_1829)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_adj_256.init = 16'h8080;
    ORCALUT4 i2_3_lut_rep_745 (.A(n41028), .B(n41026), .C(ISet[1]), .Z(n38979)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_rep_745.init = 16'h4040;
    ORCALUT4 i1_2_lut_4_lut_adj_257 (.A(\IR[7] ), .B(\IR[6] ), .C(ISet[1]), 
            .D(\IR[1] ), .Z(n4_adj_1814)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_257.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_746 (.A(\Set_BusA_To_3__N_1207[0] ), .B(n41030), 
            .Z(n38980)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_746.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1602_i15_2_lut_rep_573_3_lut_4_lut (.A(n39006), .B(n38933), 
            .C(n38991), .D(n38936), .Z(n38807)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam IR_7__I_0_1602_i15_2_lut_rep_573_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i2_3_lut_4_lut_adj_258 (.A(\ALU_Op_3__N_1274[3] ), .B(n38910), 
            .C(n41004), .D(F_Out_7__N_1639), .Z(n34856)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(306[21] 311[24])
    defparam i2_3_lut_4_lut_adj_258.init = 16'h0e00;
    ORCALUT4 F_Out_7__N_1639_bdd_4_lut_34138 (.A(F_Out_7__N_1639), .B(n38798), 
            .C(n34432), .D(n41000), .Z(n37530)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C)) */ ;
    defparam F_Out_7__N_1639_bdd_4_lut_34138.init = 16'h8faf;
    ORCALUT4 mux_1469_i3_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n38895), 
            .C(\IR[7] ), .D(n38908), .Z(n2396[2])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam mux_1469_i3_3_lut_4_lut.init = 16'hf404;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_259 (.A(\ALU_Op_3__N_1274[3] ), .B(n38895), 
            .C(n38650), .D(ISet[1]), .Z(n4_adj_1780)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam i1_2_lut_3_lut_4_lut_adj_259.init = 16'hbfff;
    ORCALUT4 i1_3_lut_4_lut_adj_260 (.A(n38914), .B(n38926), .C(n38931), 
            .D(Alternate), .Z(Alternate_N_904)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(766[15:26])
    defparam i1_3_lut_4_lut_adj_260.init = 16'hfe01;
    ORCALUT4 i32067_3_lut_4_lut (.A(n38994), .B(n38763), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n24921), .Z(n35566)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i32067_3_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i2_3_lut_4_lut_adj_261 (.A(n38994), .B(n38763), .C(n38705), 
            .D(n38759), .Z(n24907)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_261.init = 16'he000;
    ORCALUT4 i3_4_lut_adj_262 (.A(n28_c), .B(n6_adj_1830), .C(\IR[6] ), 
            .D(n33), .Z(n31)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_262.init = 16'hfeee;
    ORCALUT4 i2_4_lut_adj_263 (.A(\Set_BusA_To_3__N_1207[0] ), .B(n38714), 
            .C(n35117), .D(n38997), .Z(n6_adj_1830)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_263.init = 16'hb3a2;
    ORCALUT4 i3_4_lut_adj_264 (.A(\IR[0] ), .B(n6_adj_1831), .C(n34532), 
            .D(\IR[5] ), .Z(n35117)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i3_4_lut_adj_264.init = 16'hcfef;
    ORCALUT4 i2_4_lut_adj_265 (.A(\IR[2] ), .B(\IR[6] ), .C(n36790), .D(n71), 
            .Z(n6_adj_1831)) /* synthesis lut_function=(A ((D)+!B)+!A !(B+(C))) */ ;
    defparam i2_4_lut_adj_265.init = 16'hab23;
    ORCALUT4 i20048_rep_152_2_lut (.A(n41028), .B(\IR[5] ), .Z(n36790)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20048_rep_152_2_lut.init = 16'h8888;
    ORCALUT4 i71_4_lut (.A(\IR[1] ), .B(n17078), .C(\IR[0] ), .D(n33698), 
            .Z(n71)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i71_4_lut.init = 16'hfaca;
    ORCALUT4 i20065_2_lut_rep_784 (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .Z(n40997)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i20065_2_lut_rep_784.init = 16'heeee;
    ORCALUT4 i20415_4_lut_then_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\IR[0] ), .D(\IR[1] ), .Z(n39031)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i20415_4_lut_then_3_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i31112_2_lut_4_lut (.A(n38933), .B(\IR[5] ), .C(n38904), 
            .D(n38832), .Z(n34588)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i31112_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i31007_2_lut_4_lut (.A(n38933), .B(\IR[5] ), .C(n38904), 
            .D(n24905), .Z(n34472)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i31007_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i7032_3_lut_4_lut (.A(n38910), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\ALU_Op_3__N_1274[3] ), .D(n38821), .Z(n9652)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam i7032_3_lut_4_lut.init = 16'h00f4;
    ORCALUT4 i2_2_lut_rep_749 (.A(\IR[2] ), .B(\IR[1] ), .Z(n38983)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_749.init = 16'h8888;
    ORCALUT4 i1_3_lut_4_lut_adj_266 (.A(n38838), .B(n38762), .C(n40997), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n28_c)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_266.init = 16'h7770;
    ORCALUT4 i1_2_lut_rep_658_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(n38892)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_658_3_lut.init = 16'h8080;
    ORCALUT4 i20800_2_lut_2_lut_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(MCycles_2__N_1006[1])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i20800_2_lut_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i33537_2_lut_rep_441_3_lut_4_lut (.A(n38914), .B(n38920), .C(n38703), 
            .D(n24677), .Z(n38675)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i33537_2_lut_rep_441_3_lut_4_lut.init = 16'h1fff;
    ORCALUT4 i20398_2_lut_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(n38989), 
            .D(\mc[2] ), .Z(n5400[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i20398_2_lut_3_lut_4_lut.init = 16'h0d00;
    ORCALUT4 i1_3_lut_rep_752 (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), 
            .Z(n38986)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_rep_752.init = 16'h4040;
    ORCALUT4 i1_2_lut_4_lut_adj_267 (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), 
            .D(n39003), .Z(n6014[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_4_lut_adj_267.init = 16'h4000;
    ORCALUT4 i42_3_lut_4_lut (.A(\IR[2] ), .B(n41028), .C(n41024), .D(\IR[6] ), 
            .Z(n37)) /* synthesis lut_function=(A (B+!(D))+!A (B ((D)+!C)+!B !(D))) */ ;
    defparam i42_3_lut_4_lut.init = 16'hccbf;
    PFUMX i34475 (.BLUT(n39033), .ALUT(n39034), .C0(\IR[1] ), .Z(n39035));
    ORCALUT4 i5_4_lut (.A(n6363[0]), .B(n7_adj_1792), .C(n41030), .D(ISet[1]), 
            .Z(n1165)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0800;
    ORCALUT4 i1_3_lut_4_lut_adj_268 (.A(n38904), .B(n38922), .C(n34060), 
            .D(n38910), .Z(n9_adj_1832)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(398[15:26])
    defparam i1_3_lut_4_lut_adj_268.init = 16'h11f1;
    ORCALUT4 i21_4_lut (.A(n8_adj_1833), .B(n24935), .C(ISet[1]), .D(n38687), 
            .Z(mcycles_d[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut.init = 16'h3afa;
    ORCALUT4 i1_4_lut_adj_269 (.A(n38919), .B(n38934), .C(n41004), .D(n4_adj_1834), 
            .Z(n24921)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_269.init = 16'hfac8;
    ORCALUT4 n37125_bdd_3_lut_4_lut (.A(n37124), .B(n41018), .C(n41016), 
            .D(n37123), .Z(n37126)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n37125_bdd_3_lut_4_lut.init = 16'hf202;
    ORCALUT4 i1_3_lut_3_lut_4_lut (.A(n41026), .B(\IR[7] ), .C(F_Out_7__N_1639), 
            .D(\ALU_Op_3__N_1274[3] ), .Z(n43_c)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h4044;
    ORCALUT4 i1_3_lut_4_lut_adj_270 (.A(n41026), .B(n41028), .C(F_Out_7__N_1639), 
            .D(n38997), .Z(n29858)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_3_lut_4_lut_adj_270.init = 16'h4440;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_271 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n4_adj_1835)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_271.init = 16'hccdc;
    ORCALUT4 MCycle_2__I_0_1838_2_lut_rep_674_3_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .Z(n38908)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_2__I_0_1838_2_lut_rep_674_3_lut.init = 16'h1010;
    ORCALUT4 i20106_2_lut_rep_583_3_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .D(n41030), .Z(n38817)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i20106_2_lut_rep_583_3_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\mc[2] ), .Z(n16917)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hbaba;
    ORCALUT4 i2_3_lut_4_lut_adj_272 (.A(n41018), .B(n40995), .C(n38875), 
            .D(n39003), .Z(n35079)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_272.init = 16'h1000;
    ORCALUT4 i1_3_lut_4_lut_adj_273 (.A(n38838), .B(n38762), .C(n1656[2]), 
            .D(n31476), .Z(n7_adj_1836)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_273.init = 16'h70ff;
    ORCALUT4 i20155_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(n40995), .C(n38920), 
            .D(n38909), .Z(n23601)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i20155_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i20773_4_lut (.A(n4_adj_1837), .B(\mc[6] ), .C(TStates_2__N_1415[2]), 
            .D(ISet[1]), .Z(\tstates[2] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i20773_4_lut.init = 16'hfcee;
    ORCALUT4 i5_4_lut_adj_274 (.A(\ALU_Op_3__N_1274[3] ), .B(n10_adj_1838), 
            .C(n17089), .D(n23_c), .Z(TStates_2__N_1415[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut_adj_274.init = 16'hfefc;
    ORCALUT4 i4_4_lut_adj_275 (.A(n7_adj_1836), .B(n39046), .C(n38758), 
            .D(n16790), .Z(n10_adj_1838)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4_4_lut_adj_275.init = 16'hfeee;
    ORCALUT4 i1_2_lut_rep_608_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(ISet[1]), .D(\mc[2] ), .Z(n38842)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_rep_608_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_276 (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[7] ), .D(\mc[2] ), .Z(n32155)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_4_lut_adj_276.init = 16'h1000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_277 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n34208)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_277.init = 16'hcccd;
    ORCALUT4 i1_2_lut_rep_470_3_lut_4_lut_2_lut_3_lut_1_lut_2_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .Z(n38704)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_rep_470_3_lut_4_lut_2_lut_3_lut_1_lut_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_278 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n16790)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_278.init = 16'haaba;
    ORCALUT4 reduce_nor_5806_i1_2_lut_rep_580_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n38814)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam reduce_nor_5806_i1_2_lut_rep_580_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 Set_BusA_To_3__I_119_2_lut_rep_661_3_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .Z(n38895)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam Set_BusA_To_3__I_119_2_lut_rep_661_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_435_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n16943), .D(n38778), .Z(n38669)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_rep_435_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 i1_3_lut_4_lut_adj_279 (.A(n38904), .B(n38858), .C(n38830), 
            .D(n38875), .Z(n5_adj_1839)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(429[15:26])
    defparam i1_3_lut_4_lut_adj_279.init = 16'hf111;
    ORCALUT4 MCycle_3__I_0_2_lut_rep_597_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n38831)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_3__I_0_2_lut_rep_597_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_280 (.A(n38838), .B(n38762), .C(n38945), 
            .D(n41002), .Z(n3_adj_1840)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_280.init = 16'h7000;
    ORCALUT4 i1_4_lut_adj_281 (.A(\IR[2] ), .B(n38048), .C(n41005), .D(n41030), 
            .Z(n23_c)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_281.init = 16'hecee;
    ORCALUT4 i2_3_lut_rep_506_4_lut (.A(n38908), .B(n38997), .C(n38814), 
            .D(n38831), .Z(n38740)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_rep_506_4_lut.init = 16'hffef;
    ORCALUT4 i31994_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n24921), .D(n24907), .Z(n35490)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i31994_3_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i1_3_lut_4_lut_3_lut_4_lut_3_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .Z(n34205)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_3_lut_4_lut_3_lut_4_lut_3_lut.init = 16'h0101;
    ORCALUT4 i1_3_lut_4_lut_adj_282 (.A(n38838), .B(n38762), .C(n38788), 
            .D(n2_adj_1841), .Z(n2)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_282.init = 16'h7770;
    ORCALUT4 MCycle_0__I_0_1791_2_lut_rep_562_3_lut_3_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .Z(n38796)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_0__I_0_1791_2_lut_rep_562_3_lut_3_lut.init = 16'habab;
    ORCALUT4 i1_2_lut_rep_756 (.A(n41030), .B(n41016), .Z(n38990)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_756.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_639_3_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[2] ), 
            .Z(n38873)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_639_3_lut.init = 16'h2020;
    ORCALUT4 IR_7__I_0_1697_i10_2_lut_rep_757 (.A(n41018), .B(n41020), .Z(n38991)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam IR_7__I_0_1697_i10_2_lut_rep_757.init = 16'heeee;
    ORCALUT4 IR_7__I_0_1692_i11_2_lut_rep_675_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n41030), .D(n41016), .Z(n38909)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam IR_7__I_0_1692_i11_2_lut_rep_675_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 reduce_or_5638_i1_2_lut_3_lut_4_lut (.A(n38895), .B(\mc[3] ), 
            .C(n38908), .D(\mc[4] ), .Z(IncDec_16_3__N_1217[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam reduce_or_5638_i1_2_lut_3_lut_4_lut.init = 16'hf1f0;
    ORCALUT4 i5065_2_lut (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1207[0] ), .Z(n7291)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5065_2_lut.init = 16'h2222;
    ORCALUT4 IR_7__I_0_1723_i11_2_lut_rep_670_3_lut_4_lut (.A(\IR[2] ), .B(n41020), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n38904)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2182[15:26])
    defparam IR_7__I_0_1723_i11_2_lut_rep_670_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i20415_4_lut_else_3_lut (.A(n40997), .B(\IR[1] ), .C(\IR[0] ), 
            .D(\IR[2] ), .Z(n39030)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20415_4_lut_else_3_lut.init = 16'h0008;
    ORCALUT4 IR_7__I_0_1750_i9_2_lut_rep_760 (.A(\IR[0] ), .B(\IR[1] ), 
            .Z(n38994)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1750_i9_2_lut_rep_760.init = 16'hdddd;
    ORCALUT4 i1_2_lut_rep_465_3_lut_4_lut (.A(n38902), .B(n39003), .C(n41004), 
            .D(n38909), .Z(n38699)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2080[19] 2127[26])
    defparam i1_2_lut_rep_465_3_lut_4_lut.init = 16'h000e;
    ORCALUT4 i2_3_lut_4_lut_adj_283 (.A(n38902), .B(n39003), .C(n38828), 
            .D(n34228), .Z(n11_c)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2080[19] 2127[26])
    defparam i2_3_lut_4_lut_adj_283.init = 16'hff01;
    ORCALUT4 i1_2_lut_rep_665_3_lut_4_lut (.A(n41030), .B(\IR[1] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(\IR[2] ), .Z(n38899)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_665_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_284 (.A(n38875), .B(n39003), .C(n38835), 
            .D(n38902), .Z(\MCycles_2__N_1162[2] )) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_4_lut_adj_284.init = 16'hfff8;
    ORCALUT4 MCycles_2__N_1060_I_0_1670_Select_2_i24_3_lut_4_lut (.A(n38875), 
            .B(n39003), .C(n38830), .D(n38902), .Z(n24_adj_1842)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam MCycles_2__N_1060_I_0_1670_Select_2_i24_3_lut_4_lut.init = 16'hf080;
    ORCALUT4 ALU_Op_3__N_1244_bdd_4_lut_33860 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(n38829), .C(n38830), .D(n17359), .Z(n37568)) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;
    defparam ALU_Op_3__N_1244_bdd_4_lut_33860.init = 16'ha200;
    PFUMX i34473 (.BLUT(n39030), .ALUT(n39031), .C0(\IR[5] ), .Z(n39032));
    ORCALUT4 i20066_2_lut_rep_762 (.A(n41018), .B(n41016), .Z(n38996)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20066_2_lut_rep_762.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_adj_285 (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[7] ), 
            .Z(n4_adj_1783)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_285.init = 16'hf1f1;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_286 (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[5] ), 
            .D(n41028), .Z(n34033)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_286.init = 16'h1000;
    ORCALUT4 equal_109_i8_2_lut_rep_687_3_lut (.A(\IR[2] ), .B(n41016), 
            .C(n41030), .Z(n38921)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam equal_109_i8_2_lut_rep_687_3_lut.init = 16'hefef;
    ORCALUT4 select_483_Select_0_i3_2_lut_rep_763 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .Z(n38997)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam select_483_Select_0_i3_2_lut_rep_763.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_523_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n4755), .D(\IR[2] ), .Z(n38757)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_rep_523_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i13926_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n38817), .D(\Set_BusA_To_3__N_1207[0] ), .Z(n17358)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i13926_4_lut_4_lut.init = 16'hfeaa;
    ORCALUT4 ALU_Op_3__N_1244_bdd_4_lut_33826 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(n38829), .C(n38875), .D(n38830), .Z(n37567)) /* synthesis lut_function=(A ((D)+!B)+!A ((C (D))+!B)) */ ;
    defparam ALU_Op_3__N_1244_bdd_4_lut_33826.init = 16'hfb33;
    ORCALUT4 i1_2_lut_rep_623_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[4] ), .D(\IR[5] ), .Z(n38857)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_rep_623_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i8313_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n11126)) /* synthesis lut_function=(A (D)+!A !(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i8313_4_lut_4_lut.init = 16'haa40;
    ORCALUT4 i1_2_lut (.A(n41014), .B(n38439), .Z(n10599)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i30997_2_lut_rep_530_3_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n24518), .Z(n38764)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i30997_2_lut_rep_530_3_lut.init = 16'h4f4f;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_287 (.A(n38907), .B(n38979), .C(\IR[4] ), 
            .D(n38823), .Z(n34112)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_287.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_288 (.A(n38907), .B(n38979), .C(\IR[5] ), 
            .D(n38823), .Z(n34113)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_288.init = 16'h4000;
    ORCALUT4 i2_3_lut_4_lut_adj_289 (.A(n38907), .B(n38979), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n38997), .Z(n35249)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_289.init = 16'h4000;
    ORCALUT4 i31062_2_lut_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n38716), .D(n24518), .Z(n34532)) /* synthesis lut_function=(!(A (D)+!A !(B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i31062_2_lut_3_lut_4_lut_4_lut.init = 16'h40fa;
    ORCALUT4 i20104_2_lut_2_lut_3_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[7] ), .Z(n1747[1])) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20104_2_lut_2_lut_3_lut.init = 16'h4f4f;
    ORCALUT4 i20026_2_lut_rep_620_3_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[7] ), .Z(n38854)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20026_2_lut_rep_620_3_lut.init = 16'h4040;
    ORCALUT4 i20461_2_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n41016), .D(n41018), .Z(n6363[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i20461_2_lut_3_lut_4_lut.init = 16'h0004;
    ORCALUT4 i2_3_lut_4_lut_adj_290 (.A(n38997), .B(n38910), .C(n38885), 
            .D(n40994), .Z(n35143)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam i2_3_lut_4_lut_adj_290.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_578_3_lut_4_lut_3_lut (.A(\ALU_Op_3__N_1274[3] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[2] ), .Z(n38812)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_rep_578_3_lut_4_lut_3_lut.init = 16'h5454;
    ORCALUT4 mux_2665_i1_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[2] ), .D(\IR[1] ), .Z(n4109[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam mux_2665_i1_4_lut_4_lut_4_lut.init = 16'h0c40;
    ORCALUT4 i7908_2_lut_rep_516_3_lut_4_lut (.A(n38997), .B(n38910), .C(n38885), 
            .D(\IR[1] ), .Z(n38750)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam i7908_2_lut_rep_516_3_lut_4_lut.init = 16'h000e;
    ORCALUT4 i30914_2_lut_rep_493_3_lut_4_lut (.A(n38997), .B(n38910), .C(n38885), 
            .D(\IR[1] ), .Z(n38727)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam i30914_2_lut_rep_493_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_291 (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\IR[2] ), .D(\IR[5] ), .Z(n8_adj_1815)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_4_lut_adj_291.init = 16'hee0e;
    ORCALUT4 i1_3_lut_4_lut_2_lut_2_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .Z(n17359)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_3_lut_4_lut_2_lut_2_lut.init = 16'hbbbb;
    ORCALUT4 mux_3087_i1_3_lut_rep_518_4_lut (.A(n38910), .B(n38997), .C(\IR[1] ), 
            .D(n40997), .Z(n38752)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2432[19] 2448[26])
    defparam mux_3087_i1_3_lut_rep_518_4_lut.init = 16'hf808;
    ORCALUT4 i2_3_lut_4_lut_adj_292 (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .C(n4755), .D(n39002), .Z(n34766)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i2_3_lut_4_lut_adj_292.init = 16'h0e00;
    ORCALUT4 i20591_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .C(n38678), .D(n37920), .Z(Inc_PC_N_1435)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i20591_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_3_lut_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .C(\ALU_Op_3__N_1274[3] ), .Z(n23)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_3_lut_3_lut.init = 16'hdcdc;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_293 (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(n38986), .D(\mc[3] ), .Z(n33918)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_4_lut_adj_293.init = 16'h1000;
    ORCALUT4 MCycle_3__I_0_1666_2_lut_rep_668_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\mc[3] ), .Z(n38902)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam MCycle_3__I_0_1666_2_lut_rep_668_3_lut.init = 16'h1010;
    ORCALUT4 select_1008_Select_3_i9_2_lut_rep_519_3_lut_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\mc[4] ), .D(\mc[3] ), .Z(n38753)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam select_1008_Select_3_i9_2_lut_rep_519_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i1_2_lut_rep_590_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\mc[4] ), .D(\mc[3] ), .Z(n38824)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_rep_590_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i2_2_lut_3_lut_adj_294 (.A(n38774), .B(n3825), .C(n16401), 
            .Z(n7_adj_1824)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_294.init = 16'h1010;
    ORCALUT4 i1_2_lut_rep_601_3_lut_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\mc[3] ), .Z(n38835)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_rep_601_3_lut_3_lut.init = 16'habab;
    ORCALUT4 reduce_nor_5801_i1_2_lut_rep_669_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), 
            .B(\mc[2] ), .C(\mc[3] ), .Z(n38903)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam reduce_nor_5801_i1_2_lut_rep_669_3_lut.init = 16'hfefe;
    ORCALUT4 i20447_2_lut_rep_690_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\mc[2] ), 
            .C(\IR[2] ), .Z(n38924)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i20447_2_lut_rep_690_3_lut.init = 16'h0e0e;
    ORCALUT4 i1_2_lut_rep_766 (.A(ISet[0]), .B(ISet[1]), .Z(n39000)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_766.init = 16'h2222;
    ORCALUT4 i33457_3_lut_3_lut_4_lut_2_lut (.A(ISet[1]), .B(n5_adj_1770), 
            .Z(n35880)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i33457_3_lut_3_lut_4_lut_2_lut.init = 16'h7777;
    ORCALUT4 i32364_1_lut_rep_648_2_lut (.A(ISet[0]), .B(ISet[1]), .Z(n38937)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i32364_1_lut_rep_648_2_lut.init = 16'hdddd;
    ORCALUT4 i32366_2_lut_rep_489_3_lut (.A(ISet[0]), .B(ISet[1]), .C(n19), 
            .Z(n38723)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;
    defparam i32366_2_lut_rep_489_3_lut.init = 16'h0d0d;
    ORCALUT4 i33447_2_lut_3_lut_1_lut (.A(ISet[1]), .Z(n35918)) /* synthesis lut_function=(!(A)) */ ;
    defparam i33447_2_lut_3_lut_1_lut.init = 16'h5555;
    ORCALUT4 i2_3_lut_4_lut_adj_295 (.A(n38767), .B(\mc[5] ), .C(Set_Addr_To_2__N_1418[1]), 
            .D(n38912), .Z(Set_Addr_To[1])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2611[11] 2625[16])
    defparam i2_3_lut_4_lut_adj_295.init = 16'hfff4;
    ORCALUT4 i11173_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(\IR[1] ), 
            .D(n12307), .Z(n14310)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i11173_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i33450_2_lut_rep_458_3_lut_4_lut_2_lut (.A(ISet[1]), .B(n19), 
            .Z(n38692)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i33450_2_lut_rep_458_3_lut_4_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i33445_2_lut_3_lut_4_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(n19), 
            .Z(n35922)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)))) */ ;
    defparam i33445_2_lut_3_lut_4_lut_3_lut.init = 16'h1d1d;
    ORCALUT4 i20139_3_lut_4_lut (.A(n38767), .B(\mc[5] ), .C(n38912), 
            .D(Set_Addr_To_2__N_1418_c[0]), .Z(Set_Addr_To[0])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2611[11] 2625[16])
    defparam i20139_3_lut_4_lut.init = 16'h0f04;
    ORCALUT4 i33518_2_lut_rep_596_3_lut_4_lut (.A(\IR[6] ), .B(n41028), 
            .C(n40994), .D(n41018), .Z(n38830)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i33518_2_lut_rep_596_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i20568_2_lut_rep_683_3_lut_4_lut (.A(n41026), .B(n41028), .C(n41024), 
            .D(n41022), .Z(n38917)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20568_2_lut_rep_683_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i20777_3_lut_4_lut (.A(n38767), .B(\mc[5] ), .C(n38912), 
            .D(Set_Addr_To_2__N_1418_c[2]), .Z(Set_Addr_To[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2611[11] 2625[16])
    defparam i20777_3_lut_4_lut.init = 16'h0f04;
    ORCALUT4 i20913_2_lut_rep_657_3_lut (.A(n41026), .B(\IR[7] ), .C(n41018), 
            .Z(n38891)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i20913_2_lut_rep_657_3_lut.init = 16'h8080;
    ORCALUT4 i1_4_lut_then_4_lut_adj_296 (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[5] ), .D(\IR[2] ), .Z(n39034)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_then_4_lut_adj_296.init = 16'h8088;
    ORCALUT4 i31128_2_lut_3_lut_4_lut (.A(n38906), .B(n38896), .C(n38830), 
            .D(n38829), .Z(n34604)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i31128_2_lut_3_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i33433_3_lut_4_lut (.A(n38769), .B(ISet[1]), .C(n38720), 
            .D(\Special_LD[0] ), .Z(clk_op_enable_60)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i33433_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i1_2_lut_rep_521_3_lut_4_lut (.A(n38919), .B(n38920), .C(n38896), 
            .D(n38906), .Z(n38755)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_rep_521_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_297 (.A(n38919), .B(n38920), .C(n33781), 
            .D(n38830), .Z(n34027)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_297.init = 16'h00e0;
    ORCALUT4 MCycles_2__N_1060_I_0_1670_Select_2_i25_2_lut_3_lut_4_lut (.A(n38919), 
            .B(n38920), .C(n39003), .D(n38902), .Z(n25_adj_1844)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam MCycles_2__N_1060_I_0_1670_Select_2_i25_2_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i33443_2_lut_rep_768 (.A(n41018), .B(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n39002)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i33443_2_lut_rep_768.init = 16'h4444;
    ORCALUT4 i2_3_lut_rep_486 (.A(n41014), .B(ISet[1]), .C(n31476), .Z(n38720)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_rep_486.init = 16'h0808;
    ORCALUT4 i1_2_lut_rep_457_3_lut_4_lut (.A(n41014), .B(ISet[1]), .C(n31476), 
            .D(n38769), .Z(n38691)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_457_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i32023_2_lut_3_lut_4_lut (.A(n38919), .B(n38920), .C(n38906), 
            .D(n38904), .Z(n35520)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i32023_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_298 (.A(\ts[3] ), .B(ISet[1]), .C(n31476), 
            .D(n38769), .Z(n8_adj_9)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut_4_lut_adj_298.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_680_3_lut_4_lut (.A(\IR[2] ), .B(n41020), .C(n41016), 
            .D(\IR[0] ), .Z(n38914)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_680_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_rep_510_3_lut_4_lut (.A(n40994), .B(n38891), .C(n38920), 
            .D(n38919), .Z(n38744)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_510_3_lut_4_lut.init = 16'hbbb0;
    ORCALUT4 IR_7__I_0_1756_i11_2_lut_rep_691_3_lut_4_lut (.A(n41018), .B(n41020), 
            .C(n41030), .D(n41016), .Z(n38925)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1756_i11_2_lut_rep_691_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i20339_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\mc[2] ), .D(\Set_BusA_To_3__N_1203[2] ), .Z(n4759[0])) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20339_2_lut_3_lut_4_lut.init = 16'h4440;
    ORCALUT4 IR_7__I_0_1754_i11_2_lut_rep_695_3_lut_4_lut (.A(n41018), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n38929)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1754_i11_2_lut_rep_695_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 MCycle_2__I_0_1808_2_lut_rep_769 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .Z(n39003)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam MCycle_2__I_0_1808_2_lut_rep_769.init = 16'h2222;
    ORCALUT4 i14021_3_lut_4_lut (.A(\mc[3] ), .B(n38895), .C(n38908), 
            .D(n38994), .Z(n17515)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i14021_3_lut_4_lut.init = 16'h22f2;
    ORCALUT4 i2_3_lut_4_lut_adj_299 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n6), .D(n41014), .Z(n10569)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_adj_299.init = 16'h2000;
    ORCALUT4 mux_4764_i1_3_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[2] ), .Z(n6974[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam mux_4764_i1_3_lut_3_lut.init = 16'h2c2c;
    ORCALUT4 i1_4_lut_else_4_lut_adj_300 (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\ALU_Op_3__N_1274[3] ), .D(\IR[2] ), .Z(n39033)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_else_4_lut_adj_300.init = 16'h0800;
    ORCALUT4 i2_3_lut_4_lut_4_lut_2_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n1656[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_4_lut_2_lut.init = 16'heeee;
    ORCALUT4 i20331_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[5] ), .Z(n4530[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i20331_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i20669_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[2] ), .Z(n6974[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i20669_2_lut_3_lut.init = 16'h2020;
    PFUMX i33827 (.BLUT(n37568), .ALUT(n37567), .C0(n39003), .Z(n37569));
    ORCALUT4 select_1035_Select_3_i8_2_lut_rep_581_3_lut_4_lut_3_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1203[2] ), .C(\mc[3] ), .Z(n38815)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam select_1035_Select_3_i8_2_lut_rep_581_3_lut_4_lut_3_lut.init = 16'h3232;
    ORCALUT4 i2_3_lut_4_lut_adj_301 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[1] ), .D(n41022), .Z(n33698)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i2_3_lut_4_lut_adj_301.init = 16'hff2f;
    ORCALUT4 select_450_Select_0_i2_2_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n41024), .D(\IR[4] ), .Z(n2_adj_1841)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam select_450_Select_0_i2_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 mux_4764_i3_3_lut_4_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\IR[2] ), .Z(n6974[2])) /* synthesis lut_function=(!(A (B (C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam mux_4764_i3_3_lut_4_lut_3_lut.init = 16'h2e2e;
    ORCALUT4 i1_4_lut_3_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(n15992), 
            .C(n3_adj_1847), .Z(n36)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1327[23] 1347[30])
    defparam i1_4_lut_3_lut.init = 16'h3131;
    ORCALUT4 IR_7__I_0_1745_i12_2_lut_rep_770 (.A(n41022), .B(\IR[5] ), 
            .Z(n39004)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1745_i12_2_lut_rep_770.init = 16'hdddd;
    ORCALUT4 IR_7__I_0_1664_i14_2_lut_rep_692_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n41028), .D(n41026), .Z(n38926)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1664_i14_2_lut_rep_692_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 IR_7__I_0_1640_i14_2_lut_rep_664_3_lut_4_lut (.A(n41022), .B(n41024), 
            .C(n41028), .D(n41026), .Z(n38898)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1640_i14_2_lut_rep_664_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_4_lut_then_4_lut_adj_302 (.A(n24332), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n24202), .D(\ALU_Op_3__N_1274[3] ), .Z(n39037)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_then_4_lut_adj_302.init = 16'h5f57;
    ORCALUT4 i1_4_lut_else_4_lut_adj_303 (.A(n24332), .B(n24202), .C(\ALU_Op_3__N_1274[3] ), 
            .Z(n39036)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_else_4_lut_adj_303.init = 16'h7575;
    ORCALUT4 IR_7__I_0_1701_i12_2_lut_rep_772 (.A(\IR[4] ), .B(\IR[5] ), 
            .Z(n39006)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam IR_7__I_0_1701_i12_2_lut_rep_772.init = 16'heeee;
    ORCALUT4 IR_7__I_0_1662_i14_2_lut_rep_686_3_lut_4_lut (.A(n41022), .B(n41024), 
            .C(n41028), .D(\IR[6] ), .Z(n38920)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam IR_7__I_0_1662_i14_2_lut_rep_686_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i30975_2_lut_4_lut (.A(n38921), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n38933), .D(n40997), .Z(n34438)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30975_2_lut_4_lut.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1633_i14_2_lut_rep_688_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n41028), .D(n41026), .Z(n38922)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam IR_7__I_0_1633_i14_2_lut_rep_688_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 select_1754_Select_0_i2_2_lut_rep_494_4_lut (.A(n38921), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n38933), .D(n40997), .Z(n38728)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_1754_Select_0_i2_2_lut_rep_494_4_lut.init = 16'h0400;
    ORCALUT4 IR_7__I_0_1748_i12_2_lut_rep_773 (.A(n41022), .B(n41024), .Z(n39007)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1748_i12_2_lut_rep_773.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_4_lut_adj_304 (.A(n38921), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n38933), .D(n41002), .Z(n34104)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut_adj_304.init = 16'h0400;
    ORCALUT4 i1_2_lut_rep_591_3_lut_4_lut_2_lut_2_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .Z(n38825)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_591_3_lut_4_lut_2_lut_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_4_lut_adj_305 (.A(n38921), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n38933), .D(\Set_BusA_To_3__N_1203[2] ), .Z(n1_adj_1772)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut_adj_305.init = 16'h0400;
    ORCALUT4 IR_7__I_0_1657_i14_2_lut_rep_684_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n41028), .D(n41026), .Z(n38918)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1657_i14_2_lut_rep_684_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 IR_7__I_0_1622_i14_2_lut_rep_672_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\IR[7] ), .D(\IR[6] ), .Z(n38906)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1622_i14_2_lut_rep_672_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1747_i14_2_lut_rep_659_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n41028), .D(n41026), .Z(n38893)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1747_i14_2_lut_rep_659_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i20521_2_lut_rep_774 (.A(n41018), .B(n41020), .Z(n39008)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20521_2_lut_rep_774.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1732_i11_2_lut_rep_685_3_lut_4_lut (.A(n41018), .B(n41020), 
            .C(\IR[1] ), .D(n41030), .Z(n38919)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1732_i11_2_lut_rep_685_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i20553_2_lut_rep_682_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(n41030), .D(n41016), .Z(n38916)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20553_2_lut_rep_682_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_306 (.A(n38903), .B(n38902), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n17078)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2346[19] 2371[26])
    defparam i1_2_lut_3_lut_4_lut_adj_306.init = 16'hf0d0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_307 (.A(n38903), .B(n38902), .C(\IR[5] ), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n17150)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2346[19] 2371[26])
    defparam i1_2_lut_3_lut_4_lut_adj_307.init = 16'hf0d0;
    ORCALUT4 IR_7__I_0_1679_Mux_1_i253_4_lut_else_2_lut (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\ALU_Op_3__N_1274[3] ), .D(\mc[6] ), .Z(n41006)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam IR_7__I_0_1679_Mux_1_i253_4_lut_else_2_lut.init = 16'haaae;
    ORCALUT4 i31993_3_lut_4_lut (.A(n38916), .B(n38915), .C(n41024), .D(n41004), 
            .Z(n31476)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i31993_3_lut_4_lut.init = 16'hfff4;
    ORCALUT4 i20313_2_lut_3_lut_4_lut (.A(n38916), .B(n38915), .C(n40997), 
            .D(n38893), .Z(n23760)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i20313_2_lut_3_lut_4_lut.init = 16'hfff4;
    ORCALUT4 i2_3_lut_rep_535_4_lut (.A(n38916), .B(n38915), .C(n39006), 
            .D(n41004), .Z(n38769)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_535_4_lut.init = 16'hfff4;
    ORCALUT4 i14337_2_lut_rep_461_3_lut_4_lut_4_lut (.A(n38916), .B(n38915), 
            .C(n38858), .D(n38906), .Z(n38695)) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;
    defparam i14337_2_lut_rep_461_3_lut_4_lut_4_lut.init = 16'hf454;
    ORCALUT4 i1_3_lut_4_lut_adj_308 (.A(n38919), .B(n38918), .C(n24220), 
            .D(n38848), .Z(n8_adj_10)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1743[15:26])
    defparam i1_3_lut_4_lut_adj_308.init = 16'hff0e;
    ORCALUT4 i21143_2_lut_rep_460_3_lut_4_lut (.A(n38919), .B(n38918), .C(n38848), 
            .D(n24220), .Z(n38694)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1743[15:26])
    defparam i21143_2_lut_rep_460_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i26_2_lut_3_lut_4_lut (.A(n38925), .B(n38920), .C(n38918), 
            .D(n38919), .Z(n12_adj_11)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i26_2_lut_3_lut_4_lut.init = 16'h111e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_309 (.A(n38925), .B(n38920), .C(n38931), 
            .D(n24220), .Z(n68)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_309.init = 16'hfef0;
    ORCALUT4 i9353_4_lut (.A(n41028), .B(n41005), .C(n5_adj_1770), .D(n38753), 
            .Z(n12303)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9353_4_lut.init = 16'hc505;
    ORCALUT4 i1_4_lut_adj_310 (.A(n41005), .B(n16160), .C(n34035), .D(n38997), 
            .Z(\Set_BusA_To_3__N_1025[3] )) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_310.init = 16'ha2a0;
    ORCALUT4 i20974_2_lut_4_lut (.A(n38784), .B(\ALU_Op_3__N_1274[3] ), 
            .C(F_Out_7__N_1639), .D(\IR[4] ), .Z(n24451)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20974_2_lut_4_lut.init = 16'h3a00;
    ORCALUT4 n3813_bdd_4_lut_else_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n39012)) /* synthesis lut_function=(!((B (C)+!B !(C (D)))+!A)) */ ;
    defparam n3813_bdd_4_lut_else_4_lut.init = 16'h2808;
    ORCALUT4 i1_2_lut_4_lut_adj_311 (.A(n38784), .B(\ALU_Op_3__N_1274[3] ), 
            .C(F_Out_7__N_1639), .D(\IR[5] ), .Z(n43)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_4_lut_adj_311.init = 16'h3a00;
    ORCALUT4 mux_4107_i1_3_lut_4_lut (.A(n40997), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(\IR[1] ), .Z(n6035[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4107_i1_3_lut_4_lut.init = 16'h202f;
    ORCALUT4 i20779_2_lut_rep_492_3_lut_4_lut (.A(n38923), .B(n38922), .C(n38926), 
            .D(n38914), .Z(n38726)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i20779_2_lut_rep_492_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i32091_3_lut_4_lut (.A(n38923), .B(n38922), .C(n16160), .D(n24695), 
            .Z(n35594)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i32091_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i33460_2_lut (.A(\IR[2] ), .B(\IR[0] ), .Z(n7258)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i33460_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_312 (.A(n38923), .B(n38922), .C(last_tstate), 
            .D(n38931), .Z(n5)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_312.init = 16'hf0f1;
    ORCALUT4 i33437_2_lut_rep_488_3_lut_4_lut (.A(n38923), .B(n38922), .C(n38855), 
            .D(n38931), .Z(clk_op_enable_107)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i33437_2_lut_rep_488_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i32048_3_lut_4_lut (.A(n38825), .B(n40991), .C(n38777), .D(n38922), 
            .Z(n35546)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i32048_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i2_3_lut_rep_473_4_lut (.A(n16160), .B(n38778), .C(n38805), 
            .D(n24905), .Z(n38707)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_473_4_lut.init = 16'h8000;
    ORCALUT4 i20695_4_lut_4_lut (.A(n38954), .B(F_Out_7__N_1639), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n38883), .Z(Read_To_Reg_N_1457)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20695_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i2_3_lut_rep_436_4_lut (.A(n38849), .B(n38797), .C(n24931), 
            .D(n38821), .Z(n38670)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_436_4_lut.init = 16'h8000;
    ORCALUT4 i7339_3_lut_4_lut (.A(n38997), .B(\IR[7] ), .C(n39000), .D(\IR[0] ), 
            .Z(n10081)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i7339_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 IR_7__I_0_1613_i15_2_lut_rep_549_3_lut_4_lut (.A(n38930), .B(n39002), 
            .C(n40996), .D(n39007), .Z(n38783)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1613_i15_2_lut_rep_549_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 IR_7__I_0_1662_i15_2_lut_rep_614_3_lut_4_lut (.A(n38930), .B(n39002), 
            .C(n40996), .D(n39006), .Z(n38848)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1662_i15_2_lut_rep_614_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i1_2_lut_adj_313 (.A(\mc[6] ), .B(n63_c), .Z(\tstates[1] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut_adj_313.init = 16'h4444;
    ORCALUT4 IR_7__I_0_1627_i15_2_lut_3_lut_4_lut (.A(n38930), .B(n39002), 
            .C(n40996), .D(n41005), .Z(n15)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1627_i15_2_lut_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i2_3_lut_4_lut_adj_314 (.A(n38930), .B(n39002), .C(n39003), 
            .D(n38926), .Z(n35327)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_4_lut_adj_314.init = 16'h0080;
    ORCALUT4 i1_2_lut_rep_547_3_lut_4_lut (.A(n39004), .B(n40996), .C(n38930), 
            .D(\IR[2] ), .Z(n38781)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam i1_2_lut_rep_547_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i20565_rep_5_2_lut_3_lut_4_lut (.A(n38931), .B(n38783), .C(\RegAddrB_r[1] ), 
            .D(\ts[3] ), .Z(\RegAddrB[1] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20565_rep_5_2_lut_3_lut_4_lut.init = 16'he0f0;
    PFUMX i33601 (.BLUT(n37149), .ALUT(n37148), .C0(n41020), .Z(n37150));
    ORCALUT4 i20868_2_lut_rep_496_3_lut_4_lut (.A(n41005), .B(n38933), .C(n38915), 
            .D(n38916), .Z(n38730)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i20868_2_lut_rep_496_3_lut_4_lut.init = 16'hddfd;
    ORCALUT4 i20929_2_lut_3_lut_4_lut (.A(n41005), .B(n38933), .C(n38931), 
            .D(n38915), .Z(n24398)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i20929_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i20927_2_lut_rep_497_3_lut_4_lut (.A(n41005), .B(n38933), .C(n38931), 
            .D(n38916), .Z(n38731)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i20927_2_lut_rep_497_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i2_3_lut_rep_556_4_lut (.A(n41005), .B(n38933), .C(n38934), 
            .D(n38936), .Z(n38790)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i2_3_lut_rep_556_4_lut.init = 16'hfdff;
    ORCALUT4 i2_4_lut_adj_315 (.A(n34144), .B(n33709), .C(n38749), .D(n38779), 
            .Z(\IncDec_16_3__N_1017[3] )) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_315.init = 16'heefe;
    ORCALUT4 i9322_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(n17358), .C(n38816), 
            .D(n32156), .Z(n12269)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9322_4_lut.init = 16'hcac0;
    ORCALUT4 i9895_3_lut_rep_478_4_lut (.A(n38931), .B(n38783), .C(\ts[3] ), 
            .D(\ts[4] ), .Z(n38712)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i9895_3_lut_rep_478_4_lut.init = 16'h1110;
    ORCALUT4 i31082_2_lut_3_lut_4_lut (.A(n41005), .B(n38933), .C(n39003), 
            .D(n38904), .Z(n34555)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i31082_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_316 (.A(n41005), .B(n38933), .C(n39003), 
            .D(n38904), .Z(n63)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_3_lut_4_lut_adj_316.init = 16'h0020;
    ORCALUT4 i1_4_lut_adj_317 (.A(n25_adj_1844), .B(n38989), .C(n24_adj_1842), 
            .D(n24905), .Z(n33709)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_317.init = 16'hfafe;
    ORCALUT4 IR_7__I_0_1615_i15_2_lut_rep_563_3_lut_4_lut (.A(n39004), .B(n40996), 
            .C(n39002), .D(n38994), .Z(n38797)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam IR_7__I_0_1615_i15_2_lut_rep_563_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1636_i15_2_lut_rep_572_3_lut_4_lut (.A(n39006), .B(n40996), 
            .C(n38991), .D(n38930), .Z(n38806)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam IR_7__I_0_1636_i15_2_lut_rep_572_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i2_4_lut_adj_318 (.A(n34097), .B(n38830), .C(n17359), .D(\ALU_Op_3__N_1274[3] ), 
            .Z(n24_c)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_318.init = 16'h00c8;
    ORCALUT4 IR_7__I_0_1642_i15_2_lut_rep_595_3_lut_4_lut (.A(n39006), .B(n40996), 
            .C(n39008), .D(n38994), .Z(n38829)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam IR_7__I_0_1642_i15_2_lut_rep_595_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_4_lut_adj_319 (.A(\ALU_Op_3__N_1274[3] ), .B(n24332), .C(n9_adj_1854), 
            .D(n10_adj_1855), .Z(n4_adj_1801)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_adj_319.init = 16'h7773;
    ORCALUT4 i3_4_lut_adj_320 (.A(n12_c), .B(n38895), .C(n38832), .D(\Set_BusA_To_3__N_1203[2] ), 
            .Z(n9_adj_1854)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_320.init = 16'hafab;
    ORCALUT4 i4_4_lut_adj_321 (.A(n7_adj_1856), .B(n24202), .C(n38745), 
            .D(n17359), .Z(n10_adj_1855)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_321.init = 16'hfbfa;
    ORCALUT4 i1_4_lut_adj_322 (.A(n32109), .B(n38747), .C(n38779), .D(n4_adj_1835), 
            .Z(n7_adj_1856)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_322.init = 16'hafab;
    ORCALUT4 i14_4_lut (.A(n27), .B(n19_adj_1857), .C(n35592), .D(n35516), 
            .Z(n32109)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i14_4_lut.init = 16'hefff;
    ORCALUT4 i12_4_lut (.A(n35594), .B(n17), .C(n38693), .D(n38797), 
            .Z(n27)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i12_4_lut.init = 16'hdfff;
    ORCALUT4 i32089_4_lut (.A(n38808), .B(n24436), .C(n34432), .D(n38783), 
            .Z(n35592)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32089_4_lut.init = 16'h8000;
    ORCALUT4 i2_4_lut_adj_323 (.A(n38746), .B(n38910), .C(n38821), .D(n38704), 
            .Z(n17)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_323.init = 16'h5f5d;
    ORCALUT4 i2_3_lut_4_lut_adj_324 (.A(\IR[0] ), .B(n38996), .C(n40996), 
            .D(n41020), .Z(n16160)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_324.init = 16'hffdf;
    PFUMX i35337 (.BLUT(n40543), .ALUT(n38455), .C0(n3825), .Z(n40544));
    ORCALUT4 i2_4_lut_adj_325 (.A(n38994), .B(n38885), .C(\IR[4] ), .D(n38822), 
            .Z(n34785)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_325.init = 16'h1110;
    ORCALUT4 i3_4_lut_adj_326 (.A(n15), .B(n38846), .C(n38806), .D(n38928), 
            .Z(n24867)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut_adj_326.init = 16'ha080;
    ORCALUT4 i1_4_lut_adj_327 (.A(\tstate[2] ), .B(n47), .C(n28), .D(n38855), 
            .Z(n949)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(55[25:32])
    defparam i1_4_lut_adj_327.init = 16'ha088;
    ORCALUT4 i4_3_lut (.A(Inc_PC_N_1426), .B(n8_adj_1859), .C(\PC16_B_15__N_571[15] ), 
            .Z(n47)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_3_lut.init = 16'hfefe;
    ORCALUT4 i3_4_lut_adj_328 (.A(\mc[6] ), .B(n38682), .C(n23587), .D(\mc[5] ), 
            .Z(n8_adj_1859)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_328.init = 16'hffce;
    ORCALUT4 i1_4_lut_adj_329 (.A(n38908), .B(n39003), .C(n38832), .D(n24202), 
            .Z(JumpE_N_1512)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_329.init = 16'h0ace;
    PFUMX i34469 (.BLUT(n39024), .ALUT(n39025), .C0(n38830), .Z(n39026));
    ORCALUT4 i2_3_lut_4_lut_adj_330 (.A(n38776), .B(n38792), .C(n31793), 
            .D(n38750), .Z(n34931)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_330.init = 16'hfff4;
    ORCALUT4 i6_4_lut (.A(n11_c), .B(\ALU_Op_3__N_1274[3] ), .C(n34555), 
            .D(n38807), .Z(n15_adj_1799)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'hafbf;
    ORCALUT4 i2_3_lut_4_lut_adj_331 (.A(n38776), .B(n38792), .C(n38786), 
            .D(n38753), .Z(n8_adj_12)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_331.init = 16'h4f44;
    ORCALUT4 i20489_4_lut (.A(n38954), .B(F_Out_7__N_1639), .C(n38970), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n1431[2])) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i20489_4_lut.init = 16'hcecf;
    ORCALUT4 i3_4_lut_adj_332 (.A(\IR[0] ), .B(n38933), .C(n41024), .D(n38996), 
            .Z(n15992)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_332.init = 16'hffef;
    ORCALUT4 i3_2_lut_4_lut (.A(n38780), .B(n29858), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n31582), .Z(n8_adj_1861)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C+!(D)))) */ ;
    defparam i3_2_lut_4_lut.init = 16'hdcff;
    ORCALUT4 mux_1212_i4_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), 
            .B(n38947), .C(\ALU_Op_r[1] ), .D(BusB[3]), .Z(n1894)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam mux_1212_i4_4_lut_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 i2_4_lut_adj_333 (.A(\mc[2] ), .B(n35079), .C(n38806), .D(n61), 
            .Z(n34801)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(70[25:29])
    defparam i2_4_lut_adj_333.init = 16'hffce;
    ORCALUT4 i32098_4_lut (.A(n38813), .B(n23835), .C(n33962), .D(n35482), 
            .Z(n35602)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32098_4_lut.init = 16'h8000;
    ORCALUT4 mux_1212_i2_4_lut_3_lut_4_lut (.A(\IR[5] ), .B(n38950), .C(\ALU_Op_r[1] ), 
            .D(BusB[1]), .Z(n1896)) /* synthesis lut_function=(A (C (D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam mux_1212_i2_4_lut_3_lut_4_lut.init = 16'hf440;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_334 (.A(n38782), .B(\IR[4] ), .C(n16943), 
            .D(n38748), .Z(IncDec_16_3__N_1017[0])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_334.init = 16'hfff4;
    ORCALUT4 mux_291_i1_3_lut_4_lut (.A(n38916), .B(n38794), .C(\Q_7__N_1723[0] ), 
            .D(BusB[0]), .Z(n1177[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i1_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i2_4_lut_adj_335 (.A(n38694), .B(n33961), .C(n38929), .D(n4_adj_1769), 
            .Z(n33962)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_335.init = 16'h8880;
    ORCALUT4 mux_291_i2_3_lut_4_lut (.A(n38916), .B(n38794), .C(\BusA[1] ), 
            .D(BusB[1]), .Z(n1177[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i2_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i3_3_lut_4_lut (.A(n38916), .B(n38794), .C(\BusA[2] ), 
            .D(BusB[2]), .Z(n1177[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i3_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i4_3_lut_4_lut (.A(n38916), .B(n38794), .C(\BusA[3] ), 
            .D(BusB[3]), .Z(n1177[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i5_3_lut_4_lut (.A(n38916), .B(n38794), .C(BusB[0]), 
            .D(BusB[4]), .Z(n1177[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i6_3_lut_4_lut (.A(n38916), .B(n38794), .C(BusB[1]), 
            .D(BusB[5]), .Z(n1177[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 IR_5__I_0_i6_4_lut (.A(\F[2] ), .B(\F[7] ), .C(n41022), .D(n41020), 
            .Z(n6_adj_1862)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i6_4_lut.init = 16'hca35;
    ORCALUT4 IR_5__I_0_i3_4_lut (.A(\F[6] ), .B(\F[0] ), .C(\IR[4] ), 
            .D(n41020), .Z(n3_adj_1847)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i3_4_lut.init = 16'hca35;
    ORCALUT4 i20125_2_lut_3_lut_4_lut (.A(n38953), .B(n38949), .C(n38997), 
            .D(n38990), .Z(PreserveC_N_1480)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20125_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i10_4_lut (.A(n35600), .B(n38830), .C(n18_adj_1863), .D(n12_adj_1864), 
            .Z(n34228)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i10_4_lut.init = 16'hfffd;
    ORCALUT4 i32096_4_lut (.A(n24931), .B(n34122), .C(n38680), .D(n38679), 
            .Z(n35600)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32096_4_lut.init = 16'h8000;
    ORCALUT4 i7_4_lut_adj_336 (.A(n13_adj_1865), .B(n41004), .C(n38742), 
            .D(n4_adj_1806), .Z(n18_adj_1863)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam i7_4_lut_adj_336.init = 16'hbfaf;
    ORCALUT4 i1_4_lut_adj_337 (.A(n38989), .B(n38829), .C(n38821), .D(n38910), 
            .Z(n12_adj_1864)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;
    defparam i1_4_lut_adj_337.init = 16'h3f37;
    ORCALUT4 i2_4_lut_adj_338 (.A(n43_c), .B(n38776), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n38910), .Z(n13_adj_1865)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam i2_4_lut_adj_338.init = 16'hbbab;
    ORCALUT4 mux_291_i7_3_lut_4_lut (.A(n38916), .B(n38794), .C(BusB[2]), 
            .D(BusB[6]), .Z(n1177[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i7_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i3_4_lut_adj_339 (.A(n24436), .B(n38783), .C(n38775), .D(n24867), 
            .Z(n34106)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_339.init = 16'h8000;
    ORCALUT4 i33410_2_lut_3_lut_4_lut (.A(\IR[7] ), .B(n38996), .C(n38931), 
            .D(n38888), .Z(n36001)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;
    defparam i33410_2_lut_3_lut_4_lut.init = 16'h2f0f;
    ORCALUT4 i1_4_lut_adj_340 (.A(n16397), .B(n35566), .C(n17072), .D(n23760), 
            .Z(n33723)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_340.init = 16'hfbff;
    ORCALUT4 mux_291_i8_3_lut_4_lut (.A(n38916), .B(n38794), .C(BusB[3]), 
            .D(BusB[7]), .Z(n1177[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i8_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i3_4_lut_adj_341 (.A(n5_adj_1866), .B(n37), .C(\IR[1] ), 
            .D(n25), .Z(n16397)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_341.init = 16'hfeee;
    ORCALUT4 i1_4_lut_adj_342 (.A(n38963), .B(n24935), .C(n38989), .D(n38997), 
            .Z(n5_adj_1866)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_342.init = 16'hbbab;
    ORCALUT4 i3_4_lut_adj_343 (.A(n39003), .B(n17060), .C(n24202), .D(n34535), 
            .Z(n9_adj_1796)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_343.init = 16'hcfce;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_344 (.A(n39004), .B(n40996), .C(n38919), 
            .D(n41005), .Z(n24220)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam i1_3_lut_4_lut_4_lut_adj_344.init = 16'hf3fb;
    ORCALUT4 i1_4_lut_adj_345 (.A(n15_adj_13), .B(n41018), .C(n38917), 
            .D(n40994), .Z(n24677)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_345.init = 16'haa8a;
    ORCALUT4 i1_4_lut_adj_346 (.A(n38908), .B(n38677), .C(n38989), .D(n38895), 
            .Z(n17060)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_346.init = 16'h3233;
    ORCALUT4 IR_7__I_0_1661_i15_2_lut_rep_559_3_lut_4_lut (.A(n39004), .B(n40996), 
            .C(n38991), .D(n38930), .Z(n38793)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam IR_7__I_0_1661_i15_2_lut_rep_559_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i2_3_lut_4_lut_adj_347 (.A(\IR[2] ), .B(n38990), .C(n38908), 
            .D(n38954), .Z(n35205)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_adj_347.init = 16'h8000;
    ORCALUT4 i30894_4_lut (.A(n40996), .B(n34344), .C(n38923), .D(\IR[5] ), 
            .Z(n34348)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i30894_4_lut.init = 16'hddd5;
    ORCALUT4 i1_4_lut_adj_348 (.A(n24_c), .B(n38704), .C(n38832), .D(n38989), 
            .Z(n7_adj_1808)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_348.init = 16'hafae;
    ORCALUT4 i1_2_lut_adj_349 (.A(\ALU_Op_3__N_1274[3] ), .B(\Set_BusA_To_3__N_1203[2] ), 
            .Z(n38989)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(631[19] 669[26])
    defparam i1_2_lut_adj_349.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_350 (.A(n38686), .B(n6_adj_1868), .C(n38812), 
            .D(n34205), .Z(n8_adj_1795)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i3_4_lut_adj_350.init = 16'heeec;
    ORCALUT4 i1_4_lut_adj_351 (.A(n31476), .B(n24635), .C(n38997), .D(n34205), 
            .Z(n6_adj_1868)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_351.init = 16'h7775;
    ORCALUT4 i7_4_lut_adj_352 (.A(n37569), .B(n35269), .C(n39038), .D(\ALU_Op_3__N_1274[3] ), 
            .Z(n16_adj_1793)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_352.init = 16'hfbfa;
    PFUMX i33586 (.BLUT(n37122), .ALUT(n37118), .C0(n41020), .Z(n37123));
    ORCALUT4 IR_5__I_0_i7_3_lut_rep_641 (.A(n3_adj_1847), .B(n6_adj_1862), 
            .C(n41024), .Z(n38875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i7_3_lut_rep_641.init = 16'hcaca;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_353 (.A(n24220), .B(n38848), .C(n24677), 
            .D(n38847), .Z(n7_adj_1869)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_353.init = 16'h8000;
    ORCALUT4 i1_2_lut_4_lut_adj_354 (.A(n3_adj_1847), .B(n6_adj_1862), .C(n41024), 
            .D(n39003), .Z(n34097)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam i1_2_lut_4_lut_adj_354.init = 16'h3500;
    ORCALUT4 i7_4_lut_adj_355 (.A(n9_adj_1813), .B(n14_adj_1870), .C(n38914), 
            .D(n35609), .Z(n35269)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i7_4_lut_adj_355.init = 16'h8880;
    ORCALUT4 select_648_Select_1_i4_2_lut_4_lut (.A(n3_adj_1847), .B(n6_adj_1862), 
            .C(\IR[5] ), .D(\ALU_Op_3__N_1274[3] ), .Z(n4_adj_1871)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam select_648_Select_1_i4_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i6_4_lut_adj_356 (.A(n34116), .B(n34106), .C(n34127), .D(n38849), 
            .Z(n14_adj_1870)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_356.init = 16'h8000;
    ORCALUT4 i30970_2_lut_3_lut_4_lut (.A(n24220), .B(n38848), .C(n38809), 
            .D(n38847), .Z(n34432)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30970_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_4_lut_adj_357 (.A(n41022), .B(n38954), .C(n12_adj_1805), 
            .D(n37150), .Z(n3825)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_357.init = 16'hcc40;
    ORCALUT4 i3_4_lut_adj_358 (.A(n1656[2]), .B(n16917), .C(n38833), .D(n38832), 
            .Z(n12_adj_1794)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_358.init = 16'h0ace;
    ORCALUT4 i3_4_lut_adj_359 (.A(n38954), .B(n3_adj_1778), .C(n38983), 
            .D(n39003), .Z(ALU_Op_3__N_1045[3])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_359.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_360 (.A(n38933), .B(n38892), .C(\IR[5] ), .D(n38952), 
            .Z(ALU_Op_3__N_1037[3])) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i3_4_lut_adj_360.init = 16'h0444;
    ORCALUT4 i32910_3_lut (.A(ALU_Op_3__N_1037[3]), .B(ALU_Op_3__N_1045[3]), 
            .C(ISet[1]), .Z(n8_adj_1781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i32910_3_lut.init = 16'hcaca;
    ORCALUT4 mux_3876_i1_4_lut (.A(n6026[0]), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(\Set_BusA_To_3__N_1207[0] ), .D(n34094), .Z(n5728[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3876_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i2_4_lut_adj_361 (.A(n24579), .B(n41016), .C(n13_adj_1872), 
            .D(n38876), .Z(n4755)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i2_4_lut_adj_361.init = 16'h3100;
    ORCALUT4 i32994_3_lut (.A(n5728[0]), .B(n39032), .C(\IR[4] ), .Z(n5737[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i32994_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4115_i1_4_lut (.A(n6026[0]), .B(n39003), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(n34094), .Z(n6047[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4115_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i9_4_lut (.A(n35522), .B(n36), .C(n35526), .D(n38830), 
            .Z(n20_adj_1790)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i9_4_lut.init = 16'hffdf;
    ORCALUT4 i21082_3_lut (.A(n41024), .B(\IR[2] ), .C(n41020), .Z(n24579)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i21082_3_lut.init = 16'hfefe;
    ORCALUT4 i32029_2_lut_3_lut_4_lut (.A(n38776), .B(n38910), .C(n38755), 
            .D(n38779), .Z(n35526)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i32029_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i14297_3_lut_4_lut_4_lut (.A(n41005), .B(n38902), .C(n38903), 
            .D(\mc[4] ), .Z(Set_BusA_To_3__N_1361[0])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i14297_3_lut_4_lut_4_lut.init = 16'h4e44;
    ORCALUT4 i3_4_lut_adj_362 (.A(n5_adj_1873), .B(n23496), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n23964), .Z(n34625)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_362.init = 16'h8880;
    ORCALUT4 i1_3_lut_adj_363 (.A(n41030), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n13_adj_1872)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut_adj_363.init = 16'h5454;
    ORCALUT4 i1_4_lut_4_lut_adj_364 (.A(n41005), .B(n39003), .C(n38902), 
            .D(n38739), .Z(n1_adj_1777)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_adj_364.init = 16'h00e4;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_365 (.A(n41005), .B(n38833), .C(n2_adj_1841), 
            .D(\Set_BusA_To_3__N_1203[2] ), .Z(n34)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_4_lut_4_lut_adj_365.init = 16'h3130;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_366 (.A(n38908), .B(n38814), .C(n38716), 
            .D(n38831), .Z(n17072)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_366.init = 16'h0f0b;
    ORCALUT4 i31013_2_lut_rep_503_3_lut_4_lut (.A(n41018), .B(n38933), .C(n38910), 
            .D(n38936), .Z(n38737)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i31013_2_lut_rep_503_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i32100_4_lut (.A(n38741), .B(n38670), .C(n38743), .D(n41000), 
            .Z(n35604)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32100_4_lut.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_367 (.A(n17158), .B(ISet[0]), .C(n10_adj_1874), 
            .D(n38702), .Z(n12_adj_1786)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_367.init = 16'hfeff;
    ORCALUT4 i4_4_lut_adj_368 (.A(n39026), .B(n38989), .C(n50_adj_1811), 
            .D(n38707), .Z(n10_adj_1874)) /* synthesis lut_function=(A+(B (C)+!B (C+!(D)))) */ ;
    defparam i4_4_lut_adj_368.init = 16'hfafb;
    ORCALUT4 mux_3163_i1_4_lut (.A(\ALU_Op_3__N_1274[3] ), .B(n4774[0]), 
            .C(\IR[6] ), .D(\IR[1] ), .Z(n4777[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3163_i1_4_lut.init = 16'hcac0;
    PFUMX i34465 (.BLUT(n39017), .ALUT(n39018), .C0(\ALU_Op_3__N_1274[3] ), 
          .Z(n39019));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_369 (.A(n38909), .B(n41004), .C(n38947), 
            .D(n38815), .Z(n4_adj_1875)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_369.init = 16'h1000;
    ORCALUT4 i2_3_lut_rep_599_4_lut (.A(\IR[0] ), .B(n38996), .C(n38933), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n38833)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_rep_599_4_lut.init = 16'hfdff;
    PFUMX i88 (.BLUT(n60), .ALUT(n58), .C0(ISet[1]), .Z(n63_c));
    ORCALUT4 i1_2_lut_4_lut_adj_370 (.A(n38812), .B(n38831), .C(n38814), 
            .D(n24635), .Z(n20_c)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_4_lut_adj_370.init = 16'h00ef;
    ORCALUT4 i2_3_lut_4_lut_adj_371 (.A(n41030), .B(n38983), .C(n41028), 
            .D(n41026), .Z(RstP_N_1517)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_371.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_372 (.A(n38997), .B(\IR[2] ), .C(n7291), 
            .D(n4755), .Z(n34018)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_372.init = 16'h2000;
    ORCALUT4 i20842_2_lut_rep_525_3_lut_4_lut (.A(n39007), .B(n41004), .C(n38915), 
            .D(n38916), .Z(n38759)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20842_2_lut_rep_525_3_lut_4_lut.init = 16'heefe;
    ORCALUT4 i2_3_lut_rep_560_4_lut (.A(n39007), .B(n41004), .C(n38902), 
            .D(ISet[1]), .Z(n38794)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_3_lut_rep_560_4_lut.init = 16'h1000;
    ORCALUT4 i20328_2_lut_rep_509_3_lut_4_lut (.A(\IR[2] ), .B(n38930), 
            .C(\Set_BusA_To_3__N_1203[2] ), .D(n38926), .Z(n38743)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i20328_2_lut_rep_509_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 reduce_nor_5779_i1_2_lut_rep_513_3_lut_4_lut (.A(n38989), .B(\mc[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n38747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam reduce_nor_5779_i1_2_lut_rep_513_3_lut_4_lut.init = 16'hfffe;
    PFUMX i21_adj_373 (.BLUT(n8_adj_1800), .ALUT(n34726), .C0(ISet[1]), 
          .Z(Set_Addr_To_2__N_1418_c[0]));
    PFUMX i21_adj_374 (.BLUT(n8_adj_1798), .ALUT(TStates_2__N_1415[0]), 
          .C0(ISet[1]), .Z(\TStates_2__N_1012[0] ));
    ORCALUT4 i31987_3_lut_4_lut (.A(\Set_BusA_To_3__N_1203[2] ), .B(n38781), 
            .C(n15_c), .D(\mc[2] ), .Z(n35482)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i31987_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 mux_3099_i1_4_lut (.A(n40997), .B(n38753), .C(\IR[0] ), .D(\Set_BusA_To_3__N_1207[0] ), 
            .Z(n4681[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3099_i1_4_lut.init = 16'hca0a;
    ORCALUT4 MCycle_4__I_0_2_lut_rep_515_3_lut_4_lut (.A(n38989), .B(\mc[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n38749)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_4__I_0_2_lut_rep_515_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i20340_4_lut (.A(n38753), .B(\IR[1] ), .C(n4530[0]), .D(\IR[2] ), 
            .Z(n4747[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20340_4_lut.init = 16'hc088;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_375 (.A(n38829), .B(n38830), .C(n38813), 
            .D(n38824), .Z(n57)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_375.init = 16'h20f0;
    PFUMX i8 (.BLUT(n35218), .ALUT(TStates_2__N_1412[2]), .C0(ISet[0]), 
          .Z(n4_adj_1837));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_376 (.A(\IR[2] ), .B(n38936), .C(n33962), 
            .D(n38906), .Z(n5_adj_1873)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_376.init = 16'hf0b0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_377 (.A(\IR[2] ), .B(n38936), .C(n38933), 
            .D(n41005), .Z(n23496)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_377.init = 16'hfbff;
    ORCALUT4 i2_3_lut_4_lut_adj_378 (.A(n38829), .B(n38830), .C(n38828), 
            .D(n38810), .Z(n34044)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_378.init = 16'h2000;
    ORCALUT4 i1_3_lut_4_lut_adj_379 (.A(n38829), .B(n38830), .C(n38789), 
            .D(n38753), .Z(n4_adj_1876)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_3_lut_4_lut_adj_379.init = 16'hdf00;
    ORCALUT4 i2_4_lut_adj_380 (.A(n34569), .B(n33709), .C(IncDec_16_3__N_1217[0]), 
            .D(n38779), .Z(n16943)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_380.init = 16'hddfd;
    ORCALUT4 i2_3_lut_4_lut_adj_381 (.A(n39004), .B(n38933), .C(n38904), 
            .D(n38997), .Z(n35323)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i2_3_lut_4_lut_adj_381.init = 16'h0100;
    ORCALUT4 i20517_3_lut_4_lut (.A(n39004), .B(n38933), .C(n38802), .D(n38929), 
            .Z(n23964)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i20517_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i30910_2_lut_3_lut_4_lut (.A(n39004), .B(n38933), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n38900), .Z(n34366)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i30910_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i20752_2_lut_3_lut_4_lut (.A(n39004), .B(n38933), .C(n15992), 
            .D(n38923), .Z(n24202)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i20752_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i32071_2_lut_rep_507_3_lut_4_lut (.A(n39004), .B(n38933), .C(n38833), 
            .D(n38900), .Z(n38741)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i32071_2_lut_rep_507_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i2_3_lut_4_lut_adj_382 (.A(n38814), .B(\mc[4] ), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n38831), .Z(n35271)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i2_3_lut_4_lut_adj_382.init = 16'hfff1;
    ORCALUT4 i2_4_lut_adj_383 (.A(\ALU_Op_3__N_1274[3] ), .B(n17_adj_1877), 
            .C(n4_adj_1878), .D(n34588), .Z(n6_adj_14)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_383.init = 16'hfcfe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_384 (.A(n39004), .B(n38933), .C(n38936), 
            .D(\IR[2] ), .Z(n23835)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_384.init = 16'hffef;
    ORCALUT4 i1_4_lut_adj_385 (.A(\IR[1] ), .B(\IR[4] ), .C(n19_adj_1880), 
            .D(n15_adj_1881), .Z(n4_adj_1878)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_385.init = 16'heca0;
    ORCALUT4 select_1754_Select_0_i1_2_lut_3_lut_4_lut (.A(n39004), .B(n38933), 
            .C(\ALU_Op_3__N_1274[3] ), .D(n38900), .Z(n1)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam select_1754_Select_0_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_adj_386 (.A(n38778), .B(n38833), .C(n38989), .D(n41001), 
            .Z(n15_adj_1881)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_386.init = 16'h7350;
    ORCALUT4 i2_4_lut_adj_387 (.A(\Set_BusA_To_3__N_1203[2] ), .B(n4_adj_1828), 
            .C(n38737), .D(n38780), .Z(n19_adj_1880)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_387.init = 16'hceee;
    ORCALUT4 i1_2_lut_4_lut_adj_388 (.A(n41004), .B(n39004), .C(n38947), 
            .D(n38994), .Z(n4_adj_1834)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_388.init = 16'hffea;
    PFUMX i21_adj_389 (.BLUT(n8_adj_1791), .ALUT(MCycles_2__N_1009[0]), 
          .C0(ISet[1]), .Z(mcycles_d[0]));
    PFUMX i21_adj_390 (.BLUT(n8_adj_1789), .ALUT(n35214), .C0(ISet[1]), 
          .Z(Set_Addr_To_2__N_1418_c[2]));
    ORCALUT4 i3_4_lut_adj_391 (.A(n4_adj_1875), .B(n38716), .C(n34237), 
            .D(n38989), .Z(n8_adj_1782)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i3_4_lut_adj_391.init = 16'hfbfa;
    ORCALUT4 i1_4_lut_adj_392 (.A(\IR[4] ), .B(n38715), .C(n38700), .D(n41001), 
            .Z(n7_c)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_392.init = 16'ha2a0;
    ORCALUT4 MCycles_2__N_1060_I_0_1668_Select_0_i58_2_lut_3_lut_4_lut (.A(\mc[3] ), 
            .B(n40997), .C(n38906), .D(n38929), .Z(n58_adj_1882)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam MCycles_2__N_1060_I_0_1668_Select_0_i58_2_lut_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i12_4_lut_adj_393 (.A(n23_adj_1883), .B(n35546), .C(n23601), 
            .D(n38807), .Z(n26_c)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i12_4_lut_adj_393.init = 16'hbfff;
    ORCALUT4 i9_4_lut_adj_394 (.A(F_Out_7__N_1639), .B(n18_adj_1884), .C(n60_adj_1885), 
            .D(n41000), .Z(n23_adj_1883)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i9_4_lut_adj_394.init = 16'hfcfd;
    ORCALUT4 select_846_Select_2_i50_3_lut_4_lut (.A(\mc[4] ), .B(n38814), 
            .C(n16917), .D(n38779), .Z(n50)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_846_Select_2_i50_3_lut_4_lut.init = 16'h00f2;
    ORCALUT4 i4_4_lut_adj_395 (.A(n38830), .B(n38910), .C(n34097), .D(n38821), 
            .Z(n18_adj_1884)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i4_4_lut_adj_395.init = 16'ha0b3;
    ORCALUT4 i74_4_lut (.A(n38895), .B(n38679), .C(n4_adj_1871), .D(n38812), 
            .Z(n60_adj_1885)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i74_4_lut.init = 16'h3331;
    ORCALUT4 n7327_bdd_3_lut_4_lut (.A(\mc[3] ), .B(n40997), .C(\IR[4] ), 
            .D(n38978), .Z(n37118)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam n7327_bdd_3_lut_4_lut.init = 16'h0200;
    ORCALUT4 i1529_2_lut_rep_517 (.A(ISet[1]), .B(n38650), .Z(n38751)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1529_2_lut_rep_517.init = 16'h8888;
    ORCALUT4 i2_4_lut_adj_396 (.A(n19_adj_1886), .B(\IR[5] ), .C(n38916), 
            .D(n38933), .Z(n7)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i2_4_lut_adj_396.init = 16'haaba;
    ORCALUT4 i1_4_lut_adj_397 (.A(\IR[4] ), .B(n31793), .C(n8_adj_1888), 
            .D(n3_c), .Z(n19_adj_1886)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_397.init = 16'haaa8;
    PFUMX i21_adj_398 (.BLUT(n35319), .ALUT(n34828), .C0(ISet[1]), .Z(Set_Addr_To_2__N_1418[1]));
    ORCALUT4 i20336_2_lut_4_lut (.A(n38823), .B(n40997), .C(\IR[1] ), 
            .D(n7258), .Z(n4750[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i20336_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i3_4_lut_adj_399 (.A(n16160), .B(n38750), .C(n38812), .D(n38733), 
            .Z(n8_adj_1888)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_399.init = 16'hffdc;
    ORCALUT4 i3_4_lut_adj_400 (.A(n31582), .B(n38915), .C(n38734), .D(n38922), 
            .Z(n8_adj_15)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_400.init = 16'hf5f7;
    ORCALUT4 n7228_bdd_4_lut_34053 (.A(\IR[5] ), .B(\IR[0] ), .C(\IR[1] ), 
            .D(\IR[2] ), .Z(n37916)) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;
    defparam n7228_bdd_4_lut_34053.init = 16'h80c0;
    ORCALUT4 IR_7__I_0_1604_i15_2_lut_rep_576_3_lut_4_lut (.A(n38936), .B(n38991), 
            .C(n38933), .D(n41005), .Z(n38810)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam IR_7__I_0_1604_i15_2_lut_rep_576_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 n37919_bdd_3_lut (.A(n37919), .B(n37918), .C(n3825), .Z(n37920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37919_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_401 (.A(n40997), .B(n38832), .C(n34892), .D(n38997), 
            .Z(n4_adj_16)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_401.init = 16'h3b0a;
    ORCALUT4 i3_4_lut_adj_402 (.A(n15_c), .B(n34044), .C(n38706), .D(n38806), 
            .Z(n34892)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_402.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_403 (.A(\IR[0] ), .B(n19_adj_1880), .Z(n20)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_adj_403.init = 16'h8888;
    ORCALUT4 i2_3_lut_rep_568_4_lut (.A(n38936), .B(n38991), .C(\IR[5] ), 
            .D(n38933), .Z(n38802)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam i2_3_lut_rep_568_4_lut.init = 16'hfffd;
    ORCALUT4 i5_4_lut_adj_404 (.A(n39019), .B(n34), .C(\ALU_Op_3__N_1274[3] ), 
            .D(n34472), .Z(n12_adj_17)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i5_4_lut_adj_404.init = 16'heefe;
    ORCALUT4 i1_4_lut_adj_405 (.A(n17_adj_1877), .B(n39003), .C(n5_adj_1839), 
            .D(n35520), .Z(n8_adj_18)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_405.init = 16'heaee;
    ORCALUT4 i2_4_lut_adj_406 (.A(\IR[2] ), .B(n33709), .C(n34856), .D(n4_adj_1809), 
            .Z(n11)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_406.init = 16'heeec;
    ORCALUT4 mux_4113_i1_4_lut (.A(n40997), .B(n6014[0]), .C(\IR[2] ), 
            .D(n38936), .Z(n6044[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4113_i1_4_lut.init = 16'hcac0;
    PFUMX i9327 (.BLUT(n2419[1]), .ALUT(n12273), .C0(n36001), .Z(\IncDec_16[1] ));
    PFUMX i9325 (.BLUT(n2419[2]), .ALUT(n12271), .C0(n36001), .Z(\IncDec_16[2] ));
    ORCALUT4 i3_4_lut_adj_407 (.A(n33744), .B(n38902), .C(n38654), .D(n5_adj_1895), 
            .Z(n2286)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_407.init = 16'h8000;
    ORCALUT4 ALU_Op_3__N_1274_3__bdd_4_lut_34628 (.A(\ALU_Op_3__N_1274[3] ), 
            .B(F_Out_7__N_1639), .C(\mc[6] ), .D(\Set_BusA_To_3__N_1203[2] ), 
            .Z(TStates_2__N_1412[1])) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam ALU_Op_3__N_1274_3__bdd_4_lut_34628.init = 16'h5455;
    ORCALUT4 n38759_bdd_4_lut_35162 (.A(n38759), .B(\ALU_Op_3__N_1274[3] ), 
            .C(\mc[2] ), .D(\Set_BusA_To_3__N_1203[2] ), .Z(n39046)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;
    defparam n38759_bdd_4_lut_35162.init = 16'h4454;
    ORCALUT4 i7_4_lut_adj_408 (.A(n13_adj_1896), .B(\ALU_Op_3__N_1274[3] ), 
            .C(n10_adj_1897), .D(n38802), .Z(n16)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i7_4_lut_adj_408.init = 16'hfafe;
    ORCALUT4 i4_4_lut_adj_409 (.A(n63), .B(n38857), .C(n38778), .D(n4_adj_1899), 
            .Z(n13_adj_1896)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_409.init = 16'hafae;
    ORCALUT4 i1_4_lut_adj_410 (.A(n38815), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n38789), .D(n38793), .Z(n10_adj_1897)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_410.init = 16'h0ace;
    ORCALUT4 mux_3884_i1_4_lut_4_lut (.A(n38774), .B(n38924), .C(n5734[0]), 
            .D(n38936), .Z(n5740[0])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam mux_3884_i1_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 select_167_Select_2_i4_2_lut (.A(\IR[5] ), .B(\ALU_Op_3__N_1274[3] ), 
            .Z(n4_adj_1899)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(631[19] 669[26])
    defparam select_167_Select_2_i4_2_lut.init = 16'h8888;
    ORCALUT4 i16_4_lut (.A(ISet[0]), .B(n38673), .C(ISet[1]), .D(n38828), 
            .Z(n5_adj_1895)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i16_4_lut.init = 16'hc0c5;
    ORCALUT4 i32019_2_lut_3_lut_4_lut (.A(n39007), .B(n38933), .C(n41000), 
            .D(n38915), .Z(n35516)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i32019_2_lut_3_lut_4_lut.init = 16'hf0e0;
    PFUMX i21_adj_411 (.BLUT(n33082), .ALUT(Set_BusB_To_3__N_1405[1]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1033[1]));
    ORCALUT4 i31983_2_lut_3_lut_4_lut (.A(n38829), .B(n38828), .C(n23496), 
            .D(n38779), .Z(n35478)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i31983_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 IR_7__I_0_1610_i15_2_lut_rep_555_3_lut_4_lut (.A(n39007), .B(n38933), 
            .C(n38991), .D(n38936), .Z(n38789)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam IR_7__I_0_1610_i15_2_lut_rep_555_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i3_4_lut_adj_412 (.A(\IR[5] ), .B(n3_adj_1840), .C(n38700), 
            .D(n34237), .Z(n8_c)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i3_4_lut_adj_412.init = 16'hffec;
    PFUMX i22 (.BLUT(MCycles_2__N_1003[1]), .ALUT(MCycles_2__N_1006[1]), 
          .C0(ISet[0]), .Z(n8_adj_1833));
    PFUMX i10624 (.BLUT(n13677), .ALUT(IncDec_16_3__N_1017[0]), .C0(n38860), 
          .Z(\IncDec_16[0] ));
    ORCALUT4 i20229_2_lut_rep_531_3_lut_4_lut (.A(n39007), .B(n38933), .C(n38931), 
            .D(n38916), .Z(n38765)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i20229_2_lut_rep_531_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_rep_594_3_lut_4_lut (.A(n39007), .B(n38933), .C(n38936), 
            .D(\IR[2] ), .Z(n38828)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_rep_594_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_4_lut_adj_413 (.A(\Set_BusA_To_3__N_1203[2] ), .B(n23601), 
            .C(n34044), .D(n15_c), .Z(n17129)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_413.init = 16'h2aaa;
    ORCALUT4 i2_3_lut_rep_607_4_lut (.A(n41018), .B(n40994), .C(n41024), 
            .D(n38953), .Z(n38841)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_607_4_lut.init = 16'h1000;
    ORCALUT4 i2_4_lut_adj_414 (.A(n1), .B(n41005), .C(n34104), .D(n6_adj_1810), 
            .Z(n6_adj_19)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_4_lut_adj_414.init = 16'heeea;
    ORCALUT4 i2_3_lut_rep_522_3_lut_4_lut (.A(\mc[2] ), .B(n38989), .C(RstP_N_1517), 
            .D(n38931), .Z(n38756)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_3_lut_rep_522_3_lut_4_lut.init = 16'h0020;
    PFUMX i34308 (.BLUT(n37303), .ALUT(n38435), .C0(n3825), .Z(n38436));
    ORCALUT4 n38914_bdd_4_lut_34804 (.A(n38914), .B(n38899), .C(\IR[7] ), 
            .D(n41026), .Z(n24919)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam n38914_bdd_4_lut_34804.init = 16'hf8ff;
    ORCALUT4 i4_4_lut_adj_415 (.A(n40997), .B(n58_adj_1820), .C(n38833), 
            .D(n16978), .Z(n11_adj_20)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_415.init = 16'hffce;
    PFUMX i34310 (.BLUT(n38438), .ALUT(n38437), .C0(ISet[1]), .Z(n38439));
    ORCALUT4 i32966_3_lut (.A(n11126), .B(n6044[0]), .C(n38774), .Z(n6053[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i32966_3_lut.init = 16'hcaca;
    PFUMX mux_1148_i2 (.BLUT(n14310), .ALUT(n14311), .C0(n35922), .Z(\Set_BusA_To[1] ));
    ORCALUT4 i5_4_lut_adj_416 (.A(n38697), .B(n10_adj_1902), .C(\IR[5] ), 
            .D(n34931), .Z(n12_adj_21)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_416.init = 16'hfeee;
    L6MUX21 mux_1148_i3 (.D0(n8219_c[2]), .D1(n14309), .SD(n38692), .Z(\Set_BusA_To[2] ));
    ORCALUT4 i33508_4_lut_4_lut (.A(\IR[5] ), .B(\IR[2] ), .C(n40994), 
            .D(n41000), .Z(n24518)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i33508_4_lut_4_lut.init = 16'h0002;
    ORCALUT4 i3_4_lut_adj_417 (.A(n38945), .B(Set_BusA_To_3__N_1187[2]), 
            .C(n34035), .D(n16160), .Z(n10_adj_1902)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_417.init = 16'ha0ec;
    PFUMX mux_4631_i1 (.BLUT(n33038), .ALUT(Inc_PC_N_1435), .C0(ISet[1]), 
          .Z(Inc_PC_N_1426));
    ORCALUT4 i4_4_lut_adj_418 (.A(n33948), .B(n8_adj_1861), .C(n38916), 
            .D(n38898), .Z(n16978)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i4_4_lut_adj_418.init = 16'hddfd;
    PFUMX i21_adj_419 (.BLUT(n32886), .ALUT(Set_BusB_To_3__N_1405[0]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1033[0]));
    PFUMX i21_adj_420 (.BLUT(n32840), .ALUT(Set_BusB_To_3__N_1405[2]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1033[2]));
    ORCALUT4 i1_3_lut_4_lut_adj_421 (.A(n38839), .B(n38894), .C(n38814), 
            .D(n38812), .Z(n66)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_421.init = 16'h1101;
    ORCALUT4 i1_4_lut_4_lut_adj_422 (.A(\mc[2] ), .B(n38989), .C(n38776), 
            .D(n38821), .Z(n12_adj_1904)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_4_lut_4_lut_adj_422.init = 16'h0a2a;
    PFUMX i52 (.BLUT(n20_adj_22), .ALUT(n30), .C0(ISet[1]), .Z(n28_adj_23));
    ORCALUT4 i1_3_lut_4_lut_adj_423 (.A(n38893), .B(n38846), .C(n17359), 
            .D(n23_c), .Z(n4_adj_1768)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_423.init = 16'hff10;
    ORCALUT4 MCycles_2__N_1060_I_0_1668_Select_0_i50_2_lut_3_lut_4_lut (.A(n38930), 
            .B(n38991), .C(n38997), .D(n38918), .Z(n50_adj_1907)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam MCycles_2__N_1060_I_0_1668_Select_0_i50_2_lut_3_lut_4_lut.init = 16'h0020;
    PFUMX i7342 (.BLUT(Set_BusA_To_3__N_1361[0]), .ALUT(n10083), .C0(n35880), 
          .Z(n10084));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_424 (.A(n38930), .B(n38991), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(n38926), .Z(n17_adj_1877)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_424.init = 16'h0020;
    ORCALUT4 select_1769_Select_0_i1_2_lut_3_lut_4_lut (.A(n38930), .B(n38991), 
            .C(n39003), .D(n38926), .Z(n1_adj_1776)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam select_1769_Select_0_i1_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i1_3_lut_4_lut_adj_425 (.A(n38893), .B(n38846), .C(n39003), 
            .D(Read_To_Acc_N_1472), .Z(n34237)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_425.init = 16'hff10;
    ORCALUT4 i6_4_lut_adj_426 (.A(n11_adj_1908), .B(\Set_BusA_To_3__N_1203[2] ), 
            .C(n4_adj_1876), .D(n9_adj_1832), .Z(n14_adj_1774)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut_adj_426.init = 16'hfefa;
    PFUMX i11172 (.BLUT(n12305), .ALUT(n14308), .C0(n35918), .Z(n14309));
    ORCALUT4 i3_4_lut_adj_427 (.A(n38910), .B(IncDec_16_3__N_1217[0]), .C(n12_adj_1904), 
            .D(n38779), .Z(n11_adj_1908)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_427.init = 16'h50dc;
    ORCALUT4 i2_4_lut_adj_428 (.A(n38796), .B(n38810), .C(n38709), .D(n38902), 
            .Z(n10_adj_1775)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_428.init = 16'h3705;
    PFUMX mux_4619_i1 (.BLUT(Write_N_1551), .ALUT(Write_N_1562), .C0(ISet[0]), 
          .Z(n6722[0]));
    ORCALUT4 i4_3_lut_4_lut (.A(n38902), .B(n38835), .C(n38829), .D(n24867), 
            .Z(n19_adj_1857)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2378[19] 2399[26])
    defparam i4_3_lut_4_lut.init = 16'h0eff;
    ORCALUT4 i12197_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(n41005), 
            .C(F_Out_7__N_1639), .D(\Set_BusA_To_3__N_1203[2] ), .Z(n15453)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i12197_2_lut_3_lut_4_lut.init = 16'hfbf0;
    ORCALUT4 i31107_3_lut_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(n41005), 
            .C(n24919), .D(n38716), .Z(n34582)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i31107_3_lut_4_lut.init = 16'hfb00;
    ORCALUT4 i6_4_lut_adj_429 (.A(\Set_BusA_To_3__N_1207[0] ), .B(n12_adj_1909), 
            .C(n50_adj_1907), .D(n5_adj_1773), .Z(n14)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut_adj_429.init = 16'hfefc;
    ORCALUT4 i4_4_lut_adj_430 (.A(n19_adj_1910), .B(n2_adj_1787), .C(n16160), 
            .D(n38997), .Z(n12_adj_1909)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_430.init = 16'hafae;
    ORCALUT4 mux_4623_i1_4_lut (.A(n6722[0]), .B(n5424[0]), .C(ISet[1]), 
            .D(n38678), .Z(write)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_4623_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_431 (.A(\Set_BusA_To_3__N_1207[0] ), 
            .B(n41005), .C(n7258), .D(n38997), .Z(n33944)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_3_lut_4_lut_adj_431.init = 16'hb000;
    ORCALUT4 i2_2_lut_rep_579_3_lut_4_lut (.A(n41004), .B(F_Out_7__N_1639), 
            .C(n41005), .D(n41020), .Z(n38813)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_2_lut_rep_579_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i2_3_lut_4_lut_adj_432 (.A(n38937), .B(\mc[6] ), .C(\mc[5] ), 
            .D(n35199), .Z(n34792)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_4_lut_adj_432.init = 16'hf8ff;
    ORCALUT4 i31034_2_lut_3_lut_4_lut (.A(n38904), .B(n41004), .C(n40997), 
            .D(n38838), .Z(n34500)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i31034_2_lut_3_lut_4_lut.init = 16'hfef0;
    ORCALUT4 Set_BusB_To_3__I_0_i2_3_lut_4_lut (.A(n39000), .B(\mc[6] ), 
            .C(n41016), .D(Set_BusB_To_3__N_1033[1]), .Z(Set_BusB_To[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i2_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_3647_i1_3_lut (.A(n5421[0]), .B(n37126), .C(n3825), .Z(n5424[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3647_i1_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_3__I_0_i3_3_lut_4_lut (.A(n39000), .B(\mc[6] ), 
            .C(n41018), .D(Set_BusB_To_3__N_1033[2]), .Z(Set_BusB_To[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i3_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 Set_BusB_To_3__I_0_i1_3_lut_4_lut (.A(n39000), .B(\mc[6] ), 
            .C(n41030), .D(Set_BusB_To_3__N_1033[0]), .Z(Set_BusB_To[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i1_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i2_4_lut_adj_433 (.A(n58_adj_1882), .B(n41004), .C(n15453), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n10_adj_1771)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_433.init = 16'hbaaa;
    ORCALUT4 i1_2_lut_rep_453_3_lut_4_lut (.A(n38904), .B(n41004), .C(n24921), 
            .D(n38838), .Z(n38687)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_453_3_lut_4_lut.init = 16'he000;
    ORCALUT4 mux_4358_i1_4_lut (.A(n11164), .B(n38757), .C(\IR[6] ), .D(\IR[1] ), 
            .Z(n6372[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4358_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i20933_2_lut_3_lut_4_lut (.A(n38994), .B(n39002), .C(n38931), 
            .D(n38918), .Z(n24402)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i20933_2_lut_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_434 (.A(n38994), .B(n39002), .C(n15992), 
            .D(n38918), .Z(n33961)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_434.init = 16'hf0b0;
    ORCALUT4 i33376_2_lut_rep_534_3_lut_4_lut (.A(n38994), .B(n39002), .C(n38931), 
            .D(n38917), .Z(n38768)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i33376_2_lut_rep_534_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i33390_2_lut_rep_452_3_lut_4_lut (.A(n41018), .B(n38839), .C(n24518), 
            .D(n38994), .Z(n38686)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i33390_2_lut_rep_452_3_lut_4_lut.init = 16'hf0f1;
    PFUMX mux_4703_i1 (.BLUT(n35215), .ALUT(IORQ_N_1484), .C0(ISet[1]), 
          .Z(iorq));
    ORCALUT4 i2_4_lut_else_3_lut (.A(n40994), .B(n38923), .C(n41004), 
            .D(n24919), .Z(n39048)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'hf800;
    ORCALUT4 i6964_3_lut_4_lut_4_lut (.A(n38931), .B(n38840), .C(ACC[5]), 
            .D(n38730), .Z(n609)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam i6964_3_lut_4_lut_4_lut.init = 16'h0150;
    PFUMX mux_4695_i1 (.BLUT(n6821[0]), .ALUT(NoRead_N_1547), .C0(ISet[1]), 
          .Z(NoRead_N_1544));
    ORCALUT4 IR_7__I_0_1624_i15_2_lut_rep_553_3_lut_4_lut (.A(n38930), .B(n38934), 
            .C(n38933), .D(n41005), .Z(n38787)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam IR_7__I_0_1624_i15_2_lut_rep_553_3_lut_4_lut.init = 16'hfdff;
    PFUMX i12 (.BLUT(n3), .ALUT(MCycles_2__N_1009[2]), .C0(ISet[1]), .Z(mcycles_d[2]));
    ORCALUT4 i2_3_lut_rep_479_4_lut (.A(n38841), .B(ISet[1]), .C(\tstate[1] ), 
            .D(n38908), .Z(n38713)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_rep_479_4_lut.init = 16'h8000;
    ORCALUT4 IR_7__I_0_1621_i15_2_lut_rep_541_3_lut_4_lut (.A(n38930), .B(n38934), 
            .C(n38933), .D(n39007), .Z(n38775)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam IR_7__I_0_1621_i15_2_lut_rep_541_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i3_4_lut_4_lut (.A(n40991), .B(n38779), .C(n40997), .D(n38732), 
            .Z(n9_adj_1821)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h7350;
    ORCALUT4 IR_7__I_0_1622_i15_2_lut_rep_606_3_lut_4_lut (.A(n38930), .B(n39008), 
            .C(n38933), .D(n39007), .Z(n38840)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1622_i15_2_lut_rep_606_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(n40991), .B(n41005), .C(\Set_BusA_To_3__N_1203[2] ), 
            .D(\mc[2] ), .Z(n19_adj_1910)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h1410;
    ORCALUT4 i31017_2_lut_3_lut_4_lut_4_lut (.A(n38930), .B(n39008), .C(n38922), 
            .D(n38934), .Z(n33948)) /* synthesis lut_function=((B (C)+!B (C+(D)))+!A) */ ;
    defparam i31017_2_lut_3_lut_4_lut_4_lut.init = 16'hf7f5;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_435 (.A(n38930), .B(n39008), .C(n41005), 
            .D(n39007), .Z(n4_adj_24)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_435.init = 16'h7f77;
    PFUMX i34462 (.BLUT(n39012), .ALUT(n39013), .C0(\ALU_Op_3__N_1274[3] ), 
          .Z(n39014));
    ORCALUT4 i55_4_lut (.A(\IR[4] ), .B(n38930), .C(\IR[6] ), .D(n4_adj_1829), 
            .Z(n26_adj_1817)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i55_4_lut.init = 16'hca0a;
    ORCALUT4 mux_1694_i4_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[3]), 
            .D(SP16[3]), .Z(n2849[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i4_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i3_4_lut_adj_436 (.A(n38983), .B(n38651), .C(n34352), .D(n38764), 
            .Z(n35282)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut_adj_436.init = 16'hefff;
    ORCALUT4 IR_7__I_0_1611_i15_2_lut_rep_611_3_lut_4_lut (.A(n41005), .B(n40996), 
            .C(n39002), .D(n38994), .Z(n38845)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam IR_7__I_0_1611_i15_2_lut_rep_611_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i33513_3_lut_4_lut (.A(n38845), .B(n38931), .C(n38855), .D(n925), 
            .Z(n23793)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i33513_3_lut_4_lut.init = 16'h0f01;
    ORCALUT4 IR_7__I_0_1626_i15_2_lut_3_lut_4_lut (.A(n41005), .B(n40996), 
            .C(n38991), .D(n38930), .Z(n15_adj_25)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1626_i15_2_lut_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 IR_0__bdd_3_lut_34181 (.A(\IR[7] ), .B(\IR[2] ), .C(\IR[5] ), 
            .Z(n38047)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam IR_0__bdd_3_lut_34181.init = 16'hdfdf;
    ORCALUT4 i1_2_lut_adj_437 (.A(\mc[6] ), .B(n28_adj_23), .Z(Set_BusB_To[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut_adj_437.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_536_3_lut_3_lut_4_lut (.A(n39007), .B(n40996), 
            .C(n38919), .D(n38931), .Z(n38770)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_rep_536_3_lut_3_lut_4_lut.init = 16'h00fb;
    ORCALUT4 i1_4_lut_adj_438 (.A(\Set_BusA_To_3__N_1207[0] ), .B(n33781), 
            .C(n8_adj_26), .D(n38782), .Z(n34279)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1794[19] 1798[22])
    defparam i1_4_lut_adj_438.init = 16'h2aaa;
    ORCALUT4 mux_1694_i9_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[8]), 
            .D(SP16[8]), .Z(n2849[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i9_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i12_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[11]), 
            .D(SP16[11]), .Z(n2849[11])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i12_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 IR_7__I_0_1618_i15_2_lut_rep_545_3_lut_4_lut (.A(n39007), .B(n40996), 
            .C(n38991), .D(n38930), .Z(n38779)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1618_i15_2_lut_rep_545_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 IR_7__I_0_1639_i15_2_lut_rep_575_3_lut_4_lut (.A(n39007), .B(n40996), 
            .C(n39002), .D(n38994), .Z(n38809)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1639_i15_2_lut_rep_575_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_0__bdd_4_lut_34178 (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[7] ), 
            .D(\IR[2] ), .Z(n38046)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;
    defparam IR_0__bdd_4_lut_34178.init = 16'hf3fb;
    ORCALUT4 i2_4_lut_adj_439 (.A(n15), .B(n24436), .C(n15_adj_1915), 
            .D(n16_adj_1916), .Z(n33781)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_439.init = 16'h8000;
    ORCALUT4 i6_4_lut_adj_440 (.A(n33961), .B(n38783), .C(n34127), .D(n38811), 
            .Z(n15_adj_1915)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_440.init = 16'h8000;
    ORCALUT4 i20231_2_lut_rep_495_3_lut_4_lut (.A(n39007), .B(n40996), .C(n38931), 
            .D(n38925), .Z(n38729)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i20231_2_lut_rep_495_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i7_4_lut_adj_441 (.A(n23601), .B(n38845), .C(n34122), .D(n10_adj_1812), 
            .Z(n16_adj_1916)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_441.init = 16'h8000;
    ORCALUT4 mux_1694_i15_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[14]), 
            .D(SP16[14]), .Z(n2849[14])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i15_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i8_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[7]), 
            .D(SP16[7]), .Z(n2849[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i8_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i4_4_lut_adj_442 (.A(n7_adj_1869), .B(n24905), .C(n38781), 
            .D(n33989), .Z(n34116)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_442.init = 16'h8000;
    ORCALUT4 mux_1694_i2_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[1]), 
            .D(SP16[1]), .Z(n2849[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i2_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i16_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[15]), 
            .D(SP16[15]), .Z(n2849[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i16_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i3_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[2]), 
            .D(SP16[2]), .Z(n2849[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i3_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_4_lut_adj_443 (.A(n34348), .B(n38920), .C(n38900), .D(n38914), 
            .Z(n33989)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_443.init = 16'ha888;
    ORCALUT4 mux_1694_i7_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[6]), 
            .D(SP16[6]), .Z(n2849[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i7_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i1_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[0]), 
            .D(SP16[0]), .Z(n2849[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i1_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 IR_7__I_0_1663_i15_2_lut_rep_613_3_lut_4_lut (.A(n38994), .B(n39008), 
            .C(n40996), .D(n39007), .Z(n38847)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1663_i15_2_lut_rep_613_3_lut_4_lut.init = 16'hffbf;
    PFUMX i34487 (.BLUT(n39055), .ALUT(n39056), .C0(n41018), .Z(n39057));
    ORCALUT4 mux_1694_i5_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[4]), 
            .D(SP16[4]), .Z(n2849[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i5_3_lut_4_lut.init = 16'hfe10;
    L6MUX21 mux_4125_i1 (.D0(n6059[0]), .D1(n6056[0]), .SD(n3825), .Z(n6062[0]));
    ORCALUT4 mux_1694_i11_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[10]), 
            .D(SP16[10]), .Z(n2849[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i11_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i5_4_lut_adj_444 (.A(n38776), .B(n35469), .C(n41004), .D(n35575), 
            .Z(n24695)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_444.init = 16'h8000;
    ORCALUT4 mux_1694_i14_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[13]), 
            .D(SP16[13]), .Z(n2849[13])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i14_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i10_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[9]), 
            .D(SP16[9]), .Z(n2849[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i10_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i31_3_lut (.A(n18), .B(\IR[0] ), .C(n41018), .Z(n20_adj_1802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31_3_lut.init = 16'hcaca;
    PFUMX i35610 (.BLUT(n41006), .ALUT(n41007), .C0(F_Out_7__N_1639), 
          .Z(n41008));
    ORCALUT4 mux_1694_i6_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[5]), 
            .D(SP16[5]), .Z(n2849[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i6_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1694_i13_3_lut_4_lut (.A(n38845), .B(n38931), .C(RegBusC[12]), 
            .D(SP16[12]), .Z(n2849[12])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1694_i13_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i4_4_lut_adj_445 (.A(n38840), .B(n38787), .C(n15_adj_25), 
            .D(n6_adj_1823), .Z(n24436)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_445.init = 16'h8000;
    
endmodule
//
// Verilog Description of module tv80_alu
//

module tv80_alu (F_Out_7__N_1643, n41003, n37276, \BusA[6] , VCC_net, 
            \BusA[7] , BusB, Q_7__N_1723, ALU_Op_r, n1906, n38818, 
            \F[0] , \BusA[1] , n38872, n12320, \F[4] , \BusA[2] , 
            \Q_v[7] , n1940, n38859, \BusA[3] , \BusA[4] , Save_ALU_r, 
            n34811, n38760, n35745, \BusA[5] , \Set_BusA_To_3__N_1207[0] , 
            \IR[4] , n38950, \IR[5] , Q_7__N_1612, F_Out_7__N_1641, 
            n12313, Q_7__N_1571, n41020, n38867, n1904, n14303, 
            \Q_7__N_1604[7] , n41022, n38952, n38955, n38956, n38959, 
            F_Out_7__N_1639, n38965, n6, F_Out_7__N_1666, n23643, 
            n36003, n17, RegWEH_N_888, n37224, n12324, \F_Out[2] , 
            \F_Out[6] , F_Out_7__N_1668, n38947, n22, n38711, n24589, 
            n25, n38975, n38886, F_Out_7__N_1656, n6_adj_1, ISet, 
            n24, n6_adj_2, n6_adj_3, n6_adj_4, n6_adj_5, n6_adj_6, 
            n41005, n1902, n2350, n12317, PreserveC_r, n35676, n1901, 
            \F[1] , \Q_7__N_1706[7] , n2351, n38870, n1900, n908, 
            \Save_Mux[0] , n38688, \F_Out[0] , n38861, n1899, n37523, 
            n37520, n2352, \ALU_Q[3] , \F_Out[3] , n37950, n37951, 
            Z16_r, Arith16_r, \F[6] , n37337, n37212, n1896, n1894, 
            n38795, n2935, n39022, n2353, n9479, n2354, n14, n32178, 
            \ALU_Q[1] , n2355, n38931, n2356) /* synthesis syn_module_defined=1 */ ;
    input F_Out_7__N_1643;
    output n41003;
    output n37276;
    input \BusA[6] ;
    input VCC_net;
    input \BusA[7] ;
    input [7:0]BusB;
    input [8:0]Q_7__N_1723;
    input [3:0]ALU_Op_r;
    output n1906;
    output n38818;
    input \F[0] ;
    input \BusA[1] ;
    output n38872;
    output n12320;
    input \F[4] ;
    input \BusA[2] ;
    output \Q_v[7] ;
    input n1940;
    output n38859;
    input \BusA[3] ;
    input \BusA[4] ;
    input Save_ALU_r;
    input n34811;
    input n38760;
    output n35745;
    input \BusA[5] ;
    input \Set_BusA_To_3__N_1207[0] ;
    input \IR[4] ;
    output n38950;
    input \IR[5] ;
    output [7:0]Q_7__N_1612;
    input F_Out_7__N_1641;
    output n12313;
    output Q_7__N_1571;
    input n41020;
    input n38867;
    output n1904;
    input n14303;
    output \Q_7__N_1604[7] ;
    input n41022;
    output n38952;
    output n38955;
    output n38956;
    output n38959;
    input F_Out_7__N_1639;
    output n38965;
    output n6;
    input F_Out_7__N_1666;
    output n23643;
    output n36003;
    output n17;
    output RegWEH_N_888;
    output n37224;
    input n12324;
    output \F_Out[2] ;
    output \F_Out[6] ;
    output F_Out_7__N_1668;
    input n38947;
    input n22;
    input n38711;
    input n24589;
    output n25;
    output n38975;
    output n38886;
    output F_Out_7__N_1656;
    output n6_adj_1;
    input [1:0]ISet;
    output n24;
    output n6_adj_2;
    output n6_adj_3;
    output n6_adj_4;
    output n6_adj_5;
    output n6_adj_6;
    input n41005;
    output n1902;
    input n2350;
    output n12317;
    input PreserveC_r;
    output n35676;
    output n1901;
    input \F[1] ;
    output \Q_7__N_1706[7] ;
    output n2351;
    input n38870;
    output n1900;
    input n908;
    input \Save_Mux[0] ;
    input n38688;
    output \F_Out[0] ;
    input n38861;
    output n1899;
    output n37523;
    output n37520;
    output n2352;
    output \ALU_Q[3] ;
    output \F_Out[3] ;
    input n37950;
    output n37951;
    input Z16_r;
    input Arith16_r;
    input \F[6] ;
    output n37337;
    output n37212;
    input n1896;
    input n1894;
    input n38795;
    output n2935;
    output n39022;
    output n2353;
    output n9479;
    output n2354;
    output n14;
    output n32178;
    output \ALU_Q[1] ;
    output n2355;
    input n38931;
    output n2356;
    
    wire [6:0]n6981;
    
    wire n12315;
    wire [7:0]Q_7__N_1604;
    
    wire n37274, n38879, n31326, GND_net, cout, n31325;
    wire [8:0]n166;
    
    wire n38865;
    wire [8:0]Q_7__N_1572;
    
    wire n16, n12, n36368, n40989, n38671;
    wire [8:0]Q_7__N_1723_c;
    wire [7:0]Q_7__N_1706;
    
    wire HalfCarry_v_N_1665, n2;
    wire [6:0]n42;
    
    wire n251;
    wire [8:0]Q_7__N_1714;
    
    wire n15905, F_Out_7__N_1645, n12323, n12319;
    wire [7:0]n2934;
    
    wire n38663, n38657, OverFlow_v;
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    
    wire n38791, n38866;
    wire [7:0]n1898;
    
    wire n13809, n38698, n38674, n38668, n38666, n38948, Q_7__N_1568, 
        n8, n38868;
    wire [7:0]n2349;
    wire [7:0]n2358;
    
    wire n38880, F_Out_7__N_1648, n31324, n9, n10, n34982, n14_c, 
        n10_adj_1746, n35222, n39039, n39040, n38736, n12254, n35882, 
        n31323, n38976;
    wire [7:0]Q_7__N_1596;
    
    wire n38869, n10_adj_1747, n9_adj_1748, n10_adj_1749;
    wire [6:0]n6963;
    
    wire n38881, n38960, n38862, n12321, n12322, n39021, n39020, 
        n35980, n38804, n37223, n12316, F_Out_7__N_1650, n9477;
    wire [4:0]n2325;
    
    wire n37519, n40427, n40426, n40428, n40429, n37518, n38887, 
        n10_adj_1750, n38863, n37522, n39028, n39027, n10_adj_1758, 
        F_Out_7__N_1626, n39029, n14_adj_1759, n36369, n9_adj_1760, 
        n14_adj_1761, n10_adj_1762, n37521, n37336, n37211, n12391, 
        n15909, n14_adj_1763, n12395, n31359, n31358, n31357, n10_adj_1764, 
        n9949, n14_adj_1765, n10_adj_1766;
    
    PFUMX i9365 (.BLUT(F_Out_7__N_1643), .ALUT(n6981[5]), .C0(n41003), 
          .Z(n12315));
    PFUMX i33676 (.BLUT(Q_7__N_1604[6]), .ALUT(n37274), .C0(n38879), .Z(n37276));
    CCU2B add_5892_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n31326), .S0(cout));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5892_add_4_cout.INIT0 = 16'h0000;
    defparam add_5892_add_4_cout.INIT1 = 16'h0000;
    defparam add_5892_add_4_cout.INJECT1_0 = "NO";
    defparam add_5892_add_4_cout.INJECT1_1 = "NO";
    CCU2B add_5892_add_4_7 (.A0(\BusA[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31325), .COUT(n31326), .S0(n166[6]), .S1(n166[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5892_add_4_7.INIT0 = 16'haaaa;
    defparam add_5892_add_4_7.INIT1 = 16'haaaa;
    defparam add_5892_add_4_7.INJECT1_0 = "NO";
    defparam add_5892_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 mux_1213_i1_4_lut (.A(BusB[0]), .B(Q_7__N_1723[0]), .C(ALU_Op_r[2]), 
            .D(n38865), .Z(n1906)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i33059_1_lut_4_lut (.A(Q_7__N_1572[4]), .B(n16), .C(n12), 
            .D(Q_7__N_1572[8]), .Z(n36368)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i33059_1_lut_4_lut.init = 16'h9669;
    ORCALUT4 i31042_2_lut_rep_584_4_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38818)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i31042_2_lut_rep_584_4_lut_4_lut.init = 16'h8e00;
    ORCALUT4 i2_4_lut_rep_437 (.A(n40989), .B(\F[0] ), .C(n166[7]), .D(cout), 
            .Z(n38671)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i2_4_lut_rep_437.init = 16'hffec;
    ORCALUT4 i6099_2_lut_3_lut_4_lut (.A(n40989), .B(\F[0] ), .C(n166[7]), 
            .D(cout), .Z(Q_7__N_1723_c[7])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i6099_2_lut_3_lut_4_lut.init = 16'h5a58;
    ORCALUT4 and_23_i2_2_lut (.A(\BusA[1] ), .B(BusB[1]), .Z(Q_7__N_1706[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i2_2_lut.init = 16'h8888;
    ORCALUT4 Q_7__N_1723_0__bdd_4_lut (.A(Q_7__N_1723[0]), .B(HalfCarry_v_N_1665), 
            .C(BusB[0]), .D(ALU_Op_r[1]), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam Q_7__N_1723_0__bdd_4_lut.init = 16'h2be8;
    ORCALUT4 i6112_2_lut (.A(n42[4]), .B(n251), .Z(Q_7__N_1714[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6112_2_lut.init = 16'h6666;
    ORCALUT4 i6084_2_lut (.A(n166[5]), .B(n38671), .Z(Q_7__N_1723_c[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6084_2_lut.init = 16'h6666;
    ORCALUT4 i33319_3_lut_4_lut (.A(n15905), .B(ALU_Op_r[1]), .C(n41003), 
            .D(F_Out_7__N_1645), .Z(n12323)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i33319_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 i6092_3_lut (.A(n166[6]), .B(n38671), .C(n166[5]), .Z(Q_7__N_1723_c[6])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6092_3_lut.init = 16'ha6a6;
    PFUMX i9370 (.BLUT(n12319), .ALUT(n2934[4]), .C0(n38872), .Z(n12320));
    ORCALUT4 i1_3_lut_rep_790 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .Z(n41003)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_rep_790.init = 16'h8e8e;
    ORCALUT4 i20833_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(\F[4] ), .Z(n12319)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !((C)+!B)) */ ;
    defparam i20833_3_lut_3_lut_4_lut.init = 16'h8e04;
    ORCALUT4 and_23_i3_2_lut (.A(\BusA[2] ), .B(BusB[2]), .Z(Q_7__N_1706[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i3_2_lut.init = 16'h8888;
    ORCALUT4 i6055_4_lut_rep_423_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), .C(\BusA[7] ), 
            .D(n38663), .Z(n38657)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i6055_4_lut_rep_423_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), .C(n38663), 
            .D(\BusA[7] ), .Z(\Q_v[7] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i2_3_lut_4_lut.init = 16'h6996;
    ORCALUT4 Carry_v_I_0_2_lut_4_lut_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), 
            .C(\BusA[7] ), .D(n38663), .Z(OverFlow_v)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam Carry_v_I_0_2_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    ORCALUT4 i2_3_lut_4_lut_adj_175 (.A(BusB[1]), .B(ALU_Op_r[1]), .C(n2), 
            .D(\BusA[1] ), .Z(Q_v[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_175.init = 16'h6996;
    ORCALUT4 i6069_4_lut_3_lut_rep_557_4_lut (.A(BusB[1]), .B(ALU_Op_r[1]), 
            .C(\BusA[1] ), .D(n2), .Z(n38791)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6069_4_lut_3_lut_rep_557_4_lut.init = 16'hf660;
    ORCALUT4 mux_1213_i2_4_lut (.A(BusB[1]), .B(Q_7__N_1572[1]), .C(ALU_Op_r[2]), 
            .D(n38866), .Z(n1898[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i2_4_lut.init = 16'hc0ca;
    ORCALUT4 i33039_3_lut (.A(n1898[1]), .B(n1940), .C(n38859), .Z(n13809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i33039_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_adj_176 (.A(BusB[2]), .B(ALU_Op_r[1]), .C(n38791), 
            .D(\BusA[2] ), .Z(Q_v[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_176.init = 16'h6996;
    ORCALUT4 i6076_4_lut_3_lut_rep_464_4_lut (.A(BusB[2]), .B(ALU_Op_r[1]), 
            .C(\BusA[2] ), .D(n38791), .Z(n38698)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6076_4_lut_3_lut_rep_464_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_177 (.A(BusB[3]), .B(ALU_Op_r[1]), .C(n38698), 
            .D(\BusA[3] ), .Z(Q_v[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_177.init = 16'h6996;
    ORCALUT4 i6083_4_lut_3_lut_rep_440_4_lut (.A(BusB[3]), .B(ALU_Op_r[1]), 
            .C(\BusA[3] ), .D(n38698), .Z(n38674)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6083_4_lut_3_lut_rep_440_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_178 (.A(BusB[4]), .B(ALU_Op_r[1]), .C(n38674), 
            .D(\BusA[4] ), .Z(Q_v[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_178.init = 16'h6996;
    ORCALUT4 i33501_2_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(Save_ALU_r), 
            .C(n34811), .D(n38760), .Z(n35745)) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;
    defparam i33501_2_lut_4_lut_4_lut.init = 16'hfaba;
    ORCALUT4 i6034_4_lut_3_lut_rep_434_4_lut (.A(BusB[4]), .B(ALU_Op_r[1]), 
            .C(\BusA[4] ), .D(n38674), .Z(n38668)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6034_4_lut_3_lut_rep_434_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_179 (.A(BusB[5]), .B(ALU_Op_r[1]), .C(n38668), 
            .D(\BusA[5] ), .Z(Q_v[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_179.init = 16'h6996;
    ORCALUT4 i6041_4_lut_3_lut_rep_432_4_lut (.A(BusB[5]), .B(ALU_Op_r[1]), 
            .C(\BusA[5] ), .D(n38668), .Z(n38666)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6041_4_lut_3_lut_rep_432_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_180 (.A(BusB[6]), .B(ALU_Op_r[1]), .C(n38666), 
            .D(\BusA[6] ), .Z(Q_v[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_180.init = 16'h6996;
    ORCALUT4 i6048_4_lut_3_lut_rep_429_4_lut (.A(BusB[6]), .B(ALU_Op_r[1]), 
            .C(\BusA[6] ), .D(n38666), .Z(n38663)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6048_4_lut_3_lut_rep_429_4_lut.init = 16'hf660;
    ORCALUT4 i1_2_lut_rep_714 (.A(\BusA[5] ), .B(\BusA[6] ), .Z(n38948)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(295[10:33])
    defparam i1_2_lut_rep_714.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut (.A(\BusA[5] ), .B(\BusA[6] ), .C(Q_7__N_1568), 
            .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(295[10:33])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_716 (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[4] ), 
            .Z(n38950)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i1_2_lut_rep_716.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_634_3_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38868)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i1_2_lut_rep_634_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_632_3_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38866)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i1_2_lut_rep_632_3_lut.init = 16'h0202;
    PFUMX mux_1455_i1 (.BLUT(n2349[0]), .ALUT(n2358[0]), .C0(n38880), 
          .Z(Q_7__N_1612[0]));
    ORCALUT4 BusA_7__I_0_126_3_lut (.A(\BusA[7] ), .B(Q_7__N_1723[0]), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(F_Out_7__N_1648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam BusA_7__I_0_126_3_lut.init = 16'hcaca;
    PFUMX i9363 (.BLUT(F_Out_7__N_1641), .ALUT(n6981[6]), .C0(n41003), 
          .Z(n12313));
    ORCALUT4 and_23_i4_2_lut (.A(\BusA[3] ), .B(BusB[3]), .Z(Q_7__N_1706[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i4_2_lut.init = 16'h8888;
    CCU2B add_5892_add_4_5 (.A0(\BusA[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n31324), .COUT(n31325), .S0(Q_7__N_1723_c[4]), 
          .S1(n166[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5892_add_4_5.INIT0 = 16'haaaa;
    defparam add_5892_add_4_5.INIT1 = 16'haaaa;
    defparam add_5892_add_4_5.INJECT1_0 = "NO";
    defparam add_5892_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i6_4_lut (.A(Q_7__N_1571), .B(n9), .C(n8), .D(n10), .Z(n34982)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(295[10:33])
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i7_4_lut (.A(Q_7__N_1723[0]), .B(n14_c), .C(n10_adj_1746), 
            .D(Q_7__N_1572[3]), .Z(n35222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i7_4_lut.init = 16'hfffe;
    PFUMX i34479 (.BLUT(n39039), .ALUT(n39040), .C0(n41020), .Z(Q_7__N_1604[0]));
    ORCALUT4 mux_1213_i3_4_lut (.A(BusB[2]), .B(n38736), .C(ALU_Op_r[2]), 
            .D(n38867), .Z(n1904)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i3_4_lut.init = 16'hc0ca;
    PFUMX i11167 (.BLUT(n12254), .ALUT(n14303), .C0(n35882), .Z(\Q_7__N_1604[7] ));
    CCU2B add_5892_add_4_3 (.A0(\BusA[2] ), .B0(\BusA[3] ), .C0(n38976), 
          .D0(\F[4] ), .A1(\BusA[3] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n31323), .COUT(n31324), .S0(Q_7__N_1723_c[2]), .S1(Q_7__N_1723_c[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5892_add_4_3.INIT0 = 16'h556a;
    defparam add_5892_add_4_3.INIT1 = 16'haaaa;
    defparam add_5892_add_4_3.INJECT1_0 = "NO";
    defparam add_5892_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i20192_2_lut_rep_718 (.A(n41020), .B(n41022), .Z(n38952)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20192_2_lut_rep_718.init = 16'heeee;
    ORCALUT4 i20201_2_lut_rep_631_3_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38865)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i20201_2_lut_rep_631_3_lut.init = 16'hfefe;
    ORCALUT4 BusB_7__I_0_129_i1_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), 
            .B(\IR[4] ), .C(BusB[0]), .D(\IR[5] ), .Z(Q_7__N_1596[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam BusB_7__I_0_129_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i2_2_lut_rep_635_3_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n38869)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_635_3_lut.init = 16'h1010;
    ORCALUT4 BusB_1__I_0_3_lut_rep_721 (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .Z(n38955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_1__I_0_3_lut_rep_721.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .D(\BusA[7] ), .Z(n10)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i3_2_lut_4_lut.init = 16'hffca;
    ORCALUT4 i2_2_lut_4_lut (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .D(n38956), .Z(n10_adj_1747)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut.init = 16'h35ca;
    ORCALUT4 BusB_2__I_0_3_lut_rep_722 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .Z(n38956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_2__I_0_3_lut_rep_722.init = 16'hcaca;
    ORCALUT4 i2_2_lut_4_lut_adj_181 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .D(\BusA[4] ), .Z(n9)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut_adj_181.init = 16'hffca;
    ORCALUT4 i1_2_lut_4_lut (.A(\BusA[2] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(Q_7__N_1604[0]), .Z(n9_adj_1748)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i1_2_lut_4_lut.init = 16'h35ca;
    ORCALUT4 i2_2_lut_4_lut_adj_182 (.A(\BusA[1] ), .B(\BusA[5] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .D(\BusA[3] ), .Z(n10_adj_1749)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i2_2_lut_4_lut_adj_182.init = 16'h35ca;
    ORCALUT4 i1_2_lut_rep_725 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .Z(n38959)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_725.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6963[6]), 
            .D(n42[5]), .Z(Q_7__N_1714[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hb43c;
    ORCALUT4 i1_2_lut_rep_647_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .Z(n38881)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_647_3_lut.init = 16'h1010;
    ORCALUT4 i6120_2_lut_3_lut (.A(n42[4]), .B(n251), .C(n42[5]), .Z(Q_7__N_1714[6])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6120_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i6132_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6963[6]), 
            .D(n42[5]), .Z(Q_7__N_1714[8])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6132_3_lut_4_lut_4_lut.init = 16'hc8c0;
    ORCALUT4 and_23_i5_2_lut (.A(\BusA[4] ), .B(BusB[4]), .Z(Q_7__N_1706[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i5_2_lut.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_726 (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), .Z(n38960)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_726.init = 16'h8888;
    ORCALUT4 i9371_4_lut (.A(Q_7__N_1604[3]), .B(F_Out_7__N_1639), .C(n41003), 
            .D(n38862), .Z(n12321)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i9371_4_lut.init = 16'hca0a;
    ORCALUT4 i33405_3_lut_rep_625_4_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[1]), .Z(n38859)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i33405_3_lut_rep_625_4_lut_4_lut.init = 16'hddd5;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(n41003), .D(n38965), .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h5fdf;
    ORCALUT4 i33088_3_lut (.A(F_Out_7__N_1666), .B(n12321), .C(ALU_Op_r[3]), 
            .Z(n12322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i33088_3_lut.init = 16'hcaca;
    ORCALUT4 i5_4_lut_then_4_lut (.A(Q_7__N_1604[0]), .B(\BusA[6] ), .C(\BusA[2] ), 
            .D(\BusA[5] ), .Z(n39021)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i5_4_lut_then_4_lut.init = 16'hfffe;
    ORCALUT4 i5_4_lut_else_4_lut (.A(Q_7__N_1604[0]), .B(\BusA[2] ), .C(\BusA[1] ), 
            .D(Q_7__N_1723[0]), .Z(n39020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i5_4_lut_else_4_lut.init = 16'hfffe;
    CCU2B add_5892_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n38976), 
          .D1(\F[4] ), .COUT(n31323), .S1(Q_7__N_1723_c[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5892_add_4_1.INIT0 = 16'h0000;
    defparam add_5892_add_4_1.INIT1 = 16'h556a;
    defparam add_5892_add_4_1.INJECT1_0 = "NO";
    defparam add_5892_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_731 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .Z(n38965)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_731.init = 16'h8888;
    ORCALUT4 i33393_2_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n23643)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i33393_2_lut_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i33423_2_lut_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n35980)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i33423_2_lut_3_lut_3_lut_4_lut.init = 16'h70ff;
    ORCALUT4 i33408_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[3]), .Z(n36003)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i33408_3_lut_4_lut.init = 16'hf8ff;
    ORCALUT4 i33_4_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(n38657), .Z(n17)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+!(D)))) */ ;
    defparam i33_4_lut_4_lut_4_lut.init = 16'h058a;
    ORCALUT4 i2_2_lut_rep_638_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38872)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i2_2_lut_rep_638_3_lut_4_lut.init = 16'h7000;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[3]), 
            .D(ALU_Op_r[2]), .Z(RegWEH_N_888)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i7254_3_lut_rep_570_3_lut_4_lut_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n38804)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i7254_3_lut_rep_570_3_lut_4_lut_3_lut.init = 16'h8181;
    PFUMX i33639 (.BLUT(Q_7__N_1604[5]), .ALUT(n37223), .C0(n38879), .Z(n37224));
    PFUMX mux_1726_i3 (.BLUT(n12323), .ALUT(n12324), .C0(n35980), .Z(\F_Out[2] ));
    L6MUX21 mux_1726_i7 (.D0(n12315), .D1(n12316), .SD(n35980), .Z(\F_Out[6] ));
    PFUMX i9366 (.BLUT(F_Out_7__N_1650), .ALUT(n9477), .C0(n38872), .Z(n12316));
    ORCALUT4 i5958_2_lut_rep_776 (.A(n166[5]), .B(n166[6]), .Z(n40989)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5958_2_lut_rep_776.init = 16'heeee;
    ORCALUT4 i6106_3_lut_4_lut_3_lut_4_lut (.A(n166[5]), .B(n166[6]), .C(cout), 
            .D(n166[7]), .Z(Q_7__N_1723_c[8])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i6106_3_lut_4_lut_3_lut_4_lut.init = 16'h1ef0;
    PFUMX i7255 (.BLUT(n2325[0]), .ALUT(OverFlow_v), .C0(n38804), .Z(F_Out_7__N_1668));
    ORCALUT4 BusA_1__bdd_3_lut (.A(\BusA[1] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\BusA[3] ), .Z(n37519)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_1__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 Q_7__N_1572_3__bdd_4_lut (.A(BusB[3]), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\IR[5] ), .D(\IR[4] ), .Z(n40427)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam Q_7__N_1572_3__bdd_4_lut.init = 16'ha2aa;
    ORCALUT4 Q_7__N_1612_3__bdd_4_lut_35284 (.A(Q_7__N_1612[3]), .B(n23643), 
            .C(Q_7__N_1568), .D(ALU_Op_r[3]), .Z(n40426)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1612_3__bdd_4_lut_35284.init = 16'hc0aa;
    ORCALUT4 n40428_bdd_3_lut (.A(n40428), .B(n40426), .C(n38859), .Z(n40429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40428_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 and_23_i6_2_lut (.A(\BusA[5] ), .B(BusB[5]), .Z(Q_7__N_1706[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i6_2_lut.init = 16'h8888;
    ORCALUT4 BusA_1__bdd_4_lut_34592 (.A(\Set_BusA_To_3__N_1207[0] ), .B(BusB[2]), 
            .C(ALU_Op_r[1]), .D(n38947), .Z(n37518)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam BusA_1__bdd_4_lut_34592.init = 16'hd4c0;
    ORCALUT4 i43_4_lut_4_lut (.A(n38872), .B(n22), .C(n38711), .D(n24589), 
            .Z(n25)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i43_4_lut_4_lut.init = 16'h4f40;
    ORCALUT4 i20_2_lut_rep_741 (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), .Z(n38975)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_741.init = 16'h6666;
    ORCALUT4 i7269_2_lut_rep_645_3_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .Z(n38879)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i7269_2_lut_rep_645_3_lut.init = 16'h0606;
    ORCALUT4 i2_2_lut_rep_652_3_lut_4_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n38886)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_2_lut_rep_652_3_lut_4_lut.init = 16'h6000;
    ORCALUT4 i1459_2_lut_rep_646_3_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .Z(n38880)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1459_2_lut_rep_646_3_lut.init = 16'h6060;
    ORCALUT4 i33245_3_lut_4_lut_4_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(n38674), .D(ALU_Op_r[2]), .Z(F_Out_7__N_1656)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam i33245_3_lut_4_lut_4_lut.init = 16'h193c;
    ORCALUT4 i5953_2_lut_rep_742 (.A(\BusA[1] ), .B(\BusA[2] ), .Z(n38976)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5953_2_lut_rep_742.init = 16'heeee;
    ORCALUT4 i5963_2_lut_rep_653_3_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[3] ), 
            .Z(n38887)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5963_2_lut_rep_653_3_lut.init = 16'he0e0;
    ORCALUT4 i5962_2_lut_3_lut_4_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[4] ), 
            .D(\BusA[3] ), .Z(n10_adj_1750)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i5962_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_2_lut_rep_629_2_lut (.A(ALU_Op_r[1]), .B(BusB[5]), .Z(n38863)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i1_2_lut_rep_629_2_lut.init = 16'h4444;
    ORCALUT4 i14_3_lut_3_lut_3_lut (.A(ALU_Op_r[1]), .B(\BusA[5] ), .C(BusB[5]), 
            .Z(n6_adj_1)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_3_lut.init = 16'h4343;
    ORCALUT4 BusA_3__bdd_3_lut_35207 (.A(\BusA[3] ), .B(\Set_BusA_To_3__N_1207[0] ), 
            .C(\BusA[5] ), .Z(n37522)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_3__bdd_3_lut_35207.init = 16'he2e2;
    ORCALUT4 i40_3_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(n41003), .C(ISet[1]), 
            .D(ISet[0]), .Z(n24)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i40_3_lut_4_lut_4_lut.init = 16'h7774;
    ORCALUT4 i14_3_lut_3_lut_3_lut_adj_183 (.A(ALU_Op_r[1]), .B(\BusA[3] ), 
            .C(BusB[3]), .Z(n6_adj_2)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_3_lut_adj_183.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut (.A(ALU_Op_r[1]), .B(\BusA[2] ), .C(BusB[2]), 
            .Z(n6_adj_3)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut.init = 16'h4343;
    ORCALUT4 i1_2_lut_rep_628_2_lut (.A(ALU_Op_r[1]), .B(BusB[3]), .Z(n38862)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i1_2_lut_rep_628_2_lut.init = 16'h4444;
    ORCALUT4 i14_3_lut_3_lut_adj_184 (.A(ALU_Op_r[1]), .B(\BusA[4] ), .C(BusB[4]), 
            .Z(n6_adj_4)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_184.init = 16'h4343;
    ORCALUT4 i7_3_lut_3_lut (.A(ALU_Op_r[1]), .B(Q_7__N_1723[0]), .C(BusB[0]), 
            .Z(n2358[0])) /* synthesis lut_function=(A (B+(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i7_3_lut_3_lut.init = 16'hbcbc;
    ORCALUT4 i14_3_lut_3_lut_adj_185 (.A(ALU_Op_r[1]), .B(\BusA[1] ), .C(BusB[1]), 
            .Z(n6_adj_5)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_185.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_186 (.A(ALU_Op_r[1]), .B(\BusA[6] ), .C(BusB[6]), 
            .Z(n6_adj_6)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_186.init = 16'h4343;
    ORCALUT4 i20739_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(BusB[7]), 
            .C(n41005), .D(\Set_BusA_To_3__N_1207[0] ), .Z(n6981[6])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i20739_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i6_4_lut_then_4_lut (.A(BusB[6]), .B(\IR[5] ), .C(BusB[7]), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n39028)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_then_4_lut.init = 16'hc088;
    ORCALUT4 i6_4_lut_else_4_lut (.A(BusB[4]), .B(BusB[5]), .C(\IR[5] ), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n39027)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_else_4_lut.init = 16'hc0a0;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_187 (.A(BusB[1]), .B(n38866), .C(n38867), 
            .D(BusB[2]), .Z(n10_adj_1758)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i2_2_lut_3_lut_4_lut_adj_187.init = 16'hf888;
    ORCALUT4 mux_1213_i5_4_lut (.A(BusB[4]), .B(Q_7__N_1572[4]), .C(ALU_Op_r[2]), 
            .D(n38869), .Z(n1902)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i5_4_lut.init = 16'hc0ca;
    PFUMX mux_1455_i8 (.BLUT(n2350), .ALUT(n2358[7]), .C0(n38880), .Z(Q_7__N_1612[7]));
    ORCALUT4 and_23_i7_2_lut (.A(\BusA[6] ), .B(BusB[6]), .Z(Q_7__N_1706[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i7_2_lut.init = 16'h8888;
    ORCALUT4 i9367_4_lut (.A(Q_7__N_1604[5]), .B(F_Out_7__N_1639), .C(n41003), 
            .D(n38863), .Z(n12317)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i9367_4_lut.init = 16'hca0a;
    ORCALUT4 i32168_2_lut_3_lut_4_lut (.A(n38872), .B(ALU_Op_r[3]), .C(n38711), 
            .D(PreserveC_r), .Z(n35676)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i32168_2_lut_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 mux_1213_i6_4_lut (.A(BusB[5]), .B(Q_7__N_1572[5]), .C(ALU_Op_r[2]), 
            .D(n38868), .Z(n1901)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i6_4_lut.init = 16'hc0ca;
    ORCALUT4 i20735_4_lut_4_lut (.A(n38886), .B(\F[1] ), .C(F_Out_7__N_1626), 
            .D(n38887), .Z(n2934[4])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i20735_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 and_23_i8_2_lut (.A(\BusA[7] ), .B(BusB[7]), .Z(\Q_7__N_1706[7] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i8_2_lut.init = 16'h8888;
    ORCALUT4 mux_1451_i8_3_lut (.A(\BusA[7] ), .B(ALU_Op_r[1]), .C(BusB[7]), 
            .Z(n2358[7])) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam mux_1451_i8_3_lut.init = 16'hdada;
    PFUMX mux_1450_i7 (.BLUT(Q_v[6]), .ALUT(Q_7__N_1706[6]), .C0(n38881), 
          .Z(n2351));
    ORCALUT4 mux_1213_i7_4_lut (.A(BusB[6]), .B(Q_7__N_1572[6]), .C(ALU_Op_r[2]), 
            .D(n38870), .Z(n1900)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i7_4_lut.init = 16'hc0ca;
    PFUMX i34471 (.BLUT(n39027), .ALUT(n39028), .C0(\IR[4] ), .Z(n39029));
    ORCALUT4 mux_1726_i1_3_lut (.A(n908), .B(\Save_Mux[0] ), .C(n38688), 
            .Z(\F_Out[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1726_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i33060_1_lut_4_lut (.A(Q_7__N_1571), .B(n14_adj_1759), .C(n10_adj_1747), 
            .D(Q_7__N_1568), .Z(n36369)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i33060_1_lut_4_lut.init = 16'h9669;
    ORCALUT4 i2_4_lut (.A(\BusA[3] ), .B(\F[4] ), .C(\BusA[1] ), .D(\BusA[2] ), 
            .Z(F_Out_7__N_1626)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0444;
    ORCALUT4 mux_1213_i8_4_lut (.A(BusB[7]), .B(Q_7__N_1572[7]), .C(ALU_Op_r[2]), 
            .D(n38861), .Z(n1899)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1213_i8_4_lut.init = 16'hc0ca;
    ORCALUT4 i20245_4_lut (.A(n9_adj_1760), .B(ALU_Op_r[2]), .C(n14_adj_1761), 
            .D(n10_adj_1762), .Z(n2325[0])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i20245_4_lut.init = 16'h4884;
    ORCALUT4 i2_3_lut (.A(ALU_Op_r[2]), .B(\F[0] ), .C(ALU_Op_r[0]), .Z(HalfCarry_v_N_1665)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(111[88:114])
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 i11185_then_1_lut (.A(\BusA[1] ), .Z(n39040)) /* synthesis lut_function=(A) */ ;
    defparam i11185_then_1_lut.init = 16'haaaa;
    ORCALUT4 i11159_3_lut (.A(\BusA[2] ), .B(\BusA[4] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(Q_7__N_1604[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11159_3_lut.init = 16'hcaca;
    PFUMX i33798 (.BLUT(n37522), .ALUT(n37521), .C0(n38879), .Z(n37523));
    PFUMX i33795 (.BLUT(n37519), .ALUT(n37518), .C0(n38879), .Z(n37520));
    ORCALUT4 Q_7__N_1604_7__bdd_3_lut_33703_4_lut (.A(\Set_BusA_To_3__N_1207[0] ), 
            .B(n41005), .C(ALU_Op_r[1]), .D(BusB[7]), .Z(n37336)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1604_7__bdd_3_lut_33703_4_lut.init = 16'hf880;
    ORCALUT4 mux_4810_i3_3_lut (.A(Q_7__N_1723_c[3]), .B(Q_7__N_1714[3]), 
            .C(\F[1] ), .Z(Q_7__N_1572[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i3_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_3__I_0_112_3_lut (.A(BusB[3]), .B(BusB[7]), .C(ALU_Op_r[0]), 
            .Z(Q_7__N_1568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_3__I_0_112_3_lut.init = 16'hcaca;
    PFUMX mux_1450_i6 (.BLUT(Q_v[5]), .ALUT(Q_7__N_1706[5]), .C0(n38881), 
          .Z(n2352));
    ORCALUT4 Q_7__N_1604_0__bdd_3_lut_33632_4_lut (.A(\IR[5] ), .B(n38952), 
            .C(ALU_Op_r[1]), .D(BusB[0]), .Z(n37211)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+(D)))) */ ;
    defparam Q_7__N_1604_0__bdd_3_lut_33632_4_lut.init = 16'hf110;
    ORCALUT4 Q_7__N_1604_5__bdd_3_lut_4_lut (.A(\IR[5] ), .B(n38950), .C(ALU_Op_r[1]), 
            .D(BusB[5]), .Z(n37223)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1604_5__bdd_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 BusA_3__bdd_3_lut_33797_4_lut (.A(\IR[5] ), .B(n38952), .C(ALU_Op_r[1]), 
            .D(BusB[4]), .Z(n37521)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam BusA_3__bdd_3_lut_33797_4_lut.init = 16'hf220;
    PFUMX i35280 (.BLUT(n12391), .ALUT(n40429), .C0(n36003), .Z(\ALU_Q[3] ));
    PFUMX i35278 (.BLUT(n40427), .ALUT(Q_7__N_1572[3]), .C0(ALU_Op_r[2]), 
          .Z(n40428));
    ORCALUT4 i33179_3_lut_4_lut (.A(n38965), .B(n38960), .C(n2934[3]), 
            .D(n12322), .Z(\F_Out[3] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i33179_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 n37950_bdd_3_lut_4_lut (.A(n38965), .B(n38960), .C(n2934[5]), 
            .D(n37950), .Z(n37951)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam n37950_bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i11185_else_1_lut (.A(\BusA[7] ), .B(\IR[5] ), .C(\F[0] ), 
            .D(\IR[4] ), .Z(n39039)) /* synthesis lut_function=(A (B (D)+!B (C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam i11185_else_1_lut.init = 16'hfc22;
    ORCALUT4 i33454_2_lut (.A(\Set_BusA_To_3__N_1207[0] ), .B(\IR[5] ), 
            .Z(n35882)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i33454_2_lut.init = 16'hdddd;
    ORCALUT4 i9311_3_lut (.A(Q_7__N_1723[0]), .B(\F[0] ), .C(\IR[4] ), 
            .Z(n12254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i9311_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4810_i2_3_lut_rep_502 (.A(Q_7__N_1723_c[2]), .B(Q_7__N_1714[2]), 
            .C(\F[1] ), .Z(n38736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i2_3_lut_rep_502.init = 16'hcaca;
    ORCALUT4 F_Out_7__I_159_4_lut_4_lut (.A(Z16_r), .B(Arith16_r), .C(n15909), 
            .D(\F[6] ), .Z(F_Out_7__N_1650)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B !(C))) */ ;
    defparam F_Out_7__I_159_4_lut_4_lut.init = 16'hcf01;
    ORCALUT4 i3_2_lut_4_lut_adj_188 (.A(Q_7__N_1723_c[2]), .B(Q_7__N_1714[2]), 
            .C(\F[1] ), .D(Q_7__N_1723[0]), .Z(n12)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i3_2_lut_4_lut_adj_188.init = 16'h35ca;
    ORCALUT4 Q_7__N_1604_7__bdd_3_lut_33983_4_lut (.A(ALU_Op_r[2]), .B(n38975), 
            .C(n37336), .D(\Q_7__N_1604[7] ), .Z(n37337)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Q_7__N_1604_7__bdd_3_lut_33983_4_lut.init = 16'hfb40;
    ORCALUT4 Q_7__N_1604_0__bdd_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), 
            .C(n37211), .D(Q_7__N_1604[0]), .Z(n37212)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Q_7__N_1604_0__bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i6_4_lut_adj_189 (.A(Q_7__N_1604[6]), .B(\BusA[4] ), .C(Q_7__N_1604[1]), 
            .D(\Q_7__N_1604[7] ), .Z(n14_adj_1763)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i6_4_lut_adj_189.init = 16'h6996;
    ORCALUT4 i9423_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n1896), 
            .D(Q_7__N_1604[1]), .Z(n12395)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9423_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9419_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n38975), .C(n1894), 
            .D(Q_7__N_1604[3]), .Z(n12391)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9419_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i2_2_lut_4_lut_adj_190 (.A(Q_7__N_1723_c[2]), .B(Q_7__N_1714[2]), 
            .C(\F[1] ), .D(Q_7__N_1572[1]), .Z(n10_adj_1746)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i2_2_lut_4_lut_adj_190.init = 16'hffca;
    ORCALUT4 i11155_3_lut (.A(Q_7__N_1723[0]), .B(\BusA[2] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(Q_7__N_1604[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11155_3_lut.init = 16'hcaca;
    CCU2B add_5172_add_4_7 (.A0(\BusA[6] ), .B0(\BusA[3] ), .C0(n38976), 
          .D0(\F[4] ), .A1(\BusA[7] ), .B1(\BusA[3] ), .C1(n38976), 
          .D1(\F[4] ), .CIN(n31359), .S0(n42[5]), .S1(n6963[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5172_add_4_7.INIT0 = 16'h556a;
    defparam add_5172_add_4_7.INIT1 = 16'h556a;
    defparam add_5172_add_4_7.INJECT1_0 = "NO";
    defparam add_5172_add_4_7.INJECT1_1 = "NO";
    CCU2B add_5172_add_4_5 (.A0(\BusA[4] ), .B0(\BusA[3] ), .C0(n38976), 
          .D0(\F[4] ), .A1(\BusA[5] ), .B1(\BusA[3] ), .C1(n38976), 
          .D1(\F[4] ), .CIN(n31358), .COUT(n31359), .S0(Q_7__N_1714[4]), 
          .S1(n42[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5172_add_4_5.INIT0 = 16'h556a;
    defparam add_5172_add_4_5.INIT1 = 16'h556a;
    defparam add_5172_add_4_5.INJECT1_0 = "NO";
    defparam add_5172_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 mux_4769_i6_3_lut (.A(n15905), .B(\F[6] ), .C(ALU_Op_r[1]), 
            .Z(n6981[5])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_4769_i6_3_lut.init = 16'hc5c5;
    CCU2B add_5172_add_4_3 (.A0(\BusA[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\F[4] ), .B1(n38887), .C1(\BusA[3] ), .D1(VCC_net), 
          .CIN(n31357), .COUT(n31358), .S0(Q_7__N_1714[2]), .S1(Q_7__N_1714[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5172_add_4_3.INIT0 = 16'haaaa;
    defparam add_5172_add_4_3.INIT1 = 16'h1e1e;
    defparam add_5172_add_4_3.INJECT1_0 = "NO";
    defparam add_5172_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 mux_1450_i1_4_lut (.A(Q_7__N_1723[0]), .B(BusB[0]), .C(n38881), 
            .D(HalfCarry_v_N_1665), .Z(n2349[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam mux_1450_i1_4_lut.init = 16'h8986;
    ORCALUT4 i7_4_lut_adj_191 (.A(Q_7__N_1596[0]), .B(n39029), .C(n10_adj_1758), 
            .D(n38795), .Z(n15905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i7_4_lut_adj_191.init = 16'hfffe;
    ORCALUT4 i7_4_lut_adj_192 (.A(Q_7__N_1572[7]), .B(Q_7__N_1572[3]), .C(Q_7__N_1572[1]), 
            .D(n10_adj_1764), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i7_4_lut_adj_192.init = 16'h6996;
    ORCALUT4 i1_2_lut (.A(Q_7__N_1572[6]), .B(Q_7__N_1572[5]), .Z(n10_adj_1764)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i1_2_lut.init = 16'h6666;
    ORCALUT4 mux_4810_i1_3_lut (.A(Q_7__N_1723_c[1]), .B(Q_7__N_1714[1]), 
            .C(\F[1] ), .Z(Q_7__N_1572[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i1_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_0__I_0_3_lut (.A(BusB[0]), .B(BusB[4]), .C(ALU_Op_r[0]), 
            .Z(Q_7__N_1571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_0__I_0_3_lut.init = 16'hcaca;
    CCU2B add_5172_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n38976), 
          .D1(\F[4] ), .COUT(n31357), .S1(Q_7__N_1714[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5172_add_4_1.INIT0 = 16'h0000;
    defparam add_5172_add_4_1.INIT1 = 16'h556a;
    defparam add_5172_add_4_1.INJECT1_0 = "NO";
    defparam add_5172_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i6_4_lut_adj_193 (.A(\BusA[7] ), .B(\BusA[4] ), .C(\BusA[5] ), 
            .D(\BusA[6] ), .Z(n14_adj_1759)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i6_4_lut_adj_193.init = 16'h6996;
    ORCALUT4 mux_1715_i8_3_lut_4_lut (.A(n38975), .B(n38960), .C(\BusA[7] ), 
            .D(Q_7__N_1572[7]), .Z(n2935)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1715_i8_3_lut_4_lut.init = 16'hf780;
    PFUMX i34467 (.BLUT(n39020), .ALUT(n39021), .C0(\Set_BusA_To_3__N_1207[0] ), 
          .Z(n39022));
    ORCALUT4 i7265_3_lut_3_lut_4_lut (.A(n38975), .B(n38960), .C(\F[0] ), 
            .D(Q_7__N_1572[8]), .Z(n9949)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i7265_3_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i33316_3_lut_4_lut (.A(n38975), .B(n38960), .C(n34982), .D(n35222), 
            .Z(n9477)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam i33316_3_lut_4_lut.init = 16'h087f;
    ORCALUT4 mux_1715_i4_3_lut_4_lut (.A(n38975), .B(n38960), .C(Q_7__N_1568), 
            .D(Q_7__N_1572[3]), .Z(n2934[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1715_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_1715_i6_3_lut_4_lut (.A(n38975), .B(n38960), .C(\BusA[5] ), 
            .D(Q_7__N_1572[5]), .Z(n2934[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1715_i6_3_lut_4_lut.init = 16'hf780;
    PFUMX mux_1450_i5 (.BLUT(Q_v[4]), .ALUT(Q_7__N_1706[4]), .C0(n38881), 
          .Z(n2353));
    ORCALUT4 i6_4_lut_adj_194 (.A(Q_7__N_1572[7]), .B(Q_7__N_1572[4]), .C(Q_7__N_1572[5]), 
            .D(Q_7__N_1572[6]), .Z(n14_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i6_4_lut_adj_194.init = 16'hfffe;
    ORCALUT4 i7_4_lut_adj_195 (.A(Q_7__N_1612[0]), .B(n14_adj_1765), .C(n10_adj_1766), 
            .D(Q_7__N_1612[3]), .Z(n15909)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i7_4_lut_adj_195.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_196 (.A(Q_7__N_1612[7]), .B(Q_7__N_1612[4]), .C(Q_7__N_1612[5]), 
            .D(Q_7__N_1612[6]), .Z(n14_adj_1765)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i6_4_lut_adj_196.init = 16'hfffe;
    ORCALUT4 i2_2_lut (.A(Q_7__N_1612[1]), .B(Q_7__N_1612[2]), .Z(n10_adj_1766)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_197 (.A(Q_7__N_1612[0]), .B(Q_7__N_1612[3]), .Z(n9_adj_1760)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i1_2_lut_adj_197.init = 16'h6666;
    ORCALUT4 i6_4_lut_adj_198 (.A(Q_7__N_1612[7]), .B(Q_7__N_1612[4]), .C(Q_7__N_1612[5]), 
            .D(Q_7__N_1612[6]), .Z(n14_adj_1761)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i6_4_lut_adj_198.init = 16'h6996;
    ORCALUT4 i2_2_lut_adj_199 (.A(Q_7__N_1612[1]), .B(Q_7__N_1612[2]), .Z(n10_adj_1762)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i2_2_lut_adj_199.init = 16'h6666;
    PFUMX mux_1715_i3 (.BLUT(n36368), .ALUT(n36369), .C0(n38886), .Z(n9479));
    PFUMX mux_1450_i4 (.BLUT(Q_v[3]), .ALUT(Q_7__N_1706[3]), .C0(n38881), 
          .Z(n2354));
    ORCALUT4 i6_4_lut_adj_200 (.A(\Q_7__N_1604[7] ), .B(\BusA[3] ), .C(\BusA[4] ), 
            .D(Q_7__N_1604[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i6_4_lut_adj_200.init = 16'hfffe;
    PFUMX i32 (.BLUT(F_Out_7__N_1648), .ALUT(n9949), .C0(n38872), .Z(n32178));
    PFUMX i10728 (.BLUT(n12395), .ALUT(n13809), .C0(n36003), .Z(\ALU_Q[1] ));
    PFUMX mux_1450_i3 (.BLUT(Q_v[2]), .ALUT(Q_7__N_1706[2]), .C0(n38881), 
          .Z(n2355));
    ORCALUT4 i69_4_lut (.A(n10_adj_1750), .B(\F[0] ), .C(\BusA[7] ), .D(n38948), 
            .Z(n251)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[7:41])
    defparam i69_4_lut.init = 16'hfcec;
    PFUMX mux_4810_i8 (.BLUT(Q_7__N_1723_c[8]), .ALUT(Q_7__N_1714[8]), .C0(\F[1] ), 
          .Z(Q_7__N_1572[8]));
    ORCALUT4 i11163_3_lut (.A(\BusA[4] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(Q_7__N_1604[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11163_3_lut.init = 16'hcaca;
    ORCALUT4 i20165_4_lut (.A(n9_adj_1748), .B(n38931), .C(n14_adj_1763), 
            .D(n10_adj_1749), .Z(F_Out_7__N_1645)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(426[6] 431[11])
    defparam i20165_4_lut.init = 16'h4884;
    PFUMX mux_4810_i6 (.BLUT(Q_7__N_1723_c[6]), .ALUT(Q_7__N_1714[6]), .C0(\F[1] ), 
          .Z(Q_7__N_1572[6]));
    PFUMX mux_4810_i7 (.BLUT(Q_7__N_1723_c[7]), .ALUT(Q_7__N_1714[7]), .C0(\F[1] ), 
          .Z(Q_7__N_1572[7]));
    PFUMX mux_4810_i5 (.BLUT(Q_7__N_1723_c[5]), .ALUT(Q_7__N_1714[5]), .C0(\F[1] ), 
          .Z(Q_7__N_1572[5]));
    ORCALUT4 n191_bdd_3_lut_34062 (.A(\BusA[5] ), .B(\BusA[7] ), .C(\Set_BusA_To_3__N_1207[0] ), 
            .Z(Q_7__N_1604[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n191_bdd_3_lut_34062.init = 16'hcaca;
    ORCALUT4 mux_4810_i4_3_lut (.A(Q_7__N_1723_c[4]), .B(Q_7__N_1714[4]), 
            .C(\F[1] ), .Z(Q_7__N_1572[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i4_3_lut.init = 16'hcaca;
    ORCALUT4 n191_bdd_4_lut_34061 (.A(n41005), .B(BusB[6]), .C(ALU_Op_r[1]), 
            .D(\Set_BusA_To_3__N_1207[0] ), .Z(n37274)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A (B (C))) */ ;
    defparam n191_bdd_4_lut_34061.init = 16'hc0e8;
    PFUMX mux_1450_i2 (.BLUT(Q_v[1]), .ALUT(Q_7__N_1706[1]), .C0(n38881), 
          .Z(n2356));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module boot_rom
//

module boot_rom (sram_addr_2, sram_addr_3, sram_addr_1, n7, sram_addr_4, 
            n40407, n38995, n34159, n34160, sram_addr_0, n38735, 
            n31, n24432, n16952, n24815, n16922, n34887) /* synthesis syn_module_defined=1 */ ;
    input sram_addr_2;
    input sram_addr_3;
    input sram_addr_1;
    output n7;
    input sram_addr_4;
    output n40407;
    output n38995;
    input n34159;
    output n34160;
    input sram_addr_0;
    input n38735;
    output n31;
    input n24432;
    input n16952;
    output n24815;
    input n16922;
    output n34887;
    
    
    wire n27;
    
    ORCALUT4 i13_4_lut_3_lut (.A(sram_addr_2), .B(sram_addr_3), .C(sram_addr_1), 
            .Z(n7)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam i13_4_lut_3_lut.init = 16'h2424;
    ORCALUT4 sram_addr_3_bdd_4_lut (.A(sram_addr_3), .B(sram_addr_1), .C(sram_addr_2), 
            .D(sram_addr_4), .Z(n40407)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+!(C (D))))) */ ;
    defparam sram_addr_3_bdd_4_lut.init = 16'h1088;
    ORCALUT4 i1_2_lut_rep_761 (.A(sram_addr_1), .B(sram_addr_2), .Z(n38995)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(8[9:17])
    defparam i1_2_lut_rep_761.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut (.A(sram_addr_1), .B(sram_addr_2), .C(n34159), 
            .Z(n34160)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(8[9:17])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i51_4_lut_4_lut (.A(sram_addr_1), .B(sram_addr_2), .C(sram_addr_0), 
            .D(sram_addr_4), .Z(n27)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(8[9:17])
    defparam i51_4_lut_4_lut.init = 16'h1a10;
    ORCALUT4 i1_4_lut_3_lut (.A(sram_addr_1), .B(sram_addr_3), .C(n38735), 
            .Z(n31)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(8[9:17])
    defparam i1_4_lut_3_lut.init = 16'h0707;
    ORCALUT4 i2_4_lut (.A(sram_addr_1), .B(n24432), .C(n34159), .D(n16952), 
            .Z(n24815)) /* synthesis lut_function=(A (B (C))+!A (B (D))) */ ;
    defparam i2_4_lut.init = 16'hc480;
    ORCALUT4 i2_3_lut (.A(n16922), .B(n27), .C(sram_addr_3), .Z(n34887)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (clk_op, clk_op_enable_324, n41033, uart_tx_busy, VCC_net, 
            n21023, n597, n38, \sr[7] , n38771, \cpu_dout[3] , clk_op_enable_307, 
            n41034, uart_tx_c, n38844, clk_op_enable_322, led_c_6, 
            n18293, n18291, n18289, n18285, \cpu_dout[5] , \cpu_dout[6] , 
            n18283, \cpu_dout[2] , \cpu_dout[1] , \cpu_dout[0] , \cpu_dout[4] , 
            n18281, n18279, n18277, n18275, n18273, n18271, n18267, 
            n18265, n18263, n18167, n18261) /* synthesis syn_module_defined=1 */ ;
    input clk_op;
    input clk_op_enable_324;
    input n41033;
    output uart_tx_busy;
    input VCC_net;
    input n21023;
    output [15:0]n597;
    output n38;
    output \sr[7] ;
    input n38771;
    input \cpu_dout[3] ;
    input clk_op_enable_307;
    input n41034;
    output uart_tx_c;
    output n38844;
    input clk_op_enable_322;
    input led_c_6;
    input n18293;
    input n18291;
    input n18289;
    input n18285;
    input \cpu_dout[5] ;
    input \cpu_dout[6] ;
    input n18283;
    input \cpu_dout[2] ;
    input \cpu_dout[1] ;
    input \cpu_dout[0] ;
    input \cpu_dout[4] ;
    input n18281;
    input n18279;
    input n18277;
    input n18275;
    input n18273;
    input n18271;
    input n18267;
    input n18265;
    input n18263;
    input n18167;
    input n18261;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    
    wire n18257, n18255, tx_busy_N_132, n31302;
    wire [8:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(14[14:15])
    
    wire GND_net;
    wire [8:0]n52;
    
    wire n31301, n31300, n31299, n25_adj_1744, n18017, n33718, n38987, 
        n34243, n18269, n18322, n18320, n12, n18318, n18316, n18314, 
        n18312, n18310, n18308, clk_op_enable_222, n18305, n12_adj_1745, 
        n18295, n18287, n18156, n18152, n18259;
    
    FD1P3DX sr_i5 (.D(n18257), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41033), 
            .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i5.GSR = "ENABLED";
    FD1P3DX sr_i6 (.D(n18255), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41033), 
            .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i6.GSR = "ENABLED";
    FD1S3DX tx_busy_34 (.D(tx_busy_N_132), .CK(clk_op), .CD(n41033), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam tx_busy_34.GSR = "ENABLED";
    CCU2B add_48_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31302), 
          .S0(n52[7]), .S1(n52[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_9.INIT0 = 16'haaaa;
    defparam add_48_add_4_9.INIT1 = 16'haaaa;
    defparam add_48_add_4_9.INJECT1_0 = "NO";
    defparam add_48_add_4_9.INJECT1_1 = "NO";
    CCU2B add_48_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31301), 
          .COUT(n31302), .S0(n52[5]), .S1(n52[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_7.INIT0 = 16'haaaa;
    defparam add_48_add_4_7.INIT1 = 16'haaaa;
    defparam add_48_add_4_7.INJECT1_0 = "NO";
    defparam add_48_add_4_7.INJECT1_1 = "NO";
    CCU2B add_48_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31300), 
          .COUT(n31301), .S0(n52[3]), .S1(n52[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_5.INIT0 = 16'haaaa;
    defparam add_48_add_4_5.INIT1 = 16'haaaa;
    defparam add_48_add_4_5.INJECT1_0 = "NO";
    defparam add_48_add_4_5.INJECT1_1 = "NO";
    CCU2B add_48_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n31299), 
          .COUT(n31300), .S0(n52[1]), .S1(n52[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_3.INIT0 = 16'haaaa;
    defparam add_48_add_4_3.INIT1 = 16'haaaa;
    defparam add_48_add_4_3.INJECT1_0 = "NO";
    defparam add_48_add_4_3.INJECT1_1 = "NO";
    PFUMX i14 (.BLUT(n21023), .ALUT(n25_adj_1744), .C0(uart_tx_busy), 
          .Z(n18017));
    ORCALUT4 i1_4_lut (.A(n33718), .B(n38987), .C(n34243), .D(n597[8]), 
            .Z(n38)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    FD1S3DX sr_i7 (.D(n18017), .CK(clk_op), .CD(n41033), .Q(\sr[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i7.GSR = "ENABLED";
    ORCALUT4 i14769_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[3] ), 
            .D(sr[4]), .Z(n18269)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14769_3_lut_4_lut.init = 16'hfd20;
    FD1P3DX k__i1 (.D(n18322), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41033), 
            .Q(k[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i1.GSR = "ENABLED";
    FD1P3DX k__i2 (.D(n18320), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41033), 
            .Q(k[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i2.GSR = "ENABLED";
    ORCALUT4 i6_4_lut (.A(n597[15]), .B(n12), .C(n597[11]), .D(n597[9]), 
            .Z(n34243)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    FD1P3DX k__i3 (.D(n18318), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41034), 
            .Q(k[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i3.GSR = "ENABLED";
    FD1P3DX k__i4 (.D(n18316), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41034), 
            .Q(k[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i4.GSR = "ENABLED";
    FD1P3DX k__i5 (.D(n18314), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41034), 
            .Q(k[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i5.GSR = "ENABLED";
    FD1P3DX k__i6 (.D(n18312), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41034), 
            .Q(k[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i6.GSR = "ENABLED";
    FD1P3DX k__i7 (.D(n18310), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41034), 
            .Q(k[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i7.GSR = "ENABLED";
    FD1P3DX k__i8 (.D(n18308), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41033), 
            .Q(k[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i8.GSR = "ENABLED";
    FD1P3BX txd_36 (.D(n18305), .SP(clk_op_enable_222), .CK(clk_op), .PD(n41034), 
            .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam txd_36.GSR = "ENABLED";
    ORCALUT4 i5_4_lut (.A(n597[14]), .B(n597[10]), .C(n597[13]), .D(n597[12]), 
            .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_165 (.A(k[3]), .B(n12_adj_1745), .C(k[1]), .D(k[0]), 
            .Z(n33718)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut_adj_165.init = 16'hfffd;
    ORCALUT4 i30_2_lut_rep_753 (.A(k[4]), .B(k[7]), .Z(n38987)) /* synthesis lut_function=(A (B)) */ ;
    defparam i30_2_lut_rep_753.init = 16'h8888;
    ORCALUT4 i5_4_lut_adj_166 (.A(k[5]), .B(k[8]), .C(k[6]), .D(k[2]), 
            .Z(n12_adj_1745)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i5_4_lut_adj_166.init = 16'hffef;
    ORCALUT4 i1_2_lut_rep_610_3_lut (.A(k[4]), .B(k[7]), .C(n33718), .Z(n38844)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_610_3_lut.init = 16'hf7f7;
    FD1P3DX sr_i1 (.D(n18295), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41033), 
            .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i1.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i1 (.D(n18293), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i1.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i2 (.D(n18291), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(n41033), .Q(n597[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i2.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i3 (.D(n18289), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(n41033), .Q(n597[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i3.GSR = "ENABLED";
    FD1P3DX sr_i2 (.D(n18287), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41034), 
            .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i2.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i4 (.D(n18285), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i4.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(n52[5]), 
            .D(n38844), .Z(n18314)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[1]), .D(n38844), .Z(n18322)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'hd000;
    ORCALUT4 i14757_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[5] ), 
            .D(sr[6]), .Z(n18257)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14757_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i20319_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\sr[7] ), 
            .D(\cpu_dout[6] ), .Z(n18255)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i20319_3_lut_4_lut.init = 16'hf2d0;
    FD1P3DX bitcnt_FSM_i5 (.D(n18283), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i5.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[2]), .D(n38844), .Z(n18320)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'hd000;
    ORCALUT4 i1_4_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(n34243), 
            .D(n38844), .Z(tx_busy_N_132)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hee2e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[6]), .D(n38844), .Z(n18312)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'hd000;
    ORCALUT4 i14787_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[2] ), 
            .D(sr[3]), .Z(n18287)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14787_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[0]), .D(n38844), .Z(n18156)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'hd000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[3]), .D(n38844), .Z(n18318)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'hd000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[8]), .D(n38844), .Z(n18308)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hd000;
    ORCALUT4 i14795_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[1] ), 
            .D(sr[2]), .Z(n18295)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14795_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[7]), .D(n38844), .Z(n18310)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'hd000;
    ORCALUT4 i20514_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(sr[0]), 
            .D(n597[8]), .Z(n18305)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;
    defparam i20514_3_lut_4_lut.init = 16'hddd0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_174 (.A(n38771), .B(uart_tx_busy), 
            .C(n52[4]), .D(n38844), .Z(n18316)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_174.init = 16'hd000;
    ORCALUT4 i14652_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[0] ), 
            .D(sr[1]), .Z(n18152)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14652_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i14759_3_lut_4_lut (.A(n38771), .B(uart_tx_busy), .C(\cpu_dout[4] ), 
            .D(sr[5]), .Z(n18259)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14759_3_lut_4_lut.init = 16'hfd20;
    FD1P3DX bitcnt_FSM_i6 (.D(n18281), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(n41033), .Q(n597[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i6.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i7 (.D(n18279), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i7.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i8 (.D(n18277), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i8.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i9 (.D(n18275), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i9.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i10 (.D(n18273), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i10.GSR = "ENABLED";
    FD1P3DX k__i0 (.D(n18156), .SP(clk_op_enable_307), .CK(clk_op), .CD(n41033), 
            .Q(k[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i0.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(uart_tx_busy), .B(n38844), .C(n34243), 
            .D(n38771), .Z(clk_op_enable_222)) /* synthesis lut_function=(!(A (B+(C))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(26[11:26])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5702;
    FD1P3DX bitcnt_FSM_i11 (.D(n18271), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(n41033), .Q(n597[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i11.GSR = "ENABLED";
    CCU2B add_48_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n31299), 
          .S1(n52[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_1.INIT0 = 16'h0000;
    defparam add_48_add_4_1.INIT1 = 16'h555a;
    defparam add_48_add_4_1.INJECT1_0 = "NO";
    defparam add_48_add_4_1.INJECT1_1 = "NO";
    FD1P3DX sr_i3 (.D(n18269), .SP(clk_op_enable_324), .CK(clk_op), .CD(led_c_6), 
            .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i3.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i12 (.D(n18267), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i12.GSR = "ENABLED";
    ORCALUT4 i1_2_lut (.A(n38), .B(\sr[7] ), .Z(n25_adj_1744)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3DX bitcnt_FSM_i13 (.D(n18265), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i13.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i14 (.D(n18263), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(led_c_6), .Q(n597[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i14.GSR = "ENABLED";
    FD1P3BX bitcnt_FSM_i0 (.D(n18167), .SP(clk_op_enable_322), .CK(clk_op), 
            .PD(led_c_6), .Q(n597[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i0.GSR = "ENABLED";
    FD1P3DX sr_i0 (.D(n18152), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41034), 
            .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i0.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i15 (.D(n18261), .SP(clk_op_enable_322), .CK(clk_op), 
            .CD(n41033), .Q(n597[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i15.GSR = "ENABLED";
    FD1P3DX sr_i4 (.D(n18259), .SP(clk_op_enable_324), .CK(clk_op), .CD(n41033), 
            .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i4.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 5.7 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -arch mg5a00 -n pmi_pll0o500X125252550d29c740 -bb -bus_exp 7 -type pll -fin 50 -fclkop 25 -fclkok 12.500000 -fb_mode CLKOP -phaseadj 0 -duty 8.00000 -pmi -lang verilog  */
/* Sun Nov 15 20:10:38 2026 */


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
