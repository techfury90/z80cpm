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
DEFAULT=sd
case "$MODE" in
    sd|SD)    MODE=sd;  CFG=cbios_cfg_sd.inc;  OUT=brevia2_cpm      ;;
    spi|SPI)  MODE=spi; CFG=cbios_cfg_spi.inc; OUT=brevia2_cpm_spi  ;;
    *) echo "usage: $0 {sd|spi}" >&2; exit 1 ;;
esac

echo "==> build_cbios: $MODE build -> cpm/$OUT.{hex,bin,mem}"
cp -f "cpm/$CFG" cpm/cbios_cfg.inc

A85=scripts/a85/a85.exe
echo "==> assembling cbios.asm ($MODE)"
"$A85" cpm/cbios.asm -o cpm/cbios.hex -l cpm/cbios.prn
# Preserve the mode-specific listing so a simulator harness can be pointed at
# the matching symbol addresses (tests read symbols from the .prn).
cp -f cpm/cbios.prn "cpm/cbios_$MODE.prn"
echo "==> combining CCP+BDOS+CBIOS into the $MODE image"
python3 cpm/make_combined_hex.py "$OUT"
echo "==> regenerate cpm/$OUT.mem for the simulator"
python3 scripts/intel_hex_to_mem.py "cpm/$OUT.hex" "cpm/$OUT.mem"

# Restore the repo DEFAULT (SD) config + CBIOS after a non-default build so the
# checked-in cbios_cfg.inc / cbios.hex stay the SD-primary default.
if [ "$MODE" != "$DEFAULT" ]; then
    echo "==> restoring default ($DEFAULT) config + CBIOS"
    cp -f "cpm/cbios_cfg_$DEFAULT.inc" cpm/cbios_cfg.inc
    "$A85" cpm/cbios.asm -o cpm/cbios.hex -l cpm/cbios.prn
    cp -f cpm/cbios.prn "cpm/cbios_$DEFAULT.prn"
fi

echo "==> DONE: cpm/$OUT.{hex,bin,mem} ($MODE build); default is $DEFAULT"
