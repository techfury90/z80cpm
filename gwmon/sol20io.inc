;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SOL20IO -- Console I/O Drivers for SOL-20 serial port
;
;This driver interfaces to the onboard serial port on
;Processor Tech SOL-20 computers.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SOL-20 Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SERCON	equ	0F8H		;Serial channel control/status port
SERDAT	equ	0F9H		;Serial channel data port

SDR	equ	040H		;Serial Data Ready mask
STBE	equ	080H		;Serial Transmit Buffer Empty mask
RTSON	equ	010H		;Bit pattern to activate RTS line

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;IOSET -- I/O specific setup routine
;
;pre: none
;post: console serial channel is initialized
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IOSET:	MVI	A, RTSON	;Ensure RTS active
	OUT	SERCON
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CINNE -- Get a char from the console, no echo
;
;If the CANCEL character is received, do a warm start.
;
;pre: console device is initialized
;post: received char is in A register
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CINNE:	IN	SERCON
	ANI	SDR		;Mask off Data Ready bit
	JZ	CINNE		;Zero, no data ready
	IN	SERDAT		;Nonzero, serial in data ready
	OUT	0F8H		;DEBUG PRINT
	CPI	CANCEL
	JZ	WSTART
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;COUT -- Output a character to the console
;
;This routine *must* preserve the contents of the A register
;or CIN will not function properly.
;
;pre: A register contains char to be printed
;post: character is printed to the console
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
COUT:	PUSH	PSW		;Save A on stack
COUT1:	IN	SERCON
	ANI	STBE		;Mask off Transmitter Buffer Empty bit
	JZ	COUT1		;Zero, TBE full
	POP	PSW		;Buffer empty, restore A
	OUT	SERDAT
	RET
