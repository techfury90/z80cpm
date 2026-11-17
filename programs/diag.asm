; DIAG.COM -- report CP/M current-drive / seldisk state on Brevia2
; 8080 assembly, assembled with the Glitch Works a85 8085 cross-assembler.
; Loads at 0x0100 (CP/M transient). Calls BDOS entry 0x0005.
; Prints:
;   CUR=  <func25 result>            current selected drive (0=A,1=B,...)
;   SFUN  <func25 after sel A>
;   SELB  <func25 after sel B>
;   FCB0  <drive byte at 0x005C>     what the CCP left in the default FCB
        ORG     0100H
START:
        MVI     C,25
        CALL    5
        MOV     B,A
        LXI     H,MSG_CUR
        CALL    PSTR
        CALL    PRHEX
        CALL    CRLF
        ; select drive A (func14, E=0), then func25
        MVI     C,14
        MVI     E,0
        CALL    5
        MVI     C,25
        CALL    5
        MOV     B,A
        LXI     H,MSG_SELA
        CALL    PSTR
        CALL    PRHEX
        CALL    CRLF
        ; select drive B (func14, E=1), then func25
        MVI     C,14
        MVI     E,1
        CALL    5
        MVI     C,25
        CALL    5
        MOV     B,A
        LXI     H,MSG_SELB
        CALL    PSTR
        CALL    PRHEX
        CALL    CRLF
        ; FCB drive byte at 0x005C
        LDA     005CH
        MOV     B,A
        LXI     H,MSG_FCB
        CALL    PSTR
        CALL    PRHEX
        CALL    CRLF
        RET

; print $ terminated string at HL via BDOS func9
PSTR:   MOV     D,H
        MOV     E,L
        MVI     C,9
        CALL    5
        RET

CRLF:   MVI     E,13
        MVI     C,2
        CALL    5
        MVI     E,10
        MVI     C,2
        CALL    5
        RET

; print byte in B as two hex digits via BDOS func2
PRHEX:  MOV     A,B
        ANI     0F0H
        RLC
        RLC
        RLC
        RLC
        CALL    PRNIB
        MOV     A,B
        ANI     0FH
        CALL    PRNIB
        RET

PRNIB:  ADI     30H
        CPI     3AH
        JC      PRNIB1
        ADI     7
PRNIB1: MOV     E,A
        MVI     C,2
        CALL    5
        RET

MSG_CUR: DB 13,10,'CUR=','$'
MSG_SELA: DB 'SELA=','$'
MSG_SELB: DB 'SELB=','$'
MSG_FCB: DB 'FCB0=','$'
        END
