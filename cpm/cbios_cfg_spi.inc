; ============================================================================
;   CBIOS BUILD CONFIGURATION -- SPI-FLASH-PRIMARY build
;   --------------------------------------------------------------------------
;   This is the legacy/original configuration.  Drive-letter map:
;
;       A: (SELDSK 0)  on-board ISSI IS25LD040 SPI flash  -- the boot drive
;       B: (SELDSK 1)  64K I/O-mapped RAM disk (volatile)
;       C: (SELDSK 2)  SD card, partition region 0  (data, not bootable)
;       D: (SELDSK 3)  SD card, partition region 1  (data, not bootable)
;
;   COLD/WARM boot persist & reload the CCP/BDOS to/from the RAM disk system
;   tracks (the legacy behaviour -- the flash is the power-on boot store).
;
;   Copy this file over cbios_cfg.inc (or build via scripts/build_cbios.sh spi)
;   to assemble the SPI-primary CBIOS.
; ============================================================================
CFG_SD_BUILD    EQU     0               ; 0 = SPI-primary (A:=flash, B:=RAM, C/D:=SD)
CFG_BOOT_DEVICE EQU     1               ; boot device for BOOT/WBOOT persist: 1 = RAM disk (legacy)
