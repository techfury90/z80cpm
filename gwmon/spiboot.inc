;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SPIBOOT -- GWMON-80 'b' command: boot CP/M from the ISSI IS25LD040
;SPI flash on the Brevia2.
;
;Reads the CP/M system image (CCP+BDOS+CBIOS) from the flash system area
;(flash 0x0000, CPMIMGLEN bytes) into machine RAM at 0xD000, then cold-boots
;via the CBIOS entry (0xE600) which enters the CCP.
;
;Runs in place from the monitor ROM -- the Brevia2 monitor lives at 0x0000,
;so no RAM shadow/mover is needed (unlike bflash.inc on a paged-ROM target).
;
;Reuses the shared spi.inc primitives (SPI_SEL/REL/XMIT/ADDR/READBUF, FBADDR).
;Define SPI_DATA/SPI_CTL/SPI_STAT and CPMIMG/CPMIMGLEN BEFORE including
;spi.inc and this file.
;
;pre:  none (typed 'b' at the monitor prompt)
;post: CP/M running at the 'A>' prompt, or a "NO CP/M ON FLASH" message and
;      return to the monitor command loop.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;---- command handler for 'b' ----
BFOOT:
        ; sanity: the image must begin with 0xC3 (JP, the CCP's first
        ; instruction).  An erased/absent image (0xFF) must not be run.
        LXI     H,0
        SHLD    FBADDR          ; FBADDR(2) = 0x0000
        XRA     A
        STA     FBADDR+2        ; FBADDR = 0x000000
        LXI     D,BOOTCHK
        LXI     B,1
        CALL    SPI_READBUF     ; read 1 byte into BOOTCHK
        LDA     BOOTCHK
        CPI     0C3H
        JZ      BFOOT1
        LXI     H,MSGNOFLASH
        JMP     PRTERR          ; prints CRLF + string, back to monitor

BFOOT1:
        ; load the full CP/M image into machine RAM at 0xD000
        LXI     H,0
        SHLD    FBADDR
        XRA     A
        STA     FBADDR+2
        LXI     D,0D000H
        LXI     B,CPMIMGLEN
        CALL    SPI_READBUF     ; reads CPMIMGLEN bytes, DE advances past
        ; cold-boot CP/M (CBIOS BOOT persists CCP/BDOS to the flash and enters CCP)
        JMP     0E600H

BOOTCHK equ     0FE00H  ; machine-RAM scratch for the 1-byte magic check.  The
                        ; monitor's own writable data lives near 0xFF00 (DYNIN/
                        ; DYNOUT/stack); the 0x0000-0x0FFF boot ROM is READ-ONLY,
                        ; so a DS byte there cannot be written and STAX'ing a
                        ; read value into it is silently dropped.  Keep all the
                        ; 'b' command's writable bytes in machine RAM (>=0x1000).
MSGNOFLASH: DB 'NO CP/M ON FLAS',0C8H   ; 'H'|0x80 -- high-bit string terminator
