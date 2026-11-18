#!/usr/bin/env python3
# Probe SDMAP: for records 0..11 print TRK/SECN, SDOFF, BLKN, and the actual
# address HL used by the RMW overlay in WRITES (trapped at the WRITES1 loop).
import sys
sys.path.insert(0,'tb')
import cpmsys_sim as S

SELBL=S.V('SELBL'); TRK=S.V('TRK'); SECN=S.V('SECN'); DMA=S.V('DMA')
SDMAP=S.V('SDMAP'); WRITEF=S.V('WRITE')
SDOFF=S.V('SDOFF'); BLKN=S.V('BLKN')

S.load_bin('cpm/brevia2_cpm.bin',0xD000)
S.PC=0xE600; S.SP=0xCDF0
S.run(max_steps=3_000_000, until=lambda: 0xD000 <= S.PC < 0xD800)
S.MEM[SELBL]=2
S.MEM[DMA]=0x80; S.MEM[DMA+1]=0

print("rec TRK SCN  SDOFF BLKN          HL_before_overlay  DEsrc")
trap={}
def runto(stop_pc):
    # run until PC hits stop_pc (no step cap issues)
    for _ in range(200000):
        if S.PC==stop_pc: return True
        S.step()
    return False

for rec in range(12):
    S.MEM[TRK]=rec>>5; S.MEM[SECN]=rec&31
    for i in range(128): S.MEM[0x80+i]=(rec+i)&0xFF
    # SDMAP in isolation
    S.MEM[0xFC00]=0x76
    S.SP=0xCE00; S.push(0xFC00); S.PC=SDMAP; S.HALTED=False
    S.run(max_steps=20000, until=lambda: S.PC==0xFC00)
    sdoff=S.MEM[SDOFF]|(S.MEM[SDOFF+1]<<8)
    blkn=[S.MEM[BLKN+i] for i in range(4)]
    # now WRITE and trap right before the copy into RMWBUF
    S.SP=0xCE00; S.push(0xFC00); S.PC=WRITEF; S.HALTED=False
    hl_at_copy=None; desrc=None
    while S.PC!=0xFC00:
        if S.PC==S.V('WRITES1'):   # WRITES1
            hl_at_copy="%04X"%((S.H<<8)|S.L); desrc="%04X"%((S.D<<8)|S.E)
            break
        S.step()
    # finish the write from there
    S.run(max_steps=200000, until=lambda: S.PC==0xFC00)
    print("%3d %3X %3X  %04X %s  %-17s %s"%(rec,rec>>5,rec&31,sdoff,
          " ".join("%02X"%b for b in blkn), hl_at_copy, desrc))
