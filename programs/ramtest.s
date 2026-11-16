; ramtest.s -- RAM test for the Brevia2 external SRAM (bank A, the 64K machine).
;
; RUN VIA GWMON-80:
;   L            <- load the Intel HEX below
;   G 1000       <- run it
;
; Tests the SRAM range 0x1200..0xFDFF (leaving the program's own code at
; 0x1000+ and the monitor stack near 0xFF00 untouched) for stuck bits, data
; faults and address-line faults using:
;   Pass 1: 0xAA then 0x55 write/read/verify on every byte
;   Pass 2: an address-derived pattern (H^L) to catch address/data-bus faults
; Prints "RAM TEST PASS" or "RAM FAIL @ AAAA" via the UART (0x80/0x81), then
; RETs back to the GWMON prompt.
        ORG 1000H
START:
        LXI SP, 0FF00H           ; sane stack (GWMON already sets this)
        LXI H, 1200H             ; test base (past our own code)
; ---------------- Pass 1: 0xAA then 0x55 write/read/verify ----------------
P1:
        MVI A, 0AAH
        MOV M, A
        MOV A, M
        CPI 0AAH
        JNZ FAIL
        MVI A, 55H
        MOV M, A
        MOV A, M
        CPI 55H
        JNZ FAIL
        INX H
        MOV A, H
        CPI 0FEH                 ; reached 0xFE00?
        JNZ P1
        MOV A, L
        CPI 00H
        JNZ P1
; ---------------- Pass 2: address-derived pattern ----------------
        LXI H, 1200H
P2:
        MOV A, H
        XRA L                    ; A = H ^ L (unique per address)
        MOV M, A
        MOV A, M
        XRA H
        XRA L
        JNZ FAIL                 ; mismatch -> fail (A is now the pattern xor addr)
        INX H
        MOV A, H
        CPI 0FEH
        JNZ P2
        MOV A, L
        CPI 00H
        JNZ P2
; ---------------- PASS ----------------
        LXI H, OKMSG
        CALL PRTSTR
        RET
; ---------------- FAIL: print the failing address ----------------
FAIL:
        LXI H, FAILMSG
        CALL PRTSTR
        MOV A, H
        CALL PRTHEX8
        MOV A, L
        CALL PRTHEX8
        MVI A, 0DH
        CALL COUT
        MVI A, 0AH
        CALL COUT
        RET
; ---------------- subroutines ----------------
PRTSTR:
        MOV A, M
        ORA A
        JZ  PRTEND
        CALL COUT
        INX H
        JMP PRTSTR
PRTEND:
        RET
PRTHEX8:                        ; print A as 2 hex digits
        PUSH PSW
        RRC
        RRC
        RRC
        RRC
        CALL PRTNIB
        POP PSW
        CALL PRTNIB
        RET
PRTNIB:                         ; print low nibble of A as a hex char
        PUSH PSW
        ANI 0FH
        CPI 0AH
        JNC  PRTNIB_A
        ADI 30H                 ; '0'
        JMP PRTNIB_G
PRTNIB_A:
        ADI 37H                 ; 0x30 + ('A'-10) = 0x37
PRTNIB_G:
        CALL COUT
        POP PSW
        RET
COUT:                           ; UART transmit (poll bit0 tx_busy, then 0x81)
        PUSH PSW
COUT1:
        IN  80H
        ANI 01H
        JNZ COUT1               ; wait until transmitter idle
        POP PSW
        OUT 81H
        RET
; ---------------- strings ----------------
OKMSG:
        DB  'RAM TEST PASS',0DH,0AH,0
FAILMSG:
        DB  'RAM FAIL @ ',0
        END
