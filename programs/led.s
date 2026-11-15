; M2: write 0x5A then 0xA5 to I/O port 0x40, then loop forever.
; Stackless on purpose (no CALL/RET/PUSH) - M2 proves native decode + fetch +
; I/O write, not the stack (real async SRAM comes in M5).
        ORG 0000H
START:  MVI A,5AH
        OUT 40H
        MVI A,0A5H
        OUT 40H
LOOP:   JMP LOOP
        END
