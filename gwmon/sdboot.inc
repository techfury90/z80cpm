;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SDBOOT -- GWMON-80 's' command: boot CP/M from the SD card.
;
;Reads the CP/M system image (CCP+BDOS+CBIOS, CPMIMGLEN bytes) from the SD
;card's reserved system area (SDPLBA + region 0) into machine RAM at 0xD000,
;then cold-boots via the CBIOS entry (0xE600) which enters the CCP.
;
;The SD is the PRIMARY boot store in the SD build, so this mirrors the flash
;'b' boot (spiboot.inc) but on the dedicated SD SPI port (pins 31/32/35/36):
;   0x53 = SD SPI data, 0x54 = ctl (bit0 CS#, bit1 slow clock), 0x55 = status.
;
;The SD driver lives in the CBIOS (which is being loaded), so this routine
;carries its OWN minimal SD init/read path and runs entirely in the monitor ROM
;(0x0000-0x0FFF, read-only).  All writable scratch lives in machine RAM
;(BOOTCHK / SDBLKN / SDACMD / SDCMDB) -- never a DS byte in the ROM.
;
;pre:  none (typed 's' at the monitor prompt)
;post: CP/M running at the 'A>' prompt, or "NO CP/M ON SD" and a return to the
;      monitor command loop.
;
;The SD system area is at SDPLBA + region 0 (SDPLBA = the partition LBA start
;from the sdtool-created MBR, currently 1).  BOOT (in the CBIOS) persists the
;CP/M image there every cold boot, so a booted system always self-provisions
;the card.  The image occupies the first CPMIMGLEN bytes = CPMIMGLEN/512
;512-byte SD sectors (16 for CPMIMGLEN=0x2000).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;---- SD SPI ports (dedicated, second SPI port) ----
SDDAT   equ     53H             ; SD SPI data (r/w byte)
SDCTL   equ     54H             ; SD SPI ctl: bit0 = CS# (0 select, 1 release),
                                ;               bit1 = slow clock (1 = ~390 kHz init)
SDSTAT  equ     55H             ; SD SPI status: bit0 = busy

;---- SD system-area geometry (MUST match cbios.asm) ----
SDSYS   equ     1               ; SDPLBA: partition LBA start (region 0 base)
SDBLKN  equ     0FE00H          ; 32-bit SD block number (MSB first) in machine RAM
SDACMD  equ     0FE04H          ; ACMD41 retry counter (machine RAM)
SDCMDB  equ     0FE05H          ; 6-byte SD command buffer (machine RAM)
SDFLAG  equ     0FE0BH          ; temp flag (machine RAM)

;---- command handler for 's' ----
SDBOOT:
        CALL    SDINIT          ; init the card; A=0 ok / 0FFh no card
        ORA     A
        JNZ     SDB_NO
        ; sanity: the image must begin with 0xC3 (JP, the CCP's first instr).
        CALL    SD_SETBLK0      ; BLKN = SDPLBA (region 0 system area)
        LXI     H,0D000H        ; destination of the boot image
        MVI     B,CPMIMGLEN/512 ; number of 512-byte SD sectors in the image
SDB_LOOP:
        PUSH    B
        CALL    SD_READBLK      ; read one 512-byte SD sector into (HL); HL += 512
        ORA     A
        JNZ     SDB_NO
        POP     B
        MOV     A,B
        CPI     CPMIMGLEN/512   ; first sector? check the CCP magic only once
        JNZ     SDB_NXT
        LDA     0D000H          ; byte 0 of the image must be 0xC3
        CPI     0C3H
        JNZ     SDB_NO
SDB_NXT:
        CALL    SD_INCBLK       ; BLKN += 1
        DCR     B
        JNZ     SDB_LOOP
        ; cold-boot CP/M (CBIOS BOOT persists CCP/BDOS to the SD and enters CCP)
        JMP     0E600H

SDB_NO:
        LXI     H,MSGNOSD
        JMP     PRTERR          ; prints CRLF + string, back to the monitor loop

;------------------------------------------------------------------------
; SD_SETBLK0: set the 32-bit BLKN (MSB first) to the SDPLBA region-0 base.
;------------------------------------------------------------------------
SD_SETBLK0:
        XRA     A
        STA     SDBLKN+0
        STA     SDBLKN+1
        STA     SDBLKN+2
        MVI     A,SDSYS
        STA     SDBLKN+3
        RET

; SD_INCBLK: increment the 32-bit BLKN (MSB first) by one.
SD_INCBLK:
        LDA     SDBLKN+3
        INR     A
        STA     SDBLKN+3
        JNZ     SDINC_DONE
        LDA     SDBLKN+2
        INR     A
        STA     SDBLKN+2
        JNZ     SDINC_DONE
        LDA     SDBLKN+1
        INR     A
        STA     SDBLKN+1
        JNZ     SDINC_DONE
        LDA     SDBLKN+0
        INR     A
        STA     SDBLKN+0
SDINC_DONE:
        RET

;------------------------------------------------------------------------
; SDINIT: full SPI-mode init.  A=0 ok / 0FFh fail (same handshake as the
; CBIOS and sdtool: CMD0 -> CMD8 -> CMD55/ACMD41 -> OCR).
;------------------------------------------------------------------------
SDINIT:
        XRA     A
        STA     SDACMD
        MVI     A,03H           ; CS high + slow clock
        OUT     SDCTL
        MVI     B,10            ; 10 x 0xFF = 80 power-up clocks
SDI_CK:
        MVI     A,0FFH
        OUT     SDDAT
        DCR     B
        JNZ     SDI_CK
        MVI     A,02H           ; select the card (CS low), slow clock
        OUT     SDCTL
        ; CMD0 + read R1
        LXI     H,SDB_CMD0
        CALL    SD_SEND6
        CPI     01H
        JNZ     SDI_FAIL
        ; CMD8 (SEND_IF_COND) - required before ACMD41 on SDHC/SDXC
        LXI     H,SDB_CMD8
        CALL    SD_SEND6
        IN      SDDAT           ; consume the 4-byte R7 payload
        IN      SDDAT
        IN      SDDAT
        IN      SDDAT
        ; CMD55 + ACMD41 poll until the card leaves idle
        MVI     D,200
SDI_RDY:
        LXI     H,SDB_CMD55
        CALL    SD_SEND6
        LXI     H,SDB_ACMD41
        CALL    SD_SEND6
        CPI     00H
        JZ      SDI_OK
        CALL    SD_DELAY        ; small delay between attempts
        DCR     D
        JNZ     SDI_RDY
SDI_FAIL:
        MVI     A,0FFH
        RET
SDI_OK:
        MVI     A,00H
        RET

; SD_DELAY: approximate ~1 ms busy-wait (HL only).
SD_DELAY:
        LXI     H,1000
SDDL:
        DCX     H
        MOV     A,H
        ORA     L
        JNZ     SDDL
        RET

;------------------------------------------------------------------------
; SD_READBLK: read the 512-byte block SDBLKN[0..3] (MSB first) into (HL).
;   A = 0 ok / 0FFh err.  Preserves HL (the destination buffer).
;------------------------------------------------------------------------
SD_READBLK:
        MVI     A,00H
        OUT     SDCTL           ; select the card, fast clock
        PUSH    H
        ; build CMD17
        MVI     A,51H
        STA     SDCMDB
        LDA     SDBLKN+0
        STA     SDCMDB+1
        LDA     SDBLKN+1
        STA     SDCMDB+2
        LDA     SDBLKN+2
        STA     SDCMDB+3
        LDA     SDBLKN+3
        STA     SDCMDB+4
        MVI     A,0FFH
        STA     SDCMDB+5
        LXI     H,SDCMDB
        CALL    SD_SEND6        ; A = R1 (should be 00)
        POP     H               ; restore the destination buffer
        CPI     00H
        JNZ     SDRB_ERR
        CALL    SD_WAITTKN      ; wait for the 0FEh data-start token
        JC      SDRB_ERR
        LXI     B,512
SDRB1:
        IN      SDDAT
        MOV     M,A
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SDRB1
        IN      SDDAT           ; 2 CRC bytes
        IN      SDDAT
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H
        RET
SDRB_ERR:
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,0FFH
        RET

;------------------------------------------------------------------------
; SD_SEND6: transmit the 6-byte command at (HL), then read the R1 status byte.
;   Returns A = R1 (clock 0xFF until a non-0xFF response, up to 16 bytes).
;------------------------------------------------------------------------
SD_SEND6:
        MVI     B,6
SD6_TX:
        MOV     A,M
        OUT     SDDAT
        INX     H
        DCR     B
        JNZ     SD6_TX
        MVI     B,16
SD6_RX:
        IN      SDDAT
        CPI     0FFH
        JNZ     SD6_DONE
        DCR     B
        JNZ     SD6_RX
SD6_DONE:
        RET

;------------------------------------------------------------------------
; SD_WAITTKN: clock until the card sends the 0FEh data-start token.
;   Returns CY=0 + A=0FEh on success, CY=1 if 255 bytes pass with no token.
;------------------------------------------------------------------------
SD_WAITTKN:
        MVI     B,0FFH
SD_WT:
        IN      SDDAT
        CPI     0FEH
        JZ      SD_WT_OK
        DCR     B
        JNZ     SD_WT
        STC
        RET
SD_WT_OK:
        ORA     A               ; clear CY
        RET

SDB_CMD0:   DB      40H,00H,00H,00H,00H,95H
SDB_CMD8:   DB      48H,00H,00H,01H,0AAH,87H
SDB_CMD55:  DB      77H,00H,00H,00H,00H,65H
SDB_ACMD41: DB      69H,40H,00H,00H,00H,77H   ; HCS bit -> SDHC/SDXC

MSGNOSD: DB 'NO CP/M ON SD',0C4H   ; 'D'|0x80 -- high-bit string terminator
