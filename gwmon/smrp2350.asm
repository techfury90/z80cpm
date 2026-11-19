;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMRP2350 -- GWMON-80 Small Monitor for Continental 
;Instruments Remote CPU
;
;The board targeted by this monitor had a sticker with:
;
;   RP2350
;   473A
;
;...thus, we're calling it the RP2350. The part number in
;the copper is:
;
;   170-1070D
;
;It appears to have been some sort of alarm system control.
;
;This customization uses the console ACIA and onboard 8K of 
;RAM. It manages the watchdog timer via periodic interrupt.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hardware Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CTLPRT	equ	020H		;Console ACIA control port
DATPRT	equ	021H		;Console ACIA data port
WDTPRT	equ	070H		;Watchdog timer port
STACK	equ	03FF0H		;Stack at the top of RAM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Reset and Interrupt Vectors
;
;This board issues a periodic interrupt to the CPU which is
;necessary for feeding the watchdog timer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ORG	0000H
RESVEC:	JMP	CSTART		;RST0, system reset vector

	ORG	0038H		
IM1VEC:	JMP	IM1HND		;RST7, interrupt vector for IM1, periodic
				;interrupt on this system

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;IM1HND -- IM1 interrupt handler
;
;This routine handles RST7 hardware interrupts when running
;in Z80 interrupt mode 1. On this board, the interrupt is
;triggered via periodic timer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IM1HND:	DI			;Disable all interrupts
	PUSH	PSW		;Save PSW, A on stack
	IN	WDTPRT		;Feed the watchdog
	POP	PSW		;Restore PSW, A
	EI			;Enable interrupts
	RET

	ORG	0100H		;Leave room for RSTn vectors, handlers

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CSTART -- Cold start routine
;
;Configure interrupt mode. Falls through to SM.INC
;
;Function label is defined in VECTORS.INC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	DI			;Disable interrupts during setup
	db	0EDH, 056H	;IM 1 Z80 instruction
	EI			;Enable interrupts

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands
	INCLUDE 'scmdnull.inc'	;Command table terminator

	INCLUDE '6850acia.inc'	;Generic Motorola 6850 ACIA I/O

	END
