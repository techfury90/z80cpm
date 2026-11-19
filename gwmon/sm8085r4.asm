;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SM8085R4 -- GWMON-80 Small Monitor for 8085 SBC rev 4
;
;This customization uses the console port on the Glitch
;Works 8085 SBC rev 4.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hardware Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RSLATCH	equ	0FFH		;ROM segment latch I/O address
STACK	equ	0F000H		;Stack below Flash ROM
BOOTDST	equ	08000H		;Boostrap destination, must be RAM
				;and agree with FLASHBOOT.ASM

	ORG	0F000H

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CSTART -- Customization-specific cold start routine
;
;Clears BOOT flip-flop on 8085 SBC rev 4 and falls through
;to the monitor.
;
;The label for CSTART is defined in VECTORS.INC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	LDA	08000H		;Read from upper 32K of RAM to clear BOOT
				;flip-flop

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BFLASH -- Boot CP/M from Flash chip
;
;This command definition hands off to a boot mover, to get
;the Flash bootstrap program into main memory before
;switching the active ROM segment.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BVFII:	db	'b'
	dw	BTMOVR

	INCLUDE	'scmdnull.inc'	;Command table terminator

	INCLUDE	'8085sio1.inc'	;Intel 8085 SID/SOD driver

	INCLUDE 'bflash.inc'	;Flash boot code

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BTMOVR -- Move Flash bootstrap into RAM and go
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BTMOVR:	LXI	H, BFLASH	;HL = start of Flash bootstrap
	LXI	D, BOOTDST	;DE = RAM address to load into
	MVI	C, BFSIZE	;C = byte counter for mover
BTMOV1:	MOV	A, M		;Get byte of boostrap
	STAX	D		;Store it at [DE]
	INX	H		;Increment pointers
	INX	D
	DCR	C		;Decrement byte counter
	JNZ	BTMOV1		;Not zero, move more bytes
	JMP	BOOTDST		;Zero, jump into bootstrap

	END
