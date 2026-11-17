; idtest.s -- JEDEC ID read via 0x9F through the Z80, exactly like diskutil DO_ID:
; select CS# low, OUT 0x9F, then 3x IN 0x50, store at 0x2000, print.
        ORG 1000H
SFDATA  EQU 50H
SFCTL   EQU 51H
START:
        LXI SP,0E000H
        MVI A,00H
        OUT SFCTL                 ; CS# select
        MVI A,09FH
        OUT SFDATA                ; JEDEC ID opcode (0x9F, NO dummy byte)
        IN  SFDATA                ; manufacturer
        STA 2000H
        IN  SFDATA                ; device id 1
        STA 2001H
        IN  SFDATA                ; device id 2
        STA 2002H
        MVI A,01H
        OUT SFCTL                 ; CS# release
        ; print the 3 ID bytes from 0x2000
        LXI H,2000H
        MVI B,3
P:      MOV A,M
        CALL PRTBYTE
        MVI A,' '
        CALL COUT
        INX H
        DCR B
        JNZ P
        MVI A,0DH
        CALL COUT
        MVI A,0AH
        CALL COUT
        HLT
COUT:   PUSH PSW
COUT1:  IN  80H
        ANI 01H
        JNZ COUT1
        POP PSW
        OUT 81H
        RET
PRTBYTE:
        PUSH PSW
        ANI 0F0H
        RRC
        RRC
        RRC
        RRC
        CALL PRTH1
        POP PSW
        ANI 0FH
PRTH1:  ADI 90H
        DAA
        ACI 40H
        DAA
        JMP COUT
        END
