;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMBREVIA -- GWMON-80 Small Monitor for the LatticeXP2 Brevia2 Z80
;
;Memory map of this machine:
;   0x0000-0x0FFF : boot ROM (we'll burn GWMON into this LUT ROM)
;   0x1000-0xFFFF : external 64K SRAM (monitor stack + loaded programs)
;   I/O 0x80      : console UART status (bit0 tx_busy, bit1 rx_avail)
;   I/O 0x81      : console UART data (write TX / read RX)
;
;The CPU resets to 0x0000, so GWMON's cold start lives at the reset vector.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hardware Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CTLPRT	equ	080H		;Brevia2 console UART status port
DATPRT	equ	081H		;Brevia2 console UART data port
STACK	equ	0FF00H		;top of the 64K SRAM (0x1000-0xFFFF)

;---- CP/M SPI-flash boot constants (MUST match diskutil.s and cbios.asm) ----
SPI_DATA equ	50H		;SPI flash data (read clocks in / write clocks out)
SPI_CTL  equ	51H		;SPI flash control (bit0 = CS#)
SPI_STAT equ	52H		;SPI flash status (bit0 = busy)
CPMIMG	 equ	0000H		;flash offset of the stored CP/M image
CPMIMGLEN equ	1E00H		;bytes of the boot image (padded to 0x1E00; must match diskutil.s)

	ORG	0H

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;BFLSH -- 'b' command: boot CP/M from the IS25LD040 SPI flash
;Command-table entry only; the handler BFOOT lives in spiboot.inc.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BFLSH:	db	'b'
	dw	BFOOT
	INCLUDE 'scmdnull.inc'	;Command table terminator

	INCLUDE 'sbruart.inc'	;Brevia2 custom 8N1 UART I/O

	INCLUDE '../spi.inc'	;shared IS25LD040 SPI primitives + FBADDR
	INCLUDE 'spiboot.inc'	;BFOOT: flash-boot handler

	END
