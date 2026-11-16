; hello_ram -- demo program to LOAD and RUN from GWMON-80 via the 'L' and 'G'
; commands. ORG 0x1000 (SRAM, above the monitor's ROM window). Prints a message
; on the Brevia2 custom UART (ports 0x80 status / 0x81 data), then RETs back to
; the monitor (GWMON places its warm-start address on the stack before 'G').
        ORG 1000H
START:
        LXI     H,MSG          ; point at the message
NEXT:
        MOV     A,M
        ORA     A
        JZ      DONE           ; end of string (NUL) -> done
        CALL    PUTC
        INX     H
        JMP     NEXT
DONE:
        RET                    ; return to GWMON (warm start is on the stack)
PUTC:
        PUSH    PSW            ; preserve char
WAIT:
        IN      80H            ; console status
        ANI     01H            ; tx_busy (bit0, 1=busy)
        JNZ     WAIT           ; wait until transmitter idle
        POP     PSW
        OUT     81H            ; write char to TX data port
        RET
MSG:
        DB      'Hello from SRAM!',0DH,0AH,'- GWMON L/G demo',0DH,0AH,0
        END
