; ============================================================================
;   CBIOS BUILD CONFIGURATION -- SD-PRIMARY build
;   --------------------------------------------------------------------------
;   This is the SD-boot configuration.  Drive-letter map (SELDSK codes ->
;   physical media):
;
;       A: (SELDSK 0)  SD card, partition region 0  -- the boot/system volume
;       B: (SELDSK 1)  SD card, partition region 1  -- second SD volume
;       C: (SELDSK 2)  on-board ISSI IS25LD040 SPI flash
;       D: (SELDSK 3)  64K I/O-mapped RAM disk (volatile)
;
;   COLD/WARM boot persist & reload the CP/M system image (CCP+BDOS+CBIOS) to
;   and from the SD card's reserved system area (region 0), NOT the RAM disk.
;
;   Copy this file over cbios_cfg.inc (or build via scripts/build_cbios.sh sd)
;   to assemble the SD-primary CBIOS.
; ============================================================================
CFG_SD_BUILD    EQU     1               ; 1 = SD-primary (A:/B:=SD, C:=flash, D:=RAM)
CFG_BOOT_DEVICE EQU     0               ; boot device for BOOT/WBOOT persist: 0 = SD system area
