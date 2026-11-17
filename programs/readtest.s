; readtest.s -- issue a single 0x03 READ command at flash 0x000000 and read
; back 16 sequential bytes from port 0x50, storing them at 0x2000, then print
; them.  Mirrors diskutil's DO_READ path through the Z80 bus (CPU wait-stretched
; 0x50 accesses) so any engine over-clock / free-run shows up.
        ORG 1000H
SFDATA  EQU 50H
SFCTL   EQU 51H
START:
        LXI SP,0E000H
        MVI A,00H
        OUT SFCTL                 ; CS# select
        MVI A,03H
        OUT SFDATA                ; Read opcode
        MVI A,00H
        OUT SFDATA                ; A23-A16
        MVI A,00H
        OUT SFDATA                ; A15-A8
        MVI A,00H
        OUT SFDATA                ; A7-A0
        LXI H,2000H
        MVI B,16
LP:     IN  SFDATA                ; next byte
        MOV M,A
        INX H
        DCR B
        JNZ LP
        MVI A,01H
        OUT SFCTL                 ; CS# release
        ; print the 16 bytes from 0x2000
        LXI H,2000H
        MVI B,16
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
