; ---- Diagnostic: blink the board LEDs from the Z80 core ----
; STACKLESS on purpose: no CALL/RET/PUSH/POP and no UART access, so this runs
; purely from the LUT boot ROM with no external SRAM dependency. If these LEDs
; visibly change, then: the FPGA is configured, the PLL clock is ticking, the
; reset released, and the TV80 core fetches/decodes from boot ROM and drives
; I/O port 0x40. led[7] is a separate hardware heartbeat, so this is led[6:0].
        ORG 0000H
START:
        MVI A,00H          ; LED value; ADI 1 below cycles it 00..FF
NEXT:
        OUT 40H            ; latch A into LED port 0x40
        ADI 01H            ; A = A + 1
        ; ---- long delay (D:E 16-bit counter) so the change is visible ----
        MVI D,00H
OLOOP:
        MVI E,00H
ILOOP:
        DCR E
        JNZ ILOOP
        DCR D
        JNZ OLOOP
        JMP NEXT
        END
