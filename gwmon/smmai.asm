;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SMMAI -- GWMON-80 Small Monitor for Microcomputer
;Associates 8080/9080 System Card
;
;Keep in mind that this card does not provide a USART
;bitrate clock -- it must be supplied externally.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hardware Equates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CTLPRT	equ	001H		;Onboard USART control port
DATPRT	equ	000H		;Onboard USART data port
STACK	equ	01400H		;Stack at the top of onboard RAM

	ORG	0000H		;Burn a 2708 for socket U15

	INCLUDE	'vectors.inc'	;Standard GWMON-80 jump table

	INCLUDE	'sm.inc'	;The small monitor
	INCLUDE	'scmdstd.inc'	;SM standard commands
	INCLUDE	'scmdnull.inc'	;Command table terminator

	INCLUDE	'i8251.inc'	;Intel 8251 non-A USART

	END
