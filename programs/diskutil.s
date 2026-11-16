; ============================================================================
; diskutil.s -- standalone RAM-disk maintenance utility for the Brevia2 Z80.
;
; Runs entirely OUTSIDE of CP/M. Loaded via GWMON-80 'L', run via 'G 1000'.
; Uses the console UART (0x80 status / 0x81 data) for BOTH the menu and the
; XMODEM file transfer, and the RAM-disk controller (0x20 DATA auto-inc,
; 0x21 ADDR lo, 0x22 ADDR hi) for the CP/M disk layout in bank B.
;
; Commands:
;   F  -- format drive A: (write 0xE5 to the 2K directory area)
;   U  -- XMODEM upload (checksum mode): receive a file from the host PC and
;         write it to the RAM disk as a CP/M file (multi-extent for >16K).
;   D  -- XMODEM download: send a file from the RAM disk to the host PC.
;   H  -- help
;
; XMODEM receive retries the initiating NAK with a ~1.5s timeout each cycle,
; so the host (Tera Term / minicom) picks it up even if it starts the transfer
; AFTER we began waiting. Supports checksum blocks (SOH) and CRC blocks (STX).
;
; Assembled with the Glitch Works a85 8085 cross-assembler (same as cbios.asm).
; ============================================================================

        ORG     1000H

; ---------------- Processor I/O ports ----------------
USTAT   EQU     80H                     ; UART status (bit0 tx_busy, bit1 rx_avail)
UDATA   EQU     81H                     ; UART data (read=RX char, write=TX char)
RDDATA  EQU     20H                     ; RAM disk DATA (read/write, auto-increment)
RDADRL  EQU     21H                     ; RAM disk ADDR low
RDADRH  EQU     22H                     ; RAM disk ADDR high

; ---------------- CP/M drive A: disk layout (bank B) ----------------
DIRBASE EQU     2000H                   ; directory area base (2K = 64 entries)
DBLOCK0 EQU     2800H                   ; first USER data block (block 2) base
BLKSZ   EQU     1024                    ; block size (1K)
RECSZ   EQU     128                     ; CP/M record size

; ---------------- XMODEM control bytes ----------------
XM_SOH  EQU     01H
XM_STX  EQU     02H
XM_EOT  EQU     04H
XM_ACK  EQU     06H
XM_NAK  EQU     15H
XM_CAN  EQU     18H
XM_TO   EQU     0FEH                    ; internal: RX timeout marker

; ---------------- Workspace (bank A SRAM, well below the CCP at 0xE400) ----------------
XMBUF   EQU     2000H                   ; 128-byte XMODEM block buffer
FCB     EQU     2100H                   ; 32-byte FCB (extent 0) in RAM
FCB2    EQU     2120H                   ; 32-byte FCB (extent 1) in RAM
RCNT_L  EQU     2160H                   ; total records received (16-bit, L then H)
FNAME   EQU     2180H                   ; 9-byte user filename (name.ext)

; ============================================================================
        JMP     START

; ---------------- UART primitives ----------------
; TXCHAR: output char in A; poll tx_busy(bit0) low.
TXCHAR: PUSH    PSW
TXCH1:  IN      USTAT
        ANI     01H
        JNZ     TXCH1
        POP     PSW
        OUT     UDATA
        RET

; RXCHAR: block until a char, return it in A.
RXCHAR: IN      USTAT
        ANI     02H
        JZ      RXCHAR
        IN      UDATA
        RET

; RXCHAR_T: receive a char with a ~1.5s timeout.
;   Returns: carry CLEAR + A=char if a char arrived; carry SET if timeout.
RXCHAR_T:
        MVI     B,0B0H                  ; outer count
RT_L2:  MVI     C,0B0H                  ; mid count
RT_L1:  MVI     D,0B0H                  ; inner count
RT_L0:  IN      USTAT
        ANI     02H
        JNZ     RT_HAVE
        DCR     D
        JNZ     RT_L0
        DCR     C
        JNZ     RT_L1
        DCR     B
        JNZ     RT_L2
        STC                             ; timeout
        RET
RT_HAVE:
        IN      UDATA                   ; char
        STC
        CMC                             ; carry clear (char read)
        RET

; CRLF: send CR + LF.
CRLF:   MVI     A,0DH
        CALL    TXCHAR
        MVI     A,0AH
        CALL    TXCHAR
        RET

; PRTSTR: print NUL-terminated string at HL.
PRTSTR: MOV     A,M
        ORA     A
        RZ
        CALL    TXCHAR
        INX     H
        JMP     PRTSTR

; PRTBYTE: print A as two hex digits.
PRTBYTE: PUSH    PSW
        ANI     0F0H
        RRC
        RRC
        RRC
        RRC
        CALL    PRTH1
        POP     PSW
        ANI     0FH
PRTH1:  ADI     90H
        DAA
        ADI     40H
        DAA
        JMP     TXCHAR

; ---------------- RAM-disk primitives (bank B) ----------------
RDSETA: MOV     A,L
        OUT     RDADRL
        MOV     A,H
        OUT     RDADRH
        RET

; ============================================================================
; START
; ============================================================================
START:  LXI     SP,0F000H               ; stack high in bank A (clear of code/buffers)
        LXI     H,MSGBANNER
        CALL    PRTSTR
MENU:   LXI     H,MSGMENU
        CALL    PRTSTR
        CALL    RXCHAR                  ; wait for a command char
        ANI     0DFH                    ; force uppercase (accept lowercase)
        CPI     'F'
        JZ      DO_FMT
        CPI     'U'
        JZ      DO_UPLOAD
        CPI     'D'
        JZ      DO_DOWNLOAD
        CPI     'H'
        JZ      DO_HELP
        JMP     MENU

; ---------------- command: format ----------------
DO_FMT: LXI     H,MSGFMT
        CALL    PRTSTR
        LXI     H,DIRBASE
        CALL    RDSETA
        LXI     B,2048                  ; 2K directory
        MVI     A,0E5H
FMTW:   OUT     RDDATA                  ; write 0xE5 (auto-increment)
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     FMTW
        LXI     H,MSGFMTOK
        CALL    PRTSTR
        JMP     MENU

DO_HELP: LXI     H,MSGHELP
        CALL    PRTSTR
        JMP     MENU

; ============================================================================
; DO_UPLOAD -- XMODEM (checksum/CRC) receive a file, write it as a CP/M file.
; ============================================================================
DO_UPLOAD:
        LXI     H,MSGPROMPT
        CALL    PRTSTR
        CALL    READNAME                ; read "name.ext" into FNAME (echoed)
        LXI     H,0000H
        SHLD    RCNT_L                  ; init record counter
        LXI     H,MSGRECV
        CALL    PRTSTR
        MVI     A,XM_NAK                ; kick off with a checksum NAK
        CALL    TXCHAR

UPLOOP: CALL    GETBLK                  ; A=TO(timeout),01 good,FF bad,00 EOT,02 CAN
        CPI     XM_TO
        JZ      UP_NAK                  ; timeout -> resend NAK, keep waiting
        CPI     02H
        JZ      UP_NAK                  ; CAN
        CPI     00H
        JZ      UP_EOT
        CPI     0FFH
        JZ      UP_NAK                  ; bad block -> NAK
        ; good block -> write it to the disk
        CALL    WRITEBLK
        MVI     A,XM_ACK
        CALL    TXCHAR
        MVI     A,'.'
        CALL    TXCHAR
        JMP     UPLOOP
UP_NAK: MVI     A,XM_NAK
        CALL    TXCHAR
        JMP     UPLOOP

UP_EOT: MVI     A,XM_ACK
        CALL    TXCHAR
        CALL    CRLF
        CALL    WRITEFCB                ; write directory entries
        LXI     H,MSGDONE
        CALL    PRTSTR
        LHLD    RCNT_L
        MOV     A,H
        CALL    PRTBYTE
        MOV     A,L
        CALL    PRTBYTE
        CALL    CRLF
        JMP     MENU

; ============================================================================
; GETBLK -- receive one XMODEM block into XMBUF.
; Returns A: XM_TO(timeout), 00=EOT, 01=good, FF=bad, 02=CAN.
; (First byte uses the timed read so we can retry the NAK on timeout; the rest
;  of the block uses blocking reads because the host sends them back-to-back.)
; ============================================================================
GETBLK: CALL    RXCHAR_T
        JC      GT_TIMEOUT              ; carry set = timeout
        CPI     XM_EOT
        JZ      GT_EOT
        CPI     XM_CAN
        JZ      GT_CAN
        CPI     XM_SOH
        JZ      GT_SOH
        CPI     XM_STX
        JZ      GT_STX
        JMP     GETBLK                  ; stray byte (e.g. 'rx name'), ignore

GT_TIMEOUT:
        MVI     A,XM_TO
        RET
GT_EOT: XRA     A
        RET
GT_CAN: MVI     A,02H
        RET

; ---- SOH: checksum block (blkno, ~blkno, 128 data, 1-byte checksum) ----
GT_SOH: CALL    RXCHAR
        MOV     B,A                     ; blkno
        CALL    RXCHAR
        XRA     B                       ; ~blkno ^ blkno
        CPI     0FFH
        JNZ     GT_BAD
        LXI     H,XMBUF
        MVI     E,00H
        MVI     C,128
GT_LP:  CALL    RXCHAR
        MOV     M,A
        ADD     E
        MOV     E,A
        INX     H
        DCR     C
        JNZ     GT_LP
        CALL    RXCHAR                  ; checksum byte
        CMP     E
        JNZ     GT_BAD
        MVI     A,01H
        RET

; ---- STX: CRC block (blkno, ~blkno, 128 data, 2-byte CRC-16) ----
GT_STX: CALL    RXCHAR
        MOV     B,A                     ; blkno
        CALL    RXCHAR
        XRA     B
        CPI     0FFH
        JNZ     GT_BAD
        LXI     H,XMBUF
        MVI     C,128
GT_LP2: CALL    RXCHAR
        MOV     M,A
        INX     H
        DCR     C
        JNZ     GT_LP2
        ; compute CRC-16 XMODEM over XMBUF -> D: E (D high, E low)
        LXI     H,XMBUF
        LXI     D,0000H                 ; crc = 0
        MVI     C,128
GT_CRC: MOV     A,M
        MOV     B,A
        MOV     A,D
        XRA     B                       ; crc_hi ^= byte
        MOV     D,A
        MVI     B,08H
GTCB:   MOV     A,D
        ANI     80H                     ; crc & 0x8000 ?
        JZ      GTCS
        ANA     A                       ; clear carry
        MOV     A,E
        RAL                             ; E = E<<1 (carry = old E bit7)
        MOV     E,A
        MOV     A,D
        RAL                             ; D = D<<1 | old E bit7
        MOV     D,A
        MOV     A,D
        XRI     10H                     ; crc ^= 0x1021 (hi)
        MOV     D,A
        MOV     A,E
        XRI     21H                     ; crc ^= 0x1021 (lo)
        MOV     E,A
        DCR     B
        JNZ     GTCB
        INX     H
        DCR     C
        JNZ     GT_CRC
        JMP     GT_CHK
GTCS:   ANA     A                       ; clear carry
        MOV     A,E
        RAL
        MOV     E,A
        MOV     A,D
        RAL
        MOV     D,A
        DCR     B
        JNZ     GTCB
        INX     H
        DCR     C
        JNZ     GT_CRC
GT_CHK:
        INX     H
        DCR     C
        JNZ     GT_CRC
        ; read 2 CRC bytes (high, low), compare
        CALL    RXCHAR
        MOV     B,A                     ; received crc hi
        CALL    RXCHAR
        CMP     E                       ; compare low
        JNZ     GT_BAD
        MOV     A,B
        CMP     D                       ; compare high
        JNZ     GT_BAD
        MVI     A,01H
        RET

GT_BAD: MVI     A,0FFH
        RET

; ============================================================================
; WRITEBLK -- write the 128 good bytes in XMBUF to the RAM disk at the current
;   file position. Position = DBLOCK0 + RCNT_L*128. (Blocks contiguous; block #
;   = RCNT/8 + 2.)
; ============================================================================
WRITEBLK:
        LHLD    RCNT_L
        MOV     D,H
        MOV     E,L
        MVI     B,07H
WBLK_SHL:
        MOV     A,E
        ADD     A
        MOV     E,A
        MOV     A,D
        RAL
        MOV     D,A
        DCR     B
        JNZ     WBLK_SHL
        LXI     H,DBLOCK0
        DAD     D
        CALL    RDSETA
        LXI     H,XMBUF
        MVI     C,128
WBLK:   MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WBLK
        LHLD    RCNT_L
        INX     H
        SHLD    RCNT_L
        RET

; ============================================================================
; WRITEFCB -- write the FCB directory entry/entries for the received file.
;   Single extent (<=16K) -> one slot; >16K -> two slots (extents 0 and 1).
; ============================================================================
WRITEFCB:
        CALL    BUILD_FCB               ; builds FCB (and FCB2 copy) with name/ext
        LHLD    RCNT_L
        MOV     A,H
        ORA     A
        JNZ     WFC_TWO
        MOV     A,L
        CPI     129
        JNC     WFC_TWO
        ; ---- single extent (<=16K) ----
        MVI     A,00H
        STA     FCB+12                  ; EX=0
        STA     FCB+13                  ; S1=0
        STA     FCB+14                  ; S2=0
        LHLD    RCNT_L
        MOV     A,L
        STA     FCB+15                  ; RC = records
        CALL    SETALLO                 ; fill FCB+16..31 (blocks from 2)
        CALL    WDIRFCB
        RET

WFC_TWO:
        MVI     A,00H
        STA     FCB+12
        STA     FCB+13
        STA     FCB+14
        MVI     A,128
        STA     FCB+15
        CALL    SETALLO
        LHLD    RCNT_L
        MOV     A,L
        SUI     128
        MOV     L,A
        MOV     A,H
        SBI     00H
        MOV     H,A
        MOV     A,L
        STA     FCB2+15                 ; RC extent 1
        MVI     A,01H
        STA     FCB2+12                 ; EX=1
        STA     FCB2+13
        STA     FCB2+14
        CALL    SETALLO2
        CALL    WDIRFCB
        LXI     H,DIRBASE+32
        CALL    RDSETA
        LXI     H,FCB2
        MVI     C,32
WFC2B:  MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WFC2B
        RET

WDIRFCB: LXI     H,DIRBASE
        CALL    RDSETA
        LXI     H,FCB
        MVI     C,32
WDF:    MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WDF
        RET

SETALLO:
        LDA     FCB+15
        ADI     07H
        RRC
        RRC
        RRC
        ANI     1FH
        MOV     B,A
        LXI     H,FCB+16
        MVI     A,02H
SA1:    MOV     M,A
        INX     H
        INR     A
        DCR     B
        JNZ     SA1
        RET

SETALLO2:
        LDA     FCB2+15
        ADI     07H
        RRC
        RRC
        RRC
        ANI     1FH
        MOV     B,A
        LXI     H,FCB2+16
        MVI     A,18H
SA21:   MOV     M,A
        INX     H
        INR     A
        DCR     B
        JNZ     SA21
        RET

; ============================================================================
; READNAME -- read "name.ext" (max 9 chars) from console into FNAME, echoing.
; ============================================================================
READNAME:
        LXI     H,FNAME
        MVI     B,9
RN1:    CALL    RXCHAR
        CPI     0DH
        JZ      RN_DONE
        CPI     08H                     ; ^H backspace
        JZ      RN_BS
        CPI     7FH                     ; DEL backspace
        JZ      RN_BS
        MOV     M,A
        CALL    TXCHAR                  ; ECHO the char
        INX     H
        DCR     B
        JNZ     RN1
        JMP     RN_DONE
RN_BS:  ; backspace: erase from the screen and back the buffer up (if possible)
        MVI     A,08H
        CALL    TXCHAR
        MVI     A,20H
        CALL    TXCHAR
        MVI     A,08H
        CALL    TXCHAR
        MOV     A,B
        CPI     9
        JZ      RN1                     ; buffer full, at start -> nothing to back up
        DCX     H
        INR     B
        JMP     RN1
RN_DONE: MVI     A,00H
        MOV     M,A                     ; NUL terminate
        CALL    CRLF
        RET

; ============================================================================
; BUILD_FCB -- parse FNAME into the 32-byte FCB (and copy into FCB2).
; ============================================================================
BUILD_FCB:
        LXI     H,FCB
        MVI     B,64                    ; zero both FCBs (2 x 32)
BF_Z:   MVI     A,00H
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_Z
        LXI     D,FNAME
        LXI     H,FCB+1
        MVI     B,8
BF_N:   LDAX    D
        CPI     00H
        JZ      BF_NPAD
        CPI     '.'
        JZ      BF_GOTEXT
        MOV     M,A
        INX     H
        INX     D
        DCR     B
        JNZ     BF_N
        LDAX    D
        CPI     '.'
        JNZ     BF_EXT0
        INX     D
        JMP     BF_EXT
BF_GOTEXT:
BF_NPAD: MVI     A,' '
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_NPAD
        INX     D                       ; skip '.'
BF_EXT: LXI     H,FCB+9
        MVI     B,3
BF_E:   LDAX    D
        CPI     00H
        JZ      BF_EXT_PAD
        CPI     '.'
        JZ      BF_EXT_SKIP
        MOV     M,A
        INX     H
        INX     D
        DCR     B
        JNZ     BF_E
        JMP     BF_EXT0
BF_EXT_SKIP:
        INX     D
        JMP     BF_E
BF_EXT_PAD:
        MVI     A,' '
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_EXT_PAD
BF_EXT0:
        LXI     H,FCB
        MVI     M,00H                   ; drive = 0 (A:)
        LXI     H,FCB
        LXI     D,FCB2
        MVI     B,32
BF_C:   MOV     A,M
        STAX    D
        INX     H
        INX     D
        DCR     B
        JNZ     BF_C
        RET

; ============================================================================
; DO_DOWNLOAD -- XMODEM send dir-slot-0 file's extent 0 to the host (checksum).
; ============================================================================
DO_DOWNLOAD:
        LXI     H,MSGDL
        CALL    PRTSTR
        LXI     H,DIRBASE+15
        CALL    RDSETA
        IN      RDDATA                  ; A = RC (extent 0)
        STA     SEND_RC
        CALL    RXCHAR                  ; wait for NAK/'C' from host
        CALL    XM_SENDFILE
        JMP     MENU

XM_SENDFILE:
        LDA     SEND_RC
        MOV     B,A                     ; B = records to send
        MVI     A,01H
        STA     XS_BLK
        LXI     H,DBLOCK0
        SHLD    XS_ADDR
XS_LOOP: MOV     A,B
        ORA     A
        JZ      XS_DONE
        MVI     A,XM_SOH
        CALL    TXCHAR
        LDA     XS_BLK
        CALL    TXCHAR
        MOV     C,A
        CMA
        CALL    TXCHAR
        LHLD    XS_ADDR
        CALL    RDSETA
        MVI     E,00H
        MVI     C,128
XS_DATA: IN      RDDATA
        ADD     E
        MOV     E,A
        DCR     C
        JNZ     XS_DATA
        MOV     A,E
        CALL    TXCHAR                  ; checksum
        LHLD    XS_ADDR
        LXI     D,0128H
        DAD     D
        SHLD    XS_ADDR
        CALL    RXCHAR
        CPI     XM_ACK
        JNZ     XS_LOOP                 ; NAK/unknown -> resend
        LDA     XS_BLK
        INR     A
        STA     XS_BLK
        MOV     A,B
        DCR     A
        MOV     B,A
        JNZ     XS_LOOP
XS_DONE:
        MVI     A,XM_EOT
        CALL    TXCHAR
        CALL    RXCHAR
        CPI     XM_ACK
        JZ      XS_END
        MVI     A,XM_EOT
        CALL    TXCHAR
        CALL    RXCHAR
XS_END: LXI     H,MSGDLDONE
        CALL    PRTSTR
        JMP     MENU

SEND_RC: DS     1
XS_BLK:  DS     1
XS_ADDR: DS     2

; ============================================================================
; Messages
; ============================================================================
MSGBANNER: DB 'Z80 Brevia2 RAM-disk utility',0DH,0AH,0
MSGMENU:   DB 'F)ormat U)pload D)ownload H)elp > ',0
MSGHELP:   DB 'F=format A:  U=xmodem receive  D=xmodem send',0DH,0AH,0
MSGFMT:    DB 'Formatting...',0DH,0AH,0
MSGFMTOK:  DB 'Format OK.',0DH,0AH,0
MSGPROMPT: DB 'Receive FILENAME (8.3): ',0
MSGRECV:   DB 'Receiving (xmodem)...',0DH,0AH,0
MSGDONE:   DB 'Received. Records(hi lo): ',0
MSGDL:     DB 'Sending (xmodem)...',0DH,0AH,0
MSGDLDONE: DB 'Send complete.',0DH,0AH,0

        END
