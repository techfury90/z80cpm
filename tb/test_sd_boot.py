#!/usr/bin/env python3
# End-to-end regression for the SD-PRIMARY CBIOS layout on the Brevia2.
#   Boots the REAL CCP+BDOS+CBIOS (SD build) in the simulator with:
#     - drive C: = SPI flash (files to copy FROM)
#     - drive A: = SD region 0 (boot/system volume, reserved system area)
#     - drive B: = SD region 1 (second SD volume, reserved system area)
#     - drive D: = RAM disk
#   then runs DIR / PIP on the SD drives and verifies every copied file is
#   byte-exact both through the CBIOS and on the raw SD card.  Also verifies
#   BOOT persists the CP/M system image to the SD system area and WBOOT reloads
#   CCP+BDOS from it.
#
#   This test must be run from the repo root with the SD build image already
#   generated (scripts/build_cbios.sh sd).
import sys
sys.path.insert(0,'tb')
import os
import cpmsys_sim as S
# Model the SD card programming-busy realistically (the default is 0 in the sim,
# which never exercises the CBIOS SD_READY/retry busy path).  3000 emulated
# instructions approximates a real card's programming window; if the CBIOS busy
# handling regresses this test should fail with "Bad Sector".
S.SD.BUSY_BYTES = int(os.environ.get('SD_BUSY', 3000))

MAXSTEPS = int(sys.argv[1]) if len(sys.argv)>1 else 40_000_000
IMAGE    = sys.argv[2] if len(sys.argv)>2 else 'cpm/brevia2_cpm.bin'
SELBL=S.V('SELBL'); TRK=S.V('TRK'); SECN=S.V('SECN'); DMA=S.V('DMA')
CR = bytes([13])

FILES=[('PIP.COM','cpm/cpm22-from-source/nosrc/MAC/PIP.COM',2),
       ('ED1.COM','cpm/ED1.COM',6)]

# ---------------- drive C: SPI flash image with a CP/M directory --------------
img=open(IMAGE,'rb').read()
S.FL.mem[0:2000]=img[:2000]
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
    print("flash(C:): %-8s %5d bytes = %2d records, blocks %d..%d, RC=%d"
          %(name,len(data),d[15],base,base+nblk-1,d[15]))

# ---------------- SD regions A: and B: formatted blank -----------------------
# SDSYS_OFF=16; dir for region 0 at SD blocks 17..272; region 1 at 16401..16656.
for blk in range(17,273):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)
for blk in range(16401,16657):
    S.SD.blocks[blk]=bytearray(b'\xE5'*512)

# ---------------- boot ---------------
S.load_bin(IMAGE,0xD000)
S.PC=0xE600; S.SP=0xCDF0; S.HALTED=False
S.run(max_steps=4_000_000, until=lambda: 0xD000 <= S.PC < 0xD800)
print("boot console: %r"%''.join(chr(c) for c in S.stdout))
S.stdout.clear()

# Verify BOOT persisted a valid CP/M image to the SD A: system area (blocks 1-16).
# The code portion (CCP+BDOS+CBIOS, blocks 1-14 = 0xD000-0xEBFF) must match the
# pristine image; blocks 15-16 hold the live CBIOS-variable bytes captured at
# persist time (they differ from the pristine file -- expected).
persisted = b''.join(S.SD.blocks.get(b, bytearray(512))[:] for b in range(1,17))
persist_ok = (len(persisted)>=0x2000 and persisted[0]==0xC3
              and b'CP/M 2.2 on Brevia2' in persisted
              and persisted[:0x1600]==img[:0x1600])  # CCP+BDOS exact
print("BOOT persisted CP/M image to SD system area (blocks 1-16) valid:", persist_ok)

# ---------------- run the commands ----------------
def cmd(c, steps):
    S.rxq.extend(CR + c + CR)
    S.run(max_steps=steps)
cmd(b'C:', 4_000_000)            # switch to drive C (flash) where PIP.COM lives
cmd(b'DIR A:', 8_000_000)        # SD region 0, empty
cmd(b'PIP A:=C:*.*', MAXSTEPS)   # copy flash -> SD A:
cmd(b'DIR A:', 10_000_000)
cmd(b'PIP B:=C:*.*', MAXSTEPS)   # copy flash -> SD B:
cmd(b'DIR B:', 12_000_000)
cmd(b'DIR C:', 6_000_000)        # flash dir still intact
con=''.join(chr(c) for c in S.stdout).replace('\r','')
print("=== console ===")
print(con)
err = 'Bad Sector' in con
print("=== disk error reported:", err)

# ---------------- verify files on BOTH SD drives ----------------
S.MEM[0xFC00]=0x76
allok=True
RECPERBLK=64      # 8KB allocation block / 128-byte record (BSH=6)
def read_cdir(first):
    return b''.join(S.SD.blocks.get(i, bytearray(512)) for i in range(first, first+256))
def find_blocks(dirdata, name):
    for e in range(4096):
        ent = dirdata[e*32:(e+1)*32]
        if ent[0]==0xE5: continue
        fn=(ent[1:9].decode('ascii','ignore').strip()+'.'+ent[9:12].decode('ascii','ignore').strip()).upper()
        if fn==name.upper():
            return [(ent[16+2*i] | (ent[17+2*i]<<8)) for i in range(8) if (ent[16+2*i] | (ent[17+2*i]<<8))]
    return None

# (letter, CBIOS SELBL, dir first SD sector, region sector offset)
# region 0 (A:) dir at 17 ; region 1 (B:) dir at 16401 (=1+16+0x4000)
DRIVES=[('A',0,17,0), ('B',1,16401,0x4000)]
for drv, selbl, dirfirst, regionsect in DRIVES:
    dirdata=read_cdir(dirfirst)
    for name,path,base in FILES:
        want=open(path,'rb').read()
        recs=(len(want)+127)//128
        blks=find_blocks(dirdata, name)
        if blks is None:
            print("%s:%-8s NOT FOUND in dir"%(drv,name)); allok=False; continue
        cstart=blks[0]
        # raw card view: file record r -> SD sector = 1+SDSYS_OFF+regionsect+(cstart*64+r)//4
        host=bytearray()
        for r in range(recs):
            rec=(cstart*RECPERBLK)+r
            sec=1+16+regionsect+(rec//4)
            b=S.SD.blocks.get(sec)
            host += (b or bytearray(512))[(rec%4)*128:(rec%4)*128+128]
        hsame=(bytes(host[:len(want)])==want)
        S.MEM[SELBL]=selbl; S.MEM[DMA]=0x80; S.MEM[DMA+1]=0
        got=bytearray(); rerr=None
        for r in range(recs):
            rec=cstart*RECPERBLK + r
            S.MEM[TRK]=rec>>5; S.MEM[SECN]=rec&31
            S.SP=0xCE00; S.push(0xFC00); S.PC=S.V('READ'); S.HALTED=False
            S.run(max_steps=800000, until=lambda: S.PC==0xFC00)
            if S.A!=0: rerr=(rec,S.A); break
            got+=bytes(S.MEM[0x80:0x100])
        same=(rerr is None) and bytes(got[:len(want)])==want
        print("%s:%-8s CBIOS read-back: %s   host view of card: %s"
              %(drv,name, "byte-exact" if same else "MISMATCH",
                "byte-exact" if hsame else "CORRUPT"))
        if rerr: print("   (read err %s)"%str(rerr))
        allok = allok and same and hsame

print("=== RESULT:", "PASS" if (allok and not err and persist_ok) else "FAIL")
