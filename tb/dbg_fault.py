#!/usr/bin/env python3
# Trace what happens when the card is internal-busy AND its MISO floats:
# logs every SD command (cmd, block, R1, busy) plus every CBIOS retry.
import sys
sys.path.insert(0,'tb')
import cpmsys_sim as S

S.SD.BUSY_BYTES = 3000
S.SD.DROP_PCT = 0.10
S.SD.FLAKY_BUSY = True

SD_RECOVER=S.V('SD_RECOVER')

log=[]
orig=S.SD.process
def proc(cmd,tx):
    blk=(tx[1]<<24)|(tx[2]<<16)|(tx[3]<<8)|tx[4]
    before=S.SD.busy_until and (0 if not S.SD.busy_now() else 1); n=len(S.SD.resp)
    orig(cmd,tx)
    r1=list(S.SD.resp)[n] if len(S.SD.resp)>n else None
    log.append("CMD%-2d blk=%-3d R1=%s busy_before=%d"%(cmd,blk,r1,before))
S.SD.process=proc

img=open('cpm/brevia2_cpm.bin','rb').read()
S.FL.mem[0:len(img)]=img
S.FL.mem[0x2000:0x3000]=b'\xE5'*0x1000
pip=open('cpm/cpm22-from-source/nosrc/MAC/PIP.COM','rb').read()
S.FL.mem[0x3000:0x3000+len(pip)]=pip
d=bytearray(32); d[0]=0; d[1:9]=b'PIP     '; d[9:12]=b'COM'; d[15]=(len(pip)+127)//128
for i,b in enumerate([2,3,4,5]): d[16+i]=b
S.FL.mem[0x2000:0x2020]=d
for blk in range(1,9): S.SD.blocks[blk]=bytearray(b'\xE5'*512)

S.load_bin('cpm/brevia2_cpm.bin',0xD000)
S.PC=0xE600; S.SP=0xCDF0
S.run(max_steps=3_000_000, until=lambda: 0xD000<=S.PC<0xD800)
S.stdout.clear(); log.clear()

recovers=[0]
S.rxq.extend(b"PIP C:=A:*.*\r")
n=0
while n<4_000_000 and not S.HALTED:
    if S.PC==SD_RECOVER:
        recovers[0]+=1
        log.append("----- RETRY #%d (SD_RECOVER) -----"%recovers[0])
    S.step(); n+=1

print(''.join(chr(c) for c in S.stdout).replace('\r',''))
print("retries:", recovers[0], "cmds:", S.SD.cmds_seen, "dropped:", S.SD.dropped)
for l in log[-40:]:
    print(l)
