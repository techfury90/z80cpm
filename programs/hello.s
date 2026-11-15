; M3: console test on the custom 8N1 UART.
; 1) print "Hello from Z80!\r\n"; 2) echo every received char.
; Ports: 0x80=status (bit0 tx_busy, bit1 rx_avail), 0x81 = TX(d)/RX(d).
        ORG 0000H
        LXI H,MSG
PRT:    MOV A,M
        ORA A
        JZ ECHO
        CALL PUTC
        INX H
        JMP PRT
ECHO:   CALL CIN
        CALL PUTC
        JMP ECHO
PUTC:   PUSH PSW
PUTC1:  IN 80H         ; status
        ANI 01H        ; tx_busy
        JNZ PUTC1      ; wait until not busy
        POP PSW
        OUT 81H        ; TX data
        RET
CIN:    PUSH PSW
CIN1:   IN 80H
        ANI 02H        ; rx_avail
        JZ CIN1        ; wait until available
        IN 81H         ; read data (consumes)
        MOV B,A
        POP PSW
        MOV A,B
        RET
MSG:    DB "Hello from Z80!",0DH,0AH,0
        END
