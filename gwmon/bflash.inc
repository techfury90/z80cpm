;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FLASHBT -- Boot CP/M from paged Flash
;
;This bootloader expects to be loaded into RAM at 0x8000 and
;jumped into. It reads the CP/M system blocks out of Flash
;on e.g. the 8085 SBC rev 4 boards.
;
;Object code in this module is not relocatable, and is
;derived from FLASHBOOT.ASM from the Glitch Works CP/M
;source repository.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BFLASH:	db 011H, 000H, 0C0H, 006H, 002H, 00EH, 002H, 078H, 0D3H, 0FFH 
	db 021H, 000H, 0F0H, 07EH, 012H, 013H, 023H, 07CH, 0B7H, 0C2H
	db 00DH, 080H, 004H, 00DH, 0C2H, 007H, 080H, 0C3H, 000H, 0D6H

BFSIZE	equ	$ - BFLASH	;Size of bootstrap, for mover