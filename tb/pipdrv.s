; pipdrv -- drive the CBIOS drive-C (SD) WRITE/READ path directly, PIP-style:
; write 128 sequential 128-byte records (records 0-127 = LBA1..LBA32), then
; read every record back and compare.  Return codes land in RAM for the sim
; harness to analyze:
;   0x0200+rec : WRITE return code (0=ok, 0FFh=error)
;   0x0300+rec : READBACK compare result (0=match, 1=mismatch)
; This is 8080 code for a85; the harness loads it at 0x0100 with the CP/M
; image (CCP+BDOS+CBIOS) already in RAM at 0xD000.

WRITEF  EQU     0E791H          ; CBIOS jump table WRITE  (BIOS+42)
READF   EQU     0E76DH          ; CBIOS jump table READ   (BIOS+39)
SELBL   EQU     0EB50H          ; CBIOS vars (current build)
TRKV    EQU     0EB51H
SECNV   EQU     0EB52H
DMAV    EQU     0EB53H

        ORG     0100H
        LXI     SP,0CE00H
        MVI     A,02H           ; SELBL = 2 (drive C)
        STA     SELBL
        LXI     H,00080H        ; DMA = 0x0080 (CP/M default buffer)
        SHLD    DMAV
;
; ---- phase 1: write records 0..127 ----
        MVI     E,0             ; E = record number
WLOOP:
        CALL    SETREC          ; TRK/SECN from E
        CALL    FILLDMA         ; DMA buffer = rec, rec+1, ... (128 bytes)
        CALL    WRITEF
        MOV     L,E
        MVI     H,02H
        MOV     M,A             ; 0x0200+rec = return code
        INR     E
        MOV     A,E
        CPI     128
        JC      WLOOP
;
; ---- phase 2: read back records 0..127 and compare ----
        MVI     E,0
RLOOP:
        CALL    SETREC
        CALL    READF
        ORA     A
        JNZ     RDIFF           ; read error -> count as mismatch
        ; compare DMA (0x80..0xFF) against expected E..E+127
        LXI     H,00080H
        MOV     A,E
        MVI     B,128
        MVI     C,0             ; C = mismatch flag
CMP1:
        CMP     M
        JZ      CMP2
        MVI     C,01H
CMP2:
        INR     A
        INX     H
        DCR     B
        JNZ     CMP1
        MOV     A,C
RDIFF:
        MOV     L,E
        MVI     H,03H
        MOV     M,A             ; 0x0300+rec = 0 ok / 1 mismatch / 0FFh read error
        INR     E
        MOV     A,E
        CPI     128
        JC      RLOOP
        HLT
;
; SETREC: TRK = E/32, SECN = E & 31
SETREC:
        MOV     A,E
        ANI     01FH
        STA     SECNV
        MOV     A,E
        RRC
        RRC
        RRC
        ANI     07H
        STA     TRKV
        RET
;
; FILLDMA: write pattern E, E+1, ... into the 128-byte DMA buffer
FILLDMA:
        LXI     H,00080H
        MOV     A,E
        MVI     B,128
FILL1:
        MOV     M,A
        INR     A
        INX     H
        DCR     B
        JNZ     FILL1
        RET

        END
