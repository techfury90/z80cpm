#!/usr/bin/env python3
# End-to-end regression for CP/M drive C: (SD card) on the Brevia2.
#
# Boots the REAL CCP+BDOS+CBIOS in the simulator with
#   - drive A: = SPI flash image holding two files (PIP.COM, ED1.COM)
#   - drive C: = writable SD card, formatted (LBA1..8 = 0xE5), cards model a
#                realistic programming-busy period after every block write
# then runs:  DIR C:  ->  PIP C:=A:*.*  ->  DIR C:  and reads both copied
# files back through the CBIOS to prove they are byte-exact on the card.
#
# usage: test_drive_c.py [busy_read_clocks] [max_steps]
import sys
sys.path.insert(0,'tb')
import cpmsys_sim as S

BUSY     = int(sys.argv[1]) if len(sys.argv)>1 else 3000
MAXSTEPS = int(sys.argv[2]) if len(sys.argv)>2 else 40_000_000
DROP     = float(sys.argv[3]) if len(sys.argv)>3 else 0.0  # >1: every Nth, <1: fraction
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

FILES=[('PIP.COM','cpm/cpm22-from-source/nosrc/MAC/PIP.COM',2),
       ('ED1.COM','cpm/ED1.COM',6)]

# ---------------- drive A: flash image with a CP/M directory ----------------
img=open(IMAGE,'rb').read()
S.FL.mem[0:len(img)]=img                          # tracks 0-1 = boot image
S.FL.mem[0x2000:0x3000]=b'\xE5'*0x1000             # dir = blocks 0-1 (4K)
slot=0; blk_ok=True
for name,path,base in FILES:
    data=open(path,'rb').read()
    nblk=(len(data)+2047)//2048
    # drive A: DPB OFF=2 -> block 0 starts at flash 0x2000 (track 2)
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

# ---------------- drive C: formatted, blank ----------------
# new 4KB-block / DRM=255 geometry: directory = 2 blocks = 8KB = 16 SD sectors
for blk in range(1,17):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)

# ---------------- boot ----------------
S.load_bin(IMAGE,0xD000)
S.PC=0xE600; S.SP=0xCDF0
S.run(max_steps=3_000_000, until=lambda: 0xD000 <= S.PC < 0xD800)
print("boot console: %r"%''.join(chr(c) for c in S.stdout))
S.stdout.clear()

# ---------------- run the commands ----------------
S.rxq.extend(b'DIR C:\r')
S.run(max_steps=400_000)
S.rxq.extend(b'PIP C:=A:*.*\r')
n=S.run(max_steps=MAXSTEPS)
S.rxq.extend(b'DIR C:\r')
S.run(max_steps=600_000)
con=''.join(chr(c) for c in S.stdout).replace('\r','')
print("=== console ===")
print(con)
err = 'Bad Sector' in con
print("=== disk error reported:", err)

# ---------------- verify both files on the card ----------------
# Parse the drive C: directory from the card (8KB on the SD = 16 sectors, down
# at CP/M blocks 0-1) to find each file's ACTUAL block allocation.  With the
# double-DM DPB (DSM>255) the allocation map is 8 x 16-bit LE block numbers, so a
# file's blocks can be >255.  This is geometry-independent and also verifies the
# directory WRITE, not just the data.
def read_cdir():
    return b''.join(S.SD.blocks.get(i, bytearray(512)) for i in range(1,17))

def find_blocks(dirdata, name):
    for e in range(256):
        ent = dirdata[e*32:(e+1)*32]
        if ent[0]==0xE5: continue
        fn=(ent[1:9].decode('ascii','ignore').strip()+'.'
            +ent[9:12].decode('ascii','ignore').strip()).upper()
        if fn==name.upper():
            return [ent[16+2*i] | (ent[17+2*i]<<8) for i in range(8) if (ent[16+2*i] | (ent[17+2*i]<<8))]
    return None

S.MEM[0xFC00]=0x76
allok=True
dirdata=read_cdir()
RECPERBLK=32   # 4KB allocation block / 128-byte record (BSH=5)
for name,path,base in FILES:
    want=open(path,'rb').read()
    recs=(len(want)+127)//128
    blks=find_blocks(dirdata, name)
    if blks is None:
        print("%-8s NOT FOUND in C: directory"%name); allok=False; continue
    cstart=blks[0]
    # host (PC-side) view: the DRI deblock mapping applied to the raw card
    host=bytearray()
    for rec in range(cstart*RECPERBLK, cstart*RECPERBLK+recs):
        b=S.SD.blocks.get(1+rec//4)
        host += (b or bytearray(512))[(rec%4)*128:(rec%4)*128+128]
    hsame=(bytes(host[:len(want)])==want)
    # CBIOS view: read the file's records back through the BIOS READ entry
    S.MEM[SELBL]=2; S.MEM[DMA]=0x80; S.MEM[DMA+1]=0
    got=bytearray(); rerr=None
    for r in range(recs):
        rec=cstart*RECPERBLK + r
        S.MEM[TRK]=rec>>5; S.MEM[SECN]=rec&31
        S.SP=0xCE00; S.push(0xFC00); S.PC=S.V('READ'); S.HALTED=False
        S.run(max_steps=800000, until=lambda: S.PC==0xFC00)
        if S.A!=0: rerr=(rec,S.A); break
        got+=bytes(S.MEM[0x80:0x100])
    same=(rerr is None) and bytes(got[:len(want)])==want
    print("%-8s CBIOS read-back: %s%s   host view of card: %s"
          %(name, "byte-exact" if same else "MISMATCH",
            (" (read err %s)"%str(rerr)) if rerr else "", "byte-exact" if hsame else "CORRUPT"))
    allok = allok and same and hsame
print("=== commands dropped by the card: %d of %d"%(S.SD.dropped, S.SD.cmds_seen))
print("=== RESULT:", "PASS" if (allok and not err) else "FAIL")
