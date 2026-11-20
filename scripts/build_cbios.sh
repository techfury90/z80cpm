#!/usr/bin/env bash
# ============================================================================
# build_cbios.sh -- assemble the Brevia2 CBIOS in a chosen build configuration
#   and regenerate the combined CP/M image.
#
#   usage:  scripts/build_cbios.sh {sd|spi}
#
#   sd   -> SD-primary build  (A:/B: = SD, C: = SPI flash, D: = RAM disk;
#                               BOOT/WBOOT persist to the SD system area)
#   spi  -> SPI-flash-primary build (A: = flash, B: = RAM, C:/D: = SD;
#                               BOOT/WBOOT persist to the RAM disk system tracks)
#
# Assemble MUST be run from the repo root (so `INCL "spi.inc"` and
# `INCL "cpm/cbios_cfg.inc"` resolve), and a85 is a native Windows binary so
# all output paths are repo-relative (never an MSYS /tmp path).
# ============================================================================
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

MODE="${1:-sd}"
case "$MODE" in
    sd|SD)  CFG=cbios_cfg_sd.inc  ;;
    spi|SPI) CFG=cbios_cfg_spi.inc ;;
    *) echo "usage: $0 {sd|spi}" >&2; exit 1 ;;
esac

echo "==> build_cbios: $MODE build (config: $(pwd)/cpm/$CFG)"
cp -f "cpm/$CFG" cpm/cbios_cfg.inc

A85=scripts/a85/a85.exe
echo "==> assembling cbios.asm ($MODE)"
"$A85" cpm/cbios.asm -o cpm/cbios.hex -l cpm/cbios.prn
echo "==> combining CCP+BDOS+CBIOS into the CP/M image"
python3 cpm/make_combined_hex.py
echo "==> regenerate cpm/brevia2_cpm.mem for the simulator"
python3 scripts/intel_hex_to_mem.py cpm/brevia2_cpm.hex cpm/brevia2_cpm.mem
echo "==> DONE: image = cpm/brevia2_cpm.bin ($MODE build)"
