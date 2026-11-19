;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMSOL201 -- GWMON-80 Small Monitor for PT SOL-20
;
;This customization uses the Processor Tech's SOL-20 onboard
;serial port for console. It is mainly intended for
;debugging purposes, when a SOL-20 is broken enough that
;SOLOS won't come up.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SOL-20 Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SYSROM	equ	0C000H		;Personality card ROM base address
SYSRAM	equ	0C800H		;Onboard 1K of RAM in 2102s
VIDRAM	equ	0CC00H		;Video display memory
STACK	equ	SYSRAM+03FFH	;Stack in onboard 1K RAM

	ORG	SYSROM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BOOT -- Handle SOL-20 power-on jump
;
;The SOL-20 uses a hardware counter to enable the 0xC000 ROM
;when the system is reset. The ROM is enabled at 0x0000 for
;four memory accesses. Padding GWMON-80 with a NOP enables
;the POJ circuit to use the standard GWMON-80 vector table.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BOOT:	NOP			;Must be 4 bytes for POJ circuit

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands
	INCLUDE 'scmdnull.inc'	;Command table terminator

	INCLUDE 'sol20io.inc'	;PT SOL-20 onboard serial

	END
