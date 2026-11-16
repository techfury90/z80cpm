// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2005 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
//
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A.
//
//                     TEL: 1-800-Lattice  (USA and Canada)
//                          1-408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// Simulation Library File for ECP2
//
// fpga\verilog\pkg\versclibs\data\ecp2\SBRAMB.v 1.4 23-AUG-2010 12:16:21 IALMOHAN
//
`timescale 1ns / 1ps
module SBRAMB (DIA0, DIA1, DIA2, DIA3, DIA4, DIA5, DIA6, DIA7, DIA8,
         DIA9, DIA10, DIA11, DIA12, DIA13, DIA14, DIA15, DIA16, DIA17,
         ADA0, ADA1, ADA2, ADA3, ADA4, ADA5, ADA6, ADA7, ADA8,
         ADA9,  ADA10,  ADA11, ADA12, ADA13,
         CEA, CLKA, WEA, CSA0, CSA1, CSA2, RSTA,
         DIB0, DIB1, DIB2, DIB3, DIB4, DIB5, DIB6, DIB7, DIB8,
         DIB9, DIB10, DIB11, DIB12, DIB13, DIB14, DIB15, DIB16, DIB17,
         ADB0, ADB1, ADB2, ADB3, ADB4, ADB5, ADB6, ADB7, ADB8,
         ADB9,  ADB10,  ADB11, ADB12, ADB13,
         CEB, CLKB, WEB, CSB0, CSB1, CSB2, RSTB,
         DOA0, DOA1, DOA2, DOA3, DOA4, DOA5, DOA6, DOA7, DOA8,
         DOA9, DOA10, DOA11, DOA12, DOA13, DOA14, DOA15, DOA16, DOA17,
         DOB0, DOB1, DOB2, DOB3, DOB4, DOB5, DOB6, DOB7, DOB8,
         DOB9, DOB10, DOB11, DOB12, DOB13, DOB14, DOB15, DOB16, DOB17);
   parameter  DATA_WIDTH_A = 18;            //1, 2, 4, 9, 18, 36
   parameter  DATA_WIDTH_B = 18;            //1, 2, 4, 9, 18, 36
   parameter  REGMODE_A = "NOREG";          // "NOREG", "OUTREG"
   parameter  REGMODE_B = "NOREG";          // "NOREG", "OUTREG"
   parameter  RESETMODE = "SYNC";          // "ASYNC", "SYNC"
   parameter  CSDECODE_A = 3'b000;          // 3'b000, 3'b001, 3'b010.......3'b111
   parameter  CSDECODE_B = 3'b000;          // 3'b000, 3'b001, 3'b010.......3'b111
   parameter  WRITEMODE_A = "NORMAL";       // "NORMAL", "WRITETHROUGH"
   parameter  WRITEMODE_B = "NORMAL";       // "NORMAL", "WRITETHROUGH"
   parameter  GSR = "DISABLED";             //

 
parameter INITVAL_00 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_01 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_02 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_03 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_04 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_05 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_06 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_07 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_08 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_09 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_0F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_10 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_11 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_12 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_13 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_14 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_15 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_16 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_17 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_18 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_19 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_1F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_20 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_21 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_22 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_23 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_24 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_25 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_26 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_27 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_28 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_29 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_2F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_30 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_31 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_32 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_33 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_34 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_35 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_36 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_37 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_38 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_39 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter INITVAL_3F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;

input    DIA0, DIA1, DIA2, DIA3, DIA4, DIA5, DIA6, DIA7, DIA8,
         DIA9, DIA10, DIA11, DIA12, DIA13, DIA14, DIA15, DIA16, DIA17,
         ADA0, ADA1, ADA2, ADA3, ADA4, ADA5, ADA6, ADA7, ADA8,
         ADA9,  ADA10,  ADA11, ADA12, ADA13,
         CEA, CLKA, WEA, CSA0, CSA1, CSA2, RSTA,
         DIB0, DIB1, DIB2, DIB3, DIB4, DIB5, DIB6, DIB7, DIB8,
         DIB9, DIB10, DIB11, DIB12, DIB13, DIB14, DIB15, DIB16, DIB17,
         ADB0, ADB1, ADB2, ADB3, ADB4, ADB5, ADB6, ADB7, ADB8,
         ADB9,  ADB10,  ADB11, ADB12, ADB13,
         CEB, CLKB, WEB, CSB0, CSB1, CSB2, RSTB;
output   DOA0, DOA1, DOA2, DOA3, DOA4, DOA5, DOA6, DOA7, DOA8,
         DOA9, DOA10, DOA11, DOA12, DOA13, DOA14, DOA15, DOA16, DOA17,
         DOB0, DOB1, DOB2, DOB3, DOB4, DOB5, DOB6, DOB7, DOB8,
         DOB9, DOB10, DOB11, DOB12, DOB13, DOB14, DOB15, DOB16, DOB17;

   parameter  XON = 1'b0;
   parameter  CLKA_NEGEDGE = 1'b0;
   parameter  CLKB_NEGEDGE = 1'b0;
   parameter  CHECK_DIA0 = 1'b0;
   parameter  CHECK_DIA1 = 1'b0;
   parameter  CHECK_DIA2 = 1'b0;
   parameter  CHECK_DIA3 = 1'b0;
   parameter  CHECK_DIA4 = 1'b0;
   parameter  CHECK_DIA5 = 1'b0;
   parameter  CHECK_DIA6 = 1'b0;
   parameter  CHECK_DIA7 = 1'b0;
   parameter  CHECK_DIA8 = 1'b0;
   parameter  CHECK_DIA9 = 1'b0;
   parameter  CHECK_DIA10 = 1'b0;
   parameter  CHECK_DIA11 = 1'b0;
   parameter  CHECK_DIA12 = 1'b0;
   parameter  CHECK_DIA13 = 1'b0;
   parameter  CHECK_DIA14 = 1'b0;
   parameter  CHECK_DIA15 = 1'b0;
   parameter  CHECK_DIA16 = 1'b0;
   parameter  CHECK_DIA17 = 1'b0;
   parameter  CHECK_ADA0 = 1'b0;
   parameter  CHECK_ADA1 = 1'b0;
   parameter  CHECK_ADA2 = 1'b0;
   parameter  CHECK_ADA3 = 1'b0;
   parameter  CHECK_ADA4 = 1'b0;
   parameter  CHECK_ADA5 = 1'b0;
   parameter  CHECK_ADA6 = 1'b0;
   parameter  CHECK_ADA7 = 1'b0;
   parameter  CHECK_ADA8 = 1'b0;
   parameter  CHECK_ADA9 = 1'b0;
   parameter  CHECK_ADA10 = 1'b0;
   parameter  CHECK_ADA11 = 1'b0;
   parameter  CHECK_ADA12 = 1'b0;
   parameter  CHECK_ADA13 = 1'b0;
   parameter  CHECK_CEA = 1'b0;
   parameter  CHECK_WEA = 1'b0;
   parameter  CHECK_CSA0 = 1'b0;
   parameter  CHECK_CSA1 = 1'b0;
   parameter  CHECK_CSA2 = 1'b0;
   parameter  CHECK_RSTA = 1'b0;

   parameter  CHECK_DIB0 = 1'b0;
   parameter  CHECK_DIB1 = 1'b0;
   parameter  CHECK_DIB2 = 1'b0;
   parameter  CHECK_DIB3 = 1'b0;
   parameter  CHECK_DIB4 = 1'b0;
   parameter  CHECK_DIB5 = 1'b0;
   parameter  CHECK_DIB6 = 1'b0;
   parameter  CHECK_DIB7 = 1'b0;
   parameter  CHECK_DIB8 = 1'b0;
   parameter  CHECK_DIB9 = 1'b0;
   parameter  CHECK_DIB10 = 1'b0;
   parameter  CHECK_DIB11 = 1'b0;
   parameter  CHECK_DIB12 = 1'b0;
   parameter  CHECK_DIB13 = 1'b0;
   parameter  CHECK_DIB14 = 1'b0;
   parameter  CHECK_DIB15 = 1'b0;
   parameter  CHECK_DIB16 = 1'b0;
   parameter  CHECK_DIB17 = 1'b0;
   parameter  CHECK_ADB0 = 1'b0;
   parameter  CHECK_ADB1 = 1'b0;
   parameter  CHECK_ADB2 = 1'b0;
   parameter  CHECK_ADB3 = 1'b0;
   parameter  CHECK_ADB4 = 1'b0;
   parameter  CHECK_ADB5 = 1'b0;
   parameter  CHECK_ADB6 = 1'b0;
   parameter  CHECK_ADB7 = 1'b0;
   parameter  CHECK_ADB8 = 1'b0;
   parameter  CHECK_ADB9 = 1'b0;
   parameter  CHECK_ADB10 = 1'b0;
   parameter  CHECK_ADB11 = 1'b0;
   parameter  CHECK_ADB12 = 1'b0;
   parameter  CHECK_ADB13 = 1'b0;
   parameter  CHECK_CEB = 1'b0;
   parameter  CHECK_WEB = 1'b0;
   parameter  CHECK_CSB0 = 1'b0;
   parameter  CHECK_CSB1 = 1'b0;
   parameter  CHECK_CSB2 = 1'b0;
   parameter  CHECK_RSTB = 1'b0;

   wire check_dia0, check_dia1, check_dia2, check_dia3, check_dia4, check_dia5, check_dia6, check_dia7, check_dia8;
   wire check_dia9, check_dia10, check_dia11, check_dia12, check_dia13, check_dia14, check_dia15;
   wire check_dia16, check_dia17;
   wire check_ada0, check_ada1, check_ada2, check_ada3, check_ada4, check_ada5, check_ada6, check_ada7;
   wire check_ada8, check_ada9, check_ada10, check_ada11, check_ada12, check_ada13;
   wire check_cea, check_wea, check_csa0, check_csa1, check_csa2, check_rsta; 
   wire check_dib0, check_dib1, check_dib2, check_dib3, check_dib4, check_dib5, check_dib6, check_dib7, check_dib8;
   wire check_dib9, check_dib10, check_dib11, check_dib12, check_dib13, check_dib14, check_dib15;
   wire check_dib16, check_dib17;
   wire check_adb0, check_adb1, check_adb2, check_adb3, check_adb4, check_adb5, check_adb6, check_adb7;
   wire check_adb8, check_adb9, check_adb10, check_adb11, check_adb12, check_adb13; 
   wire check_ceb, check_web, check_csb0, check_csb1, check_csb2, check_rstb;
   buf (ADA0_dly, ADA0);
   buf (ADA1_dly, ADA1);
   buf (ADA10_dly, ADA10);
   buf (ADA11_dly, ADA11);
   buf (ADA12_dly, ADA12);
   buf (ADA13_dly, ADA13);
   buf (ADA2_dly, ADA2);
   buf (ADA3_dly, ADA3);
   buf (ADA4_dly, ADA4);
   buf (ADA5_dly, ADA5);
   buf (ADA6_dly, ADA6);
   buf (ADA7_dly, ADA7);
   buf (ADA8_dly, ADA8);
   buf (ADA9_dly, ADA9);
   buf (ADB0_dly, ADB0);
   buf (ADB1_dly, ADB1);
   buf (ADB10_dly, ADB10);
   buf (ADB11_dly, ADB11);
   buf (ADB12_dly, ADB12);
   buf (ADB13_dly, ADB13);
   buf (ADB2_dly, ADB2);
   buf (ADB3_dly, ADB3);
   buf (ADB4_dly, ADB4);
   buf (ADB5_dly, ADB5);
   buf (ADB6_dly, ADB6);
   buf (ADB7_dly, ADB7);
   buf (ADB8_dly, ADB8);
   buf (ADB9_dly, ADB9);
   buf (CEA_dly, CEA);
   buf (CEB_dly, CEB);
   buf (CLKA_dly, CLKA);
   buf (CLKB_dly, CLKB);
   buf (CSA0_dly, CSA0);
   buf (CSA1_dly, CSA1);
   buf (CSA2_dly, CSA2);
   buf (CSB0_dly, CSB0);
   buf (CSB1_dly, CSB1);
   buf (CSB2_dly, CSB2);
   buf (DIA0_dly, DIA0);
   buf (DIA1_dly, DIA1);
   buf (DIA10_dly, DIA10);
   buf (DIA11_dly, DIA11);
   buf (DIA12_dly, DIA12);
   buf (DIA13_dly, DIA13);
   buf (DIA14_dly, DIA14);
   buf (DIA15_dly, DIA15);
   buf (DIA16_dly, DIA16);
   buf (DIA17_dly, DIA17);
   buf (DIA2_dly, DIA2);
   buf (DIA3_dly, DIA3);
   buf (DIA4_dly, DIA4);
   buf (DIA5_dly, DIA5);
   buf (DIA6_dly, DIA6);
   buf (DIA7_dly, DIA7);
   buf (DIA8_dly, DIA8);
   buf (DIA9_dly, DIA9);
   buf (DIB0_dly, DIB0);
   buf (DIB1_dly, DIB1);
   buf (DIB10_dly, DIB10);
   buf (DIB11_dly, DIB11);
   buf (DIB12_dly, DIB12);
   buf (DIB13_dly, DIB13);
   buf (DIB14_dly, DIB14);
   buf (DIB15_dly, DIB15);
   buf (DIB16_dly, DIB16);
   buf (DIB17_dly, DIB17);
   buf (DIB2_dly, DIB2);
   buf (DIB3_dly, DIB3);
   buf (DIB4_dly, DIB4);
   buf (DIB5_dly, DIB5);
   buf (DIB6_dly, DIB6);
   buf (DIB7_dly, DIB7);
   buf (DIB8_dly, DIB8);
   buf (DIB9_dly, DIB9);
   buf (DOA0_dly, DOA0);
   buf (DOA1_dly, DOA1);
   buf (DOA10_dly, DOA10);
   buf (DOA11_dly, DOA11);
   buf (DOA12_dly, DOA12);
   buf (DOA13_dly, DOA13);
   buf (DOA14_dly, DOA14);
   buf (DOA15_dly, DOA15);
   buf (DOA16_dly, DOA16);
   buf (DOA17_dly, DOA17);
   buf (DOA2_dly, DOA2);
   buf (DOA3_dly, DOA3);
   buf (DOA4_dly, DOA4);
   buf (DOA5_dly, DOA5);
   buf (DOA6_dly, DOA6);
   buf (DOA7_dly, DOA7);
   buf (DOA8_dly, DOA8);
   buf (DOA9_dly, DOA9);
   buf (DOB0_dly, DOB0);
   buf (DOB1_dly, DOB1);
   buf (DOB10_dly, DOB10);
   buf (DOB11_dly, DOB11);
   buf (DOB12_dly, DOB12);
   buf (DOB13_dly, DOB13);
   buf (DOB14_dly, DOB14);
   buf (DOB15_dly, DOB15);
   buf (DOB16_dly, DOB16);
   buf (DOB17_dly, DOB17);
   buf (DOB2_dly, DOB2);
   buf (DOB3_dly, DOB3);
   buf (DOB4_dly, DOB4);
   buf (DOB5_dly, DOB5);
   buf (DOB6_dly, DOB6);
   buf (DOB7_dly, DOB7);
   buf (DOB8_dly, DOB8);
   buf (DOB9_dly, DOB9);
   buf (RSTA_dly, RSTA);
   buf (RSTB_dly, RSTB);
   buf (WEA_dly, WEA);
   buf (WEB_dly, WEB);


   assign check_dia0_posedge = CHECK_DIA0 & (!CLKA_NEGEDGE);
   assign check_dia0_negedge = CHECK_DIA0 & (CLKA_NEGEDGE);
   assign check_dia1_posedge = CHECK_DIA1 & (!CLKA_NEGEDGE);
   assign check_dia1_negedge = CHECK_DIA1 & (CLKA_NEGEDGE);
   assign check_dia2_posedge = CHECK_DIA2 & (!CLKA_NEGEDGE);
   assign check_dia2_negedge = CHECK_DIA2 & (CLKA_NEGEDGE);
   assign check_dia3_posedge = CHECK_DIA3 & (!CLKA_NEGEDGE);
   assign check_dia3_negedge = CHECK_DIA3 & (CLKA_NEGEDGE);
   assign check_dia4_posedge = CHECK_DIA4 & (!CLKA_NEGEDGE);
   assign check_dia4_negedge = CHECK_DIA4 & (CLKA_NEGEDGE);
   assign check_dia5_posedge = CHECK_DIA5 & (!CLKA_NEGEDGE);
   assign check_dia5_negedge = CHECK_DIA5 & (CLKA_NEGEDGE);
   assign check_dia6_posedge = CHECK_DIA6 & (!CLKA_NEGEDGE);
   assign check_dia6_negedge = CHECK_DIA6 & (CLKA_NEGEDGE);
   assign check_dia7_posedge = CHECK_DIA7 & (!CLKA_NEGEDGE);
   assign check_dia7_negedge = CHECK_DIA7 & (CLKA_NEGEDGE);
   assign check_dia8_posedge = CHECK_DIA8 & (!CLKA_NEGEDGE);
   assign check_dia8_negedge = CHECK_DIA8 & (CLKA_NEGEDGE);
   assign check_dia9_posedge = CHECK_DIA9 & (!CLKA_NEGEDGE);
   assign check_dia9_negedge = CHECK_DIA9 & (CLKA_NEGEDGE);
   assign check_dia10_posedge = CHECK_DIA10 & (!CLKA_NEGEDGE);
   assign check_dia10_negedge = CHECK_DIA10 & (CLKA_NEGEDGE);
   assign check_dia11_posedge = CHECK_DIA11 & (!CLKA_NEGEDGE);
   assign check_dia11_negedge = CHECK_DIA11 & (CLKA_NEGEDGE);
   assign check_dia12_posedge = CHECK_DIA12 & (!CLKA_NEGEDGE);
   assign check_dia12_negedge = CHECK_DIA12 & (CLKA_NEGEDGE);
   assign check_dia13_posedge = CHECK_DIA13 & (!CLKA_NEGEDGE);
   assign check_dia13_negedge = CHECK_DIA13 & (CLKA_NEGEDGE);
   assign check_dia14_posedge = CHECK_DIA14 & (!CLKA_NEGEDGE);
   assign check_dia14_negedge = CHECK_DIA14 & (CLKA_NEGEDGE);
   assign check_dia15_posedge = CHECK_DIA15 & (!CLKA_NEGEDGE);
   assign check_dia15_negedge = CHECK_DIA15 & (CLKA_NEGEDGE);
   assign check_dia16_posedge = CHECK_DIA16 & (!CLKA_NEGEDGE);
   assign check_dia16_negedge = CHECK_DIA16 & (CLKA_NEGEDGE);
   assign check_dia17_posedge = CHECK_DIA17 & (!CLKA_NEGEDGE);
   assign check_dia17_negedge = CHECK_DIA17 & (CLKA_NEGEDGE);
   assign check_ada0_posedge = CHECK_ADA0 & (!CLKA_NEGEDGE);
   assign check_ada0_negedge = CHECK_ADA0 & (CLKA_NEGEDGE);
   assign check_ada1_posedge = CHECK_ADA1 & (!CLKA_NEGEDGE);
   assign check_ada1_negedge = CHECK_ADA1 & (CLKA_NEGEDGE);
   assign check_ada2_posedge = CHECK_ADA2 & (!CLKA_NEGEDGE);
   assign check_ada2_negedge = CHECK_ADA2 & (CLKA_NEGEDGE);
   assign check_ada3_posedge = CHECK_ADA3 & (!CLKA_NEGEDGE);
   assign check_ada3_negedge = CHECK_ADA3 & (CLKA_NEGEDGE);
   assign check_ada4_posedge = CHECK_ADA4 & (!CLKA_NEGEDGE);
   assign check_ada4_negedge = CHECK_ADA4 & (CLKA_NEGEDGE);
   assign check_ada5_posedge = CHECK_ADA5 & (!CLKA_NEGEDGE);
   assign check_ada5_negedge = CHECK_ADA5 & (CLKA_NEGEDGE);
   assign check_ada6_posedge = CHECK_ADA6 & (!CLKA_NEGEDGE);
   assign check_ada6_negedge = CHECK_ADA6 & (CLKA_NEGEDGE);
   assign check_ada7_posedge = CHECK_ADA7 & (!CLKA_NEGEDGE);
   assign check_ada7_negedge = CHECK_ADA7 & (CLKA_NEGEDGE);
   assign check_ada8_posedge = CHECK_ADA8 & (!CLKA_NEGEDGE);
   assign check_ada8_negedge = CHECK_ADA8 & (CLKA_NEGEDGE);
   assign check_ada9_posedge = CHECK_ADA9 & (!CLKA_NEGEDGE);
   assign check_ada9_negedge = CHECK_ADA9 & (CLKA_NEGEDGE);
   assign check_ada10_posedge = CHECK_ADA10 & (!CLKA_NEGEDGE);
   assign check_ada10_negedge = CHECK_ADA10 & (CLKA_NEGEDGE);
   assign check_ada11_posedge = CHECK_ADA11 & (!CLKA_NEGEDGE);
   assign check_ada11_negedge = CHECK_ADA11 & (CLKA_NEGEDGE);
   assign check_ada12_posedge = CHECK_ADA12 & (!CLKA_NEGEDGE);
   assign check_ada12_negedge = CHECK_ADA12 & (CLKA_NEGEDGE);
   assign check_ada13_posedge = CHECK_ADA13 & (!CLKA_NEGEDGE);
   assign check_ada13_negedge = CHECK_ADA13 & (CLKA_NEGEDGE);
   assign check_cea_posedge = CHECK_CEA & (!CLKA_NEGEDGE);
   assign check_cea_negedge = CHECK_CEA & (CLKA_NEGEDGE);
   assign check_wea_posedge = CHECK_WEA & (!CLKA_NEGEDGE);
   assign check_wea_negedge = CHECK_WEA & (CLKA_NEGEDGE);
   assign check_csa0_posedge = CHECK_CSA0 & (!CLKA_NEGEDGE);
   assign check_csa0_negedge = CHECK_CSA0 & (CLKA_NEGEDGE);
   assign check_csa1_posedge = CHECK_CSA1 & (!CLKA_NEGEDGE);
   assign check_csa1_negedge = CHECK_CSA1 & (CLKA_NEGEDGE);
   assign check_csa2_posedge = CHECK_CSA2 & (!CLKA_NEGEDGE);
   assign check_csa2_negedge = CHECK_CSA2 & (CLKA_NEGEDGE);
   assign check_rsta_posedge = CHECK_RSTA & (!CLKA_NEGEDGE);
   assign check_rsta_negedge = CHECK_RSTA & (CLKA_NEGEDGE);

   assign check_dib0_posedge = CHECK_DIB0 & (!CLKB_NEGEDGE);
   assign check_dib0_negedge = CHECK_DIB0 & (CLKB_NEGEDGE);
   assign check_dib1_posedge = CHECK_DIB1 & (!CLKB_NEGEDGE);
   assign check_dib1_negedge = CHECK_DIB1 & (CLKB_NEGEDGE);
   assign check_dib2_posedge = CHECK_DIB2 & (!CLKB_NEGEDGE);
   assign check_dib2_negedge = CHECK_DIB2 & (CLKB_NEGEDGE);
   assign check_dib3_posedge = CHECK_DIB3 & (!CLKB_NEGEDGE);
   assign check_dib3_negedge = CHECK_DIB3 & (CLKB_NEGEDGE);
   assign check_dib4_posedge = CHECK_DIB4 & (!CLKB_NEGEDGE);
   assign check_dib4_negedge = CHECK_DIB4 & (CLKB_NEGEDGE);
   assign check_dib5_posedge = CHECK_DIB5 & (!CLKB_NEGEDGE);
   assign check_dib5_negedge = CHECK_DIB5 & (CLKB_NEGEDGE);
   assign check_dib6_posedge = CHECK_DIB6 & (!CLKB_NEGEDGE);
   assign check_dib6_negedge = CHECK_DIB6 & (CLKB_NEGEDGE);
   assign check_dib7_posedge = CHECK_DIB7 & (!CLKB_NEGEDGE);
   assign check_dib7_negedge = CHECK_DIB7 & (CLKB_NEGEDGE);
   assign check_dib8_posedge = CHECK_DIB8 & (!CLKB_NEGEDGE);
   assign check_dib8_negedge = CHECK_DIB8 & (CLKB_NEGEDGE);
   assign check_dib9_posedge = CHECK_DIB9 & (!CLKB_NEGEDGE);
   assign check_dib9_negedge = CHECK_DIB9 & (CLKB_NEGEDGE);
   assign check_dib10_posedge = CHECK_DIB10 & (!CLKB_NEGEDGE);
   assign check_dib10_negedge = CHECK_DIB10 & (CLKB_NEGEDGE);
   assign check_dib11_posedge = CHECK_DIB11 & (!CLKB_NEGEDGE);
   assign check_dib11_negedge = CHECK_DIB11 & (CLKB_NEGEDGE);
   assign check_dib12_posedge = CHECK_DIB12 & (!CLKB_NEGEDGE);
   assign check_dib12_negedge = CHECK_DIB12 & (CLKB_NEGEDGE);
   assign check_dib13_posedge = CHECK_DIB13 & (!CLKB_NEGEDGE);
   assign check_dib13_negedge = CHECK_DIB13 & (CLKB_NEGEDGE);
   assign check_dib14_posedge = CHECK_DIB14 & (!CLKB_NEGEDGE);
   assign check_dib14_negedge = CHECK_DIB14 & (CLKB_NEGEDGE);
   assign check_dib15_posedge = CHECK_DIB15 & (!CLKB_NEGEDGE);
   assign check_dib15_negedge = CHECK_DIB15 & (CLKB_NEGEDGE);
   assign check_dib16_posedge = CHECK_DIB16 & (!CLKB_NEGEDGE);
   assign check_dib16_negedge = CHECK_DIB16 & (CLKB_NEGEDGE);
   assign check_dib17_posedge = CHECK_DIB17 & (!CLKB_NEGEDGE);
   assign check_dib17_negedge = CHECK_DIB17 & (CLKB_NEGEDGE);
   assign check_adb0_posedge = CHECK_ADB0 & (!CLKB_NEGEDGE);
   assign check_adb0_negedge = CHECK_ADB0 & (CLKB_NEGEDGE);
   assign check_adb1_posedge = CHECK_ADB1 & (!CLKB_NEGEDGE);
   assign check_adb1_negedge = CHECK_ADB1 & (CLKB_NEGEDGE);
   assign check_adb2_posedge = CHECK_ADB2 & (!CLKB_NEGEDGE);
   assign check_adb2_negedge = CHECK_ADB2 & (CLKB_NEGEDGE);
   assign check_adb3_posedge = CHECK_ADB3 & (!CLKB_NEGEDGE);
   assign check_adb3_negedge = CHECK_ADB3 & (CLKB_NEGEDGE);
   assign check_adb4_posedge = CHECK_ADB4 & (!CLKB_NEGEDGE);
   assign check_adb4_negedge = CHECK_ADB4 & (CLKB_NEGEDGE);
   assign check_adb5_posedge = CHECK_ADB5 & (!CLKB_NEGEDGE);
   assign check_adb5_negedge = CHECK_ADB5 & (CLKB_NEGEDGE);
   assign check_adb6_posedge = CHECK_ADB6 & (!CLKB_NEGEDGE);
   assign check_adb6_negedge = CHECK_ADB6 & (CLKB_NEGEDGE);
   assign check_adb7_posedge = CHECK_ADB7 & (!CLKB_NEGEDGE);
   assign check_adb7_negedge = CHECK_ADB7 & (CLKB_NEGEDGE);
   assign check_adb8_posedge = CHECK_ADB8 & (!CLKB_NEGEDGE);
   assign check_adb8_negedge = CHECK_ADB8 & (CLKB_NEGEDGE);
   assign check_adb9_posedge = CHECK_ADB9 & (!CLKB_NEGEDGE);
   assign check_adb9_negedge = CHECK_ADB9 & (CLKB_NEGEDGE);
   assign check_adb10_posedge = CHECK_ADB10 & (!CLKB_NEGEDGE);
   assign check_adb10_negedge = CHECK_ADB10 & (CLKB_NEGEDGE);
   assign check_adb11_posedge = CHECK_ADB11 & (!CLKB_NEGEDGE);
   assign check_adb11_negedge = CHECK_ADB11 & (CLKB_NEGEDGE);
   assign check_adb12_posedge = CHECK_ADB12 & (!CLKB_NEGEDGE);
   assign check_adb12_negedge = CHECK_ADB12 & (CLKB_NEGEDGE);
   assign check_adb13_posedge = CHECK_ADB13 & (!CLKB_NEGEDGE);
   assign check_adb13_negedge = CHECK_ADB13 & (CLKB_NEGEDGE);
   assign check_ceb_posedge = CHECK_CEB & (!CLKB_NEGEDGE);
   assign check_ceb_negedge = CHECK_CEB & (CLKB_NEGEDGE);
   assign check_web_posedge = CHECK_WEB & (!CLKB_NEGEDGE);
   assign check_web_negedge = CHECK_WEB & (CLKB_NEGEDGE);
   assign check_csb0_posedge = CHECK_CSB0 & (!CLKB_NEGEDGE);
   assign check_csb0_negedge = CHECK_CSB0 & (CLKB_NEGEDGE);
   assign check_csb1_posedge = CHECK_CSB1 & (!CLKB_NEGEDGE);
   assign check_csb1_negedge = CHECK_CSB1 & (CLKB_NEGEDGE);
   assign check_csb2_posedge = CHECK_CSB2 & (!CLKB_NEGEDGE);
   assign check_csb2_negedge = CHECK_CSB2 & (CLKB_NEGEDGE);
   assign check_rstb_posedge = CHECK_RSTB & (!CLKB_NEGEDGE);
   assign check_rstb_negedge = CHECK_RSTB & (CLKB_NEGEDGE);

   assign check_dib0_clka_posedge = CHECK_DIB0 & (!CLKA_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib0_clka_negedge = CHECK_DIB0 & (CLKA_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib1_clka_posedge = CHECK_DIB1 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib1_clka_negedge = CHECK_DIB1 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib2_clka_posedge = CHECK_DIB2 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib2_clka_negedge = CHECK_DIB2 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib3_clka_posedge = CHECK_DIB3 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib3_clka_negedge = CHECK_DIB3 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib4_clka_posedge = CHECK_DIB4 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib4_clka_negedge = CHECK_DIB4 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib5_clka_posedge = CHECK_DIB5 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib5_clka_negedge = CHECK_DIB5 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib6_clka_posedge = CHECK_DIB6 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib6_clka_negedge = CHECK_DIB6 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib7_clka_posedge = CHECK_DIB7 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib7_clka_negedge = CHECK_DIB7 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib8_clka_posedge = CHECK_DIB8 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib8_clka_negedge = CHECK_DIB8 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib9_clka_posedge = CHECK_DIB9 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib9_clka_negedge = CHECK_DIB9 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib10_clka_posedge = CHECK_DIB10 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib10_clka_negedge = CHECK_DIB10 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib11_clka_posedge = CHECK_DIB11 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib11_clka_negedge = CHECK_DIB11 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib12_clka_posedge = CHECK_DIB12 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib12_clka_negedge = CHECK_DIB12 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib13_clka_posedge = CHECK_DIB13 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib13_clka_negedge = CHECK_DIB13 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib14_clka_posedge = CHECK_DIB14 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib14_clka_negedge = CHECK_DIB14 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib15_clka_posedge = CHECK_DIB15 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib15_clka_negedge = CHECK_DIB15 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib16_clka_posedge = CHECK_DIB16 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib16_clka_negedge = CHECK_DIB16 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib17_clka_posedge = CHECK_DIB17 & (!CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);
   assign check_dib17_clka_negedge = CHECK_DIB17 & (CLKB_NEGEDGE) & ((DATA_WIDTH_A == 36) ? 1'b1 : 1'b0);

   buf (DOA0, DOA0_dly);
   buf (DOA1, DOA1_dly);
   buf (DOA2, DOA2_dly);
   buf (DOA3, DOA3_dly);
   buf (DOA4, DOA4_dly);
   buf (DOA5, DOA5_dly);
   buf (DOA6, DOA6_dly);
   buf (DOA7, DOA7_dly);
   buf (DOA8, DOA8_dly);
   buf (DOA9, DOA9_dly);
   buf (DOA10, DOA10_dly);
   buf (DOA11, DOA11_dly);
   buf (DOA12, DOA12_dly);
   buf (DOA13, DOA13_dly);
   buf (DOA14, DOA14_dly);
   buf (DOA15, DOA15_dly);
   buf (DOA16, DOA16_dly);
   buf (DOA17, DOA17_dly);
   buf (DOB0, DOB0_dly);
   buf (DOB1, DOB1_dly);
   buf (DOB2, DOB2_dly);
   buf (DOB3, DOB3_dly);
   buf (DOB4, DOB4_dly);
   buf (DOB5, DOB5_dly);
   buf (DOB6, DOB6_dly);
   buf (DOB7, DOB7_dly);
   buf (DOB8, DOB8_dly);
   buf (DOB9, DOB9_dly);
   buf (DOB10, DOB10_dly);
   buf (DOB11, DOB11_dly);
   buf (DOB12, DOB12_dly);
   buf (DOB13, DOB13_dly);
   buf (DOB14, DOB14_dly);
   buf (DOB15, DOB15_dly);
   buf (DOB16, DOB16_dly);
   buf (DOB17, DOB17_dly);


   defparam DP16KB_INST.DATA_WIDTH_A = DATA_WIDTH_A;
   defparam DP16KB_INST.DATA_WIDTH_B = DATA_WIDTH_B;
   defparam DP16KB_INST.REGMODE_A = REGMODE_A;
   defparam DP16KB_INST.REGMODE_B = REGMODE_B;
   defparam DP16KB_INST.RESETMODE = RESETMODE;
   defparam DP16KB_INST.CSDECODE_A = CSDECODE_A;
   defparam DP16KB_INST.CSDECODE_B = CSDECODE_B;
   defparam DP16KB_INST.WRITEMODE_A = WRITEMODE_A;
   defparam DP16KB_INST.WRITEMODE_B = WRITEMODE_B;
   defparam DP16KB_INST.GSR = GSR;

   defparam DP16KB_INST.INITVAL_00 = INITVAL_00;
   defparam DP16KB_INST.INITVAL_01 = INITVAL_01;
   defparam DP16KB_INST.INITVAL_02 = INITVAL_02;
   defparam DP16KB_INST.INITVAL_03 = INITVAL_03;
   defparam DP16KB_INST.INITVAL_04 = INITVAL_04;
   defparam DP16KB_INST.INITVAL_05 = INITVAL_05;
   defparam DP16KB_INST.INITVAL_06 = INITVAL_06;
   defparam DP16KB_INST.INITVAL_07 = INITVAL_07;
   defparam DP16KB_INST.INITVAL_08 = INITVAL_08;
   defparam DP16KB_INST.INITVAL_09 = INITVAL_09;
   defparam DP16KB_INST.INITVAL_0A = INITVAL_0A;
   defparam DP16KB_INST.INITVAL_0B = INITVAL_0B;
   defparam DP16KB_INST.INITVAL_0C = INITVAL_0C;
   defparam DP16KB_INST.INITVAL_0D = INITVAL_0D;
   defparam DP16KB_INST.INITVAL_0E = INITVAL_0E;
   defparam DP16KB_INST.INITVAL_0F = INITVAL_0F;
   defparam DP16KB_INST.INITVAL_10 = INITVAL_10;
   defparam DP16KB_INST.INITVAL_11 = INITVAL_11;
   defparam DP16KB_INST.INITVAL_12 = INITVAL_12;
   defparam DP16KB_INST.INITVAL_13 = INITVAL_13;
   defparam DP16KB_INST.INITVAL_14 = INITVAL_14;
   defparam DP16KB_INST.INITVAL_15 = INITVAL_15;
   defparam DP16KB_INST.INITVAL_16 = INITVAL_16;
   defparam DP16KB_INST.INITVAL_17 = INITVAL_17;
   defparam DP16KB_INST.INITVAL_18 = INITVAL_18;
   defparam DP16KB_INST.INITVAL_19 = INITVAL_19;
   defparam DP16KB_INST.INITVAL_1A = INITVAL_1A;
   defparam DP16KB_INST.INITVAL_1B = INITVAL_1B;
   defparam DP16KB_INST.INITVAL_1C = INITVAL_1C;
   defparam DP16KB_INST.INITVAL_1D = INITVAL_1D;
   defparam DP16KB_INST.INITVAL_1E = INITVAL_1E;
   defparam DP16KB_INST.INITVAL_1F = INITVAL_1F;
   defparam DP16KB_INST.INITVAL_20 = INITVAL_20;
   defparam DP16KB_INST.INITVAL_21 = INITVAL_21;
   defparam DP16KB_INST.INITVAL_22 = INITVAL_22;
   defparam DP16KB_INST.INITVAL_23 = INITVAL_23;
   defparam DP16KB_INST.INITVAL_24 = INITVAL_24;
   defparam DP16KB_INST.INITVAL_25 = INITVAL_25;
   defparam DP16KB_INST.INITVAL_26 = INITVAL_26;
   defparam DP16KB_INST.INITVAL_27 = INITVAL_27;
   defparam DP16KB_INST.INITVAL_28 = INITVAL_28;
   defparam DP16KB_INST.INITVAL_29 = INITVAL_29;
   defparam DP16KB_INST.INITVAL_2A = INITVAL_2A;
   defparam DP16KB_INST.INITVAL_2B = INITVAL_2B;
   defparam DP16KB_INST.INITVAL_2C = INITVAL_2C;
   defparam DP16KB_INST.INITVAL_2D = INITVAL_2D;
   defparam DP16KB_INST.INITVAL_2E = INITVAL_2E;
   defparam DP16KB_INST.INITVAL_2F = INITVAL_2F;
   defparam DP16KB_INST.INITVAL_30 = INITVAL_30;
   defparam DP16KB_INST.INITVAL_31 = INITVAL_31;
   defparam DP16KB_INST.INITVAL_32 = INITVAL_32;
   defparam DP16KB_INST.INITVAL_33 = INITVAL_33;
   defparam DP16KB_INST.INITVAL_34 = INITVAL_34;
   defparam DP16KB_INST.INITVAL_35 = INITVAL_35;
   defparam DP16KB_INST.INITVAL_36 = INITVAL_36;
   defparam DP16KB_INST.INITVAL_37 = INITVAL_37;
   defparam DP16KB_INST.INITVAL_38 = INITVAL_38;
   defparam DP16KB_INST.INITVAL_39 = INITVAL_39;
   defparam DP16KB_INST.INITVAL_3A = INITVAL_3A;
   defparam DP16KB_INST.INITVAL_3B = INITVAL_3B;
   defparam DP16KB_INST.INITVAL_3C = INITVAL_3C;
   defparam DP16KB_INST.INITVAL_3D = INITVAL_3D;
   defparam DP16KB_INST.INITVAL_3E = INITVAL_3E;
   defparam DP16KB_INST.INITVAL_3F = INITVAL_3F;

   DP16KB DP16KB_INST (.DIA0(DIA0_dly),
                       .DIA1(DIA1_dly),
                       .DIA2(DIA2_dly),
                       .DIA3(DIA3_dly),
                       .DIA4(DIA4_dly),
                       .DIA5(DIA5_dly),
                       .DIA6(DIA6_dly),
                       .DIA7(DIA7_dly),
                       .DIA8(DIA8_dly),
                       .DIA9(DIA9_dly),
                       .DIA10(DIA10_dly),
                       .DIA11(DIA11_dly),
                       .DIA12(DIA12_dly),
                       .DIA13(DIA13_dly),
                       .DIA14(DIA14_dly),
                       .DIA15(DIA15_dly),
                       .DIA16(DIA16_dly),
                       .DIA17(DIA17_dly),
                       .ADA0(ADA0_dly),
                       .ADA1(ADA1_dly),
                       .ADA2(ADA2_dly),
                       .ADA3(ADA3_dly),
                       .ADA4(ADA4_dly),
                       .ADA5(ADA5_dly),
                       .ADA6(ADA6_dly),
                       .ADA7(ADA7_dly),
                       .ADA8(ADA8_dly),
                       .ADA9(ADA9_dly),
                       .ADA10(ADA10_dly),
                       .ADA11(ADA11_dly),
                       .ADA12(ADA12_dly),
                       .ADA13(ADA13_dly),
                       .CEA(CEA_dly),
                       .CLKA(CLKA_dly),
                       .WEA(WEA_dly),
                       .CSA0(CSA0_dly),
                       .CSA1(CSA1_dly),
                       .CSA2(CSA2_dly),
                       .RSTA(RSTA_dly),
                       .DIB0(DIB0_dly),
                       .DIB1(DIB1_dly),
                       .DIB2(DIB2_dly),
                       .DIB3(DIB3_dly),
                       .DIB4(DIB4_dly),
                       .DIB5(DIB5_dly),
                       .DIB6(DIB6_dly),
                       .DIB7(DIB7_dly),
                       .DIB8(DIB8_dly),
                       .DIB9(DIB9_dly),
                       .DIB10(DIB10_dly),
                       .DIB11(DIB11_dly),
                       .DIB12(DIB12_dly),
                       .DIB13(DIB13_dly),
                       .DIB14(DIB14_dly),
                       .DIB15(DIB15_dly),
                       .DIB16(DIB16_dly),
                       .DIB17(DIB17_dly),
                       .ADB0(ADB0_dly),
                       .ADB1(ADB1_dly),
                       .ADB2(ADB2_dly),
                       .ADB3(ADB3_dly),
                       .ADB4(ADB4_dly),
                       .ADB5(ADB5_dly),
                       .ADB6(ADB6_dly),
                       .ADB7(ADB7_dly),
                       .ADB8(ADB8_dly),
                       .ADB9(ADB9_dly),
                       .ADB10(ADB10_dly),
                       .ADB11(ADB11_dly),
                       .ADB12(ADB12_dly),
                       .ADB13(ADB13_dly),
                       .CEB(CEB_dly),
                       .CLKB(CLKB_dly),
                       .WEB(WEB_dly),
                       .CSB0(CSB0_dly),
                       .CSB1(CSB1_dly),
                       .CSB2(CSB2_dly),
                       .RSTB(RSTB_dly),
                       .DOA0(DOA0_dly),
                       .DOA1(DOA1_dly),
                       .DOA2(DOA2_dly),
                       .DOA3(DOA3_dly),
                       .DOA4(DOA4_dly),
                       .DOA5(DOA5_dly),
                       .DOA6(DOA6_dly),
                       .DOA7(DOA7_dly),
                       .DOA8(DOA8_dly),
                       .DOA9(DOA9_dly),
                       .DOA10(DOA10_dly),
                       .DOA11(DOA11_dly),
                       .DOA12(DOA12_dly),
                       .DOA13(DOA13_dly),
                       .DOA14(DOA14_dly),
                       .DOA15(DOA15_dly),
                       .DOA16(DOA16_dly),
                       .DOA17(DOA17_dly),
                       .DOB0(DOB0_dly),
                       .DOB1(DOB1_dly),
                       .DOB2(DOB2_dly),
                       .DOB3(DOB3_dly),
                       .DOB4(DOB4_dly),
                       .DOB5(DOB5_dly),
                       .DOB6(DOB6_dly),
                       .DOB7(DOB7_dly),
                       .DOB8(DOB8_dly),
                       .DOB9(DOB9_dly),
                       .DOB10(DOB10_dly),
                       .DOB11(DOB11_dly),
                       .DOB12(DOB12_dly),
                       .DOB13(DOB13_dly),
                       .DOB14(DOB14_dly),
                       .DOB15(DOB15_dly),
                       .DOB16(DOB16_dly),
                       .DOB17(DOB17_dly));


   

endmodule

