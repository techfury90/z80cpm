; SWLED.COM -- Brevia2 switches / LEDs / fabric clock demo for CP/M 2.2
; 8080 assembly, Glitch Works a85. Loads at 0x0100 (CP/M transient).
; Talks to the SoC hardware directly:
;   IN  0x40 -> 8-position DIP switches
;   OUT 0x40 -> 8 LEDs (active-low on the board)
;   OUT 0x41 -> latch the 32-bit uptime clock; IN 0x42..0x45 -> clock bytes
;               (0x42=ms[7:0] .. 0x45=ms[31:24], LSB first)
; Console I/O via the normal BDOS (func 1/2/6/9).
;
; Commands:  S = show switches (and mirror them to the LEDs)
;            L = LED walking pattern (any key to stop)
;            T = show fabric uptime clock (HH style "secs.mmm s")
;            ? = help ; Q = quit
        ORG     0100H

START:
        LXI     H,BANNER
        CALL    PSTR

MAINLOOP:
        MVI     E,'>'
        CALL    CPUTC
        CALL    CIN
        ; A = command char (echoed by func 1)
        ; fold lower-case a-z to upper so input is case-insensitive
        CPI     'a'
        JC      MAIN3
        CPI     7BH             ; 'z'+1
        JNC     MAIN3
        SUI     20H             ; 'a'-'A' -> uppercase
MAIN3:
        CPI     'S'
        JZ      CMD_S
        CPI     'L'
        JZ      CMD_L
        CPI     'T'
        JZ      CMD_T
        CPI     '?'
        JZ      CMD_HELP
        CPI     'Q'
        JZ      CMD_QUIT
        ; unknown
        LXI     H,MSG_UNK
        CALL    PSTR
        JMP     MAINLOOP

CMD_QUIT:
        RET

CMD_HELP:
        LXI     H,BANNER
        CALL    PSTR
        CALL    CRLF
        JMP     MAINLOOP

; ---------------- S: show switches + mirror to LEDs ----------------
CMD_S:
        IN      LEDSW           ; read switches (active-low: 1=open, 0=pressed)
        STA     SWVAL           ; stash in memory -- BDOS func9 clobbers B, keep it out of a reg
        OUT     LEDSW           ; mirror switch bank to the LED bank
        LXI     H,MSG_SW
        CALL    PSTR
        LDA     SWVAL           ; reload the TRUE switch value
        MOV     B,A
        MVI     D,8             ; print 8 bits, MSB first
SBL:
        RAL
        JC      SB1
        MVI     E,'0'
        JMP     SB2
SB1:
        MVI     E,'1'
SB2:
        PUSH    D
        PUSH    PSW             ; preserve A (rotating bit pattern) across the BDOS call
        CALL    CPUTC           ; CPUTC clobbers A (func 2 returns 0)
        POP     PSW
        POP     D
        DCR     D
        JNZ     SBL
        CALL    CRLF
        JMP     MAINLOOP

; ---------------- L: LED walking pattern ----------------
CMD_L:
        LXI     H,MSG_LED
        CALL    PSTR
        MVI     B,01H           ; start pattern
LPL:
        MOV     A,B
        OUT     LEDSW           ; drive LEDs
        CALL    DELAY           ; ~200ms, polling for a key
        ORA     A
        JNZ     LPQUIT          ; key pressed -> stop
        MOV     A,B
        ADD     A
        MOV     B,A
        JNZ     LPL
        MVI     B,01H           ; wrapped past 0x80 -> restart
        JMP     LPL
LPQUIT:
        MVI     A,0FFH
        OUT     LEDSW           ; LEDs off (active-low)
        CALL    CRLF
        JMP     MAINLOOP

; ---------------- T: fabric uptime clock ----------------
CMD_T:
        OUT     CLKL            ; latch the counter
        IN      CLK0
        MOV     L,A
        IN      CLK1
        MOV     H,A
        IN      CLK2
        MOV     E,A
        IN      CLK3
        MOV     D,A             ; DE:HL = ms (32-bit)
        LXI     B,1000
        CALL    DIV32           ; DE:HL = secs, RMDR = msec remainder
        ; save msec remainder
        LDA     RMDR
        STA     MSW
        LDA     RMDR+1
        STA     MSW+1
        ; save secs (DE:HL) into SECW (32-bit)
        MOV     A,L
        STA     SECW
        MOV     A,H
        STA     SECW+1
        MOV     A,E
        STA     SECW+2
        MOV     A,D
        STA     SECW+3
        LXI     H,MSG_UPT
        CALL    PSTR
        ; reload secs into DE:HL and print as decimal
        LDA     SECW
        MOV     L,A
        LDA     SECW+1
        MOV     H,A
        LDA     SECW+2
        MOV     E,A
        LDA     SECW+3
        MOV     D,A
        CALL    PRDEC32
        MVI     E,'.'
        CALL    CPUTC
        ; print msec remainder, 3 zero-padded digits
        LDA     MSW
        MOV     L,A
        LDA     MSW+1
        MOV     H,A
        CALL    PR3
        LXI     H,MSG_S
        CALL    PSTR
        CALL    CRLF
        JMP     MAINLOOP

; ---------------- low-level routines ----------------
PSTR:
        MOV     D,H
        MOV     E,L
        MVI     C,9
        CALL    5
        RET

CPUTC:
        MVI     C,2
        CALL    5
        RET

CIN:
        MVI     C,1
        CALL    5
        RET

CRLF:
        MVI     E,13
        CALL    CPUTC
        MVI     E,10
        CALL    CPUTC
        RET

; DELAY -- burn ~200ms while polling the console for a key.
;  Returns A=0 if no key (timeout), A=key if one arrived.
DELAY:
        LXI     H,3000          ; outer loop count
DL1:
        MVI     C,6
        MVI     E,0FFH          ; func6 input mode (E=0FFh = dirinp). E=0FEh is STATUS and
                                ; always returns 0 on this BDOS build, so the poll would hang.
        CALL    5               ; returns the char in A, or 0 if none ready (non-blocking)
        ORA     A
        JNZ     DLYKEY
        DCX     H
        MOV     A,H
        ORA     L
        JNZ     DL1
        MVI     A,0
DLYKEY:
        RET

; DIV32 -- unsigned 32/16 restore division.
;   in : DE:HL = 32-bit dividend ; BC = 16-bit divisor
;   out: DE:HL = 32-bit quotient ; RMDR = 16-bit remainder
;   Uses memory RMDR/MSBF/CNT.
DIV32:
        XRA     A
        STA     RMDR
        STA     RMDR+1
        STA     MSBF
        MVI     A,32
        STA     CNT
D32L:
        ; shift DE:HL left 1; MSB -> CY
        MOV     A,L
        ADD     A
        MOV     L,A
        MOV     A,H
        RAL
        MOV     H,A
        MOV     A,E
        RAL
        MOV     E,A
        MOV     A,D
        RAL
        MOV     D,A
        MVI     A,0
        RAL                     ; A = captured MSB (0 or 1)
        STA     MSBF
        ; RMDR = (RMDR << 1) | MSBF
        LDA     RMDR
        ADD     A
        STA     RMDR
        LDA     RMDR+1
        RAL
        STA     RMDR+1
        LDA     MSBF
        ORA     A
        JZ      D32NOMS
        LDA     RMDR
        ORI     1
        STA     RMDR
D32NOMS:
        ; if RMDR >= (BC) then RMDR -= BC, set quotient bit0
        LDA     RMDR+1
        CMP     B
        JC      D32SKIP
        JNZ     D32SUB
        LDA     RMDR
        CMP     C
        JC      D32SKIP
D32SUB:
        LDA     RMDR
        SUB     C
        STA     RMDR
        LDA     RMDR+1
        SBB     B
        STA     RMDR+1
        MOV     A,L
        ORI     1
        MOV     L,A
D32SKIP:
        LDA     CNT
        DCR     A
        STA     CNT
        JNZ     D32L
        RET

; PRDEC32 -- print the 32-bit value in DE:HL as unsigned decimal (no padding).
PRDEC32:
        MOV     A,D
        ORA     E
        ORA     H
        ORA     L
        JNZ     PRDECL
        MVI     E,'0'
        CALL    CPUTC
        RET
PRDECL:
        MVI     A,0
        STA     DIGCNT
PRDEC_GO:
        MOV     A,D
        ORA     E
        ORA     H
        ORA     L
        JZ      PRDEC_PRT
        ; divide DE:HL by 10
        LXI     B,10
        CALL    DIV32
        LDA     RMDR
        ADI     '0'
        PUSH    PSW
        LDA     DIGCNT
        INR     A
        STA     DIGCNT
        JMP     PRDEC_GO
PRDEC_PRT:
        LDA     DIGCNT
        ORA     A
        JZ      PRDEC_DONE
        POP     PSW
        MOV     E,A
        CALL    CPUTC
        LDA     DIGCNT
        DCR     A
        STA     DIGCNT
        JMP     PRDEC_PRT
PRDEC_DONE:
        RET

; PR3 -- print the 16-bit value in HL (0..999) as exactly 3 zero-padded digits.
PR3:
        MVI     A,3
        STA     DIGCNT
PR3_DIV:
        MVI     D,0
        MVI     E,0
        LXI     B,10
        CALL    DIV32
        LDA     RMDR
        ADI     '0'
        PUSH    PSW
        LDA     DIGCNT
        DCR     A
        STA     DIGCNT
        JNZ     PR3_DIV
        MVI     A,3
        STA     DIGCNT
PR3_PRT:
        POP     PSW
        MOV     E,A
        CALL    CPUTC
        LDA     DIGCNT
        DCR     A
        STA     DIGCNT
        JNZ     PR3_PRT
        RET

; ---------------- data ----------------
LEDSW   EQU     40H
CLKL    EQU     41H
CLK0    EQU     42H
CLK1    EQU     43H
CLK2    EQU     44H
CLK3    EQU     45H

BANNER:
        DB      'SWLED v1.0 - Brevia2 switches/LEDs/clock',13,10,'S=switches L=led T=clock ?=help Q=quit',13,10,'$'
MSG_SW: DB      'SWITCHES=','$'
MSG_LED: DB     'LED test - any key to stop',13,10,'$'
MSG_UPT: DB     13,10,'UPTIME ','$'
MSG_S:  DB      ' s','$'
MSG_UNK: DB     13,10,'?','$'

RMDR:   DS      2
MSBF:   DS      1
CNT:    DS      1
DIGCNT: DS      1
SWVAL:  DS      1
MSW:    DS      2
SECW:   DS      4
        END
