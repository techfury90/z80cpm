; ---- Decisive test: write a fixed pattern (0xAA) to LED port 0x40, then spin ----
; If the core executes correctly, led_reg (port 0x40) latches 0xAA and the LED
; bus shows a non-trivial pattern. If the core mis-executes (NOPs past this
; program), led_reg stays at its reset value (0x00) and the LEDs show that.
; NOTE: board LEDs are ACTIVE-LOW (lit when the pad is driven low), and the top
; drives led = ~led_reg, so led_reg=0xAA -> ~0xAA -> alternating lit pattern.
        ORG 0000H
START:
        MVI A,0AAH     ; 3E AA
        OUT 40H        ; D3 40   latch 0xAA to LED port 0x40
LOOP:
        JMP LOOP       ; C3 00 00  spin forever (stackless, no SRAM/UART)
        END
