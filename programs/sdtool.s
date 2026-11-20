; SDTOOL.COM -- Brevia2 SD card partition / format / test tool for CP/M 2.2.
; 8080 assembly, Glitch Works a85.  Loads at 0x0100 (CP/M transient).
;
; Talks to the dedicated SD SPI port (pins 31/32/35/36):
;   IN  0x53 = SD SPI data (r/w byte, CPU wait-stretched -- no busy poll)
;   OUT 0x54 = SD SPI ctl  bit0 = CS# (0 select, 1 release); bit1 = slow clock
;   IN  0x55 = SD SPI status bit0 = busy
;
; Commands:
;   I -- init + info: card type, CID (manufacturer/product/serial), test read.
;   P -- read the MBR (block 0) and print the partition table.
;   C -- create an MBR with one CP/M partition (type 0x53) and write block 0.
;   F -- format the CP/M partition: write the directory area to 0xE5.
;   Q -- quit.
;
; The SD CP/M partition geometry (MUST match the CBIOS DPB):
;   128-byte records, SPT=32, 8KB allocation blocks (BSH=6/BLM=63),
;   DSM=1023 (DOUBLE-DM, 1024 blocks x 8KB = 8 MB per drive = CP/M 2.2 ceiling),
;   DRM=4095 (4096 directory entries = 128KB = 16 blocks, reserved via
;   AL0=0xFF/AL1=0xFF), EXM=3, CKS=0, OFF=0 (the region/system offsets are added
;   at the CBIOS deblock layer).  TWO 8 MB logical drives are formatted: each
;   volume reserves a SD_SYS-sector system area at its region start (to hold a
;   bootable CP/M image) and the directory/data begin PAST it -- region 0 (drive
;   A) at partition LBA + SD_SYS, region 1 (drive B) at +8 MB + SD_SYS.  Each
;   directory = 128KB = 256 x 512B SD sectors written as 0xE5; the reserved
;   system area is left blank (0xFF) for the boot image (the CBIOS BOOT
;   self-provisions it).  Partition 1 starts at LBA 1, size 0x00020000 sectors
;   (64 MB -- drives A:/B: currently use the first 16 MB of it).
;
; NOTE on BDOS register clobbering: every console-call loop preserves B/HL
; across CPUTC/func-2 with PUSH/POP (func 2 destroys B and HL on this CBIOS).
        ORG     0100H

; ---------------- constants ----------------
SDDAT   EQU     53H
SDCTL   EQU     54H
SDSTAT  EQU     55H

SPT     EQU     32              ; sectors (128B) per track  [geometry]
BSH     EQU     6               ; 8KB allocation blocks
BLM     EQU     63
EXM     EQU     3               ; BLS=8192 & DSM>255 -> double-DM (16-bit block ptrs)
DSM     EQU     1023            ; 8 MB (1024 blocks x 8KB = CP/M 2.2 ceiling)
DRM     EQU     4095            ; 4096 directory entries
AL0V    EQU     0FFH            ; reserve directory blocks 0-7 (MSB-first)
AL1V    EQU     0FFH            ; reserve directory blocks 8-15 (16 blocks = 128KB dir)

; ---- reserved SD system area (must match cbios.asm SDSYS_OFF) ----------------
; Each SD volume reserves SD_SYS 512-byte sectors at its region start to hold a
; bootable CP/M image.  The directory/data area begins PAST this offset, so the
; formatter must skip the reserved system area.  In the SD-primary build SD_SYS=
; 16 (SDSYS_OFF); in the legacy SPI-primary build the SD drives are pure data and
; SD_SYS=0 (set it to 0 before formatting for an SPI-primary card).
SD_SYS  EQU     16

PMTYPE  EQU     53H             ; CP/M partition type (no standard MBR type exists)
PARTLBA0 EQU    01H             ; partition 1 LBA start = 1 (LE byte 0)
PARTSEC0 EQU    00H             ; partition size = 0x00020000 (LE: 00 00 02 00)
PARTSEC1 EQU    00H
PARTSEC2 EQU    02H
PARTSEC3 EQU    00H

START:
        LXI     H,BANNER
        CALL    PSTR

MAINLOOP:
        MVI     E,'>'
        CALL    CPUTC
        CALL    CIN             ; A = command char (echoed by func1)
        ; fold lower-case a-z -> upper
        CPI     'a'
        JC      ML1
        CPI     7BH
        JNC     ML1
        SUI     20H
ML1:
        CPI     'I'
        JNZ     ML_P
        CALL    CMD_INFO
        JMP     MAINLOOP
ML_P:
        CPI     'P'
        JNZ     ML_C
        CALL    CMD_PART
        JMP     MAINLOOP
ML_C:
        CPI     'C'
        JNZ     ML_F
        CALL    CMD_CREATE
        JMP     MAINLOOP
ML_F:
        CPI     'F'
        JNZ     ML_Q
        CALL    CMD_FORMAT
        JMP     MAINLOOP
ML_Q:
        CPI     'Q'
        JNZ     ML_UNK
        RET                     ; quit to CP/M (returns to the CCP)
ML_UNK:
        LXI     H,MSG_UNK
        CALL    PSTR
        JMP     MAINLOOP

; ---------------- I: init + info ----------------
CMD_INFO:
        CALL    SDINIT
        ORA     A
        JZ      CI_OK
        LXI     H,MSG_NOINIT
        CALL    PSTR
        CALL    CRLF
        RET
CI_OK:
        LXI     H,MSG_INITOK
        CALL    PSTR
        CALL    CRLF
        ; card type
        CALL    SDCCS           ; A = 40h if SDHC/SDXC, else 0
        ORA     A
        JZ      CI_SC
        LXI     H,MSG_SDHC
        CALL    PSTR
        JMP     CI_AFTTYPE
CI_SC:
        LXI     H,MSG_SDSC
        CALL    PSTR
CI_AFTTYPE:
        CALL    CRLF
        ; CID
        CALL    SD_CID
        ORA     A
        JZ      CI_CIDOK
        LXI     H,MSG_CIDERR
        CALL    PSTR
        CALL    CRLF
        RET
CI_CIDOK:
        LXI     H,MSG_CID
        CALL    PSTR
        LDA     CIDBUF
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        LXI     H,CIDBUF+3
        MVI     B,5
CI_NM:
        MOV     E,M
        PUSH    H
        PUSH    B
        CALL    CPUTC
        POP     B
        POP     H
        INX     H
        DCR     B
        JNZ     CI_NM
        CALL    CRLF
        LXI     H,MSG_SN
        CALL    PSTR
        LDA     CIDBUF+9
        CALL    PRHEX2
        LDA     CIDBUF+10
        CALL    PRHEX2
        LDA     CIDBUF+11
        CALL    PRHEX2
        LDA     CIDBUF+12
        CALL    PRHEX2
        CALL    CRLF
        ; test read block 0
        CALL    SD_SETBLK0
        LXI     H,BLKBUF
        CALL    SD_READBLKN
        ORA     A
        JNZ     CI_BLKERR
        LXI     H,MSG_RDOK
        CALL    PSTR
        CALL    CRLF
        RET
CI_BLKERR:
        LXI     H,MSG_RDERR
        CALL    PSTR
        CALL    CRLF
        RET

; ---------------- P: show MBR partitions ----------------
CMD_PART:
        CALL    SDINIT
        ORA     A
        JZ      CP_OK
        LXI     H,MSG_NOINIT
        CALL    PSTR
        CALL    CRLF
        RET
CP_OK:
        CALL    SD_SETBLK0
        LXI     H,BLKBUF
        CALL    SD_READBLKN
        ORA     A
        JZ      CP_MBROK
        LXI     H,MSG_RDERR
        CALL    PSTR
        CALL    CRLF
        RET
CP_MBROK:
        ; check 55AA
        LXI     H,BLKBUF+510
        MOV     A,M
        CPI     55H
        JNZ     CP_NOMBR
        INX     H
        MOV     A,M
        CPI     0AAH
        JNZ     CP_NOMBR
        LXI     H,MSG_MBR
        CALL    PSTR
        CALL    CRLF
        ; print 4 partitions
        LXI     H,BLKBUF+446
        SHLD    ENTPTR
        MVI     D,4
CP_LP:
        ; status (+0)
        LHLD    ENTPTR
        MOV     A,M
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        ; type (+4)
        LHLD    ENTPTR
        MVI     A,4
        CALL    ADDH
        MOV     A,M
        CALL    PRHEX2
        MVI     E,' '
        CALL    CPUTC
        ; LBA (+8, 4 bytes LE)
        LHLD    ENTPTR
        MVI     A,8
        CALL    ADDH
        CALL    PRHEX32
        MVI     E,' '
        CALL    CPUTC
        ; size (+12, 4 bytes LE)
        LHLD    ENTPTR
        MVI     A,12
        CALL    ADDH
        CALL    PRHEX32
        CALL    CRLF
        ; next entry
        LHLD    ENTPTR
        LXI     B,16
        DAD     B
        SHLD    ENTPTR
        DCR     D
        JNZ     CP_LP
        RET
CP_NOMBR:
        LXI     H,MSG_NOMBR
        CALL    PSTR
        CALL    CRLF
        RET

; ---------------- C: create an MBR with one CP/M partition ----------------
CMD_CREATE:
        CALL    SDINIT
        ORA     A
        JZ      CC_OK
        LXI     H,MSG_NOINIT
        CALL    PSTR
        CALL    CRLF
        RET
CC_OK:
        ; zero BLKBUF
        LXI     H,BLKBUF
        MVI     B,0
CC_Z:
        MVI     M,0
        INX     H
        DCR     B
        JNZ     CC_Z
        ; partition 1 entry at BLKBUF+446
        LXI     H,BLKBUF+446
        MVI     M,80H           ; bootable status
        INX     H
        MVI     M,01H           ; CHS start head
        INX     H
        MVI     M,01H           ; sector
        INX     H
        MVI     M,00H           ; cyl
        INX     H
        MVI     M,PMTYPE        ; type 0x53 (CP/M)
        INX     H
        MVI     M,0FFH          ; CHS end head
        INX     H
        MVI     M,0FEH          ; sector
        INX     H
        MVI     M,0FFH          ; cyl
        INX     H
        MVI     M,PARTLBA0      ; LBA start LE byte0 = 1
        INX     H
        MVI     M,00H
        INX     H
        MVI     M,00H
        INX     H
        MVI     M,00H
        INX     H
        MVI     M,PARTSEC0      ; size LE
        INX     H
        MVI     M,PARTSEC1
        INX     H
        MVI     M,PARTSEC2
        INX     H
        MVI     M,PARTSEC3
        ; signature 55AA
        LXI     H,BLKBUF+510
        MVI     M,55H
        INX     H
        MVI     M,0AAH
        ; write block 0
        CALL    SD_SETBLK0
        LXI     H,BLKBUF
        CALL    SD_WRITEBLKN
        ORA     A
        JZ      CC_WOK
        LXI     H,MSG_WERR
        CALL    PSTR
        CALL    CRLF
        RET
CC_WOK:
        LXI     H,MSG_WROTE
        CALL    PSTR
        CALL    CRLF
        RET

; ---------------- F: format the CP/M partition ----------------
CMD_FORMAT:
        CALL    SDINIT
        ORA     A
        JZ      CF_OK
        LXI     H,MSG_NOINIT
        CALL    PSTR
        CALL    CRLF
        RET
CF_OK:
        ; read MBR to find partition 1 start
        CALL    SD_SETBLK0
        LXI     H,BLKBUF
        CALL    SD_READBLKN
        ORA     A
        JZ      CF_MBROK
        LXI     H,MSG_RDERR
        CALL    PSTR
        CALL    CRLF
        RET
CF_MBROK:
        LXI     H,BLKBUF+510
        MOV     A,M
        CPI     55H
        JNZ     CF_RAW
        INX     H
        MOV     A,M
        CPI     0AAH
        JNZ     CF_RAW
        ; partition 1 LBA start at BLKBUF+446+8 (LE, 4 bytes) -> BLKN (MSB first)
        LXI     H,BLKBUF+446+8
        MOV     A,M             ; LBA[0] (LSB)
        STA     BLKN+3
        INX     H
        MOV     A,M
        STA     BLKN+2
        INX     H
        MOV     A,M
        STA     BLKN+1
        INX     H
        MOV     A,M
        STA     BLKN+0
        JMP     CF_DO
CF_RAW:
        ; no MBR: assume partition starts at LBA 1
        MVI     A,0
        STA     BLKN+0
        STA     BLKN+1
        STA     BLKN+2
        MVI     A,1
        STA     BLKN+3
CF_DO:
        ; fill BLKBUF (512 bytes) with 0xE5 (directory marker).
        ; NOTE: use a 16-bit count -- a `MVI B,0; DCR B; JNZ` loop wraps and
        ; fills only 256 bytes, leaving the upper half of each written sector as
        ; stale garbage (the old MBR tail), which CP/M reads as phantom dir entries.
        LXI     H,BLKBUF
        LXI     B,512
CF_F:
        MVI     M,0E5H
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     CF_F
        ; save the region-0 base (partition LBA) so we can compute region 1
        LDA     BLKN+0
        STA     REGBASE+0
        LDA     BLKN+1
        STA     REGBASE+1
        LDA     BLKN+2
        STA     REGBASE+2
        LDA     BLKN+3
        STA     REGBASE+3
        ; skip the reserved system area: the directory/data begin at REGBASE+SD_SYS
        CALL    BLSYS
        ; ---- region 0 (drive C): 256 sectors = 128KB directory (4096 entries) ----
        MVI     D,256
CF_LP:
        LXI     H,BLKBUF
        CALL    SD_WRITEBLKN
        ORA     A
        JZ      CF_WOK
        LXI     H,MSG_WERR
        CALL    PSTR
        CALL    CRLF
        RET
CF_WOK:
        CALL    INCBLK          ; advance BLKN by 1 sector
        DCR     D
        JNZ     CF_LP
        ; ---- region 1 (drive D): BLKN = region-0 base + 0x4000 (8 MB), 256 sectors
        LDA     REGBASE+0
        STA     BLKN+0
        LDA     REGBASE+1
        STA     BLKN+1
        LDA     REGBASE+2
        STA     BLKN+2
        LDA     REGBASE+3
        STA     BLKN+3
        LDA     BLKN+2
        ADI     40H             ; +0x4000 = +16384 SD sectors = +8 MB (region 1)
        STA     BLKN+2
        JNC     CF_R1            ; carry into BLKN+1 if it overflowed (partition LBA>0xFF)
        LDA     BLKN+1
        ADI     01H
        STA     BLKN+1
CF_R1:
        CALL    BLSYS           ; skip the reserved system area for region 1 too
        MVI     D,256
CF_LP2:
        LXI     H,BLKBUF
        CALL    SD_WRITEBLKN
        ORA     A
        JZ      CF_WOK2
        LXI     H,MSG_WERR
        CALL    PSTR
        CALL    CRLF
        RET
CF_WOK2:
        CALL    INCBLK
        DCR     D
        JNZ     CF_LP2
        LXI     H,MSG_FMT
        CALL    PSTR
        CALL    CRLF
        RET

; ---------------- SD driver ----------------
; SDINIT: full init.  A=0 ok / 0FFh fail (same as sdprobe).
SDINIT:
        XRA     A
        STA     ACMDIT
        STA     ACMDR1
        MVI     A,03H           ; CS high + slow
        OUT     SDCTL
        MVI     B,10
SDI_CK:
        MVI     A,0FFH
        OUT     SDDAT
        DCR     B
        JNZ     SDI_CK
        MVI     A,02H           ; select + slow
        OUT     SDCTL
        ; CMD0 + capture raw
        LXI     H,CMD0
        MVI     B,6
SDI_TX:
        MOV     A,M
        OUT     SDDAT
        INX     H
        DCR     B
        JNZ     SDI_TX
        LXI     H,RBUF
        MVI     B,8
SDI_RX:
        IN      SDDAT
        MOV     M,A
        INX     H
        DCR     B
        JNZ     SDI_RX
        ; find first non-FF = R1
        LXI     H,RBUF
        MVI     B,8
SDI_FR1:
        MOV     A,M
        CPI     0FFH
        JNZ     SDI_HAVE
        INX     H
        DCR     B
        JNZ     SDI_FR1
        MVI     A,0FFH
        JMP     SDI_ST1
SDI_HAVE:
        MOV     A,M
SDI_ST1:
        STA     CMDR1
        CPI     01H
        JNZ     SDI_FAIL
        ; CMD8 (SEND_IF_COND) required before ACMD41 on SDHC
        LXI     H,CMD8
        CALL    SD_SEND6
        IN      SDDAT
        IN      SDDAT
        IN      SDDAT
        IN      SDDAT
        ; ACMD41 poll
        MVI     D,200
SDI_RDY:
        LXI     H,CMD55
        CALL    SD_SEND6
        LXI     H,ACMD41
        CALL    SD_SEND6
        CPI     00H
        JZ      SDI_OK
        CALL    DELAYMS
        DCR     D
        JNZ     SDI_RDY
SDI_FAIL:
        MVI     A,0FFH
        RET
SDI_OK:
        MVI     A,00H
        RET

; SD_READY: clock 0FFh until the card is NOT busy (MISO high).  A card still
;   programming drives MISO LOW (reads 00h); issuing a command then makes
;   SD_SEND6 accept that 00h as "R1 = OK" and drop the command, desyncing the
;   stream -- the cause of a write that silently no-ops and of 'F' needing a
;   second pass.  Timeout ~260k reads (~0.4 s at 25 MHz).
;   Returns A=0 ready / A=0FFh + CY on timeout.  Clobbers A,B,C.  Preserves D,H,L.
SD_READY:
        PUSH    D
        MVI     D,04H
SDRDY0:
        LXI     B,0000H
SDRDY1:
        IN      SDDAT
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
        XRA     A
        RET

; SD_SEND6: send 6-byte command at (HL), read R1.  A = R1 (0FFh = none).
SD_SEND6:
        PUSH    H
        CALL    SD_READY        ; never issue a command into a busy card
        POP     H
        MVI     B,6
SD6_TX:
        MOV     A,M
        OUT     SDDAT
        INX     H
        DCR     B
        JNZ     SD6_TX
        MVI     B,16
SD6_RX:
        IN      SDDAT
        CPI     0FFH
        JNZ     SD6_DONE
        DCR     B
        JNZ     SD6_RX
SD6_DONE:
        RET

; SD_WAITTKN: clock until 0FEh token.  CY=0 + A=0FEh ok, else CY=1.
SD_WAITTKN:
        MVI     B,0FFH
SD_WT:
        IN      SDDAT
        CPI     0FEH
        JZ      SD_WT_OK
        DCR     B
        JNZ     SD_WT
        STC
        RET
SD_WT_OK:
        ORA     A
        RET

; DELAYMS ~3ms busy wait.
DELAYMS:
        LXI     H,2000
DLMS:
        DCX     H
        MOV     A,H
        ORA     L
        JNZ     DLMS
        RET

; SD_SETBLK0: set the block number to 0.
SD_SETBLK0:
        XRA     A
        STA     BLKN+0
        STA     BLKN+1
        STA     BLKN+2
        STA     BLKN+3
        RET

; SD_READBLKN: read the 512-byte block BLKN[0..3] (MSB first) into (HL).
;   A = 0 ok / 0FFh err.  Preserves HL (the dest buffer).
SD_READBLKN:
        MVI     A,00H
        OUT     SDCTL           ; select, fast
        PUSH    H
        ; build CMD17
        MVI     A,51H
        STA     CMDBUF
        LDA     BLKN+0
        STA     CMDBUF+1
        LDA     BLKN+1
        STA     CMDBUF+2
        LDA     BLKN+2
        STA     CMDBUF+3
        LDA     BLKN+3
        STA     CMDBUF+4
        MVI     A,0FFH
        STA     CMDBUF+5
        LXI     H,CMDBUF
        CALL    SD_SEND6        ; A = R1
        POP     H               ; restore dest
        CPI     00H
        JNZ     SRB_ERR
        CALL    SD_WAITTKN
        JC      SRB_ERR
        LXI     B,512
SRB_LP:
        IN      SDDAT
        MOV     M,A
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SRB_LP
        IN      SDDAT           ; 2 CRC bytes
        IN      SDDAT
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H
        RET
SRB_ERR:
        MVI     A,01H
        OUT     SDCTL
        MVI     A,0FFH
        RET

; SD_WRITEBLKN: write the 512 bytes at (HL) to block BLKN[0..3].
;   A = 0 ok / 0FFh err.  Preserves HL (source buffer).
SD_WRITEBLKN:
        MVI     A,00H
        OUT     SDCTL           ; select, fast
        PUSH    H
        ; build CMD24
        MVI     A,58H
        STA     CMDBUF
        LDA     BLKN+0
        STA     CMDBUF+1
        LDA     BLKN+1
        STA     CMDBUF+2
        LDA     BLKN+2
        STA     CMDBUF+3
        LDA     BLKN+3
        STA     CMDBUF+4
        MVI     A,0FFH
        STA     CMDBUF+5
        LXI     H,CMDBUF
        CALL    SD_SEND6        ; A = R1 (should be 00)
        POP     H               ; restore source
        CPI     00H
        JNZ     SWB_ERR
        MVI     A,0FEH          ; data start token
        OUT     SDDAT
        LXI     B,512
SWB_LP:
        MOV     A,M
        OUT     SDDAT
        INX     H
        DCX     B
        MOV     A,B
        ORA     C
        JNZ     SWB_LP
        MVI     A,0FFH          ; 2 CRC bytes (CRC off)
        OUT     SDDAT
        OUT     SDDAT
        ; data-response token: 0FFh filler first, then 0bxxx00101 (05h) = OK
        MVI     B,16
SWB_RSP:
        IN      SDDAT
        CPI     0FFH
        JNZ     SWB_GOT
        DCR     B
        JNZ     SWB_RSP
SWB_GOT:
        ANI     1FH             ; response bits 0-4; 05h = accepted
        CPI     05H
        JNZ     SWB_ERR         ; CRC error / write rejected / no response
        ; wait for the card to finish programming BEFORE releasing CS, so the
        ; next command is not issued into a busy card
        CALL    SD_READY
        ORA     A
        JNZ     SWB_ERR
SWB_DONE:
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H
        RET
SWB_ERR:
        MVI     A,01H
        OUT     SDCTL
        MVI     A,0FFH
        RET

; SDCCS: read OCR (CMD58), return A = 0x40 (SDHC/SDXC) or 0 (SDSC).
SDCCS:
        LXI     H,CMD58
        CALL    SD_SEND6
        IN      SDDAT
        ANI     40H
        MOV     C,A
        IN      SDDAT
        IN      SDDAT
        IN      SDDAT
        MOV     A,C
        RET

; SD_CID: read 16-byte CID via CMD9 into CIDBUF.  A = 0 ok / 0FFh err.
SD_CID:
        MVI     A,00H
        OUT     SDCTL           ; select, fast
        LXI     H,CMD9
        CALL    SD_SEND6        ; A = R1 (should be 00)
        CPI     00H
        JNZ     SDCID_TE
        CALL    SD_WAITTKN      ; wait for the 0FEh data-start token
        JC      SDCID_TE
        LXI     H,CIDBUF
        MVI     B,16
SDCID_L:
        IN      SDDAT
        MOV     M,A
        INX     H
        DCR     B
        JNZ     SDCID_L
        IN      SDDAT           ; 2 CRC bytes
        IN      SDDAT
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,00H
        RET
SDCID_TE:
        MVI     A,01H
        OUT     SDCTL           ; release CS
        MVI     A,0FFH
        RET

; INCBLK: increment the 32-bit block number BLKN[0..3] by 1.
INCBLK:
        LDA     BLKN+3
        INR     A
        STA     BLKN+3
        JNZ     INCD
        LDA     BLKN+2
        INR     A
        STA     BLKN+2
        JNZ     INCD
        LDA     BLKN+1
        INR     A
        STA     BLKN+1
        JNZ     INCD
        LDA     BLKN+0
        INR     A
        STA     BLKN+0
INCD:
        RET

; BLSYS: add SD_SYS (the reserved system-area sector count) to the 32-bit BLKN
; (MSB first) so the formatter skips the reserved system area.  Clobbers A.
BLSYS:
        LDA     BLKN+3
        ADI     SD_SYS          ; SD_SYS < 256 (16 in the SD build)
        STA     BLKN+3
        JNC     BLSYS_DONE
        LDA     BLKN+2
        ADI     01H
        STA     BLKN+2
        JNC     BLSYS_DONE
        LDA     BLKN+1
        ADI     01H
        STA     BLKN+1
        JNC     BLSYS_DONE
        LDA     BLKN+0
        ADI     01H
        STA     BLKN+0
BLSYS_DONE:
        RET

; ---------------- console / numeric helpers ----------------
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
PRHEX2:                         ; print A as 2 hex digits
        STA     HEXV
        LDA     HEXV
        RRC
        RRC
        RRC
        RRC
        ANI     0FH
        CALL    PRNIB
        LDA     HEXV
        ANI     0FH
        CALL    PRNIB
        RET
PRNIB:
        CPI     0AH
        JC      PRI_NUM
        ADI     07H
PRI_NUM:
        ADI     '0'
        MOV     E,A
        CALL    CPUTC
        RET
; PRHEX32: print 4 bytes at (HL) as 8 hex digits (little-endian display order).
PRHEX32:
        MVI     B,4
P32_L:
        MOV     A,M
        PUSH    H
        PUSH    B
        CALL    PRHEX2
        POP     B
        POP     H
        INX     H
        DCR     B
        JNZ     P32_L
        RET

; ADDH: HL = HL + A (small offset; uses B, no BDOS call).
ADDH:
        MOV     B,A
ADDH_L:
        INX     H
        DCR     B
        JNZ     ADDH_L
        RET

; ---------------- data ----------------
CMD0:   DB      40H,00H,00H,00H,00H,95H
CMD8:   DB      48H,00H,00H,01H,0AAH,87H
CMD55:  DB      77H,00H,00H,00H,00H,65H
ACMD41: DB      69H,40H,00H,00H,00H,77H
CMD58:  DB      7AH,00H,00H,00H,00H,0FDH
CMD9:   DB      49H,00H,00H,00H,00H,0FFH

BANNER: DB      'SDTOOL v0.1 - Brevia2 SD partition/format/test',13,10,'I=info P=part C=create F=format Q=quit',13,10,'$'
MSG_UNK: DB     13,10,'?','$'
MSG_NOINIT: DB  13,10,'NO CARD / init failed','$'
MSG_INITOK: DB  'INIT ok','$'
MSG_SDHC: DB    13,10,'TYPE: SDHC/SDXC (block addressing)','$'
MSG_SDSC: DB    13,10,'TYPE: SDSC (byte addressing)','$'
MSG_CID: DB     13,10,'CID: ID=','$'
MSG_SN:  DB     13,10,'    SN=','$'
MSG_CIDERR: DB  13,10,'CID read failed','$'
MSG_RDOK: DB    13,10,'block 0 read OK','$'
MSG_RDERR: DB   13,10,'block read failed','$'
MSG_MBR: DB     13,10,'MBR:  parts (stat/type/LBA/size):','$'
MSG_NOMBR: DB   13,10,'MBR: none (raw)','$'
MSG_WERR: DB    13,10,'write failed','$'
MSG_WROTE: DB   13,10,'MBR written (1 CP/M partition, type 53h)','$'
MSG_FMT:  DB    13,10,'format: directory written','$'

HEXV:   DS      1
ENTPTR: DS      2
CMDR1:  DS      1
RBUF:   DS      8
ACMDIT: DS      1
ACMDR1: DS      1
CMDBUF: DS      6
BLKN:   DS      4               ; SD block number (MSB first)
REGBASE: DS      4               ; saved region-0 base BLKN (for the drive-D region-1 offset)
CIDBUF: DS      16
BLKBUF: DS      512
        END
