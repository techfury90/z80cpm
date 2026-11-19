;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SBRUART -- Console I/O drivers for the Brevia2 custom 8N1 UART
;
;The Brevia2 SoC console is a custom polled 8N1 UART mapped at:
;   CTLPRT = 080H  status: bit0 = tx_busy (1=busy), bit1 = rx_avail (1=ready)
;   DATPRT = 081H  data:   write = TX, read = RX
;Set CTLPRT and DATPRT in the customization file.
;
;Requires three subroutines: IOSET, CINNE, COUT (GWMON-80 I/O module contract).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;IOSET -- I/O specific setup routine
;
;pre: none
;post: console serial channel is ready (our UART needs no init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IOSET:
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CINNE -- Get a char from the console, no echo
;
;If the CANCEL character is received, do a warm start.
;
;pre: console device is initialized
;post: received char is in A register
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CINNE:
	IN	CTLPRT
	ANI	02H		;rx_avail (bit1)
	JZ	CINNE		;wait until a char is ready
	IN	DATPRT
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
COUT:
	PUSH	PSW		;Save A on stack
COUT1:
	IN	CTLPRT
	ANI	01H		;tx_busy (bit0, 1=busy)
	JNZ	COUT1		;wait until transmitter is idle
	POP	PSW		;Restore A
	OUT	DATPRT
	RET
