[ActiveSupport MAP]
Device = LFXP2-5E;
Package = TQFP144;
Performance = 6;
LUTS_avail = 4752;
LUTS_used = 2516;
FF_avail = 3664;
FF_used = 500;
INPUT_LVCMOS33 = 11;
OUTPUT_LVCMOS33 = 29;
BIDI_LVCMOS33 = 8;
IO_avail = 100;
IO_used = 48;
PLL_avail = 2;
PLL_used = 1;
EBR_avail = 9;
EBR_used = 0;
;
; start of DSP statistics
MULT36X36B = 0;
MULT18X18B = 0;
MULT18X18MACB = 0;
MULT18X18ADDSUBB = 0;
MULT18X18ADDSUBSUMB = 0;
MULT9X9B = 0;
MULT9X9ADDSUBB = 0;
MULT9X9ADDSUBSUMB = 0;
DSP_avail = 24;
DSP_used = 0;
; end of DSP statistics
;
; Begin PLL Section
Instance_Name = pll_inst/PLLInst_0;
Type = EHXPLLE;
Output_Clock(P)_Actual_Frequency = 25.0000;
CLKOP_BYPASS = DISABLED;
CLKOS_BYPASS = DISABLED;
CLKOK_BYPASS = DISABLED;
CLKI_Divider = 2;
CLKFB_Divider = 1;
CLKOP_Divider = 32;
CLKOK_Divider = 2;
CLKOS_Phase_Shift_(degree) = 0.0;
CLKOS_Duty_Cycle_(*1/16) = 8;
Phase_Duty_Control = STATIC;
CLKOPDutyTrimPolarity = FALLING;
CLKOPDutyTrimPolarityDelay = 0;
CLKOSDutyTrimPolarity = RISING;
CLKOSDutyTrimPolarityDelay = 0;
; End PLL Section
