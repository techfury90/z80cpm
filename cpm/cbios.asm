; ============================================================================
;   CBIOS (Custom BIOS) for CP/M 2.2 on the LatticeXP2 Brevia2 (TV80 Z80 core)
; ============================================================================
;   Assembled with a85 (8080/8085 cross-assembler). 8080-only instructions are
;   used throughout; ORG is fixed at 0xFA00 (BIOS base) so the image is loaded
;   exactly at 0xFA00 by the GWMON-80 'L' command and entered with 'G FA00'.
;
;   Memory map after the GWMON monitor ROM is banked out (OUT 0x30,1):
;       0x0000-0x00FF  page zero   (0x0000 = JP WBOOT, 0x0005 = JP BDOS entry)
;       0x0100-0xE3FF  TPA
;       0xE400-0xEBFF  CCP  (already loaded by the combined HEX)
;       0xEC00-0xF9FF  BDOS (already loaded by the combined HEX)
;       0xFA00-0xFFFF  THIS CBIOS
;
;   Hardware driven by this CBIOS (Brevia2 custom I/O map):
;       Serial console UART: 0x80 = status (bit0 tx_busy, bit1 rx_avail)
;                             0x81 = TX data / RX data    (8N1 @ 9600)
;       RAM disk (bank B of 128K SRAM, 64K bytes):
;                             0x20 = DATA (IN=read / OUT=write, AUTO-INCREMENT)
;                             0x21 = ADDR low byte (write)
;                             0x22 = ADDR high byte (write)
;       ROM banking:          OUT 0x30 with bit0=1 banks out the GWMON ROM.
;
;   The 64K RAM disk is treated as a single CP/M disk (drive A:).  Its first
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

        ORG     0FA00H

; ---- constants ------------------------------------------------------------
BIOS    EQU     0FA00H          ; BIOS base (jump table origin)
CCP     EQU     0E400H          ; CCP origin
; (WBOOT is the label of the warm-boot routine, which lands at BIOS+3 = 0xFA03.
;  It is *not* declared with EQU here to avoid a duplicate-symbol error.)
BDOSL   EQU     0EC00H          ; BDOS origin
BDOSENT EQU     0EC06H          ; BDOS entry point (page-zero 0x0005 vector)
SPT     EQU     32              ; sectors per track (from DPB)
SYSCPP  EQU     0000H           ; RAM-disk byte offset of the stored CCP
SYSBDS  EQU     0800H           ; RAM-disk byte offset of the stored BDOS
DMA0    EQU     0080H           ; CP/M default DMA buffer

;
; ============================================================================
;   BIOS JUMP TABLE (17 entries, each JP)  -- MUST be first, at 0xFA00
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
;   COLD BOOT  (entry at 0xFA00 via 'G FA00')
; ============================================================================
BOOT:
        LXI     SP,0DC00H       ; establish a stack in the TPA (below CCP@E400);
                                ; 0xF000 would sit INSIDE the BDOS (EC00-F9FF) and
                                ;  the boot's stack use would clobber the BDOS code.
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
; ---- initialize the default DMA address and jump to the CCP -----------------
        LXI     H,DMA0
        SHLD    DMA
        LXI     B,0000H         ; drive A (low nibble), user 0 (high nibble)
        JMP     CCP             ; the CCP sets up its own stack and prints "A>"

; ============================================================================
;   WARM BOOT  (0x0000 jumps here)
; ============================================================================
WBOOT:
        LXI     SP,0DC00H
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
;   0x0000 = JP WBOOT (0xFA03), 0x0003 = IOBYTE, 0x0005 = JP BDOSENT (0xEC06)
; ============================================================================
SETVEC:
        LXI     H,0000H
        MVI     M,0C3H          ; JP
        INX     H
        MVI     M,LOW(BIOS)+3   ; 0x0000 = JP 0xFA03 (the WBOOT table entry)
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
; Only drive A (C=0) exists (the RAM disk); all other drives return an error.
SELDSK:
        MOV     A,C
        STA     SELBL           ; remember the selected drive number
        ORA     A
        JNZ     SELERR          ; C != 0 -> not present
        LXI     H,DPH           ; drive A disk parameter header
        RET
SELERR:
        LXI     H,0000H         ; error return: HL=0
        MVI     A,0FFH
        RET

; HOME: move to track 0, sector 0.
HOME:
        MVI     A,00H
        STA     TRK
        STA     SECN
        RET

; SETTRK: set the current track (register C).
SETTRK:
        MOV     A,C
        STA     TRK
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
;   SIGN-ON BANNER
; ============================================================================
BANNER:
        DB      'CP/M 2.2 on Brevia2',0DH,0AH,0

; ============================================================================
;   CBIOS VARIABLES
; ============================================================================
SELBL:  DS      1               ; last selected drive
TRK:    DS      1               ; current (absolute) track
SECN:   DS      1               ; current sector
DMA:    DS      2               ; current DMA address
FILLV:  DS      1               ; scratch for RAMFILL
        DS      4               ; (padding/alignment reserved)

; ============================================================================
;   DISK PARAMETER HEADER (DPH) for drive A
;   Byte layout consumed by the BDOS:
;     +0  XLT  (sector-translate vector address; 0 = none)
;     +2  scratch, +4 scratch, +6 scratch
;     +8  DIRBUF, +10 DPB, +12 CSV, +14 ALV
; ============================================================================
DPH:
        DW      0000H           ; XLT: no sector translation
        DW      0000H           ; scratch (cdrmax)
        DW      0000H           ; scratch (curtrk)
        DW      0000H           ; scratch (currec)
        DW      DIRBUF          ; directory buffer (128 bytes)
        DW      DPB             ; disk parameter block
        DW      CSV             ; checksum vector
        DW      ALV             ; allocation vector

; ============================================================================
;   DISK PARAMETER BLOCK (DPB)
;   CP/M 2.2 geometry for the 64K RAM disk (drive A:):
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

        END
