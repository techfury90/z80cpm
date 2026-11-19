; ============================================================================
;   CBIOS (Custom BIOS) for CP/M 2.2 on the LatticeXP2 Brevia2 (TV80 Z80 core)
; ============================================================================
;   Assembled with a85 (8080/8085 cross-assembler). 8080-only instructions are
;   used throughout; ORG is fixed at 0xE600 (BIOS base) so the image is loaded
;   exactly at 0xE600 by the GWMON-80 'L' command and entered with 'G E600'.
;
;   Memory map after the GWMON monitor ROM is banked out (OUT 0x30,1):
;       0x0000-0x00FF  page zero   (0x0000 = JP WBOOT, 0x0005 = JP BDOS entry)
;       0x0100-0xCFFF  TPA
;       0xD000-0xD7FF  CCP  (already loaded by the combined HEX)
;       0xD800-0xE5FF  BDOS (already loaded by the combined HEX)
;       0xE600-0xEFFF  THIS CBIOS
;       0xEF00-0xFEFF  drive A: 4KB RMW buffer (ABOVE the whole CP/M system, so
;                     no transient program can ever load over it)
;       0xFF00-0xFFFF  reserved for GWMON (its stack / banked-out area; CP/M
;                     must stay strictly below 0xFF00 so the monitor cannot
;                     clobber a running system image -- do not use this region).
;
;   Hardware driven by this CBIOS (Brevia2 custom I/O map):
;       Serial console UART: 0x80 = status (bit0 tx_busy, bit1 rx_avail)
;                             0x81 = TX data / RX data    (8N1 @ 115200)
;       RAM disk (bank B of 128K SRAM, 64K bytes):
;                             0x20 = DATA (IN=read / OUT=write, AUTO-INCREMENT)
;                             0x21 = ADDR low byte (write)
;                             0x22 = ADDR high byte (write)
;   drive A:  the on-board ISSI IS25LD040 SPI flash (512 KB, persistent boot drive).
;   drive B:  the 64K I/O-mapped RAM disk (volatile scratch).
;                             0x50 = DATA (read clocks a byte in / write clocks
;                                     a byte out, MSB first)
;                             0x51 = CTL (bit0 = CS#: 0=select low, 1=release)
;                             0x52 = STATUS (bit0 = transfer busy; poll OPTIONAL
;                                     because the RTL byte engine stretches the
;                                     CPU wait on every 0x50 access)
;       ROM banking:          OUT 0x30 with bit0=1 banks out the GWMON ROM.
;
;   The 64K RAM disk is treated as a single CP/M disk (drive B:).  Its first
;   two tracks (0 and 1) hold the SYSTEM tracks where this CBIOS writes the CCP
;   and BDOS so that WBOOT (warm start) can reload them.  Tracks 2-15 are the
;   user file area.  See the DPB below for the exact geometry.
;
;   NOTE on track/sector semantics: the DR CP/M 2.2 BDOS performs the block and
;   sector translation itself and passes the *absolute* track (the BDOS already
;   added the DPB "offset"/OFF) to SETTRK.  Therefore the CBIOS READ/WRITE below
;   map an absolute (track, sector) to a RAM-disk byte address with:
;           addr = (track * SPT + sector) * 128          ; SPT = 32, 128 = rec size
;   The OFF tracks are NOT added again in READ/WRITE (they are already included
;   in the track value passed by the BDOS).
; ============================================================================

        ORG     0E600H

; ---- constants ------------------------------------------------------------
BIOS    EQU     0E600H          ; BIOS base (jump table origin)
CCP     EQU     0D000H          ; CCP origin
; (WBOOT is the label of the warm-boot routine, which lands at BIOS+3 = 0xE603.
;  It is *not* declared with EQU here to avoid a duplicate-symbol error.)
BDOSL   EQU     0D800H          ; BDOS origin
BDOSENT EQU     0D806H          ; BDOS entry point (page-zero 0x0005 vector)
SPT     EQU     32              ; sectors per track (from DPB)
SYSCPP  EQU     0000H           ; RAM-disk byte offset of the stored CCP
SYSBDS  EQU     0800H           ; RAM-disk byte offset of the stored BDOS
DMA0    EQU     0080H           ; CP/M default DMA buffer
;
; ---- ISSI IS25LD040 SPI flash ports (drive B:) — same map as diskutil ---- 
SPI_DATA EQU    50H             ; read clocks a byte in / write clocks a byte out (MSB first)
SPI_CTL  EQU    51H             ; write bit0 = CS# (0=select low, 1=release high)
SPI_STAT EQU    52H             ; read bit0 = transfer busy (poll OPTIONAL)
;
; ---- drive B: flash geometry (must match the DPB AND diskutil's formatter) ----
RMWBUF  EQU     0EF00H          ; 4KB read-modify-write buffer ABOVE the CP/M system
                                ;  (0xEF00-0xFEFF, just below GWMON's reserved 0xFF00).
                                ;  It is above the CCP/BDOS/CBIOS, so no transient program
                                ;  (bounded by the CCP at 0xD000) can ever load over it --
                                ;  this is the whole point of moving the system down.
; ---- SD card (drive C:) dedicated SPI port, pins 31/32/35/36 ----
SD_DATA EQU     53H             ; read clocks a byte in / write clocks a byte out (MSB first)
SD_CTL  EQU     54H             ; write bit0 = CS# (0=select low, 1=release high);
                                ;        bit1 = slow clock (1 = ~390 kHz for card init)
SD_STAT EQU     55H             ; read bit0 = transfer busy (poll OPTIONAL; the engine
                                ;        wait-stretches the CPU so no polling is needed)
SDPLBA  EQU     1               ; SD partition LBA start (from the sdtool-created MBR, LBA=1).
                                ; Drive C: is a 2K-block single-DM CP/M drive (DPBC below);
                                ; the deblock buffer ALIASES the RMWBUF region (drive A flash
                                ; writes and drive C SD accesses NEVER happen at the same time
                                ; -- the BDOS drives one disk at a time).

;
; ============================================================================
;   BIOS JUMP TABLE (17 entries, each JP)  -- MUST be first, at 0xE600
; ============================================================================
        JMP     BOOT            ; 0  BIOS+0   cold start
        JMP     WBOOT           ; 1  BIOS+3   warm start
        JMP     CONST           ; 2  BIOS+6   console status
        JMP     CONIN           ; 3  BIOS+9   console input
        JMP     CONOUT          ; 4  BIOS+12  console output
        JMP     LIST            ; 5  BIOS+15  list device output
        JMP     PUNCH           ; 6  BIOS+18  punch device output
        JMP     READER          ; 7  BIOS+21  reader device input
        JMP     HOME            ; 8  BIOS+24  home the disk
        JMP     SELDSK          ; 9  BIOS+27  select disk drive
        JMP     SETTRK          ; 10 BIOS+30  set current track
        JMP     SETSEC          ; 11 BIOS+33  set current sector
        JMP     SETDMA          ; 12 BIOS+36  set DMA address
        JMP     READ            ; 13 BIOS+39  read one 128-byte sector
        JMP     WRITE           ; 14 BIOS+42  write one 128-byte sector
        JMP     LISTST          ; 15 BIOS+45  list device status
        JMP     SECTRAN         ; 16 BIOS+48  sector translate (identity)

; ============================================================================
;   COLD BOOT  (entry at 0xE600 via 'G E600')
; ============================================================================
BOOT:
        LXI     SP,0CE00H       ; establish a stack in the TPA (below CCP@D000);
                                ; it must sit BELOW the system (D000+) so the boot's
                                ;  stack use cannot clobber CCP/BDOS/CBIOS code.
        MVI     A,01H
        OUT     30H             ; bank OUT the GWMON monitor ROM
;
; ---- set page-zero vectors ------------------------------------------------
        CALL    SETVEC
;
; ---- write CCP and BDOS from machine RAM onto the RAM disk SYSTEM tracks ----
        LXI     H,SYSCPP        ; disk byte 0 (system track 0)
        LXI     D,CCP           ; source = CCP image
        LXI     B,2048          ; 2048 bytes
        CALL    RAMWR
        LXI     H,SYSBDS        ; disk byte 0x0800 (system track 0/1)
        LXI     D,BDOSL         ; source = BDOS image
        LXI     B,3584          ; 3584 bytes
        CALL    RAMWR
;
; ---- the user DATA area is NOT formatted here --------------------------------
; The diskutil formats the disk explicitly. The cold boot leaves the directory
; untouched so files written to the RAM disk PERSIST across CP/M cold boots
; (until power-off clears the volatile SRAM). Confirmed the directory lives at
; 0x2000: a boot-format'd disk yields a clean NO FILE from DIR.
;
; ---- output the sign-on banner ---------------------------------------------
        LXI     H,BANNER
        CALL    PRTSTR
;
; ---- initialize the SD card (drive C:) so it is ready if logged in ----------
        CALL    SD_INIT
;
; ---- initialize the default DMA address and jump to the CCP -----------------
        LXI     H,DMA0
        SHLD    DMA
        LXI     B,0000H         ; drive A (low nibble), user 0 (high nibble)
        JMP     CCP             ; the CCP sets up its own stack and prints "A>"

; ============================================================================
;   WARM BOOT  (0x0000 jumps here)
; ============================================================================
WBOOT:
        LXI     SP,0CE00H
        MVI     A,01H
        OUT     30H             ; bank OUT the GWMON monitor ROM (same as cold boot:
                                ;  'G E603' from the monitor after a reset must swap
                                ;  the ROM out too, else page-zero/CCP reads hit ROM)
;
; ---- reload CCP and BDOS from the RAM disk SYSTEM tracks --------------------
        LXI     H,SYSCPP
        LXI     D,CCP
        LXI     B,2048
        CALL    RAMRD
        LXI     H,SYSBDS
        LXI     D,BDOSL
        LXI     B,3584
        CALL    RAMRD
;
; ---- restore page-zero vectors (a transient program may have clobbered them) -
        CALL    SETVEC
;
; ---- re-enter the CCP -------------------------------------------------------
        LXI     B,0000H
        JMP     CCP

; ============================================================================
;   PAGE-ZERO VECTOR SETUP
;   0x0000 = JP WBOOT (0xE603), 0x0003 = IOBYTE, 0x0005 = JP BDOSENT (0xD806)
; ============================================================================
SETVEC:
        LXI     H,0000H
        MVI     M,0C3H          ; JP
        INX     H
        MVI     M,LOW(BIOS)+3   ; 0x0000 = JP 0xE603 (the WBOOT table entry)
        INX     H
        MVI     M,HIGH(BIOS)
        LXI     H,0003H
        MVI     M,00H           ; IOBYTE = 0 (video console default)
        INX     H
        MVI     M,00H
        LXI     H,0005H
        MVI     M,0C3H          ; JP BDOS entry
        INX     H
        MVI     M,LOW(BDOSENT)
        INX     H
        MVI     M,HIGH(BDOSENT)
        RET

; ============================================================================
;   CONSOLE ROUTINES (Brevia2 UART: 0x80 status, 0x81 data)
; ============================================================================
; CONST: return 0xFF if a character is ready, else 0x00.
CONST:
        IN      80H
        ANI     02H             ; rx_avail (bit1)
        MVI     A,00H           ; default: no char
        JZ      CONST2
        MVI     A,0FFH          ; char ready
CONST2:
        RET

; CONIN: poll rx_avail, then read the character (returned in A).
CONIN:
        IN      80H
        ANI     02H             ; rx_avail (bit1)
        JZ      CONIN           ; wait for a character
        IN      81H             ; read it (8N1, no parity strip needed)
        RET

; CONOUT: output the character held in register C (BDOS/DOS convention).
CONOUT:
        IN      80H
        ANI     01H             ; tx_busy (bit0)
        JNZ     CONOUT          ; wait until transmitter is idle
        MOV     A,C
        OUT     81H
        RET

; PUTC: internal helper - output the character held in A (used for the banner).
PUTC:
        PUSH    PSW
PUTC1:
        IN      80H
        ANI     01H
        JNZ     PUTC1
        POP     PSW
        OUT     81H
        RET

; PRTSTR: print a NUL-terminated string pointed to by HL.
PRTSTR:
        MOV     A,M
        ORA     A
        JZ      PRTEND
        CALL    PUTC
        INX     H
        JMP     PRTSTR
PRTEND:
        RET

; LIST / PUNCH / READER / LISTST: the serial console is the only device, so
; the list/punch devices map to the console UART and the reader is the console.
LIST:
        JMP     CONOUT          ; char in C
PUNCH:
        JMP     CONOUT          ; char in C
READER:
        JMP     CONIN           ; returns char in A
LISTST:
        MVI     A,0FFH          ; list device always "ready"
        RET

; ============================================================================
;   DISK SELECT / TRACK / SECTOR / DMA  (these merely save parameters)
; ============================================================================
; SELDSK: select drive given by register C.  Return HL = DPH address for the
; selected drive, or HL=0000 with A=0xFF if the drive is not present.
;   C=0 -> drive A (the SPI flash boot drive), C=1 -> drive B (the RAM disk).
;   C>1 -> error.
SELDSK:
        MOV     A,C
        STA     SELBL           ; remember the selected drive number
        ORA     A
        JZ      SELD0           ; C=0 -> drive A
        CPI     01H
        JZ      SELD1           ; C=1 -> drive B (RAM disk)
        CPI     02H
        JZ      SELD2           ; C=2 -> drive C (SD card)
        CPI     03H
        JZ      SELD3           ; C=3 -> drive D (future; reserved)
SELERR:
        LXI     H,0000H         ; error return: HL=0
        MVI     A,0FFH
        RET
SELD0:
        LXI     H,DPH           ; drive A disk parameter header (SPI flash)
        RET
SELD1:
        LXI     H,DPHB          ; drive B disk parameter header (RAM disk)
        RET
SELD2:
        LXI     H,DPHC          ; drive C disk parameter header (SD card)
        RET
SELD3:
        LXI     H,DPHD          ; drive D disk parameter header (SD partition 2, future)
        RET

; HOME: move to track 0, sector 0.
HOME:
        XRA     A
        STA     TRK             ; track low byte
        STA     TRK+1           ; track high byte -- MUST clear both, or a stale
                                ; high byte left by a prior drive-C access would
                                ; survive a HOME on a small drive A/B and corrupt
                                ; the track address
        STA     SECN
        RET

; SETTRK: set the current track.  CP/M 2 passes the track as a WORD in BC (DRI
;   manual Table 6-5: "Register BC contains the track number ... 0-65535 for
;   nonstandard disk subsystems"; seasip: "a word under CP/M 2").  Store BOTH
;   bytes -- the high byte is what lets us address >256 tracks (an 8 MB drive at
;   SPT=32 needs tracks up to 2047).
SETTRK:
        MOV     A,C
        STA     TRK             ; track low byte
        MOV     A,B
        STA     TRK+1           ; track high byte
        RET

; SETSEC: set the current sector (register C).
SETSEC:
        MOV     A,C
        STA     SECN
        RET

; SETDMA: set the DMA buffer address (registers B,C).
SETDMA:
        MOV     A,C
        STA     DMA
        MOV     A,B
        STA     DMA+1
        RET

; SECTRAN: sector translate = identity.  The requested sector (BC) is returned
; unchanged in HL.  (XLT in the DPH is 0, i.e. no translation table, so we do
; a pure identity and never read from a table.)
SECTRAN:
        MOV     L,C
        MOV     H,B
        RET

; ============================================================================
;   RAM-DISK ADDRESS CALCULATION
;   HL = (TRK*SPT + SECN)*128 = (TRK*32 + SECN)*128  =  TRK*4096 + SECN*128
;   The BDOS passes the absolute track (offset already included), so OFF is not
;   re-added here.
; ============================================================================
CALC:
        LDA     TRK
        MOV     L,A
        MVI     H,00H           ; HL = TRK
        DAD     H               ; *2
        DAD     H               ; *4
        DAD     H               ; *8
        DAD     H               ; *16
        DAD     H               ; *32
        DAD     H               ; *64
        DAD     H               ; *128
        DAD     H               ; *256
        DAD     H               ; *512
        DAD     H               ; *1024
        DAD     H               ; *2048
        DAD     H               ; *4096  -> HL = TRK*4096
        MOV     B,H
        MOV     C,L             ; BC = TRK*4096
        LDA     SECN
        MOV     L,A
        MVI     H,00H           ; HL = SECN
        DAD     H               ; *2
        DAD     H               ; *4
        DAD     H               ; *8
        DAD     H               ; *16
        DAD     H               ; *32
        DAD     H               ; *64
        DAD     H               ; *128  -> HL = SECN*128
        DAD     B               ; HL = TRK*4096 + SECN*128
        RET

; ============================================================================
;   RAM-DISK SET-POINTER:  write HL to ports 0x21/0x22
; ============================================================================
RAMPTR:
        MOV     A,L
        OUT     21H             ; address low byte
        MOV     A,H
        OUT     22H             ; address high byte
        RET

; ============================================================================
;   READ:  read one 128-byte CP/M sector from the RAM disk into the DMA buffer.
;   Returns A=0 on success (RAM disk is error-free -> always 0).
; ============================================================================
READ:
        LDA     SELBL
        ORA     A
        JZ      READB           ; drive A (SELBL==0) -> SPI flash (boot drive)
        CPI     02H
        JZ      READC           ; drive C (SELBL==2) -> SD card (with retry)
        CPI     03H
        JZ      READC           ; drive D (SELBL==3) -> SD card (with retry)
        ; ---- drive B: RAM disk path ----
        CALL    CALC            ; HL = RAM-disk byte address
        CALL    RAMPTR          ; set the disk data-pointer
        LHLD    DMA
        MOV     D,H
        MOV     E,L             ; DE = DMA destination
        MVI     B,128
READ1:
        IN      20H             ; read a byte (data port auto-increments)
        STAX    D
        INX     D
        DCR     B
        JNZ     READ1
        MVI     A,00H           ; success
        RET

; ============================================================================
;   WRITE: write one 128-byte CP/M sector from the DMA buffer to the RAM disk.
;   Returns A=0 on success.
; ============================================================================
WRITE:
        LDA     SELBL
        ORA     A
        JZ      WRITEB          ; drive A (SELBL==0) -> SPI flash (boot drive)
        CPI     02H
        JZ      WRITEC          ; drive C (SELBL==2) -> SD card (with retry)
        CPI     03H
        JZ      WRITEC          ; drive D (SELBL==3) -> SD card (with retry)
        ; ---- drive B: RAM disk path ----
        CALL    CALC            ; HL = RAM-disk byte address
        CALL    RAMPTR
        LHLD    DMA
        MOV     D,H
        MOV     E,L             ; DE = DMA source
        MVI     B,128
WRITE1:
        LDAX    D
        OUT     20H             ; write a byte (data port auto-increments)
        INX     D
        DCR     B
        JNZ     WRITE1
        MVI     A,00H           ; success
        RET

; ============================================================================
;   SD CARD (drive C:) DRIVER + DEBLOCKING
;   The SD is a 2K-block single-DM CP/M drive (DPBC, same geometry family as the
;   flash drive A but OFF=0 because it is a data partition).  The BDOS operates
;   on 128-byte records; the SD only transfers 512-byte sectors, so the CBIOS
;   deblocks: record r -> SD sector (SDPLBA + r/4) at byte offset (r%4)*128.
;   The 512-byte sector buffer ALIASES the RMWBUF region (0xEF00): drive A flash
;   writes and drive C SD accesses never occur at the same time (the BDOS drives
;   one disk at a time), so the two can safely share that 4KB area.
; ============================================================================
; SDMAP: from TRK/SECN compute the SD block number (BLKN, 32-bit, MSB first) and
;   the in-sector byte offset (SDOFF, 16-bit) for the current 128-byte record.
;   record = TRK*SPT + SECN = TRK*32 + SECN.
SDMAP:
        LHLD    TRK             ; HL = full 16-bit TRK (CP/M 2 passes it as a word
                                ; in BC; an 8 MB drive at SPT=32 reaches track 2047)
        DAD     H               ; *2
        DAD     H               ; *4
        DAD     H               ; *8
        DAD     H               ; *16
        DAD     H               ; *32  -> HL = TRK*32
        LDA     SECN
        MOV     E,A
        MVI     D,00H
        DAD     D               ; HL = record
        ; SDOFF_hi = (record & 3) >> 1   [0,0,1,1]
        MOV     A,L
        ANI     03H
        MOV     B,A
        ANI     02H
        JZ      SDMAP_H0
        MVI     A,01H
        JMP     SDMAP_H1
SDMAP_H0:
        MVI     A,00H
SDMAP_H1:
        STA     SDOFF+1
        ; SDOFF_lo = ((record & 3) << 7) & 0xFF   [*128]
        ; NOTE: RAL (rotate through carry), NOT RLC.  RLC is CIRCULAR, so bit 7
        ; wraps back into bit 0: (record&3)=2 gave 0x01 instead of 0x00 and
        ; (record&3)=3 gave 0x81 instead of 0x80, i.e. records 2 and 3 of every
        ; 512-byte sector were deblocked ONE BYTE HIGH.  CP/M still round-tripped
        ; (READ used the same offset) but the on-card sector was shifted, so the
        ; directory/data written to the SD was silently corrupt.
        XRA     A               ; clear CY (and A)
        MOV     A,B
        RAL                     ; *2
        RAL                     ; *4
        RAL                     ; *8
        RAL                     ; *16
        RAL                     ; *32
        RAL                     ; *64
        RAL                     ; *128
        STA     SDOFF
        ; SSEC = record >> 2 (16-bit logical right shift)
        XRA     A               ; A=0, CY=0
        MOV     A,H
        RAR
        MOV     H,A
        MOV     A,L
        RAR
        MOV     L,A
        XRA     A
        MOV     A,H
        RAR
        MOV     H,A
        MOV     A,L
        RAR
        MOV     L,A             ; HL = record >> 2 = SSEC
        ; ---- per-drive region offset (CP/M has no partitioning) ----
        ; The BDOS does NOT reliably apply the DPB OFF here, so the region base is
        ; added at the CBIOS deblock layer.  Drive D (SELBL==3) is region 1 =
        ; +8 MB = +16384 SD sectors (0x4000); drive C (SELBL==2) is region 0 (+0).
        ; This shifts the logical drive's record space into its own 8 MB region of
        ; the 64 MB partition.  SDOFF is unaffected (the region is a multiple of 4
        ; records, so record&3 is unchanged).
        LDA     SELBL
        CPI     03H
        JNZ     SDMAP_REG0
        LXI     D,4000H
        DAD     D               ; SSEC += 0x4000 (into region 1)
SDMAP_REG0:
        ; BLKN = SDPLBA + SSEC  (SDPLBA=1)
        INX     H
        MVI     A,00H
        STA     BLKN+0
        STA     BLKN+1
        MOV     A,H
        STA     BLKN+2
        MOV     A,L
        STA     BLKN+3
        RET

; ---- drive C: retry wrappers -------------------------------------------------
; An SD transaction can fail TRANSIENTLY: a command issued while the card is
; still internally busy is silently dropped (the MISO read then looks like
; R1=OK or 0FFh), a response can be lost, or the boot-time handshake can fail
; and leave drive C dead for the whole session.  A CP/M BIOS must not turn
; those into a hard "Bad Sector" on the first try: retry the WHOLE operation up
; to SDTRIES times, re-initialising the card between attempts.
SDTRIES EQU     06H          ; attempts; each retry also WAITS before re-init
READC:
        MVI     A,SDTRIES
        STA     SDTRY
READC1:
        CALL    READS
        ORA     A
        JZ      SDOP_OK
        CALL    SD_RECOVER
        ORA     A
        JZ      READC1
        RET                     ; out of tries -> A = 0FFh (real failure)
WRITEC:
        MVI     A,SDTRIES
        STA     SDTRY
WRITEC1:
        CALL    WRITES
        ORA     A
        JZ      SDOP_OK
        CALL    SD_RECOVER
        ORA     A
        JZ      WRITEC1
        RET
SDOP_OK:
        XRA     A
        RET
; SD_RECOVER: another attempt allowed -> release CS, re-init the card, return
;   A=0.  Out of tries -> release CS and return A=0FFh.  Clobbers A,BC,DE,HL.
SD_RECOVER:
        LDA     SDTRY
        DCR     A
        STA     SDTRY
        JZ      SDRC_NO
        MVI     A,01H
        OUT     SD_CTL          ; release CS, give the card time to finish its
        CALL    SD_RDLY         ; internal programming (~10 ms), then re-handshake
        CALL    SD_INIT
        XRA     A
        RET
SDRC_NO:
        MVI     A,01H           ; release CS and report the failure
        OUT     SD_CTL
        MVI     A,0FFH
        RET

; READS: read one 128-byte CP/M record from the SD into the DMA buffer.
;   Returns A=0 on success, 0FFh on error.
READS:
        CALL    SDMAP
        LXI     H,RMWBUF        ; deblock sector buffer (aliases the RMWBUF region)
        CALL    SD_READBLK      ; read the 512-byte SD sector into RMWBUF
        ORA     A
        JNZ     READS_ERR
        ; copy RMWBUF+SDOFF (128 bytes) to the DMA buffer
        LHLD    DMA
        MOV     D,H
        MOV     E,L             ; DE = DMA destination
        LXI     H,RMWBUF
        LDA     SDOFF
        ADD     L
        MOV     L,A
        LDA     SDOFF+1
        ADC     H
        MOV     H,A             ; HL = RMWBUF + SDOFF
        MVI     B,128
READS1:
        MOV     A,M
        STAX    D
        INX     H
        INX     D
        DCR     B
        JNZ     READS1
        MVI     A,00H           ; success
        RET
READS_ERR:
        RET                     ; A = 0FFh (disk read error)

; WRITES: write one 128-byte CP/M record from the DMA buffer to the SD
;   (read-modify-write of the containing 512-byte sector).
;   Returns A=0 on success, 0FFh on error.
WRITES:
        CALL    SDMAP
        LXI     H,RMWBUF
        CALL    SD_READBLK      ; read the sector first (RMW)
        ORA     A
        JNZ     WRITES_ERR
        ; overlay the 128-byte DMA record at RMWBUF+SDOFF
        LHLD    DMA
        MOV     D,H
        MOV     E,L             ; DE = DMA source
        LXI     H,RMWBUF
        LDA     SDOFF
        ADD     L
        MOV     L,A
        LDA     SDOFF+1
        ADC     H
        MOV     H,A             ; HL = RMWBUF + SDOFF (in-buffer destination)
        MVI     B,128
WRITES1:
        LDAX    D
        MOV     M,A
        INX     H
        INX     D
        DCR     B
        JNZ     WRITES1
        LXI     H,RMWBUF
        CALL    SD_WRITEBLK     ; write the modified 512-byte sector back
        ORA     A
        JNZ     WRITES_ERR
        MVI     A,00H           ; success
        RET
WRITES_ERR:
        RET                     ; A = 0FFh (disk write error)

; SD_READBLK: read the 512-byte SD block BLKN (MSB first) into (HL).
;   A = 0 ok / 0FFh err.  Preserves HL (the destination buffer).
SD_READBLK:
        MVI     A,00H
        OUT     SD_CTL          ; select the SD card (CS low), fast
        MVI     A,51H           ; CMD17 (read single block)
        STA     SDCMDB
        LDA     BLKN+0
        STA     SDCMDB+1
        LDA     BLKN+1
        STA     SDCMDB+2
        LDA     BLKN+2
        STA     SDCMDB+3
        LDA     BLKN+3
        STA     SDCMDB+4
        MVI     A,0FFH
        STA     SDCMDB+5
        PUSH    H
        LXI     H,SDCMDB
        CALL    SD_SEND6        ; A = R1 (should be 00)
        POP     H               ; restore the destination buffer
        CPI     00H
        JNZ     SDRB_ERR
        CALL    SD_WAITTKN      ; wait for the 0FEh data-start token
        JC      SDRB_ERR
        LXI     B,512
SDRB1:
        IN      SD_DATA
        MOV     M,A
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SDRB1
        IN      SD_DATA         ; 2 CRC bytes
        IN      SD_DATA
        MVI     A,01H
        OUT     SD_CTL          ; release CS
        MVI     A,00H
        RET
SDRB_ERR:
        MVI     A,01H
        OUT     SD_CTL          ; release CS
        MVI     A,0FFH
        RET

; SD_WRITEBLK: write the 512 bytes at (HL) to the SD block BLKN.
;   A = 0 ok / 0FFh err.  Preserves HL (the source buffer).
SD_WRITEBLK:
        MVI     A,00H
        OUT     SD_CTL          ; select the SD card, fast
        MVI     A,58H           ; CMD24 (write single block)
        STA     SDCMDB
        LDA     BLKN+0
        STA     SDCMDB+1
        LDA     BLKN+1
        STA     SDCMDB+2
        LDA     BLKN+2
        STA     SDCMDB+3
        LDA     BLKN+3
        STA     SDCMDB+4
        MVI     A,0FFH
        STA     SDCMDB+5
        PUSH    H
        LXI     H,SDCMDB
        CALL    SD_SEND6        ; A = R1 (should be 00)
        POP     H               ; restore the source buffer
        CPI     00H
        JNZ     SDWB_ERR
        MVI     A,0FEH          ; data start token
        OUT     SD_DATA
        LXI     B,512
SDWB1:
        MOV     A,M
        OUT     SD_DATA
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SDWB1
        MVI     A,0FFH          ; 2 CRC bytes (CRC disabled)
        OUT     SD_DATA
        OUT     SD_DATA
        ; read the data-response token: the card clocks 0xFF for a few bytes
        ; first, then 0bxxx00101 (0x05) = data accepted.
        MVI     B,16
SDWB_RSP:
        IN      SD_DATA
        CPI     0FFH
        JNZ     SDWB_GOT
        DCR     B
        JNZ     SDWB_RSP
SDWB_GOT:
        ANI     1FH             ; response bits 0-4; 0x05 = accepted
        CPI     05H
        JNZ     SDWB_ERR        ; CRC error / write rejected / no response
        ; wait for the card to finish programming BEFORE releasing CS so the
        ; very next command is not issued into a busy card
        CALL    SD_READY
        ORA     A
        JNZ     SDWB_ERR
SDWB_DONE:
        MVI     A,01H
        OUT     SD_CTL          ; release CS
        MVI     A,00H
        RET
SDWB_ERR:
        MVI     A,01H
        OUT     SD_CTL          ; release CS
        MVI     A,0FFH
        RET

; SD_READY: wait until the card is NOT busy (MISO high, reads 0xFF) before a
;   command is issued.  A card that is still programming a block drives MISO
;   LOW, so bytes read as 0x00 -- and SD_SEND6's R1 read would accept that 0x00
;   as "R1 = OK" and drop the command on the floor, leaving the card's data
;   stream desynced.  That is what turned every write after the first into
;   "Bad Sector".  Timeout ~260k port reads (~0.4 s at 25 MHz), which covers the
;   SD spec's 250 ms worst-case block-programming time.
;   Returns A=0 ready / A=0FFh + CY on timeout.  Clobbers A,B,C.  Preserves D,H,L.
SD_READY:
        PUSH    D
        MVI     D,04H           ; 4 x 65536 port reads
SDRDY0:
        LXI     B,0000H
SDRDY1:
        IN      SD_DATA         ; 0xFF = idle, 0x00 = still programming
        CPI     0FFH
        JZ      SDRDY_OK
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SDRDY1
        DCR     D
        JNZ     SDRDY0
        POP     D
        STC
        RET
SDRDY_OK:
        POP     D
        XRA     A               ; A=0, clear CY
        RET

; SD_SEND6: transmit the 6-byte command at (HL), then read the R1 status byte.
;   Returns A = R1 (0FFh if no valid response after 16 bytes of clocking).
SD_SEND6:
        PUSH    H
        CALL    SD_READY        ; never issue a command into a busy card
        POP     H
        MVI     B,6
SD6_TX:
        MOV     A,M
        OUT     SD_DATA
        INX     H
        DCR     B
        JNZ     SD6_TX
        MVI     B,16
SD6_RX:
        IN      SD_DATA
        CPI     0FFH
        JNZ     SD6_DONE
        DCR     B
        JNZ     SD6_RX
SD6_DONE:
        RET

; SD_WAITTKN: clock until the card sends the 0FEh data-start token.
;   Returns CY=0 + A=0FEh on success, CY=1 if 255 bytes pass with no token.
SD_WAITTKN:
        MVI     B,0FFH
SD_WT:
        IN      SD_DATA
        CPI     0FEH
        JZ      SD_WT_OK
        DCR     B
        JNZ     SD_WT
        STC
        RET
SD_WT_OK:
        ORA     A               ; clear CY
        RET

; SD_INIT: full SPI-mode initialization of the SD card.  Called from BOOT so a
;   logged-in drive C is ready.  A = 0 on success (card entering SPI mode and
;   initializing), 0FFh if no card / init failed (drive C reads will then error).
;   This is the same handshake as sdprobe/sdtool (CMD0 -> CMD8 -> CMD55/ACMD41).
SD_INIT:
        MVI     A,03H           ; CS high + slow clock
        OUT     SD_CTL
        MVI     B,10            ; 10 x 0xFF = 80 power-up clocks
SDI_CK:
        MVI     A,0FFH
        OUT     SD_DATA
        DCR     B
        JNZ     SDI_CK
        MVI     A,02H           ; select the card (CS low), slow clock
        OUT     SD_CTL
        ; CMD0 + read R1
        LXI     H,SDCMD0
        CALL    SD_SEND6        ; A = R1 (01h = idle, or 0FFh if no response)
        CPI     01H
        JNZ     SDI_FAIL
        ; CMD8 (SEND_IF_COND) - required before ACMD41 on SDHC/SDXC
        LXI     H,SDCMD8
        CALL    SD_SEND6
        IN      SD_DATA         ; consume the 4-byte R7 payload
        IN      SD_DATA
        IN      SD_DATA
        IN      SD_DATA
        ; CMD55 + ACMD41 poll until the card leaves idle
        MVI     D,200
SDI_RDY:
        LXI     H,SDCMD55
        CALL    SD_SEND6
        LXI     H,SDACMD
        CALL    SD_SEND6        ; A = R1
        CPI     00H
        JZ      SDI_OK
        CALL    SD_DELAY        ; ~3ms between attempts (card init is time-based)
        DCR     D
        JNZ     SDI_RDY
SDI_FAIL:
        MVI     A,0FFH
        RET
SDI_OK:
        MVI     A,00H
        RET

; SD_DELAY: approximate ~3ms busy-wait (HL only; for SD init polling).
SD_DELAY:
        LXI     H,2000
SDDL:
        DCX     H
        MOV     A,H
        ORA     L
        JNZ     SDDL
        RET

; SD_RDLY: ~10 ms recovery delay (65536 iterations).  Used BETWEEN drive-C retry
;   attempts so a card that is still programming a block has time to finish --
;   SD_DELAY (~1.6 ms) is far too short for that.
SD_RDLY:
        LXI     B,0000H
SRDL1:
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SRDL1
        RET

SDCMD0: DB      40H,00H,00H,00H,00H,95H
SDCMD8: DB      48H,00H,00H,01H,0AAH,87H
SDCMD55: DB     77H,00H,00H,00H,00H,65H
SDACMD: DB      69H,40H,00H,00H,00H,77H   ; HCS bit -> SDHC/SDXC

; ============================================================================
;   RAM-DISK BLOCK COPY / FILL HELPERS (used by BOOT/WBOOT)
; ============================================================================
; RAMWR: write BC bytes from (DE) to the RAM disk starting at disk byte addr HL.
RAMWR:
        CALL    RAMPTR
RAMWR1:
        LDAX    D
        OUT     20H
        INX     D
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     RAMWR1
        RET

; RAMRD: read BC bytes from the RAM disk at disk byte addr HL into (DE).
RAMRD:
        CALL    RAMPTR
RAMRD1:
        IN      20H
        STAX    D
        INX     D
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     RAMRD1
        RET

; RAMFILL: fill BC bytes on the RAM disk starting at disk byte addr HL with
; the value in A.
RAMFILL:
        STA     FILLV
        CALL    RAMPTR
RAMFILL1:
        LDA     FILLV
        OUT     20H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     RAMFILL1
        RET

; ============================================================================
;   DRIVE A:  SPI FLASH  (ISSI IS25LD040 as CP/M drive A:)
;
;   Flash layout (MUST match diskutil's 'S' formatter and the drive A: DPB):
;       0x00000-0x01FFF  (8KB, tracks 0-1)   reserved system (erased 0xFF)
;       0x02000-0x7FFFF  (504KB, tracks 2-127) user data area = 252 blocks
;           Block 0  (0x2000-0x27FF) + Block 1 (0x2800-0x2FFF) directory
;                     (2KB each, reserved via AL0=0xC0) = 128 x 32-byte entries
;           Blocks 2..251 (0x3000-0x7FFFF) file data (250 blocks = 500KB)
;
;   Address formula (same as the drive B: RAM-disk CALC, but 24-bit -- the flash is
;   512KB and exceeds 16 bits):  flash_addr = TRK*0x1000 + SECN*0x80
;   (SPT=32, record=128).  The BDOS passes the absolute track (it already added
;   the DPB offset), so OFF is NOT re-added here.
;
;   Erase-before-write is mandatory and the flash only erases at 4KB granularity
;   (sector = 0x20 opcode).  With 2KB CP/M blocks a CP/M block is HALF an erase
;   sector, so two CP/M blocks share one physical 4KB sector.  Writes are still
;   correct: a WRITE does a 4KB read-modify-write (read the whole 4KB sector
;   into RMWBUF, overlay the 128-byte record at its offset, erase the sector,
;   then page-program it back 16 x 256B), which reads back and thus PRESERVES
;   the other CP/M block that shares the sector.  Correctness first; a
;   dirty-sector cache is a later optimization.
; ============================================================================

; ---- shared SPI driver (physical primitives + 24-bit ops) ----
        INCL    "spi.inc"

; FLADDR: compute FBADDR = TRK*0x1000 + SECN*0x80, the 24-bit flash byte address
; of the selected record, split (validated against 0x7FF80 for TRK=127,SEC=31):
;     byte2 (A23-A16) = TRK >> 4
;     byte1 (A15-A8)  = ((TRK & 0x0F) << 4) | (SECN >> 1)
;     byte0 (A7-A0)   = (SECN & 1) << 7
; (SECN*0x80 < 0x1000 so it never carries into the TRK*0x1000 field.)  Clobbers
; A, B, C, D.
FLADDR:
        LDA     TRK
        MOV     B,A             ; B = TRK
        LDA     SECN
        MOV     C,A             ; C = SECN
        ; byte2 (A23-A16) = TRK >> 4
        MOV     A,B
        ANI     0F0H
        RRC
        RRC
        RRC
        RRC
        STA     FBADDR+2
        ; byte1 (A15-A8) = ((TRK & 0x0F) << 4) | (SECN >> 1)
        MOV     A,B
        ANI     0FH
        RLC
        RLC
        RLC
        RLC
        MOV     D,A
        MOV     A,C
        RRC
        ANI     7FH
        ORA     D
        STA     FBADDR+1
        ; byte0 (A7-A0) = (SECN & 1) << 7
        MOV     A,C
        ANI     01H
        JZ      FLAD0
        MVI     A,80H
        JMP     FLADR
FLAD0:  XRA     A
FLADR:  STA     FBADDR
        RET

; READB: read one 128-byte sector from the SPI flash (drive A:) into the DMA
; buffer.  Returns A=0.  (A flash read is error-free.)
READB:
        CALL    FLADDR          ; FBADDR = 24-bit record address
        LHLD    DMA
        MOV     D,H
        MOV     E,L             ; DE = DMA destination
        LXI     B,80H           ; 128 bytes
        CALL    SPI_READBUF
        MVI     A,00H           ; success
        RET

; WRITEB: write one 128-byte sector to the SPI flash (drive A:) via a 4KB
; read-modify-write.  Returns A=0.  Clobbers A,B,D,E,H,L.
WRITEB:
        CALL    FLADDR          ; FBADDR = 24-bit record address
        ; ---- save the record's in-sector offset (FBADDR & 0xFFF) ----
        LDA     FBADDR
        STA     RECOFF          ; offset low byte
        LDA     FBADDR+1
        ANI     0FH
        STA     RECOFF+1        ; offset high nibble (0..0x0F)
        ; ---- set FBADDR to the enclosing 4KB sector base (clear low 12 bits) ----
        LDA     FBADDR+1
        ANI     0F0H
        STA     FBADDR+1
        XRA     A
        STA     FBADDR          ; low byte of the sector base = 0
        ; ---- read the whole 4KB sector into the RMW buffer ----
        LXI     D,RMWBUF
        LXI     B,1000H         ; 4096 bytes
        CALL    SPI_READBUF
        ; ---- overlay the 128-byte DMA record at the in-sector offset ----
        LHLD    DMA
        LXI     D,RMWBUF
        LDA     RECOFF
        ADD     E
        MOV     E,A
        LDA     RECOFF+1
        ADC     D
        MOV     D,A             ; DE = RMWBUF + offset
        MVI     B,128
WRCPY:  MOV     A,M
        STAX    D
        INX     H
        INX     D
        DCR     B
        JNZ     WRCPY
        ; ---- erase the 4KB sector (FBADDR = sector base) ----
        CALL    SPI_ERASE_SECT
        ; ---- program the whole 4KB sector back, 16 x 256B pages ----
        LXI     H,RMWBUF
        MVI     B,16            ; 16 pages
WRPG:   PUSH    B
        CALL    SPI_PAGE        ; programs 256 bytes from (HL), advances HL by 256
        LDA     FBADDR+1
        ADI     01H
        STA     FBADDR+1        ; next page (low byte stays 00, high byte unchanged)
        POP     B
        DCR     B
        JNZ     WRPG
        MVI     A,00H           ; success
        RET

; ============================================================================
;   SIGN-ON BANNER
; ============================================================================
BANNER:
        DB      0DH,0AH                          ; blank line before the banner
        DB      'CP/M 2.2 on Brevia2',0DH,0AH
        DB      'CP/M port by Whale-Chan',0DH,0AH,0

; ============================================================================
;   CBIOS VARIABLES
; ============================================================================
SELBL:  DS      1               ; last selected drive
TRK:    DS      2               ; current (absolute) track -- 16-bit!  CP/M 2 passes
                                ; the track as a WORD in BC (DRI manual Table 6-5),
                                ; and a DPB with >256 tracks (8 MB at SPT=32 needs
                                ; tracks up to 2047) REQUIRES the high byte.  TRK+0 =
                                ; low byte (from C), TRK+1 = high byte (from B).
SECN:   DS      1               ; current sector
DMA:    DS      2               ; current DMA address
FILLV:  DS      1               ; scratch for RAMFILL
        DS      4               ; (padding/alignment reserved)

; ============================================================================
;   DISK PARAMETER HEADER (DPH) for drive A (the SPI flash boot drive)
;   Byte layout consumed by the BDOS:
;     +0  XLT  (sector-translate vector address; 0 = none)
;     +2  scratch, +4 scratch, +6 scratch
;     +8  DIRBUF, +10 DPBB, +12 CSVB, +14 ALVB
; ============================================================================
DPH:
        DW      0000H           ; XLT: no sector translation
        DW      0000H           ; scratch (cdrmax)
        DW      0000H           ; scratch (curtrk)
        DW      0000H           ; scratch (currec)
        DW      DIRBUF          ; directory buffer (128 bytes)
        DW      DPBB            ; disk parameter block (SPI flash 2K geometry)
        DW      CSVB            ; checksum vector
        DW      ALVB            ; allocation vector

; ============================================================================
;   DISK PARAMETER BLOCK (DPB)
;   CP/M 2.2 geometry for the 64K RAM disk (drive B:, volatile scratch):
;     128-byte sectors, SPT=32, 14 user tracks + 2 system tracks = 16 tracks,
;     1K allocation blocks (BSH=3/BLM=7), DSM=55 (56 blocks = 56K user data),
;     DRM=63 (64 directory entries = 2 directory blocks), CKS=0 (fixed media),
;     OFF=2 (reserve tracks 0-1 for the system).
;   IMPORTANT: DSM is stored as a WORD (not a byte).  The BDOS copies this
;   table byte-for-byte into its internal aligned structure, so DSM must be a
;   word for the SECTPT/MAXALL/... fields to line up correctly.
;   AL0/AL1 reserve the directory blocks.  With the MSB-first allocation-map
;   convention the 2 directory blocks at the start of the data area are blocks
;   0 and 1, so AL0=0xC0 / AL1=0x00.  (AL0=0x00/AL1=0xC0 would reserve blocks
;   8-9 and leave the real directory at block 0 unprotected, breaking SAVE.)
; ============================================================================
DPB:
        DW      SPT             ; SPT  = 32   (sectors per track)
        DB      03H             ; BSH  = 3    (block shift  -> 1K blocks)
        DB      07H             ; BLM  = 7    (block mask)
        DB      00H             ; EXM  = 0
        DW      55              ; DSM  = 55   (max block number = 56 blocks)
        DW      63              ; DRM  = 63   (max directory entry = 64 entries)
        DB      0C0H            ; AL0  = 0xC0 (reserve directory blocks 0-1)
        DB      00H             ; AL1  = 0x00
        DW      00H             ; CKS  = 0    (fixed media -> no checksum)
        DW      02H             ; OFF  = 2    (reserve 2 system tracks)

; ============================================================================
;   CBIOS BUFFERS / VECTORS
; ============================================================================
CSV:    DS      1               ; checksum vector (0 bytes needed since CKS=0)
ALV:    DS      8               ; allocation vector (56 blocks / 8 = 7 -> pad 8)
DIRBUF: DS      128             ; directory buffer (one 128-byte directory record)

; ============================================================================
;   DRIVE A: (SPI flash) DISK PARAMETER HEADER / BLOCK / VECTORS
;   Geometry: 128-byte sectors, SPT=32, 2KB allocation (BSH=4/BLM=15), OFF=2
;   (tracks 0-1 reserved for the CP/M boot image), directory = blocks 0-1
;   reserved via AL0=0xC0 (128 entries = 4K dir spanning both 2K blocks),
;   DSM=251 (252 blocks), DRM=127 (128 entries), CKS=0 (fixed media).
;   DSM=251 < 256 so the BDOS stays in SINGLE-DM (1-byte FCB map entries) --
;   do NOT raise DSM past 255, which flips the BDOS into double-DM.
;   This MUST agree with diskutil's formatter (data at 0x3000).  The BDOS builds
;   the allocation vector itself on first login, so ALVB just needs the space.
; ============================================================================
DPHB:
        DW      0000H           ; XLT: no sector translation
        DW      0000H           ; scratch (cdrmax)
        DW      0000H           ; scratch (curtrk)
        DW      0000H           ; scratch (currec)
        DW      DIRBUF          ; shared directory buffer (128 bytes)
        DW      DPB             ; disk parameter block (RAM disk 1K geometry)
        DW      CSV             ; checksum vector
        DW      ALV             ; allocation vector
DPBB:
        DW      SPT             ; SPT  = 32   (sectors per track)
        DB      04H             ; BSH  = 4    (block shift -> 2KB blocks)
        DB      0FH             ; BLM  = 15   (block mask)
        DB      01H             ; EXM  = 1    (extent mask, BLS=2048 & DSM<256)
        DW      251             ; DSM  = 251  (max block number = 252 blocks)
        DW      127             ; DRM  = 127  (max directory entry = 128 entries)
        DB      0C0H            ; AL0  = 0xC0 (reserve directory blocks 0-1, MSB-first)
        DB      00H             ; AL1  = 0x00
        DW      00H             ; CKS  = 0    (fixed media -> no checksum)
        DW      02H             ; OFF  = 2    (reserve 2 system tracks)
CSVB:   DS      1               ; checksum vector (0 bytes used since CKS=0)
ALVB:   DS      32              ; allocation vector (DSM=251 -> (251/8)+1 = 32 bytes)
RECOFF: DS      2               ; in-sector byte offset for the drive B: RMW

; ============================================================================
;   DRIVE C / D: (SD card) DISK PARAMETER HEADER / BLOCK / VECTORS
;   Geometry: 128-byte sectors, SPT=32, 4KB allocation blocks (BSH=5/BLM=31),
;   DRM=255 (256 dir entries), AL0=0xC0 (reserve dir blocks 0-1 = 8KB),
;   CKS=0, DSM=2047 (DOUBLE-DM -- 2048 blocks x 4KB = 8 MB = the CP/M 2.2
;   16-bit record-counter ceiling), OFF=0 (data partition, no system tracks --
;   the directory is at the partition start, where sdtool formats it).
;   Drive C is 8 MB; drive D (DPHD) still maps here (a future SD partition 2).
;   See cpm/SD-8MB-DRIVE.md.
DPHC:
        DW      0000H           ; XLT: no sector translation
        DW      0000H           ; scratch (cdrmax)
        DW      0000H           ; scratch (curtrk)
        DW      0000H           ; scratch (currec)
        DW      DIRBUF          ; shared directory buffer (128 bytes)
        DW      DPBC            ; disk parameter block (SD 8K geometry, OFF=0)
        DW      CSVC            ; checksum vector (CKS=0 -> 0 bytes)
        DW      ALVC            ; allocation vector (drive C)
DPHD:
        DW      0000H           ; XLT: no sector translation
        DW      0000H           ; scratch (cdrmax)
        DW      0000H           ; scratch (curtrk)
        DW      0000H           ; scratch (currec)
        DW      DIRBUF          ; shared directory buffer (128 bytes)
        DW      DPBD            ; disk parameter block (SD 8K geometry, OFF=2048)
        DW      CSVC            ; checksum vector (CKS=0 -> 0 bytes)
        DW      ALVD            ; allocation vector (drive D)
DPBC:
        DW      SPT             ; SPT  = 32   (sectors per track)
        DB      06H             ; BSH  = 6    (block shift  -> 8KB blocks)
        DB      3FH             ; BLM  = 63   (block mask)
        DB      03H             ; EXM  = 3    (DSM>255 & BLS=8192 -> double-DM (16-bit
                                ;              block pointers): entry covers 8x8KB=64KB
                                ;              -> EXM = 64KB/16KB - 1 = 3)
        DW      1023            ; DSM  = 1023 (max block = 1024 blocks x 8KB = 8 MB --
                                ;              the CP/M 2.2 16-bit record-counter ceiling)
        DW      4095            ; DRM  = 4095 (max directory entry = 4096 entries)
        DB      0FFH            ; AL0  = 0xFF (reserve directory blocks 0-7, MSB-first)
        DB      0FFH            ; AL1  = 0xFF (reserve directory blocks 8-15 = the max 16
                                ;              blocks; 16 x 8KB = 128KB = 4096 entries)
        DW      00H             ; CKS  = 0    (fixed media -> no checksum)
        DW      00H             ; OFF  = 0    (drive C: partition region 0, no system tracks)
DPBD:
        DW      SPT             ; SPT  = 32   (sectors per track)
        DB      06H             ; BSH  = 6    (block shift  -> 8KB blocks)
        DB      3FH             ; BLM  = 63   (block mask)
        DB      03H             ; EXM  = 3    (double-DM, 8KB blocks)
        DW      1023            ; DSM  = 1023 (1024 blocks x 8KB = 8 MB)
        DW      4095            ; DRM  = 4095 (4096 entries)
        DB      0FFH            ; AL0  = 0xFF (reserve directory blocks 0-7)
        DB      0FFH            ; AL1  = 0xFF (reserve directory blocks 8-15)
        DW      00H             ; CKS  = 0
        DW      00H             ; OFF  = 0    (drive D: partition region 1.  CP/M has
                                ;              no partitioning, so the region offset is
                                ;              applied at the CBIOS deblock layer (SDMAP
                                ;              adds +0x4000 SD sectors for SELBL==3).
CSVC:   DS      1               ; checksum vector (0 bytes used since CKS=0)
ALVC:   DS      128             ; allocation vector (drive C: DSM=1023 -> (1023+1)/8 = 128 B)
ALVD:   DS      128             ; allocation vector (drive D: DSM=1023 -> 128 B)
                                ;   The BDOS builds these itself on drive login and keeps
                                ;   them while the drives are logged in -- they must NOT
                                ;   alias a clobbered buffer.  ALVC+ALVD = 256 total, the
                                ;   SAME footprint the old single-drive ALV used (it lived
                                ;   in the free RAM gap 0xED00-0xEF00, below RMWBUF).
SDOFF:  DS      2               ; in-sector byte offset for the SD deblock
BLKN:   DS      4               ; SD block number (32-bit, MSB first); SD block = SDPLBA + record/4
SDCMDB: DS      6               ; SD command buffer (opcode + 4-byte arg + CRC)
SDTRY:  DS      1               ; drive C: retry counter (READC/WRITEC)

        END
