#!/usr/bin/env python3
# End-to-end: boot the real CP/M (CCP+BDOS+CBIOS) in the simulator, with
#   - drive A = SPI flash image holding PIP.COM,
#   - drive C = writable SD card (partition LBA1, dir 0xE5),
# then run `PIP C:=A:*.*` and watch for (a) disk errors, (b) any write that
# clobbers CP/M code in RAM.
import sys
sys.path.insert(0,'tb')
import cpmsys_sim as S

BUSY = int(sys.argv[1]) if len(sys.argv)>1 else 20000   # card programming time in read clocks
MAXSTEPS = int(sys.argv[2]) if len(sys.argv)>2 else 6_000_000
S.SD.BUSY_BYTES = BUSY

SELBL=S.V('SELBL'); TRK=S.V('TRK'); SECN=S.V('SECN'); DMA=S.V('DMA')
CCP=0xD000; CCPEND=0xD800; BIOS=0xE600; CBIOS_END=0xEB00

# ---------- build the flash (drive A) image ----------
img=open('cpm/brevia2_cpm.bin','rb').read()
S.FL.mem[0:len(img)]=img                       # boot image, tracks 0-1
S.FL.mem[0x2000:0x3000]=b'\xE5'*0x1000          # directory (blocks 0-1, 4K)
pip=open('cpm/cpm22-from-source/nosrc/MAC/PIP.COM','rb').read()
S.FL.mem[0x3000:0x3000+len(pip)]=pip            # blocks 2..5
recs=(len(pip)+127)//128
d=bytearray(32); d[0]=0
d[1:9]=b'PIP     '; d[9:12]=b'COM'
d[12]=0; d[13]=0; d[14]=0; d[15]=recs
for i,b in enumerate([2,3,4,5]): d[16+i]=b
S.FL.mem[0x2000:0x2020]=d
print("flash: PIP.COM %d bytes = %d records in blocks 2-5"%(len(pip),recs))

# ---------- format the SD card (drive C) ----------
for blk in range(1,9):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)

# ---------- boot ----------
S.load_bin('cpm/brevia2_cpm.bin',0xD000)
S.PC=0xE600; S.SP=0xCDF0
S.run(max_steps=3_000_000, until=lambda: 0xD000 <= S.PC < 0xD800)
print("booted, console=%r"%''.join(chr(c) for c in S.stdout))
S.stdout.clear()

# ---------- watch for writes into CP/M code ----------
bad=[]
steps=[0]
def hook(addr,val):
    steps[0]+=1
    if (CCP<=addr<CCPEND) or (BIOS<=addr<CBIOS_END):
        if len(bad)<40:
            bad.append((addr,val,S.PC,S.SP))
S.WRITE_HOOK=hook

# ---------- type commands ----------
S.rxq.extend(b'PIP C:=A:*.*\r')

n=S.run(max_steps=MAXSTEPS)
out=''.join(chr(c) for c in S.stdout)
print("=== console ===")
print(out.replace('\r',''))
print("=== steps %d, halted=%s PC=%04X"%(n,S.HALTED,S.PC))
print("=== writes into CCP/CBIOS code: %d"%len(bad))
for a,v,pc,sp in bad[:12]:
    print("   addr=%04X val=%02X PC=%04X SP=%04X"%(a,v,pc,sp))
print("=== SD blocks written: %d, block numbers: %s"%(len(S.SD.blocks),
      sorted(S.SD.blocks)[:12]))
b1=S.SD.blocks.get(1)
if b1: print("dir block 1 first 64: %s"%b1[:64].hex())

# ---------- read the copied file back through the CBIOS and compare ----------
S.rxq.clear()
S.MEM[SELBL]=2
S.MEM[DMA]=0x80; S.MEM[DMA+1]=0
# drive C: block 2 = record 32; PIP.COM is 55 records
S.MEM[0xFC00]=0x76
got=bytearray()
for rec in range(32,32+55):
    S.MEM[TRK]=rec>>5; S.MEM[SECN]=rec&31
    S.SP=0xCE00; S.push(0xFC00); S.PC=S.V('READ'); S.HALTED=False
    S.run(max_steps=500000, until=lambda: S.PC==0xFC00)
    if S.A!=0:
        print("READ error at rec %d A=%02X"%(rec,S.A)); break
    got += bytes(S.MEM[0x80:0x100])
same = bytes(got[:len(pip)])==pip
print("=== copied PIP.COM read back through CBIOS: %d bytes, byte-exact=%s"%(len(got),same))
if not same:
    bad=[i for i in range(min(len(got),len(pip))) if got[i]!=pip[i]]
    print("   %d differing bytes, first: %s"%(len(bad),bad[:10]))
# also confirm the build's own deblock mapping (host view) sees the same bytes
flat=bytearray()
for blk in sorted(S.SD.blocks):
    if 9<=blk<64: pass
for rec in range(32,32+55):
    blk=1+rec//4; off=(rec%4)*128
    flat += S.SD.blocks[blk][off:off+128]
print("=== host view of the card matches too:", bytes(flat[:len(pip)])==pip)
