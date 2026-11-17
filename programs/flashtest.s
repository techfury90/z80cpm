; flashtest.s -- read the SST25VF020 JEDEC ID and do a program/read/erase
; round trip through the Z80 bus, using the SPI byte-engine ports.
;
; RUN VIA GWMON-80:  L   (load hex)   then   G 1000
;
; The byte engine stretches the CPU wait during each 0x50 access, so IN/OUT 0x50
; are used back-to-back with no busy polling (each transfer completes within the
; access).  Ports: 0x50 SPI data, 0x51 SPI ctl (bit0 = CS#), 0x52 SPI status.
; Prints the JEDEC ID (first byte MUST be 0xBF) and PASS/FAIL for the
; program/read/erase round trip.
        ORG 1000H
SFDATA  EQU 50H
SFCTL   EQU 51H

START:
        LXI SP,0E000H
        LXI H,MSGBANNER
        CALL PRTSTR

        ; ===== JEDEC ID (must return BF xx xx) =====
        MVI A,00H
        OUT SFCTL                 ; CS# select
        MVI A,9FH
        OUT SFDATA                ; JEDEC ID opcode
        IN  SFDATA                ; manufacturer
        MOV C,A
        IN  SFDATA                ; device id lo
        MOV D,A
        IN  SFDATA                ; device id hi
        MOV E,A
        MVI A,01H
        OUT SFCTL                 ; CS# release
        LXI H,MSGID
        CALL PRTSTR
        MOV A,C
        CALL PRTBYTE
        MVI A,' '
        CALL COUT
        MOV A,D
        CALL PRTBYTE
        MVI A,' '
        CALL COUT
        MOV A,E
        CALL PRTBYTE
        CALL CRLF
        MOV A,C
        CPI 0BFH
        JNZ FAIL

        ; ===== Byte Program pattern 0xAA at flash address 0x000000 =====
        MVI A,00H
        OUT SFCTL
        MVI A,06H
        OUT SFDATA                ; WREN
        MVI A,01H
        OUT SFCTL
        MVI A,00H
        OUT SFCTL
        MVI A,02H
        OUT SFDATA                ; byte program
        MVI A,00H
        OUT SFDATA                ; addr A23..A16
        MVI A,00H
        OUT SFDATA                ; addr A15..A8
        MVI A,00H
        OUT SFDATA                ; addr A7..A0
        MVI A,0AAH
        OUT SFDATA                ; data byte
        MVI A,01H
        OUT SFCTL

        ; read it back -> expect 0xAA
        MVI A,00H
        OUT SFCTL
        MVI A,03H
        OUT SFDATA                ; read
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        IN  SFDATA
        MOV C,A
        MVI A,01H
        OUT SFCTL
        LXI H,MSGRD
        CALL PRTSTR
        MOV A,C
        CALL PRTBYTE
        CALL CRLF
        MOV A,C
        CPI 0AAH
        JNZ FAIL

        ; ===== Sector Erase the 4 KB sector at 0x000000 =====
        MVI A,00H
        OUT SFCTL
        MVI A,06H
        OUT SFDATA                ; WREN
        MVI A,01H
        OUT SFCTL
        MVI A,00H
        OUT SFCTL
        MVI A,20H
        OUT SFDATA                ; sector erase (4 KB)
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        MVI A,01H
        OUT SFCTL

        ; read back -> expect 0xFF (erased)
        MVI A,00H
        OUT SFCTL
        MVI A,03H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        MVI A,00H
        OUT SFDATA
        IN  SFDATA
        MOV C,A
        MVI A,01H
        OUT SFCTL
        LXI H,MSGER
        CALL PRTSTR
        MOV A,C
        CALL PRTBYTE
        CALL CRLF
        MOV A,C
        CPI 0FFH
        JNZ FAIL

        LXI H,MSGPASS
        CALL PRTSTR
        RET
FAIL:
        LXI H,MSGFAIL
        CALL PRTSTR
        RET

; ---- helpers ----
PRTSTR:
        MOV A,M
        ORA A
        JZ  PRTEND
        CALL COUT
        INX H
        JMP PRTSTR
PRTEND: RET
COUT:
        PUSH PSW
COUT1:
        IN  80H
        ANI 01H
        JNZ COUT1
        POP PSW
        OUT 81H
        RET
CRLF:
        MVI A,0DH
        CALL COUT
        MVI A,0AH
        CALL COUT
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
PRTH1:
        ADI 90H
        DAA
        ACI 40H
        DAA
        JMP COUT

MSGBANNER: DB 'Brevia2 SPI flash test',0DH,0AH,0
MSGID:     DB 'JEDEC ID: ',0
MSGRD:     DB 'Pgm read: ',0
MSGER:     DB 'Ers read: ',0
MSGPASS:   DB 0DH,0AH,'FLASH TEST PASS',0DH,0AH,0
MSGFAIL:   DB 0DH,0AH,'FLASH TEST FAIL',0DH,0AH,0
        END
