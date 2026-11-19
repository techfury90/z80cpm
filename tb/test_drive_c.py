#!/usr/bin/env python3
# End-to-end regression for CP/M drive C:/D: (SD card) on the Brevia2.
# Boots the REAL CCP+BDOS+CBIOS in the simulator with a flash drive A (2 files)
# and two writable SD regions (C: + D:, 8 MB each, 8KB blocks, 4096-entry dir),
# then runs DIR/PIP on both and verifies every copied file is byte-exact.
import sys
sys.path.insert(0,'tb')
import cpmsys_sim as S

BUSY     = int(sys.argv[1]) if len(sys.argv)>1 else 3000
MAXSTEPS = int(sys.argv[2]) if len(sys.argv)>2 else 40_000_000
DROP     = float(sys.argv[3]) if len(sys.argv)>3 else 0.0
TRI      = (len(sys.argv)>4 and sys.argv[4]=='tri')
IMAGE    = sys.argv[5] if len(sys.argv)>5 else 'cpm/brevia2_cpm.bin'
S.SD.BUSY_BYTES = BUSY
S.SD.DROP_EVERY = DROP if DROP>1 else 0
S.SD.DROP_PCT = DROP if DROP<1 else 0.0
S.SD.TRISTATE_BUSY = TRI
S.SD.FLAKY_BUSY = (len(sys.argv)>4 and sys.argv[4]=='flaky')
print("image: %s"%IMAGE)
print("card model: busy=%d clocks, drop every %s command, busy MISO %s"
      %(BUSY, DROP or '-', 'flaky' if (len(sys.argv)>4 and sys.argv[4]=='flaky') else ('floats-high' if TRI else 'low')))

SELBL=S.V('SELBL'); TRK=S.V('TRK'); SECN=S.V('SECN'); DMA=S.V('DMA')
CR = bytes([13])

FILES=[('PIP.COM','cpm/cpm22-from-source/nosrc/MAC/PIP.COM',2),
       ('ED1.COM','cpm/ED1.COM',6)]

# ---------------- drive A: flash image with a CP/M directory ----------------
img=open(IMAGE,'rb').read()
S.FL.mem[0:len(img)]=img
S.FL.mem[0x2000:0x3000]=b'\xE5'*0x1000
slot=0
for name,path,base in FILES:
    data=open(path,'rb').read()
    nblk=(len(data)+2047)//2048
    S.FL.mem[0x2000+base*2048:0x2000+base*2048+len(data)]=data
    d=bytearray(32)
    n,e=name.split('.')
    d[0]=0; d[1:9]=n.upper().ljust(8).encode(); d[9:12]=e.upper().ljust(3).encode()
    d[15]=(len(data)+127)//128
    for i in range(nblk): d[16+i]=base+i
    S.FL.mem[0x2000+slot*32:0x2000+slot*32+32]=d
    slot+=1
    print("flash: %-8s %5d bytes = %2d records, blocks %d..%d, RC=%d"
          %(name,len(data),d[15],base,base+nblk-1,d[15]))

# ---------------- drive C & D: formatted, blank ----------------
# 8KB-block / DRM=4095 (4096-entry) dir = 16 blocks = 128KB = 256 SD sectors.
#   drive C region 0 -> SD sectors 1-256 ; drive D region 1 -> SD sectors 16385-16640
for blk in range(1,257):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)
for blk in range(16385,16641):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)

# ---------------- boot ----------------
S.load_bin(IMAGE,0xD000)
S.PC=0xE600; S.SP=0xCDF0
S.run(max_steps=3_000_000, until=lambda: 0xD000 <= S.PC < 0xD800)
print("boot console: %r"%''.join(chr(c) for c in S.stdout))
S.stdout.clear()

# ---------------- run the commands (both SD drives) ----------------
# Feed each command preceded by a CR: the CCP's warm-start/break check after a
# PIP consumes one char, so the leading CR absorbs it instead of a command letter.
# A blank CR at a prompt is a harmless no-op.  Big budgets (4096-entry dir login
# = 256 SD-sector reads, slow).
def cmd(c, steps):
    S.rxq.extend(CR + c + CR)
    S.run(max_steps=steps)
cmd(b'DIR C:', 8_000_000)
cmd(b'PIP C:=A:*.*', MAXSTEPS)
cmd(b'DIR C:', 10_000_000)
cmd(b'DIR D:', 12_000_000)
cmd(b'PIP D:=A:*.*', MAXSTEPS)
cmd(b'DIR D:', 12_000_000)
con=''.join(chr(c) for c in S.stdout).replace('\r','')
print("=== console ===")
print(con)
err = 'Bad Sector' in con
print("=== disk error reported:", err)

# ---------------- verify both files on BOTH drives ----------------
S.MEM[0xFC00]=0x76
allok=True
RECPERBLK=64      # 8KB allocation block / 128-byte record (BSH=6)
# (letter, CBIOS SELBL, dir first SD sector, region record offset)
DRIVES=[('C',2,1,0), ('D',3,16385,65536)]

def read_cdir(first):
    return b''.join(S.SD.blocks.get(i, bytearray(512)) for i in range(first, first+256))

def find_blocks(dirdata, name):
    for e in range(4096):     # DRM=4095 -> 4096 entries
        ent = dirdata[e*32:(e+1)*32]
        if ent[0]==0xE5: continue
        fn=(ent[1:9].decode('ascii','ignore').strip()+'.'
            +ent[9:12].decode('ascii','ignore').strip()).upper()
        if fn==name.upper():
            return [(ent[16+2*i] | (ent[17+2*i]<<8)) for i in range(8) if (ent[16+2*i] | (ent[17+2*i]<<8))]
    return None

for drv, selbl, dirfirst, regoff in DRIVES:
    dirdata=read_cdir(dirfirst)
    for name,path,base in FILES:
        want=open(path,'rb').read()
        recs=(len(want)+127)//128
        blks=find_blocks(dirdata, name)
        if blks is None:
            print("%s:%-8s NOT FOUND in dir"% (drv,name)); allok=False; continue
        cstart=blks[0]
        host=bytearray()
        for r in range(recs):
            rec=regoff + cstart*RECPERBLK + r
            b=S.SD.blocks.get(1 + rec//4)
            host += (b or bytearray(512))[(rec%4)*128:(rec%4)*128+128]
        hsame=(bytes(host[:len(want)])==want)
        S.MEM[SELBL]=selbl; S.MEM[DMA]=0x80; S.MEM[DMA+1]=0
        got=bytearray(); rerr=None
        for r in range(recs):
            rec=cstart*RECPERBLK + r      # in-region record; CBIOS SDMAP adds the region for SELBL==3
            S.MEM[TRK]=rec>>5; S.MEM[SECN]=rec&31
            S.SP=0xCE00; S.push(0xFC00); S.PC=S.V('READ'); S.HALTED=False
            S.run(max_steps=800000, until=lambda: S.PC==0xFC00)
            if S.A!=0: rerr=(rec,S.A); break
            got+=bytes(S.MEM[0x80:0x100])
        same=(rerr is None) and bytes(got[:len(want)])==want
        print("%s:%-8s CBIOS read-back: %s%s   host view of card: %s"
              %(drv,name, "byte-exact" if same else "MISMATCH",
                (" (read err %s)"%str(rerr)) if rerr else "", "byte-exact" if hsame else "CORRUPT"))
        allok = allok and same and hsame
print("=== commands dropped by the card: %d of %d"%(S.SD.dropped, S.SD.cmds_seen))
print("=== RESULT:", "PASS" if (allok and not err) else "FAIL")
