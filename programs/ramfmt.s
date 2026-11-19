; RAMFMT.COM -- format the Brevia2 RAM disk (drive B:, bank B SRAM).
; 8080 assembly, assembled with the Glitch Works a85 8085 cross-assembler.
; Loads at 0x0100 (CP/M transient). Calls BDOS entry 0x0005 for console I/O.
;
; Fills the ENTIRE 64K RAM disk (bank B) with 0xE5 (the CP/M empty-directory /
; erased-data mark), then prints a completion message and SPINS in an infinite
; loop -- the user must press the reset button to reboot CP/M.  (A warm boot
; here was tried first but the port goes into a reboot loop, so a manual reset
; is the clean way to re-log drive B: and rebuild its directory/ALV.)
; No diskutil needed.
;
; Geometry note: the CP/M system tracks / boot store (the CCP/BDOS image) now
; live on the SPI FLASH (drive A:), NOT on the RAM disk -- so wiping all of
; bank B is safe; a fresh cold boot reloads the OS from flash.

        ORG     0100H
; ---------------- RAM-disk controller ports (bank B SRAM) ----------------
RDDATA  EQU     20H                     ; data, read/write, auto-increment
RDADRL  EQU     21H                     ; address low
RDADRH  EQU     22H                     ; address high

START:
        LXI     H,MSG1
        CALL    PSTR
        ; restart the RAM-disk address counter at byte 0
        XRA     A
        OUT     RDADRL
        OUT     RDADRH
        ; fill the ENTIRE 64K RAM disk with 0xE5
        LXI     B,65536                 ; count = 0 -> 65536 bytes (wraps)
        MVI     D,0E5H                  ; fill value in D (A holds the value below)
FMTW:   MOV     A,D
        OUT     RDDATA                  ; write 0xE5, auto-increment
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     FMTW
        LXI     H,MSG2
        CALL    PSTR
        LXI     H,MSG3
        CALL    PSTR
        ; done -- spin forever; user presses RESET to cold-boot CP/M
HERE:   JMP     HERE

; ---------------- console helpers (BDOS via CALL 5) ----------------
; print a '$'-terminated string at HL via BDOS func 9
PSTR:   MOV     D,H
        MOV     E,L
        MVI     C,9
        CALL    5
        RET

MSG1:   DB      13,10,'Formatting RAM disk B: (0xE5 fill)...',13,10,'$'
MSG2:   DB      'Done - format complete.',13,10,'$'
MSG3:   DB      'Press the RESET button to reboot CP/M.',13,10,'$'
        END
