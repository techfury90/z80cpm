;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMJADEBZ -- GWMON-80 Small Monitor for Jade Big Z
;
;This customization uses the Jade Big Z onboard console port
;and expects to be ROMed in a 2708 at 0xFC00 for 
;installation in the Big Z ROM socket. Default Jade console
;port base address of 0x10 is assumed.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hardware Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CTLPRT	equ	011H		;8251 control port
DATPRT	equ	010H		;8251 data port
STACK	equ	0FC00H		;Stack below Big Z ROM
BOOTDST	equ	01000H		;Boostrap destination, must be RAM

	ORG	0FC00H

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CSTART -- Customization-specific cold start routine
;
;Switches out ROM on 8085 SBC rev 3 and falls through to
;the monitor.
;
;The label for CSTART is defined in VECTORS.INC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BVFII -- Boot VersaFloppy II
;
;This command definition hands off to a boot mover, to get
;the VF2 bootstrap program out of slow ROM and into main
;memory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BVFII:	db	'b'
	dw	BTMOVR

	INCLUDE	'scmdnull.inc'	;Command table terminator

	INCLUDE	'i8251.inc'	;Generic old-style Intel 8251 driver

	INCLUDE 'bvf2z5.inc'	;VersaFloppy II 5.25" Z80 boot routine

VF2SIZ	equ	$ - VF2Z5	;Size of VF2 bootstrap, for mover

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BTMOVR -- Move floppy bootstrap into RAM and go
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BTMOVR:	LXI	H, VF2Z5	;HL = start of VF2 bootstrap
	LXI	D, BOOTDST	;DE = RAM address to load into
	MVI	C, VF2SIZ	;C = byte counter for mover
BTMOV1:	MOV	A, M		;Get byte of boostrap
	STAX	D		;Store it at [DE]
	INX	H		;Increment pointers
	INX	D
	DCR	C		;Decrement byte counter
	JNZ	BTMOV1		;Not zero, move more bytes
	JMP	BOOTDST		;Zero, jump into bootstrap

	END
