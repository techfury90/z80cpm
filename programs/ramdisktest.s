; ramdisktest.s -- test the I/O-mapped RAM disk (bank B, ports 0x20/0x21/0x22).
; RUN VIA GWMON-80:  L   (load hex)   then   G 1000
;
; Writes a 256-byte pattern (address_low ^ 0xAA) to disk addresses 0x0000..0x00FF
; via the auto-increment data port, then reads it all back and verifies.
; Prints "RAM DISK TEST PASS" or "RAM DISK TEST FAIL".
; Uses the Brevia2 UART (0x80 status / 0x81 data) for the banner.
        ORG 1000H
START:
        LXI SP, 0FF00H
; ---- set disk address to 0x0000 and fill 256 bytes ----
        MVI A, 00H
        OUT 21H                 ; address low byte
        OUT 22H                 ; address high byte -> disk addr = 0x0000
        MVI B, 00H              ; pattern counter
FILL:
        MOV A, B
        XRI 0AAH                ; pattern = (B ^ 0xAA)
        OUT 20H                 ; write byte, auto-increment
        INR B
        MOV A, B
        CPI 00H                 ; wrapped -> 256 bytes written
        JNZ FILL
; ---- reset address and read back / verify ----
        MVI A, 00H
        OUT 21H
        OUT 22H                 ; disk addr = 0x0000
        MVI B, 00H
VERIFY:
        IN 20H                  ; read byte, auto-increment
        MOV C, A                ; save the byte read from the disk
        MOV A, B
        XRI 0AAH                ; expected = (B ^ 0xAA)
        CMP C
        JNZ FAIL
        INR B
        MOV A, B
        CPI 00H
        JNZ VERIFY
; ---- PASS ----
        LXI H, OKMSG
        CALL PRTSTR
        RET
FAIL:
        LXI H, FAILMSG
        CALL PRTSTR
        RET
; ---- subroutines ----
PRTSTR:
        MOV A, M
        ORA A
        JZ  PRTEND
        CALL COUT
        INX H
        JMP PRTSTR
PRTEND:
        RET
COUT:
        PUSH PSW
COUT1:
        IN  80H
        ANI 01H
        JNZ COUT1
        POP PSW
        OUT 81H
        RET
OKMSG:
        DB  'RAM DISK TEST PASS',0DH,0AH,0
FAILMSG:
        DB  'RAM DISK TEST FAIL',0DH,0AH,0
        END
