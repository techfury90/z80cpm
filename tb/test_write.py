#!/usr/bin/env python3
# Drive the CBIOS drive-C (SD) deblocking WRITE path directly, bypassing the
# BDOS: boot the CBIOS, then for each of 128 records set TRK/SECN/DMA, fill the
# DMA buffer, call BIOS WRITE, then call READ and compare.
import sys, time
sys.path.insert(0,'tb')
import cpmsys_sim as S

SELBL=S.V('SELBL'); TRK=S.V('TRK'); SECN=S.V('SECN'); DMA=S.V('DMA')
WRITEF=S.V('WRITE'); READF=S.V('READ')

n=S.load_bin('cpm/brevia2_cpm.bin',0xD000)
print("loaded %d bytes at 0xD000"%n)

# --- boot ---
S.PC=0xE600; S.SP=0xCDF0
def at_ccp(): return 0xD000 <= S.PC < 0xD800
st=S.run(max_steps=3_000_000, until=at_ccp)
print("boot: %d steps, PC=%04X, reached CCP=%s"%(st,S.PC,at_ccp()))
print("console: %r"%''.join(chr(c) for c in S.stdout))

S.MEM[SELBL]=2
S.MEM[DMA]=0x80; S.MEM[DMA+1]=0x00

failw=[]; failr=[]
for rec in range(128):
    S.MEM[TRK]=rec>>5
    S.MEM[SECN]=rec&31
    for i in range(128):
        S.MEM[0x80+i]=(rec+i)&0xFF
    ret=S.call(WRITEF)
    if ret!=0:
        failw.append((rec,ret))
    # read back
    for i in range(128): S.MEM[0x80+i]=0xAA
    ret=S.call(READF)
    if ret!=0:
        failr.append((rec,ret))
        continue
    got=bytes(S.MEM[0x80:0x100])
    exp=bytes((rec+i)&0xFF for i in range(128))
    if got!=exp:
        diff=[i for i in range(128) if got[i]!=exp[i]]
        failr.append((rec,'mismatch at %d bytes, first %s'%(len(diff),diff[:6])))

print("write failures: %d %s"%(len(failw), failw[:8]))
print("read failures : %d %s"%(len(failr), failr[:8]))
print("SD blocks written: %d"%len(S.SD.blocks))
print("write log first 5 block numbers:", [w[0] for w in S.SD.writes[:5]])
print("write log last 5 block numbers:", [w[0] for w in S.SD.writes[-5:]])

# expected: record r -> block 1+r//4, 128B at offset (r%4)*128
ok=True
for rec in range(128):
    blk=1+rec//4
    b=S.SD.blocks.get(blk)
    if b is None: print("missing block",blk); ok=False; continue
    off=(rec%4)*128
    exp=bytes((rec+i)&0xFF for i in range(128))
    if bytes(b[off:off+128])!=exp:
        print("block %d offset %d wrong: %s"%(blk,off,b[off:off+8].hex()))
        ok=False
print("SD card content matches the deblock mapping:", ok)

# where did the CBIOS vars end up / any stray writes above 0xEF00?
print("vars: SELBL=%02X TRK=%02X SECN=%02X"%(S.MEM[SELBL],S.MEM[TRK],S.MEM[SECN]))
