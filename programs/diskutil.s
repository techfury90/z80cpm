; ============================================================================
; diskutil.s -- standalone RAM-disk maintenance utility for the Brevia2 Z80.
;
; Runs entirely OUTSIDE of CP/M. Loaded via GWMON-80 'L', run via 'G 1000'.
; Uses the console UART (0x80 status / 0x81 data) for BOTH the menu and the
; XMODEM file transfer, and the RAM-disk controller (0x20 DATA auto-inc,
; 0x21 ADDR lo, 0x22 ADDR hi) for the CP/M disk layout in bank B.
;
; Commands:
;   F  -- format drive A: (write 0xE5 to the 2K directory area)
;   U  -- XMODEM upload (checksum mode): receive a file from the host PC and
;         write it to the RAM disk as a CP/M file (multi-extent for >16K).
;   D  -- XMODEM download: send a file from the RAM disk to the host PC.
;   H  -- help
;
; XMODEM receive retries the initiating NAK with a ~1.5s timeout each cycle,
; so the host (Tera Term / minicom) picks it up even if it starts the transfer
; AFTER we began waiting. Supports checksum blocks (SOH) and CRC blocks (STX).
;
; Assembled with the Glitch Works a85 8085 cross-assembler (same as cbios.asm).
; ============================================================================

        ORG     1000H

; ---------------- Processor I/O ports ----------------
USTAT   EQU     80H                     ; UART status (bit0 tx_busy, bit1 rx_avail)
UDATA   EQU     81H                     ; UART data (read=RX char, write=TX char)
RDDATA  EQU     20H                     ; RAM disk DATA (read/write, auto-increment)
RDADRL  EQU     21H                     ; RAM disk ADDR low
RDADRH  EQU     22H                     ; RAM disk ADDR high
; ---- on-board ISSI IS25LD040 serial flash (SPI, 512 KB) ----
; JEDEC ID read = 7F 9D 7E (verified on silicon). 128 x 4KB sectors, 256-byte
; program pages.  Program only clears bits 1->0; restoring a 1 requires a 4KB
; sector erase first, so ERASE-BEFORE-WRITE is mandatory (see the layout note
; on DO_FMTFLASH and the drive B: RMW design in cpm/cbios.asm).
SPI_DATA EQU    50H                     ; read = clock 1 byte in (returns in A), write = clock 1 byte out. MSB-first.
SPI_CTL  EQU    51H                     ; write bit0 = CS#: 0 = select flash low, 1 = release high
SPI_STAT EQU    52H                     ; read bit0 = transfer busy (1 while a byte is clocked; polling OPTIONAL)

; ---------------- CP/M drive A: disk layout (bank B) ----------------
DIRBASE EQU     2000H                   ; directory area base (2K = 64 entries)
DBLOCK0 EQU     2800H                   ; first USER data block (block 2) base
BLKSZ   EQU     1024                    ; block size (1K)
RECSZ   EQU     128                     ; CP/M record size

; ---------------- XMODEM control bytes ----------------
XM_SOH  EQU     01H
XM_STX  EQU     02H
XM_EOT  EQU     04H
XM_ACK  EQU     06H
XM_NAK  EQU     15H
XM_CAN  EQU     18H
XM_TO   EQU     0FEH                    ; internal: RX timeout marker

; ---------------- Workspace (bank A SRAM, well below the CCP at 0xD000) ----------------
XMBUF   EQU     2000H                   ; 128-byte XMODEM block buffer
FCB     EQU     2100H                   ; 32-byte FCB (extent 0) in RAM
FCB2    EQU     2120H                   ; 32-byte FCB (extent 1) in RAM
RCNT_L  EQU     2160H                   ; total records received (16-bit, L then H)
FNAME   EQU     2180H                   ; 12-byte user filename buffer (8.3)
F_PAT   EQU     2200H                   ; 16-byte test-pattern buffer for the flash program/verify
F_RD    EQU     2210H                   ; 16-byte flash read-back buffer for the raw dump/verify
FMTBUF  EQU     2300H                   ; 256-byte buffer (one flash page) filled with 0xE5 for the
                                        ;  drive A: flash formatter; page-programmed 16x to write the 4K dir.
; ---- drive B: flash layout (shared with the CBIOS DPB -- keep in lockstep) ----
; Reserved system tracks 0-1 = 0x0000-0x1FFF (erased 0xFF, for the future boot).
; Directory = blocks 0-1 at 0x2000-0x2FFF (128 x 32-byte entries, filled 0xE5);
; data blocks 2..251 start at 0x3000.
FBDIR   EQU     2000H                   ; drive A: flash directory base (block 0)
FBDIRZ  EQU     1000H                   ; directory size written (4K = 128 entries)
FBSYS   EQU     2000H                   ; end of the reserved system area (0x0000-0x1FFF); dir base
CPMIMG  EQU     0000H                   ; flash offset of the stored CP/M boot image
CPMIMGLEN EQU  1E00H                    ; bytes of the boot image (padded to 0x1E00; must match gwmon/smbrevia.asm)

; ============================================================================
        JMP     START

; ---------------- UART primitives ----------------
; TXCHAR: output char in A; poll tx_busy(bit0) low.
TXCHAR: PUSH    PSW
TXCH1:  IN      USTAT
        ANI     01H
        JNZ     TXCH1
        POP     PSW
        OUT     UDATA
        RET

; RXCHAR: block until a char, return it in A.
RXCHAR: IN      USTAT
        ANI     02H
        JZ      RXCHAR
        IN      UDATA
        RET

; RXCHAR_T: receive a char with a ~1.5s timeout.
;   Returns: carry CLEAR + A=char if a char arrived; carry SET if timeout.
RXCHAR_T:
        MVI     B,0B0H                  ; outer count
RT_L2:  MVI     C,0B0H                  ; mid count
RT_L1:  MVI     D,0B0H                  ; inner count
RT_L0:  IN      USTAT
        ANI     02H
        JNZ     RT_HAVE
        DCR     D
        JNZ     RT_L0
        DCR     C
        JNZ     RT_L1
        DCR     B
        JNZ     RT_L2
        STC                             ; timeout
        RET
RT_HAVE:
        IN      UDATA                   ; char
        STC
        CMC                             ; carry clear (char read)
        RET

; CRLF: send CR + LF.
CRLF:   MVI     A,0DH
        CALL    TXCHAR
        MVI     A,0AH
        CALL    TXCHAR
        RET

; PRTDBG: print a NUL-terminated tag string at HL, then the byte in A as two
; hex digits, then a space. For on-board trace of the upload/FCB path.
; PRTSTR advances/clobbers HL, so the value byte is parked in C; PRTBYTE uses
; A (and itself calls TXCHAR). No registers are preserved beyond C/B/..., so
; callers must not rely on B/C/D/E/H/L across a PRTDBG call (use it standalone).
PRTDBG: MOV     C,A             ; park the value byte
        PUSH    B
        PUSH    D
        PUSH    H
        CALL    PRTSTR          ; HL -> tag string (PRTSTR clobbers HL)
        POP     H
        POP     D
        POP     B
        MOV     A,C
        CALL    PRTBYTE         ; value byte as 2 hex
        MVI     A,' '
        CALL    TXCHAR
        RET

; PRTSTR: print NUL-terminated string at HL.
PRTSTR: MOV     A,M
        ORA     A
        RZ
        CALL    TXCHAR
        INX     H
        JMP     PRTSTR

; PRTBYTE: print A as two hex digits.
PRTBYTE: PUSH    PSW
        ANI     0F0H
        RRC
        RRC
        RRC
        RRC
        CALL    PRTH1
        POP     PSW
        ANI     0FH
PRTH1:  ADI     90H
        DAA
        ACI     40H                     ; add carry (ACI) so 0xA-0xF print A-F
        DAA
        JMP     TXCHAR

; ---------------- RAM-disk primitives (bank B) ----------------
RDSETA: MOV     A,L
        OUT     RDADRL
        MOV     A,H
        OUT     RDADRH
        RET

; ============================================================================
; FINDFREE -- scan the directory (64 slots) for a run of `FNEED` consecutive
;   EMPTY (0xE5) slots. Set FNEED=1 for a single-extent file, FNEED=2 for a
;   two-extent file (extents 0 and 1 occupy two ADJACENT slots).
;   Returns: A = slot index of the run start, carry CLEAR if found; carry SET
;            if the directory has no such run (full).
; ============================================================================
FINDFREE:
        MVI     B,64            ; slots to examine
        MVI     C,00H           ; candidate run-start index
FF_LOOP:
        LDA     FNEED
        MOV     D,A             ; D = number of consecutive empties still needed
        MOV     E,C             ; E = running slot index
        ; remaining slots must be >= FNEED
        MOV     A,B
        CMP     D
        JC      FF_FULL         ; not enough slots left for a full run
FF_RUN:
        ; check slot E is empty. PUSH D/E because LXI D,DIRBASE below clobbers
        ; both, and D (remaining count) and E (running slot) are live across the
        ; slot read. Without the push, D silently becomes 0x20 (DIRBASE hi) and E
        ; resets each iteration, corrupting the run-scan.
        PUSH    D
        MOV     A,E
        MOV     L,A
        MVI     H,00H
        MVI     A,05H
FF_SHL: DAD     H
        DCR     A
        JNZ     FF_SHL          ; HL = E*32
        LXI     D,DIRBASE
        DAD     D               ; HL = DIRBASE + E*32
        CALL    RDSETA
        IN      RDDATA          ; byte 0 (0xE5 = empty)
        POP     D               ; restore D (count), E (running slot)
        CPI     0E5H
        JNZ     FF_ADV          ; slot E occupied -> try next run start
        INR     E
        DCR     D
        JNZ     FF_RUN          ; continue the run
        ; found a run of FNEED consecutive empties starting at C
        MOV     A,C
        ORA     A               ; clear carry
        RET
FF_ADV:
        INR     C               ; advance run start
        DCR     B
        JNZ     FF_LOOP
FF_FULL:
        STC
        RET

; ============================================================================
; NEXTBLK -- find the first FREE data block for a new file, scanning every
;   non-empty directory entry's allocation map for the highest block in use.
;   Returns: A = next free block number, carry CLEAR if one exists;
;            carry SET if the data area is full.
;   Data blocks run from 2 (block N at 0x2000 + N*1024); DSM=55 (blocks 2-55).
; ============================================================================
NEXTBLK:
        MVI     A,01H           ; start "highest used" just below block 2
        STA     NBMAX
        LXI     H,DIRBASE       ; scan base
        MVI     B,64            ; 64 slots
        MVI     C,00H           ; slot index
NB_LOOP:
        MOV     A,C
        MOV     L,A
        MVI     H,00H
        MVI     D,05H
NB_SHL: DAD     H
        DCR     D
        JNZ     NB_SHL          ; HL = slot*32
        LXI     D,DIRBASE
        DAD     D
        CALL    RDSETA
        IN      RDDATA          ; byte 0 = user number
        CPI     0E5H
        JZ      NB_NEXT         ; empty slot -> no blocks to scan
        ; non-empty: read its 16 allocation bytes and track the max block
        LXI     H,DIRBASE
        DAD     D               ; HL = DIRBASE (already have D=DIRBASE from DAD)
        MOV     A,C
        MOV     L,A
        MVI     H,00H
        MVI     D,05H
NB_SHL2: DAD     H
        DCR     D
        JNZ     NB_SHL2
        LXI     D,DIRBASE+16    ; +16 -> start of allocation map
        DAD     D
        CALL    RDSETA
        MVI     D,16            ; read 16 allocation bytes
NB_MAP: IN      RDDATA
        ORA     A
        JZ      NB_MAPC         ; block 0 = unallocated (means no block) -> skip
        MOV     E,A             ; E = this block number
        LDA     NBMAX
        CMP     E
        JNC     NB_MAPC         ; NBMAX >= this -> no change
        MOV     A,E
        STA     NBMAX           ; NBMAX = this block
NB_MAPC: DCR     D
        JNZ     NB_MAP
NB_NEXT:
        INR     C
        DCR     B
        JNZ     NB_LOOP
        ; next free block = NBMAX + 1
        LDA     NBMAX
        ADI     01H
        CPI     56              ; block 56 would be past DSM=55
        JNC     NB_FULL
        ORA     A               ; clear carry (block number in A, < 56)
        RET
NB_FULL:
        STC
        RET

; ============================================================================
; START
; ============================================================================
START:  LXI     SP,0FE00H               ; stack ABOVE the CP/M image the 'C' command loads
                                        ;  (image now spans 0xD000-~0xEA00 after the system was
                                        ;  moved down; 0xFE00 is above it and just below GWMON's
                                        ;  reserved 0xFF00, so the cold-boot load can't clobber
                                        ;  the active stack. Old 0xE000 sat inside the image.)
        LXI     H,MSGBANNER
        CALL    PRTSTR
MENU:   LXI     H,MSGMENU
        CALL    PRTSTR
        CALL    RXCHAR                  ; wait for a command char
        ANI     0DFH                    ; force uppercase (accept lowercase)
        CPI     'F'
        JZ      DO_FMT
        CPI     'U'
        JZ      DO_UPLOAD
        CPI     'C'
        JZ      DO_BOOTCPM
        CPI     'H'
        JZ      DO_HELP
        CPI     'B'
        JZ      DO_DUMP
        CPI     'M'
        JZ      DO_MDUMP
        CPI     'I'
        JZ      DO_ID
        CPI     'P'
        JZ      DO_PROGRAM
        CPI     'R'
        JZ      DO_READ
        CPI     'E'
        JZ      DO_ERASE
        CPI     'S'
        JZ      DO_FMTFLASH
        JMP     MENU

; ---------------- command: format ----------------
DO_FMT: LXI     H,MSGFMT
        CALL    PRTSTR
        LXI     H,0000H                 ; start at byte 0 of the RAM disk
        CALL    RDSETA
        LXI     B,65536                 ; erase the ENTIRE 64K bank-B RAM disk
        MVI     D,0E5H                  ; keep the fill value in D (A is clobbered below)
FMTW:   MOV     A,D
        OUT     RDDATA                  ; write 0xE5 (auto-increment)
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     FMTW
        LXI     H,MSGFMTOK
        CALL    PRTSTR
        JMP     MENU

DO_HELP: LXI     H,MSGHELP
        CALL    PRTSTR
        JMP     MENU

; ============================================================================
; DO_UPLOAD -- XMODEM (checksum/CRC) receive a file, write it as a CP/M file.
; ============================================================================
DO_UPLOAD:
        LXI     H,MSGPROMPT
        CALL    PRTSTR
        CALL    READNAME                ; read "name.ext" into FNAME (echoed)
        ; ---- allocate the first free data block NOW so WRITEBLK (during the
        ;      receive, before the FCB is written) appends after existing
        ;      files instead of overwriting block 2. The directory slot is
        ;      allocated later in WRITEFCB, after the extent count is known.
        CALL    NEXTBLK                 ; A = first free data block (carry set = full)
        JC      UP_NOSPC
        STA     BLKNO
        LXI     H,MSGT_BLK              ; DEBUG: trace the picked block
        CALL    PRTDBG                  ; value was already in A (BLKNO)
        LXI     H,0000H
        SHLD    RCNT_L                  ; init record counter
        LXI     H,MSGRECV
        CALL    PRTSTR
        MVI     A,XM_NAK                ; kick off with a checksum NAK
        CALL    TXCHAR

UPLOOP: CALL    GETBLK                  ; A=TO(timeout),01 good,FF bad,00 EOT,02 CAN
        CPI     XM_TO
        JZ      UP_NAK                  ; timeout -> resend NAK, keep waiting
        CPI     02H
        JZ      UP_NAK                  ; CAN
        CPI     00H
        JZ      UP_EOT
        CPI     0FFH
        JZ      UP_NAK                  ; bad block -> NAK
        ; good block -> write it to the disk
        CALL    WRITEBLK
        MVI     A,XM_ACK
        CALL    TXCHAR
        MVI     A,'.'
        CALL    TXCHAR
        JMP     UPLOOP
UP_NAK: MVI     A,XM_NAK
        CALL    TXCHAR
        JMP     UPLOOP
; disk full (no free data block or no free directory slot) -> report and bail
UP_NOSPC:
        LXI     H,MSGNOSPC
        CALL    PRTSTR
        JMP     MENU

UP_EOT: MVI     A,XM_ACK
        CALL    TXCHAR
        CALL    CRLF
        CALL    WRITEFCB                ; write directory entries
        LXI     H,MSGDONE
        CALL    PRTSTR
        LHLD    RCNT_L
        MOV     A,H
        CALL    PRTBYTE
        MOV     A,L
        CALL    PRTBYTE
        CALL    CRLF
        JMP     MENU

; ============================================================================
; GETBLK -- receive one XMODEM block into XMBUF.
; Returns A: XM_TO(timeout), 00=EOT, 01=good, FF=bad, 02=CAN.
; (First byte uses the timed read so we can retry the NAK on timeout; the rest
;  of the block uses blocking reads because the host sends them back-to-back.)
; ============================================================================
GETBLK: CALL    RXCHAR_T
        JC      GT_TIMEOUT              ; carry set = timeout
        CPI     XM_EOT
        JZ      GT_EOT
        CPI     XM_CAN
        JZ      GT_CAN
        CPI     XM_SOH
        JZ      GT_SOH
        CPI     XM_STX
        JZ      GT_STX
        JMP     GETBLK                  ; stray byte (e.g. 'rx name'), ignore

GT_TIMEOUT:
        MVI     A,XM_TO
        RET
GT_EOT: XRA     A
        RET
GT_CAN: MVI     A,02H
        RET

; ---- SOH: checksum block (blkno, ~blkno, 128 data, 1-byte checksum) ----
GT_SOH: CALL    RXCHAR
        MOV     B,A                     ; blkno
        CALL    RXCHAR
        XRA     B                       ; ~blkno ^ blkno
        CPI     0FFH
        JNZ     GT_BAD
        LXI     H,XMBUF
        MVI     E,00H
        MVI     C,128
GT_LP:  CALL    RXCHAR
        MOV     M,A
        ADD     E
        MOV     E,A
        INX     H
        DCR     C
        JNZ     GT_LP
        CALL    RXCHAR                  ; checksum byte
        CMP     E
        JNZ     GT_BAD
        MVI     A,01H
        RET

; ---- STX: CRC block (blkno, ~blkno, 128 data, 2-byte CRC-16) ----
GT_STX: CALL    RXCHAR
        MOV     B,A                     ; blkno
        CALL    RXCHAR
        XRA     B
        CPI     0FFH
        JNZ     GT_BAD
        LXI     H,XMBUF
        MVI     C,128
GT_LP2: CALL    RXCHAR
        MOV     M,A
        INX     H
        DCR     C
        JNZ     GT_LP2
        ; compute CRC-16 XMODEM over XMBUF -> D: E (D high, E low)
        LXI     H,XMBUF
        LXI     D,0000H                 ; crc = 0
        MVI     C,128
GT_CRC: MOV     A,M
        MOV     B,A
        MOV     A,D
        XRA     B                       ; crc_hi ^= byte
        MOV     D,A
        MVI     B,08H
GTCB:   MOV     A,D
        ANI     80H                     ; crc & 0x8000 ?
        JZ      GTCS
        ANA     A                       ; clear carry
        MOV     A,E
        RAL                             ; E = E<<1 (carry = old E bit7)
        MOV     E,A
        MOV     A,D
        RAL                             ; D = D<<1 | old E bit7
        MOV     D,A
        MOV     A,D
        XRI     10H                     ; crc ^= 0x1021 (hi)
        MOV     D,A
        MOV     A,E
        XRI     21H                     ; crc ^= 0x1021 (lo)
        MOV     E,A
        DCR     B
        JNZ     GTCB
        INX     H
        DCR     C
        JNZ     GT_CRC
        JMP     GT_CHK
GTCS:   ANA     A                       ; clear carry
        MOV     A,E
        RAL
        MOV     E,A
        MOV     A,D
        RAL
        MOV     D,A
        DCR     B
        JNZ     GTCB
        INX     H
        DCR     C
        JNZ     GT_CRC
GT_CHK:
        INX     H
        DCR     C
        JNZ     GT_CRC
        ; read 2 CRC bytes (high, low), compare
        CALL    RXCHAR
        MOV     B,A                     ; received crc hi
        CALL    RXCHAR
        CMP     E                       ; compare low
        JNZ     GT_BAD
        MOV     A,B
        CMP     D                       ; compare high
        JNZ     GT_BAD
        MVI     A,01H
        RET

GT_BAD: MVI     A,0FFH
        RET

; ============================================================================
; WRITEBLK -- write the 128 good bytes in XMBUF to the RAM disk at the current
;   file position. Position = 0x2000 + BLKNO*1024 + RCNT_L*128. BLKNO is the
;   first free data block found by NEXTBLOCK at upload start, so a second
;   upload appends after existing files instead of overwriting block 2.
; ============================================================================
WRITEBLK:
        LHLD    RCNT_L
        MOV     D,H
        MOV     E,L
        MVI     B,07H
WBLK_SHL:
        MOV     A,E
        ADD     A
        MOV     E,A
        MOV     A,D
        RAL
        MOV     D,A
        DCR     B
        JNZ     WBLK_SHL        ; DE = RCNT_L*128
        PUSH    D               ; save RCNT_L*128
        LDA     BLKNO
        MOV     L,A
        MVI     H,00H
        MVI     B,10            ; *1024 (2^10) -> HL = BLKNO*1024
WBLK_B: DAD     H
        DCR     B
        JNZ     WBLK_B
        LXI     D,2000H         ; data-area base (blocks are at 0x2000 + N*1024)
        DAD     D               ; HL = 0x2000 + BLKNO*1024
        POP     D               ; DE = RCNT_L*128
        DAD     D               ; HL += RCNT_L*128
        CALL    RDSETA
        LXI     H,XMBUF
        MVI     C,128
WBLK:   MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WBLK
        LHLD    RCNT_L
        INX     H
        SHLD    RCNT_L
        RET

; ============================================================================
; WRITEFCB -- write the FCB directory entry/entries for the received file.
;   BLKNO (first free data block) and FSLOT (first free dir slot) were chosen
;   by NEXTBLK/FINDFREE at the START of the upload. Single extent (<=16K) ->
;   one slot; >16K -> two slots (extents 0 and 1). All data blocks run
;   contiguously from BLKNO, so a second upload never overwrites the first.
; ============================================================================
WRITEFCB:
        CALL    BUILD_FCB               ; builds FCB (and FCB2 copy) with name/ext
        LHLD    RCNT_L
        MOV     A,H
        ORA     A
        JNZ     WFC_TWO
        MOV     A,L
        CPI     129
        JNC     WFC_TWO
        ; ---- single extent (<=16K) ----
        MVI     A,01H
        STA     FNEED                   ; need 1 consecutive slot
        CALL    FINDFREE                ; A = free slot (carry set = dir full)
        JC      UP_NOSPC
        STA     FSLOT
        LXI     H,MSGT_SLOT             ; DEBUG: trace the picked slot
        CALL    PRTDBG                  ; value in A = FSLOT
        LDA     FCB+15
        LXI     H,MSGT_RC               ; DEBUG: trace RC
        CALL    PRTDBG
        MVI     A,00H
        STA     FCB+12                  ; EX=0
        STA     FCB+13                  ; S1=0
        STA     FCB+14                  ; S2=0
        LHLD    RCNT_L
        MOV     A,L
        STA     FCB+15                  ; RC = records
        CALL    SETALLO                 ; fill FCB+16..31 (blocks from BLKNO)
        CALL    WDIRFCB
        RET

WFC_TWO:
        MVI     A,02H
        STA     FNEED                   ; need 2 consecutive slots
        CALL    FINDFREE                ; A = free slot run start
        JC      UP_NOSPC
        STA     FSLOT
        MVI     A,00H
        STA     FCB+12
        STA     FCB+13
        STA     FCB+14
        MVI     A,128
        STA     FCB+15
        CALL    SETALLO
        LHLD    RCNT_L
        MOV     A,L
        SUI     128
        MOV     L,A
        MOV     A,H
        SBI     00H
        MOV     H,A
        MOV     A,L
        STA     FCB2+15                 ; RC extent 1
        MVI     A,01H
        STA     FCB2+12                 ; EX=1
        MVI     A,00H
        STA     FCB2+13                 ; S1=0
        STA     FCB2+14                 ; S2=0
        CALL    SETALLO2
        CALL    WDIRFCB                 ; extent 0 at slot FSLOT
        ; extent 1 at slot FSLOT+1
        LDA     FSLOT
        INR     A
        MOV     L,A
        MVI     H,00H
        MVI     D,05H
WFC2S:  DAD     H
        DCR     D
        JNZ     WFC2S                   ; HL = (FSLOT+1)*32
        LXI     D,DIRBASE
        DAD     D
        CALL    RDSETA
        LXI     H,FCB2
        MVI     C,32
WFC2B:  MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WFC2B
        RET

WDIRFCB:
        LDA     FSLOT
        MOV     L,A
        MVI     H,00H
        MVI     D,05H
WDFS:   DAD     H
        DCR     D
        JNZ     WDFS                    ; HL = FSLOT*32
        LXI     D,DIRBASE
        DAD     D
        CALL    RDSETA
        LXI     H,FCB
        MVI     C,32
WDF:    MOV     A,M
        OUT     RDDATA
        INX     H
        DCR     C
        JNZ     WDF
        RET

SETALLO:
        LDA     FCB+15
        ORA     A
        RZ                              ; RC=0 -> no blocks to allocate
        ADI     07H
        RRC
        RRC
        RRC
        ANI     1FH
        MOV     B,A
        LXI     H,FCB+16
        LDA     BLKNO                   ; first free data block
SA1:    MOV     M,A
        INX     H
        INR     A
        DCR     B
        JNZ     SA1
        RET

SETALLO2:
        LDA     FCB2+15
        ORA     A
        RZ                              ; RC=0 -> no blocks to allocate
        ADI     07H
        RRC
        RRC
        RRC
        ANI     1FH
        MOV     B,A
        LXI     H,FCB2+16
        LDA     BLKNO
        ADI     10H                     ; extent 1 starts at BLKNO + 16 (10H), NOT 16H(22)
SA21:   MOV     M,A
        INX     H
        INR     A
        DCR     B
        JNZ     SA21
        RET

; ============================================================================
; READNAME -- read "name.ext" (max 9 chars) from console into FNAME, echoing.
; ============================================================================
READNAME:
        LXI     H,FNAME
        MVI     B,12
RN1:    CALL    RXCHAR
        CPI     0DH
        JZ      RN_DONE
        CPI     08H                     ; ^H backspace
        JZ      RN_BS
        CPI     7FH                     ; DEL backspace
        JZ      RN_BS
        ; coerce lowercase a-z to A-Z so the name always matches CP/M's
        ; uppercase convention (else files with lowercase names are stored but
        ; DIR/save lookups that uppercase won't find them)
        CPI     'a'
        JC      RN_STORE
        CPI     'z'+1
        JNC     RN_STORE
        SUI     20H                     ; 'a'->'A'
RN_STORE:
        MOV     M,A
        CALL    TXCHAR                  ; ECHO the (upper-cased) char
        INX     H
        DCR     B
        JNZ     RN1
        JMP     RN_DONE
RN_BS:  ; backspace: erase from the screen and back the buffer up (if possible)
        MVI     A,08H
        CALL    TXCHAR
        MVI     A,20H
        CALL    TXCHAR
        MVI     A,08H
        CALL    TXCHAR
        MOV     A,B
        CPI     9
        JZ      RN1                     ; buffer full, at start -> nothing to back up
        DCX     H
        INR     B
        JMP     RN1
RN_DONE: MVI     A,00H
        MOV     M,A                     ; NUL terminate
        CALL    CRLF
        RET

; ============================================================================
; BUILD_FCB -- parse FNAME into the 32-byte FCB (and copy into FCB2).
; ============================================================================
BUILD_FCB:
        LXI     H,FCB
        MVI     B,64                    ; zero both FCBs (2 x 32)
BF_Z:   MVI     A,00H
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_Z
        LXI     D,FNAME
        LXI     H,FCB+1
        MVI     B,8
BF_N:   LDAX    D
        CPI     00H
        JZ      BF_NPAD
        CPI     '.'
        JZ      BF_GOTEXT
        MOV     M,A
        INX     H
        INX     D
        DCR     B
        JNZ     BF_N
        LDAX    D
        CPI     '.'
        JNZ     BF_EXT0
        INX     D
        JMP     BF_EXT
BF_GOTEXT:
BF_NPAD: MVI     A,' '
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_NPAD
        INX     D                       ; skip '.'
BF_EXT: LXI     H,FCB+9
        MVI     B,3
BF_E:   LDAX    D
        CPI     00H
        JZ      BF_EXT_PAD
        CPI     '.'
        JZ      BF_EXT_SKIP
        MOV     M,A
        INX     H
        INX     D
        DCR     B
        JNZ     BF_E
        JMP     BF_EXT0
BF_EXT_SKIP:
        INX     D
        JMP     BF_E
BF_EXT_PAD:
        MVI     A,' '
        MOV     M,A
        INX     H
        DCR     B
        JNZ     BF_EXT_PAD
BF_EXT0:
        LXI     H,FCB
        MVI     M,00H                   ; dir entry byte0 = USER number (0), not drive
        LXI     H,FCB
        LXI     D,FCB2
        MVI     B,32
BF_C:   MOV     A,M
        STAX    D
        INX     H
        INX     D
        DCR     B
        JNZ     BF_C
        RET

; ============================================================================
; DO_BOOTCPM -- receive the CP/M system image (CCP+BDOS+CBIOS, the combined
;   brevia2_cpm binary) via XMODEM into MACHINE RAM at 0xD000, then cold-boot
;   CP/M by jumping to the CBIOS cold-boot entry (0xE600). The CBIOS persists
;   CCP/BDOS to the RAM-disk system tracks and enters the CCP, so we reuse the
;   proven boot path instead of duplicating it.
;   Transfers into bank A via XMBUF, then copies each block to machine RAM.
; ============================================================================
DO_BOOTCPM:
        LXI     H,MSGBCPM
        CALL    PRTSTR
        LXI     H,0D000H                ; load CCP at 0xD000 (image is contiguous)
        SHLD    BCPADDR
        LXI     H,MSGRECV
        CALL    PRTSTR
        MVI     A,XM_NAK                ; kick off with a checksum NAK
        CALL    TXCHAR
BCPLOOP: CALL    GETBLK                  ; A=TO,01 good,FF bad,00 EOT,02 CAN
        CPI     XM_TO
        JZ      BCP_NAK                 ; timeout -> resend NAK
        CPI     02H
        JZ      BCP_NAK                 ; CAN
        CPI     00H
        JZ      BCP_EOT
        CPI     0FFH
        JZ      BCP_NAK                 ; bad block -> NAK
        ; good block -> copy XMBUF to machine RAM at BCPADDR, advance by 128
        LHLD    BCPADDR
        LXI     D,XMBUF
        MVI     C,128
BCPC:   LDAX    D
        MOV     M,A
        INX     D
        INX     H
        DCR     C
        JNZ     BCPC
        SHLD    BCPADDR                 ; advance for the next block
        MVI     A,XM_ACK
        CALL    TXCHAR
        MVI     A,'.'
        CALL    TXCHAR
        JMP     BCPLOOP
BCP_NAK: MVI     A,XM_NAK
        CALL    TXCHAR
        JMP     BCPLOOP
BCP_EOT: MVI     A,XM_ACK
        CALL    TXCHAR
        CALL    CRLF
        LXI     H,MSGBCPMOK
        CALL    PRTSTR
        CALL    DO_FLASH_BURN           ; persist the image to the SPI flash too
        LXI     H,MSGFLASHOK
        CALL    PRTSTR
        JMP     0E600H                  ; CBIOS cold boot -> enters CCP (A>)

BCPADDR: DS     2                        ; machine-RAM load address for the boot image
FSLOT:   DS     1               ; directory slot index for the file being written
TWOF:    DS     1               ; !=0 -> two-extent file (extents 0 AND 1 slots)
FNEED:   DS     1               ; slots needed by FINDFREE (1 = single, 2 = two-extent)
NBMAX:   DS     1               ; scratch: highest data block seen during NEXTBLK
BLKNO:   DS     1               ; first free data block for the file being written


; ============================================================================
; DO_DUMP -- dump 256 bytes from the RAM disk at a hex address, as hex (16/line).
; ============================================================================
DO_DUMP:
        LXI     H,MSGDUMP
        CALL    PRTSTR
        CALL    READHEX                 ; HL = start address
        CALL    RDSETA
        MVI     B,16                    ; 16 lines
DUMP_L1: MVI     D,16                    ; 16 bytes per line
DUMP_B: IN      RDDATA
        CALL    PRTBYTE
        MVI     A,' '
        CALL    TXCHAR
        DCR     D
        JNZ     DUMP_B
        CALL    CRLF
        DCR     B
        JNZ     DUMP_L1
        JMP     MENU

; ============================================================================
; DO_MDUMP -- dump 128 bytes of CPU (bank A) memory at a hex address.
; Runs with the monitor banked out; reads bank A RAM directly. Useful for
; inspecting CBIOS/BDOS variable state AFTER a CP/M session (reset -> G 1000).
; ============================================================================
DO_MDUMP:
        LXI     H,MSGMD
        CALL    PRTSTR
        CALL    READHEX                 ; HL = start address
        MVI     B,8                     ; 8 lines
MD_L1:  MVI     D,16                    ; 16 bytes per line
MD_B:   MOV     A,M
        CALL    PRTBYTE
        MVI     A,' '
        CALL    TXCHAR
        INX     H
        DCR     D
        JNZ     MD_B
        CALL    CRLF
        DCR     B
        JNZ     MD_L1
        JMP     MENU

; ---------------------------------------------------------------------------
; READHEX -- read up to 4 hex digits from the console into HL (echoed).
; ---------------------------------------------------------------------------
READHEX:
        LXI     H,0000H
        MVI     B,4
RH1:    CALL    RXCHAR
        CPI     0DH
        JZ      RH_DONE                 ; Enter ends
        ; determine hex digit value 0-15 in A
        CPI     '0'
        JC      RH_NEXT                 ; < '0' -> ignore
        CPI     '9'+1
        JC      RH_DIG                  ; '0'-'9'
        ANI     0DFH                    ; uppercase
        CPI     'A'
        JC      RH_NEXT                 ; < 'A' -> ignore
        CPI     'F'+1
        JNC     RH_NEXT                 ; > 'F' -> ignore
        SUI     'A'-10                  ; 'A'-'F' -> 10-15
        JMP     RH_ADD
RH_DIG: SUI     '0'                     ; '0'-'9' -> 0-9
RH_ADD: CALL    TXCHAR                  ; echo the digit
        MOV     C,A                     ; C = digit value
        ; HL = (HL << 4) | C
        MVI     D,04H
RH_SHL: MOV     A,L
        ADD     A
        MOV     L,A
        MOV     A,H
        RAL
        MOV     H,A
        DCR     D
        JNZ     RH_SHL
        MOV     A,L
        ORA     C
        MOV     L,A
        DCR     B
        JNZ     RH1
RH_DONE:
        CALL    CRLF
        RET
RH_NEXT: JMP     RH1

; ============================================================================
; --- ISSI IS25LP040E serial-flash routines (SPI) ---------------------------
; Ports: SPI_DATA(0x50) read clocks a byte in / write clocks a byte out (MSB
;        first); SPI_CTL(0x51) bit0 = CS# (0=select low, 1=release high);
;        SPI_STAT(0x52) bit0 = transfer busy. The byte engine stretches the
;        CPU wait state during every 0x50 access, so back-to-back 0x50
;        accesses complete within the access -- a busy poll on 0x52 is OPTIONAL.
; The flash is a 512 KB ISSI IS25LP040E: 128 x 4KB sectors, 256-byte pages,
; byte-granular program that only CLEARS 1->0. Restoring a bit to 1 requires
; erasing its whole 4KB sector (to 0xFF) first, so ERASE-BEFORE-WRITE is
; mandatory unless writing into known-erased 0xFF regions.
; ============================================================================
; ---------------- SPI physical helpers (SHARED with cbios) ----------------
; The selection / transfer / WIP-wait primitives and the 24-bit page-program,
; bulk-read and sector-erase operations are factored into spi.inc so diskutil
; and the CBIOS drive B: driver can never diverge.  This must come AFTER the
; SPI_DATA / SPI_CTL EQU's at the top of this file.
        INCL    "spi.inc"

; ============================================================================
; DO_FLASH_BURN -- persist the CP/M boot image (already received into machine
;   RAM at 0xD000 by DO_BOOTCPM, CPMIMGLEN bytes) to the SPI flash system area
;   (flash 0x0000) so the GWMON 'b' command can boot CP/M from the flash on the
;   next power-up.  Erases ONLY the 2 reserved system sectors (0x0000-0x1FFF),
;   leaving the drive-B user area (dir at 0x2000) untouched.  Clobbers A,B,D,E,
;   H,L and FBADDR.  MUST be after the spi.inc INCL (a85 resolves included-file
;   symbols only once they have been included).
; ============================================================================
DO_FLASH_BURN:
        ; erase system sectors 0x00000 and 0x01000 (the 8KB reserved area)
        LXI     H,0
        SHLD    FBADDR
        XRA     A
        STA     FBADDR+2
        CALL    SPI_ERASE_SECT
        LXI     H,1000H
        SHLD    FBADDR
        XRA     A
        STA     FBADDR+2
        CALL    SPI_ERASE_SECT
        ; program the image: 30 pages x 256 B = 0x1E00 B from 0xD000 to flash 0x0000
        ; (MUST equal CPMIMGLEN -- at fewer pages the last bytes of the CBIOS,
        ;  incl. the drive-C/D DPH/DPB tables at 0xED00+, were never burned, so a
        ;  power-up flash boot ran a truncated CBIOS reading them as erased 0xFF.
        ;  Keep this count in step with CPMIMGLEN.)
        LXI     H,0D000H
        SHLD    BURNSRC
        LXI     H,0
        SHLD    FBADDR
        XRA     A
        STA     FBADDR+2
        MVI     B,30                    ; 30 pages = 0x1E00 B = CPMIMGLEN
BURN_LOOP:
        PUSH    B
        LHLD    BURNSRC
        CALL    SPI_PAGE                ; programs 256 B from (HL) at FBADDR, HL+=256
        SHLD    BURNSRC                 ; record the advanced source pointer
        LXI     H,FBADDR+1
        INR     M                       ; next 256B page target (pages advance by 0x100)
        POP     B
        DCR     B
        JNZ     BURN_LOOP
        RET
BURNSRC: DS      2                       ; source pointer for the page-program loop
MSGFLASHOK: DB 'SPI flash boot image written.',0DH,0AH,0

; SPI_PROGBYTE / SPI_ERASE_SECT0 below are diskutil-specific: they operate on
; the <=64K test region (A23-A16 hard-coded 0) and are kept as the proven
; harness for the I/P/R/E commands.  The shared spi.inc supplies the generic
; 24-bit ops (SPI_PAGE / SPI_READBUF / SPI_ERASE_SECT) used for drive B:.

; SPI_PROGBYTE: program ONE byte (in A) at the address in HL (the A23-A16
; address byte is taken as 0 -- this utility only uses the <=64K flash region).
; Uses the per-byte 0x02 Byte Program; issues WREN first (required before every
; program). Clobbers A and C only (spares B/D/E/H/L across the call).
SPI_PROGBYTE:
         MOV     C,A                     ; park the data byte
         CALL    SPI_SEL
         MVI     A,06H
         CALL    SPI_XMIT                ; WREN
         CALL    SPI_REL                 ; latch WREN (CS# must toggle)
         CALL    SPI_SEL
         MVI     A,02H
         CALL    SPI_XMIT                ; Byte Program opcode
         MVI     A,00H
         CALL    SPI_XMIT                ; A23-A16 = 0
         MOV     A,H
         CALL    SPI_XMIT                ; A15-A8
         MOV     A,L
         CALL    SPI_XMIT                ; A7-A0
         MOV     A,C
         CALL    SPI_XMIT                ; data byte -> flash programs it
         CALL    SPI_REL
         CALL    SPI_WAIT                ; wait for WIP to clear
         RET

; SPI_ERASE_SECT0: WREN + Sector Erase (0x20) of the 4KB sector at 0x000000
; (the sector containing the test / flash-layout region). Then wait WIP.
SPI_ERASE_SECT0:
         CALL    SPI_SEL
         MVI     A,06H
         CALL    SPI_XMIT                ; WREN
         CALL    SPI_REL
         CALL    SPI_SEL
         MVI     A,20H
         CALL    SPI_XMIT                ; Sector Erase 4KB opcode
         MVI     A,00H
         CALL    SPI_XMIT                ; A23-A16
         MVI     A,00H
         CALL    SPI_XMIT                ; A15-A8
         MVI     A,00H
         CALL    SPI_XMIT                ; A7-A0 -> sector 0
         CALL    SPI_REL
         CALL    SPI_WAIT
         RET

; ---------------- command: read JEDEC ID ----------------
; The on-board flash is an ISSI IS25LD040.  Per the IS25LD040 datasheet (JEDEC ID
; READ 0x9F, Table 11), the 0x9F read shifts out, in this order:
;     second Manufacturer ID 7Fh  ->  first Manufacturer ID 9Dh  ->  Device ID 7Eh
; i.e. the JEDEC stream is  7F 9D 7E .  The 0x9F command is a 1-byte instruction
; (no dummy/address byte), so we read the 3 ID bytes back directly and verify the
; exact IS25LD040 signature.  (The READ command 0x03 is unaffected -- it carries
; 3 address bytes, so its data path needs no special handling.)
DO_ID:   LXI     H,MSGID
         CALL    PRTSTR
         CALL    SPI_SEL
         MVI     A,09FH
         CALL    SPI_XMIT                ; JEDEC ID opcode (0x9F)
         IN      SPI_DATA                ; byte 0 = 2nd mfr ID (7Fh)
         MOV     B,A
         IN      SPI_DATA                ; byte 1 = 1st mfr ID (9Dh)
         MOV     C,A
         IN      SPI_DATA                ; byte 2 = device ID (7Eh)
         MOV     D,A
         CALL    SPI_REL
         LXI     H,MSGIDVAL
         CALL    PRTSTR
         MOV     A,B
         CALL    PRTBYTE
         MVI     A,' '
         CALL    TXCHAR
         MOV     A,C
         CALL    PRTBYTE
         MVI     A,' '
         CALL    TXCHAR
         MOV     A,D
         CALL    PRTBYTE
         CALL    CRLF
         MVI     A,07FH                  ; IS25LD040 JEDEC ID: 7F 9D 7E
         CMP     B
         JNZ     ID_FAIL
         MVI     A,09DH
         CMP     C
         JNZ     ID_FAIL
         MVI     A,07EH
         CMP     D
         JNZ     ID_FAIL
         LXI     H,MSGPASS
         CALL    PRTSTR
         JMP     MENU
ID_FAIL: LXI     H,MSGFAIL
         CALL    PRTSTR
         JMP     MENU

; ---------------- command: program a test pattern ----------------
DO_PROGRAM:
         LXI     H,MSGPROG
         CALL    PRTSTR
         CALL    SPI_ERASE_SECT0         ; known-erased 4KB sector at 0x000000
         ; build the 16-byte test pattern 00,01,...,0F into F_PAT
         LXI     H,F_PAT
         MVI     A,00H
         MVI     B,16
PGBLD:   MOV     M,A
         INR     A
         INX     H
         DCR     B
         JNZ     PGBLD
         ; program the pattern at flash 0x000000
         LXI     H,0000H                 ; target address (A23-A16 = 0)
         LXI     D,F_PAT                 ; pattern source
         MVI     B,16
PGLOOP:  LDAX    D                       ; pattern byte
         CALL    SPI_PROGBYTE
         INX     H
         INX     D
         DCR     B
         JNZ     PGLOOP
         LXI     H,MSGPROGOK
         CALL    PRTSTR
         JMP     MENU

; ---------------- command: raw read-back + dump + verify ----------------
DO_READ:
         LXI     H,MSGREAD
         CALL    PRTSTR
         ; read 16 bytes at flash 0x000000 into F_RD
         CALL    SPI_SEL
         MVI     A,03H
         CALL    SPI_XMIT                ; Read opcode (0x03)
         MVI     A,00H
         CALL    SPI_XMIT                ; A23-A16
         MVI     A,00H
         CALL    SPI_XMIT                ; A15-A8
         MVI     A,00H
         CALL    SPI_XMIT                ; A7-A0
         LXI     H,F_RD
         MVI     B,16
RDLP:    IN      SPI_DATA                ; next byte the flash drives out
         MOV     M,A
         INX     H
         DCR     B
         JNZ     RDLP
         CALL    SPI_REL
         LXI     H,MSGDATA
         CALL    PRTSTR
         LXI     H,F_RD
         MVI     B,16
RDDMP:   MOV     A,M
         CALL    PRTBYTE
         MVI     A,' '
         CALL    TXCHAR
         INX     H
         DCR     B
         JNZ     RDDMP
         CALL    CRLF
         ; verify against F_PAT
         LXI     H,F_RD
         LXI     D,F_PAT
         MVI     B,16
RDCMP:   LDAX    D
         CMP     M
         JNZ     RD_FAIL
         INX     H
         INX     D
         DCR     B
         JNZ     RDCMP
         LXI     H,MSGREADOK
         CALL    PRTSTR
         LXI     H,MSGPASS
         CALL    PRTSTR
         JMP     MENU
RD_FAIL: LXI     H,MSGREADFAIL
         CALL    PRTSTR
         LXI     H,MSGFAIL
         CALL    PRTSTR
         JMP     MENU

; ---------------- command: erase sector + verify ----------------
DO_ERASE:
         LXI     H,MSGERS
         CALL    PRTSTR
         CALL    SPI_ERASE_SECT0
         ; read the 4KB sector (0x000000-0x000FFF) and confirm it is all 0xFF
         CALL    SPI_SEL
         MVI     A,03H
         CALL    SPI_XMIT                ; Read opcode
         MVI     A,00H
         CALL    SPI_XMIT                ; A23-A16
         MVI     A,00H
         CALL    SPI_XMIT                ; A15-A8
         MVI     A,00H
         CALL    SPI_XMIT                ; A7-A0
         LXI     B,1000H                 ; 4096 bytes
ERCHK:   IN      SPI_DATA
         CPI     0FFH
         JNZ     ER_FAIL
         DCX     B
         MOV     A,B
         ORA     C
         JNZ     ERCHK
         CALL    SPI_REL
         LXI     H,MSGERROK
         CALL    PRTSTR
         LXI     H,MSGPASS
         CALL    PRTSTR
         JMP     MENU
ER_FAIL: CALL    SPI_REL
         LXI     H,MSGERFAIL
         CALL    PRTSTR
         LXI     H,MSGFAIL
         CALL    PRTSTR
         JMP     MENU

; ---------------- command: format the flash as a CP/M drive B: data disk ----
; The flash will eventually be the CP/M boot drive A:, so the first two
; "tracks" (0x0000-0x1FFF) are RESERVED as the future system area and stay
; erased (0xFF) here.  The user data area starts at 0x2000:
;   - Block 0 (0x2000-0x2FFF) = directory block (AL0=0x80 reserves it).  Only
;     the first 2K (0x2000-0x27FF = 64 x 32-byte entries) is programmed with
;     0xE5; the trailing 2K of the block stays erased.
;   - Blocks 1..125 (0x3000-0x7FFFF) = file data (left erased 0xFF).
; This mirrors the drive B: DPB in cpm/cbios.asm (BSH=5 -> 4K blocks, OFF=2).
; THE CBIOS DPB AND THIS FORMATTER MUST AGREE ON THE 0x2000 DATA START.
DO_FMTFLASH:
         LXI     H,MSGFMTFL
         CALL    PRTSTR
         ; 1) erase the WHOLE chip to 0xFF by erasing each 4KB sector in a loop
         ;    (128 x SECTOR_ER 0x20).  A single chip-erase (0x60) is a valid
         ;    opcode but is a long operation during which (per the datasheet) every
         ;    command except RDSR is ignored -- so a page program issued right
         ;    after it could race and be dropped, leaving the dir 0xFF.  Sector
         ;    erase is the primitive PROVEN reliable on this board (the CBIOS
         ;    drive B: WRITEB uses it), so we erase the whole chip that way.
         XRA     A
         STA     FBADDR                  ; FBADDR = 0x000000
         STA     FBADDR+1
         STA     FBADDR+2
         LXI     B,0080H                 ; 128 sectors x 4KB = 512KB
FMTE:    PUSH    B
         CALL    SPI_ERASE_SECT          ; erase the 4KB sector at FBADDR (WREN+0x20+WIP wait)
         ; advance FBADDR by one 4KB sector (0x1000): FBADDR+1 += 0x10, carry -> +2
         LDA     FBADDR+1
         ADI     10H
         STA     FBADDR+1
         JNC     FMTE2
         LDA     FBADDR+2
         ADI     01H
         STA     FBADDR+2
FMTE2:   POP     B
         DCR     B
         JNZ     FMTE
         ; 2) fill the 256-byte page buffer with 0xE5 (the empty-directory mark)
         LXI     H,FMTBUF
         MVI     B,00H                   ; 256 bytes (wraps on DCR)
FMTF:    MVI     M,0E5H
         INX     H
         DCR     B
         JNZ     FMTF
         ; 3) page-program 0xE5 across the directory area (0x2000-0x2FFF, 4K
         ;    = 128 entries across blocks 0-1).  SPI_PAGE advances HL by 256, so
         ;    re-point HL at the 0xE5 page buffer at the TOP of every iteration
         ;    (FMTBUF is a single 256-byte page; all 16 flash pages get the same
         ;    0xE5 contents).
         XRA     A
         STA     FBADDR                  ; FBADDR = 0x002000
         MVI     A,20H
         STA     FBADDR+1
         XRA     A
         STA     FBADDR+2
         MVI     B,10H                   ; 16 pages x 256 bytes = 4K directory
FMTP:    LXI     H,FMTBUF                ; reset source to the 0xE5 page (SPI_PAGE advances it)
         PUSH    B
         CALL    SPI_PAGE                ; programs 256 bytes
         LDA     FBADDR+1
         ADI     01H
         STA     FBADDR+1                ; next page (mid byte += 1; low stays 00)
         POP     B
         DCR     B
         JNZ     FMTP
         ; 4) verify the directory region (0x2000-0x27FF) reads all 0xE5
         MVI     D,0E5H
         XRA     A
         STA     FBADDR
         MVI     A,20H
         STA     FBADDR+1
         XRA     A
         STA     FBADDR+2
         LXI     B,FBDIRZ                ; 2048 bytes
         CALL    VFYEQ
         ORA     A
         JNZ     FMT_DFAIL
         ; 5) verify the reserved system area (0x0000-0x1FFF) reads all 0xFF
         MVI     D,0FFH
         XRA     A
         STA     FBADDR
         STA     FBADDR+1
         STA     FBADDR+2
         LXI     B,FBSYS                 ; 8192 bytes
         CALL    VFYEQ
         ORA     A
         JNZ     FMT_SFAIL
         LXI     H,MSGFMTFOK
         CALL    PRTSTR
         JMP     MENU
; distinct failure handlers -- each dumps 16 bytes from the failing region so
; the on-board test tells us whether the write missed (0xFF) or landed wrong.
FMT_DFAIL:
         LXI     H,MSGFTDIR
         CALL    PRTSTR
         CALL    FMTDUMP
         JMP     MENU
FMT_SFAIL:
         LXI     H,MSGFTENS
         CALL    PRTSTR
         CALL    FMTDUMP
         JMP     MENU

; FMTDUMP: read 16 bytes from the flash at FBADDR into F_RD and print them as
; hex + spaces + CRLF (diagnostic for the formatter verify).  Clobbers A,B,HL.
FMTDUMP: CALL    SPI_SEL
         MVI     A,03H
         CALL    SPI_XMIT                ; Read opcode
         CALL    SPI_ADDR
         LXI     H,F_RD
         MVI     B,16
FDMP1:   IN      SPI_DATA
         MOV     M,A
         INX     H
         DCR     B
         JNZ     FDMP1
         CALL    SPI_REL
         LXI     H,F_RD
         MVI     B,16
FDMP2:   MOV     A,M
         CALL    PRTBYTE
         MVI     A,' '
         CALL    TXCHAR
         INX     H
         DCR     B
         JNZ     FDMP2
         CALL    CRLF
         RET

; VFYEQ: read BC bytes from the flash at FBADDR and compare each to the byte
; in D.  Returns A=00H if every byte equals D, else A=0FFH (CS# released in
; both cases).  Clobbers A, B, C, D, HL.
VFYEQ:   CALL    SPI_SEL
         MVI     A,03H
         CALL    SPI_XMIT                ; Read opcode
         CALL    SPI_ADDR
VFYQ:    IN      SPI_DATA
         CMP     D
         JNZ     VFYQ_FAIL
         DCX     B
         MOV     A,B
         ORA     C
         JNZ     VFYQ
         CALL    SPI_REL
         MVI     A,00H                   ; all bytes matched
         RET
VFYQ_FAIL:
         CALL    SPI_REL
         MVI     A,0FFH
         RET

; ============================================================================
; Messages
; ============================================================================
MSGBANNER: DB 'Z80 Brevia2 RAM-disk utility',0DH,0AH,0
MSGMENU:   DB 'F)mt U)pload C)oldboot B)dump M)memdump I)flashID P)rogram R)ead E)rase S)fmtflash H)elp > ',0
MSGHELP:   DB 'F=format A:  U=xmodem receive  C=xmodem receive CP/M + cold boot',0DH,0AH,0
           DB 'B=RAMdisk dump  M=CPU memdump',0DH,0AH,0
           DB 'I=flash JEDEC ID  P=program test pattern  R=read-back+verify',0DH,0AH,0
           DB 'E=erase sector 0  S=format SPI flash as CP/M data disk',0DH,0AH,0
MSGFMT:    DB 'Formatting...',0DH,0AH,0
MSGFMTOK:  DB 'Format OK.',0DH,0AH,0
MSGPROMPT: DB 'Receive FILENAME (8.3): ',0
MSGRECV:   DB 'Receiving (xmodem)...',0DH,0AH,0
MSGDONE:   DB 'Received. Records(hi lo): ',0
MSGDUMP:   DB 'Dump 256 bytes at hex addr: ',0
MSGMD:     DB 'Dump 128 bytes of CPU RAM at hex addr: ',0
MSGBCPM:   DB 'Receive CP/M image, then cold boot...',0DH,0AH,0
MSGBCPMOK: DB 'CP/M image loaded - cold boot...',0DH,0AH,0
MSGNOSPC:  DB 'No space - disk or directory full.',0DH,0AH,0
; ---- SPI-flash command strings ----
MSGID:     DB 'Reading flash JEDEC ID...',0DH,0AH,0
MSGIDVAL:  DB 'ID: ',0
MSGPROG:   DB 'Erasing sector 0, then programming test pattern @0x000000...',0DH,0AH,0
MSGPROGOK: DB 'Programmed 16 bytes @0x000000.',0DH,0AH,0
MSGREAD:   DB 'Reading back 16 bytes @0x000000:',0DH,0AH,0
MSGDATA:   DB 'Data: ',0
MSGREADOK: DB 'Read-back MATCHES programmed pattern.',0DH,0AH,0
MSGREADFAIL: DB 'Read-back MISMATCH!',0DH,0AH,0
MSGERS:    DB 'Erasing 4KB sector 0 @0x000000...',0DH,0AH,0
MSGERROK:  DB 'Erase OK - sector reads all 0xFF.',0DH,0AH,0
MSGERFAIL: DB 'Erase FAIL - sector not all 0xFF.',0DH,0AH,0
MSGFMTFL:  DB 'Formatting SPI flash as CP/M drive B: (dir=0x2000, reserved sys=0x0000-0x1FFF)...',0DH,0AH,0
MSGFMTFOK: DB 'Flash format OK - dir=0xE5 @0x2000, sys area 0xFF.',0DH,0AH,0
MSGFTDIR:  DB 'Dir verify FAILED @0x2000, bytes: ',0
MSGFTENS:  DB 'Sys verify FAILED @0x0000 (not 0xFF), bytes: ',0
MSGPASS:   DB 'PASS',0DH,0AH,0
MSGFAIL:   DB 'FAIL',0DH,0AH,0
; ---- DEBUG trace tags (remove once the upload path is confirmed) ----
MSGT_BLK:  DB 'blk=',0
MSGT_SLOT: DB 'slot=',0
MSGT_RC:   DB 'rc=',0

        END
