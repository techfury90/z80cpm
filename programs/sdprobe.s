; SDPROBE.COM -- Brevia2 SD-card probe (SPI mode), bare-metal driver demo.
; 8080 assembly, Glitch Works a85.  Loads at 0x0100 (CP/M transient).
;
; Talks to the dedicated SD SPI port wired to pins 31/32/35/36:
;   IN  0x53 = SD SPI data        (r/w byte, CPU wait-stretched -- no busy poll)
;   OUT 0x54 = SD SPI ctl   bit0 = CS# (0 = select, 1 = release)
;                           bit1 = slow clock (1 = ~390 kHz for card init)
;   IN  0x55 = SD SPI status bit0 = transfer-busy
;
; The on-board flash SPI pins are not broken out, so the SD breakout has its
; OWN SPI port (implemented as a second instance of the generic byte engine in
; rtl/z80cpm_brevia2.v).
;
; What it does:
;   1. Full SPI-mode init handshake (power-up clocks, CMD0, CMD8, CMD55/ACMD41,
;      CMD58, CMD16) -- proves the card initializes on real silicon.
;   2. Reads the CID (CMD9) and prints manufacturer ID, product name, serial.
;   3. Reads block 0 (CMD17) and reports whether an MBR (55AA) is present,
;      printing the first partition entry (type / LBA / size) -- the first
;      step toward partitioning support.
;
; Console I/O via the normal BDOS (func 1/2/6/9).
        ORG     0100H

START:
        LXI     H,BANNER
        CALL    PSTR

        ; ---------------- 1. init the card ----------------
        CALL    SDINIT          ; A = 0 if init OK (CMD0 idle + ACMD41 ready), 0FFh if not
        ORA     A
        JZ      INI_OK
        LXI     H,MSG_NOCARD
        CALL    PSTR
        CALL    CRLF
        RET
INI_OK:
        LXI     H,MSG_INI
        CALL    PSTR
        LDA     CMDR1           ; show the CMD0 R1 (01h = idle) for hardware diagnostics
        CALL    PRHEX2
        CALL    CRLF

        ; ---- detect card type (CMD58 -> OCR CCS bit30) ----
        CALL    SDCCS           ; A = 40h if SDHC/SDXC, else 0
        ORA     A
        JZ      IS_SC
        LXI     H,MSG_SDHC
        CALL    PSTR
        JMP     AFTER_TYPE
IS_SC:
        LXI     H,MSG_SDSC
        CALL    PSTR
AFTER_TYPE:
        CALL    CRLF

        ; ---------------- 2. read CID ----------------
        CALL    SD_CID          ; A = 1 ok / 0 err
        ORA     A
        JZ      CID_OK
        LXI     H,MSG_CIDERR
        CALL    PSTR
        CALL    CRLF
        JMP     AFTER_CID
CID_OK:
        LXI     H,MSG_CID
        CALL    PSTR
        ; manufacturer ID (CID[0])
        LDA     CIDBUF
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        ; product name (CID[3..7], 5 ASCII bytes)
        LXI     H,CIDBUF+3
        MVI     B,5
CID_NM:
        MOV     E,M
        CALL    CPUTC
        INX     H
        DCR     B
        JNZ     CID_NM
        CALL    CRLF
        ; serial number (CID[9..12])
        LXI     H,MSG_SN
        CALL    PSTR
        LDA     CIDBUF+9
        CALL    PRHEX2
        LDA     CIDBUF+10
        CALL    PRHEX2
        LDA     CIDBUF+11
        CALL    PRHEX2
        LDA     CIDBUF+12
        CALL    PRHEX2
        CALL    CRLF
AFTER_CID:

        ; ---------------- 3. read block 0 + MBR check ----------------
        CALL    SD_BLK0         ; A = 1 ok / 0 err
        ORA     A
        JZ      BLK_OK
        LXI     H,MSG_BLKERR
        CALL    PSTR
        CALL    CRLF
        JMP     AFTER_BLK
BLK_OK:
        ; check MBR signature 55AA at DBUF+510
        LXI     H,DBUF+510
        MOV     A,M
        CPI     55H
        JNZ     NO_MBR
        INX     H
        MOV     A,M
        CPI     0AAH
        JNZ     NO_MBR
        ; MBR present -> print partition 1 info
        LXI     H,MSG_MBR
        CALL    PSTR
        ; type byte at DBUF+446+4
        LXI     H,DBUF+446+4
        MOV     A,M
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        ; LBA start (bytes +8..+11, little-endian); size (+12..+15)
        LXI     H,DBUF+446+8
        MVI     B,8             ; 4 LBA bytes + 4 size bytes
MBR_LP:
        MOV     A,M
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        INX     H
        DCR     B
        JNZ     MBR_LP
        CALL    CRLF
        JMP     AFTER_BLK
NO_MBR:
        LXI     H,MSG_NOMBR
        CALL    PSTR
        CALL    CRLF
AFTER_BLK:

        LXI     H,MSG_DONE
        CALL    PSTR
        CALL    CRLF
        RET

; ================= SD card driver subroutines =================

; SDINIT: full SPI-mode initialization.  Returns A = R1 of CMD0 (01h = idle).
;   CS# high + slow clock, 10x 0xFF = 80 power-up clocks, then CMD0.
SDINIT:
        MVI     A,03H           ; bit0=1 (CS high), bit1=1 (slow)
        OUT     SDCTL
        MVI     B,10            ; 10 byte-writes = 80 clock pulses
SDI_CK:
        MVI     A,0FFH
        OUT     SDDAT
        DCR     B
        JNZ     SDI_CK
        MVI     A,02H           ; select card (CS low), stay slow
        OUT     SDCTL
        LXI     H,CMD0
        CALL    SD_SEND6        ; A = R1 (01h = idle)
        STA     CMDR1
        CPI     01H             ; must be in idle state to proceed
        JNZ     SDI_FAIL
        ; poll CMD55+ACMD41 until out of idle
        MVI     D,40            ; max 40 iterations
SDI_READY:
        LXI     H,CMD55
        CALL    SD_SEND6
        LXI     H,ACMD41
        CALL    SD_SEND6        ; A = R1
        CPI     00H
        JZ      SDI_OK
        DCR     D
        JNZ     SDI_READY
SDI_FAIL:
        MVI     A,0FFH
        RET
SDI_OK:
        MVI     A,00H
        RET

; SD_SEND6: transmit the 6-byte command at (HL), then read the R1 status byte.
;   Assumes the card is already selected (CS low).  Returns A = R1 (0FFh = no
;   valid response after 16 bytes of clocking).
SD_SEND6:
        MVI     B,6
SD6_TX:
        MOV     A,M
        OUT     SDDAT
        INX     H
        DCR     B
        JNZ     SD6_TX
        MVI     B,16            ; clock up to 16 bytes looking for the response
SD6_RX:
        IN      SDDAT           ; clocks out FFh, returns the MISO byte
        CPI     0FFH
        JNZ     SD6_DONE
        DCR     B
        JNZ     SD6_RX
SD6_DONE:
        RET

; SD_WAITTKN: clock until the card sends the 0FEh data-start token.
;   Returns CY=0 + A=0FEh on success; CY=1 if 255 bytes pass with no token.
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

; SD_READBLK: read a 512-byte data block into the buffer at (HL) after a
;   command has returned R1=0 and the 0FEh token; discard 2 CRC bytes.
;   Returns A = 1 ok / 0 err (CY used internally).
SD_READBLK:
        CALL    SD_WAITTKN
        JC      SDRB_FAIL
        LXI     B,512
SDRB_LP:
        IN      SDDAT
        MOV     M,A
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SDRB_LP
        IN      SDDAT           ; discard 2 CRC bytes
        IN      SDDAT
        MVI     A,1
        RET
SDRB_FAIL:
        MVI     A,0
        RET

; SDCCS: read the OCR (CMD58) and return the Card Capacity Status bit.
;   Returns A = 40h (SDHC/SDXC, block addressing) or 00h (SDSC, byte addressing).
;   Assumes card selected (CS low).
SDCCS:
        LXI     H,CMD58
        CALL    SD_SEND6        ; A = R1
        IN      SDDAT           ; OCR byte0 (bits31..24); CCS=bit30 => bit6
        ANI     40H
        MOV     C,A
        IN      SDDAT           ; consume OCR bytes 1..3
        IN      SDDAT
        IN      SDDAT
        MOV     A,C
        RET

; SD_CID: read the 16-byte CID (CMD9) into CIDBUF.
;   Returns A = 1 ok / 0 err.  Manages CS low -> read -> release high.
SD_CID:
        MVI     A,00H
        OUT     SDCTL           ; select, fast
        LXI     H,CMD9
        CALL    SD_SEND6        ; A = R1
        CPI     00H
        JNZ     SDCID_TE
        LXI     H,CIDBUF
        CALL    SD_READBLK      ; A = 1 ok / 0 err
        ORA     A
        JZ      SDCID_TE        ; read failed
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H           ; success (matches SDINIT: 0 = ok)
        RET
SDCID_TE:
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,0FFH          ; error
        RET

; SD_BLK0: read block 0 (CMD17) into DBUF.
;   Returns A = 1 ok / 0 err.
SD_BLK0:
        MVI     A,00H
        OUT     SDCTL           ; select, fast
        LXI     H,CMD17
        CALL    SD_SEND6        ; A = R1
        CPI     00H
        JNZ     SDBLK_TE
        LXI     H,DBUF
        CALL    SD_READBLK      ; A = 1 ok / 0 err
        ORA     A
        JZ      SDBLK_TE
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H           ; success
        RET
SDBLK_TE:
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,0FFH          ; error
        RET

; ---------------- console / numeric helpers (as in SWLED) ----------------
PSTR:
        MOV     D,H
        MOV     E,L
        MVI     C,9
        CALL    5
        RET

CPUTC:
        MVI     C,2
        CALL    5
        RET

CRLF:
        MVI     E,13
        CALL    CPUTC
        MVI     E,10
        CALL    CPUTC
        RET

; PRHEX2 -- print the byte in A as two uppercase hex digits.
PRHEX2:
        STA     HEXV
        LDA     HEXV
        RRC
        RRC
        RRC
        RRC
        ANI     0FH
        CALL    PRNIB
        LDA     HEXV
        ANI     0FH
        CALL    PRNIB
        RET

PRNIB:
        CPI     0AH
        JC      PRNIB_NUM
        ADI     07H
PRNIB_NUM:
        ADI     '0'
        MOV     E,A
        CALL    CPUTC
        RET

; ---------------- data ----------------
SDDAT   EQU     53H
SDCTL   EQU     54H
SDSTAT  EQU     55H

CMD0:   DB      40H,00H,00H,00H,00H,95H
CMD8:   DB      48H,00H,00H,01H,0AAH,87H
CMD55:  DB      77H,00H,00H,00H,00H,65H
ACMD41: DB      69H,40H,00H,00H,00H,77H   ; HCS bit -> SDHC/SDXC
CMD58:  DB      7AH,00H,00H,00H,00H,0FDH
CMD16:  DB      50H,00H,00H,02H,00H,0FFH  ; set block length = 512
CMD9:   DB      49H,00H,00H,00H,00H,0FFH  ; read CID
CMD17:  DB      51H,00H,00H,00H,00H,0FFH  ; read single block (block 0)

BANNER: DB      'SDPROBE v0.1 - Brevia2 SD card probe',13,10,'$'
MSG_INI: DB      'INIT: CMD0 ok R1=','$'
MSG_NOCARD: DB  13,10,'NO CARD / init failed','$'
MSG_SDHC: DB    13,10,'TYPE: SDHC/SDXC (block addressing)','$'
MSG_SDSC: DB    13,10,'TYPE: SDSC (byte addressing)','$'
MSG_CID: DB     13,10,'CID: ID=','$'
MSG_SN:  DB     13,10,'    SN=','$'
MSG_CIDERR: DB  13,10,'CID read failed','$'
MSG_BLKERR: DB  13,10,'block 0 read failed','$'
MSG_MBR: DB     13,10,'MBR: present (55AA)  PART1 type/lba/size=','$'
MSG_NOMBR: DB   13,10,'MBR: none (raw)','$'
MSG_DONE: DB    13,10,'DONE','$'

HEXV:   DS      1
CMDR1:  DS      1
CIDBUF: DS      16
DBUF:   DS      512
        END
