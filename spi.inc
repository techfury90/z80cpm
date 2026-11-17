; ============================================================================
; spi.inc -- shared 24-bit-capable SPI flash driver for the ISSI IS25LD040.
; Included by BOTH diskutil (ORG 1000H) and cbios (ORG FA00H) so the physical
; SPI protocol cannot drift between the two consumers.  Includes only
; protocol-level primitives (selection, byte transfer, WIP wait, 24-bit
; address send) and the bulk operations drive B: needs (page program, bulk
; read, 4K sector erase).  Higher-level logic (CP/M read-modify-write, the
; format routine) lives in each including program.
;
; Ports (must be defined by the including program BEFORE the INCL):
;   SPI_DATA = 50H   read clocks 1 byte in / write clocks 1 byte out (MSB first)
;   SPI_CTL  = 51H   write bit0 = CS# (0 = select low, 1 = release high)
;   SPI_STAT = 52H   read bit0 = transfer busy (poll OPTIONAL -- the RTL byte
;                               engine stretches the CPU wait on every 0x50
;                               access, so back-to-back 0x50 completes in-cycle)
;
; Convention: the 24-bit flash address for an operation is held in the FBADDR
; 3-byte block declared below.  Byte order is little-endian by FIELD:
;   FBADDR+0 = A7-A0  (low byte)
;   FBADDR+1 = A15-A8 (mid byte)
;   FBADDR+2 = A23-A16(high byte)
; SPI_ADDR transmits them MSB-first (A23-A16, A15-A8, A7-A0), which is the
; order the IS25LD040 command set requires.
;
; Each routine documents which registers it clobbers.  A85 note: this file is
; assembled inline at the INCL point, so FBADDR is allocated at that location
; in each including program's address space (fine -- it is referenced purely
; symbolically).  Do NOT add an ORG or END to this file; a85 splices it.
; ============================================================================

; ---------------- CS# and byte transfer primitives ----------------
; SPI_SEL: pull CS# low (select the flash).  Clobbers A.
SPI_SEL: MVI     A,00H
         OUT     SPI_CTL
         RET

; SPI_REL: release CS# high (deselect the flash).  Clobbers A.
SPI_REL: MVI     A,01H
         OUT     SPI_CTL
         RET

; SPI_XMIT: clock the byte in A out to the flash; the byte returned is
; discarded.  A is unchanged (OUT does not modify A).  No other regs touched.
SPI_XMIT: OUT     SPI_DATA
         RET

; SPI_WAIT: poll the RDSR (0x05) status until WIP (bit0) clears.  Re-selects
; the flash and keeps CS# low across the status reads.  Clobbers A.
SPI_WAIT: CALL    SPI_SEL
         MVI     A,05H
         CALL    SPI_XMIT                ; RDSR opcode
SPW:     IN      SPI_DATA                ; read status byte
         ANI     01H                     ; WIP (bit0) still busy?
         JNZ     SPW                     ; loop until the flash is idle
         CALL    SPI_REL
         RET

; ---------------- 24-bit address send ----------------
; SPI_ADDR: send the three FBADDR bytes as the command address (A23-A16,
; A15-A8, A7-A0, MSB first).  Must be called with CS# already selected.
; Clobbers A.
SPI_ADDR: LDA     FBADDR+2
         CALL    SPI_XMIT                ; A23-A16
         LDA     FBADDR+1
         CALL    SPI_XMIT                ; A15-A8
         LDA     FBADDR
         CALL    SPI_XMIT                ; A7-A0
         RET

; ---------------- page program (0x02) ----------------
; SPI_PAGE: program a full 256-byte page from (HL) at the page-aligned FBADDR.
; FBADDR must be 256-byte aligned (the flash's page program wraps within a
; page if it crosses the boundary).  Issues WREN (0x06, CS# toggled to latch it
; -- REQUIRED before every program/erase on the IS25LD040), then the page-
; program command and 256 data bytes in one CS#-low sequence.  Clobbers A, B,
; HL (HL is advanced 256 bytes / left at HL+256).
SPI_PAGE: CALL    SPI_SEL
         MVI     A,06H                   ; WREN (mandatory before every program)
         CALL    SPI_XMIT
         CALL    SPI_REL                 ; latch WREN (CS# must toggle)
         CALL    SPI_SEL
         MVI     A,02H                   ; Page Program opcode
         CALL    SPI_XMIT
         CALL    SPI_ADDR
         MVI     B,00H                   ; 256 bytes (0 wraps to 256 on DCR)
SPG1:    MOV     A,M
         CALL    SPI_XMIT
         INX     H
         DCR     B
         JNZ     SPG1
         CALL    SPI_REL
         CALL    SPI_WAIT                ; wait for the program to settle
         RET

; ---------------- bulk read (0x03) ----------------
; SPI_READBUF: read BC bytes from FBADDR into (DE), keeping CS# low across the
; whole burst (this is the same pattern the proven diskutil DO_READ uses for
; 16 bytes, extended to an arbitrary count).  Clobbers A, B, C, D, E (BC runs
; down to 0, DE advances past the last byte read).
SPI_READBUF: CALL    SPI_SEL
         MVI     A,03H                   ; Read opcode
         CALL    SPI_XMIT
         CALL    SPI_ADDR
SRDB:    IN      SPI_DATA                ; next byte the flash clocks out
         STAX    D
         INX     D
         DCX     B
         MOV     A,B
         ORA     C
         JNZ     SRDB
         CALL    SPI_REL
         RET

; ---------------- 4KB sector erase (0x20) ----------------
; SPI_ERASE_SECT: erase the 4KB sector containing FBADDR.  FBADDR must be
; pre-set to the sector base (the low 12 bits clear) so only that one sector
; is erased.  Issues WREN, then the sector-erase command.  Clobbers A.
SPI_ERASE_SECT: CALL    SPI_SEL
         MVI     A,06H                   ; WREN (required before every program)
         CALL    SPI_XMIT
         CALL    SPI_REL                 ; latch WREN
         CALL    SPI_SEL
         MVI     A,20H                   ; Sector Erase (4KB) opcode
         CALL    SPI_XMIT
         CALL    SPI_ADDR
         CALL    SPI_REL
         CALL    SPI_WAIT                ; wait for the erase to finish
         RET

; ---------------- FBADDR: the 24-bit address block ----------------
FBADDR:  DS      3                       ; A7-A0, A15-A8, A23-A16
