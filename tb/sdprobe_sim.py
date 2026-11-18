#!/usr/bin/env python3
# Minimal 8080 interpreter to drive programs/sdprobe.com against a SIMULATED
# SD card (SPI mode), verifying the software framing end-to-end:
#   - the init handshake (power-up clocks, CMD0/CMD8/CMD55/ACMD41/CMD58/CMD16)
#   - the CID read (CMD9) and the CID field decoding in the probe
#   - the block-0 read (CMD17) and the MBR signature / partition-table parse
#   - BDOS console calls 1/2/6/9 against a stub.
# Ports emulated:
#   0x54 = SD_CTL  bit0 = CS# (1=high/release, 0=low/select); bit1 = slow clock
#   0x53 = SD data (write=tx byte, read=next response byte)
#   0x55 = SD status (bit0 busy) -- always ready in the stub (wait-stretched HW)
import collections
import sys

MEM = bytearray(65536)
A=B=C=D=E=H=L=0
SP=0xDFFE; PC=0x0100
S=Z=AC=P=CY=0
stdout=[]
bdos_calls=[]
RETS=[]

# ---------------- simulated SD card ----------------
class SDCard:
    def __init__(self):
        self.cs = 1            # CS# value latched from 0x54 bit0 (1=release)
        self.txbuf = []        # command bytes accumulated while selected
        self.resp = collections.deque()
        self.acmd = 0          # ACMD41 count
        # CID (16 bytes): MID=1B, OID="SD", PNM="BREV1", PRV, PSN=12345678, date, CRC
        self.cid = bytes([0x1B,0x53,0x44,
                          0x42,0x52,0x45,0x56,0x31,      # "BREV1" (5 bytes)
                          0x04,                          # revision 4.0
                          0x12,0x34,0x56,0x78,           # serial 0x12345678
                          0x05,0x63,0x01])
        # Block 0 = an MBR with a valid partition table
        self.block0 = bytearray(512)
        self.block0[446] = 0x80                # partition1: bootable
        self.block0[450] = 0x0B                # type = FAT32
        self.block0[454] = 0x40; self.block0[455]=0; self.block0[456]=0; self.block0[457]=0  # LBA start = 0x00000040
        self.block0[458] = 0x00; self.block0[459]=0; self.block0[460]=0x01; self.block0[461]=0  # size = 0x00010000
        self.block0[510] = 0x55; self.block0[511] = 0xAA

    def out(self, byte):
        if self.cs == 0:                       # only accumulate while selected
            self.txbuf.append(byte)
            if len(self.txbuf) == 6:
                cmd = self.txbuf[0] & 0x3F
                self.process(cmd)
                self.txbuf = []

    def process(self, cmd):
        if cmd == 0:        self.resp.append(0x01)                       # CMD0 -> idle
        elif cmd == 8:
            self.resp.append(0x01); self.resp.extend([0x00,0x00,0x01,0xAA])  # CMD8
        elif cmd == 55:     self.resp.append(0x01)                       # CMD55
        elif cmd == 41:                                                  # ACMD41
            self.acmd += 1
            self.resp.append(0x00 if self.acmd >= 4 else 0x01)
        elif cmd == 58:                                                  # CMD58 read OCR
            self.resp.append(0x00)
            self.resp.extend([0xC0,0xFF,0x80,0x00])                      # CCS set -> SDHC
        elif cmd == 16:     self.resp.append(0x00)                       # CMD16 blocklen
        elif cmd == 9:                                                   # CMD9 read CID
            self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(self.cid); self.resp.extend([0x00,0x00])
        elif cmd == 17:                                                  # CMD17 read block0
            self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(self.block0); self.resp.extend([0x00,0x00])
        else:               self.resp.append(0x00)

    def read(self):
        return self.resp.popleft() if self.resp else 0xFF

SD = SDCard()

# ---------------- interpreter primitives ----------------
def reg_pair(r):
    if r==0: return (B<<8)|C
    if r==1: return (D<<8)|E
    if r==2: return (H<<8)|L
    if r==3: return SP
    raise ValueError

def set_reg_pair(r, val):
    global B,C,D,E,H,L,SP
    val &= 0xFFFF
    if r==0: B,C = val>>8, val&0xFF
    elif r==1: D,E = val>>8, val&0xFF
    elif r==2: H,L = val>>8, val&0xFF
    elif r==3: SP = val
    else: raise ValueError

def get_reg(rp):
    return {0:B,1:C,2:D,3:E,4:H,5:L,6:0,7:A}[rp]

def set_reg(rp, val):
    global A,B,C,D,E,H,L
    val &= 0xFF
    if rp==0: B=val
    elif rp==1: C=val
    elif rp==2: D=val
    elif rp==3: E=val
    elif rp==4: H=val
    elif rp==5: L=val
    elif rp==7: A=val
    else: raise ValueError

def get_m_or_reg(rp):
    if rp==6: return MEM[(H<<8)|L]
    return get_reg(rp)

def set_m_or_reg(rp, val):
    if rp==6: MEM[(H<<8)|L]=val&0xFF
    else: set_reg(rp, val)

def read8(a): return MEM[a&0xFFFF]
def write8(a,v): MEM[a&0xFFFF]=v&0xFF
def read16(a): return read8(a)|(read8(a+1)<<8)
def write16(a,v): write8(a,v&0xFF); write8(a+1,(v>>8)&0xFF)
def fetch():
    global PC
    b=read8(PC); PC=(PC+1)&0xFFFF; return b

def flags_byte():
    return (0x80 if S else 0)|(0x40 if Z else 0)|(0x10 if AC else 0)|(0x02 if P else 0)|(0x01 if CY else 0)
def set_flags_from_byte(b):
    global S,Z,AC,P,CY
    S=1 if b&0x80 else 0; Z=1 if b&0x40 else 0; AC=1 if b&0x10 else 0; P=1 if b&0x02 else 0; CY=1 if b&0x01 else 0

def set_flags_arith(val, cy, ac):
    global S,Z,AC,P,CY
    S=1 if (val&0x80) else 0; Z=1 if (val&0xFF)==0 else 0
    AC=ac; P=1 if bin(val&0xFF).count('1')%2==0 else 0; CY=cy

def jump_cond(op):
    if op in (0xC2,0xC0): return Z==0
    if op in (0xCA,0xC8): return Z==1
    if op in (0xD2,0xD0): return CY==0
    if op in (0xDA,0xD8): return CY==1
    if op in (0xE2,0xE0): return P==0
    if op in (0xEA,0xE8): return P==1
    if op in (0xF2,0xF0): return S==0
    if op in (0xFA,0xF8): return S==1
    return False

def alu(op, src):
    global A,B,D,E,H,L,S,Z,AC,P,CY
    src &= 0xFF; av = A & 0xFF
    if op in ('ADD','ADC'):
        carry = 1 if (op=='ADC' and CY) else 0
        r = av + src + carry
        set_flags_arith(r&0xFF, 1 if r>0xFF else 0, ((av&0x0F)+(src&0x0F)+carry)>0x0F)
        A = r & 0xFF
    elif op in ('SUB','SBB','CMP'):
        borrow = 1 if (op=='SBB' and CY) else 0
        r = av - src - borrow
        set_flags_arith(r&0xFF, 1 if r<0 else 0, (av&0x0F)<((src&0x0F)+borrow))
        if op!='CMP': A = r & 0xFF
    elif op=='ANA':
        r=av&src; set_flags_arith(r,0,1); A=r
    elif op=='XRA':
        r=av^src; set_flags_arith(r,0,0); A=r
    elif op=='ORA':
        r=av|src; set_flags_arith(r,0,0); A=r

def inc_dec(rp, delta):
    global S,Z,AC,P,CY
    v = get_m_or_reg(rp); old = v
    v = (v+delta)&0xFF
    set_m_or_reg(rp, v)
    set_flags_arith(v, CY, 1 if (old&0x0F)+(delta&0x0F)>0x0F else 0)

def rol(through):
    global A,CY
    c=(A>>7)&1
    if through: A=((A<<1)&0xFF)|(1 if CY else 0); CY=c
    else: A=((A<<1)&0xFF)|c; CY=c
def ror(through):
    global A,CY
    c=A&1
    if through: A=(A>>1)|(0x80 if CY else 0); CY=c
    else: A=(A>>1)|(c<<7); CY=c

# ---------------- hardware ports ----------------
def out_port(port, val):
    global SD
    port &= 0xFF
    if port == 0x54:
        SD.cs = 1 if (val & 1) else 0     # bit0: 1=release(CS high), 0=select(CS low)
    elif port == 0x53:
        SD.out(val)

def in_port(port):
    port &= 0xFF
    if port == 0x53: return SD.read()
    if port == 0x55: return 0             # busy=0 (wait-stretched HW never blocks the CPU)
    return 0

# ---------------- BDOS stub ----------------
def bdos():
    global A,B,C,D,E,H,L,S,Z,AC,P,CY,SP
    func = C
    bdos_calls.append(func)
    if func==1:
        A = 0
    elif func==2:
        stdout.append(chr(E)); A = 0
        B = 0; H = 0; L = 0          # real BDOS func 2 clobbers B and HL
    elif func==6:
        if E==0xFF: A = 0
        elif E==0xFE: A = 0
        else: stdout.append(chr(E)); A=0; B=0; H=0; L=0
    elif func==9:
        p=(D<<8)|E; s=[]
        while read8(p)!=0x24:
            s.append(chr(read8(p))); p=(p+1)&0xFFFF
        stdout.extend(s); B=0; H=0; L=0
    # func 1/2/6/9 only used here

# ---------------- interpreter loop ----------------
def run(max_steps=2_000_000):
    global A,B,C,D,E,H,L,SP,PC,S,Z,AC,P,CY
    steps=0
    while steps<max_steps:
        steps+=1
        op=fetch()
        if op==0x76: break
        if 0x40<=op<=0x7F:
            set_m_or_reg((op>>3)&7, get_m_or_reg(op&7))
        elif op in (0x06,0x0E,0x16,0x1E,0x26,0x2E,0x36,0x3E):
            set_m_or_reg((op>>3)&7, fetch())
        elif op==0x01: set_reg_pair(0, read16(PC)); PC+=2
        elif op==0x11: set_reg_pair(1, read16(PC)); PC+=2
        elif op==0x21: set_reg_pair(2, read16(PC)); PC+=2
        elif op==0x31: set_reg_pair(3, read16(PC)); PC+=2
        elif 0x80<=op<=0x87: alu('ADD', get_m_or_reg(op&7))
        elif 0x88<=op<=0x8F: alu('ADC', get_m_or_reg(op&7))
        elif 0x90<=op<=0x97: alu('SUB', get_m_or_reg(op&7))
        elif 0x98<=op<=0x9F: alu('SBB', get_m_or_reg(op&7))
        elif 0xA0<=op<=0xA7: alu('ANA', get_m_or_reg(op&7))
        elif 0xA8<=op<=0xAF: alu('XRA', get_m_or_reg(op&7))
        elif 0xB0<=op<=0xB7: alu('ORA', get_m_or_reg(op&7))
        elif 0xB8<=op<=0xBF: alu('CMP', get_m_or_reg(op&7))
        elif op in (0xC6,0xCE,0xD6,0xDE,0xE6,0xEE,0xF6,0xFE):
            v=fetch(); alu({0xC6:'ADD',0xCE:'ADC',0xD6:'SUB',0xDE:'SBB',0xE6:'ANA',0xEE:'XRA',0xF6:'ORA',0xFE:'CMP'}[op], v)
        elif op in (0x04,0x0C,0x14,0x1C,0x24,0x2C,0x34,0x3C): inc_dec((op>>3)&7,+1)
        elif op in (0x05,0x0D,0x15,0x1D,0x25,0x2D,0x35,0x3D): inc_dec((op>>3)&7,-1)
        elif op in (0x03,0x13,0x23,0x33): idx=(op>>4)&3; set_reg_pair(idx, reg_pair(idx)+1)
        elif op in (0x0B,0x1B,0x2B,0x3B): idx=(op>>4)&3; set_reg_pair(idx, reg_pair(idx)-1)
        elif op==0x07: rol(False)
        elif op==0x0F: ror(False)
        elif op==0x17: rol(True)
        elif op==0x1F: ror(True)
        elif op in (0x09,0x19,0x29,0x39):
            rp=(op>>3)&7; ov=reg_pair(2)+reg_pair(rp); CY=1 if ov>0xFFFF else 0; set_reg_pair(2,ov)
        elif op==0x3A: A=read8(read16(PC)); PC+=2
        elif op==0x32: write8(read16(PC),A); PC+=2
        elif op==0x2A: set_reg_pair(2, read16(read16(PC))); PC+=2
        elif op==0x22: write16(read16(PC), reg_pair(2)); PC+=2
        elif op==0x0A: A=read8((B<<8)|C)
        elif op==0x02: write8((B<<8)|C,A)
        elif op==0x1A: A=read8((D<<8)|E)
        elif op==0x12: write8((D<<8)|E,A)
        elif op==0xEB: (H,L),(D,E)=(D,E),(H,L)
        elif op==0xE3:
            tmp=read16(SP); write16(SP,(H<<8)|L); H,L=tmp>>8,tmp&0xFF
        elif op==0xF9: SP=(H<<8)|L
        elif op==0xE9: PC=(H<<8)|L
        elif op==0xC3: PC=fetch()|(fetch()<<8)
        elif op in (0xC2,0xCA,0xD2,0xDA,0xE2,0xEA,0xF2,0xFA):
            if jump_cond(op): PC=fetch()|(fetch()<<8)
            else: PC+=2
        elif op==0xCD:
            addr=fetch()|(fetch()<<8)
            if addr==5: bdos()
            else:
                SP=(SP-1)&0xFFFF; write8(SP,(PC>>8)&0xFF); SP=(SP-1)&0xFFFF; write8(SP,PC&0xFF); PC=addr
        elif op==0xC9:
            tgt=read8(SP)|(read8((SP+1)&0xFFFF)<<8); RETS.append((SP,tgt)); SP=(SP+2)&0xFFFF; PC=tgt
        elif op in (0xC0,0xC8,0xD0,0xD8,0xE0,0xE8,0xF0,0xF8):
            if jump_cond(op):
                tgt=read8(SP)|(read8((SP+1)&0xFFFF)<<8); RETS.append((SP,tgt)); SP=(SP+2)&0xFFFF; PC=tgt
        elif op in (0xC5,0xD5,0xE5,0xF5):
            rp={0xC5:'B',0xD5:'D',0xE5:'H',0xF5:'P'}[op]
            if rp=='B': v=((B<<8)|C)
            elif rp=='D': v=((D<<8)|E)
            elif rp=='H': v=((H<<8)|L)
            else: v=(A<<8)|flags_byte()
            SP=(SP-1)&0xFFFF; write8(SP,(v>>8)&0xFF); SP=(SP-1)&0xFFFF; write8(SP,v&0xFF)
        elif op in (0xC1,0xD1,0xE1,0xF1):
            rp={0xC1:'B',0xD1:'D',0xE1:'H',0xF1:'P'}[op]
            lo=read8(SP); SP=(SP+1)&0xFFFF; hi=read8(SP); SP=(SP+1)&0xFFFF
            if rp=='B': B,C=hi,lo
            elif rp=='D': D,E=hi,lo
            elif rp=='H': H,L=hi,lo
            else: A=hi; set_flags_from_byte(lo)
        elif op==0xDB: A=in_port(fetch())
        elif op==0xD3: out_port(fetch(), A)
        elif op==0x2F: A^=0xFF
        elif op==0x27: pass
        elif op==0x37: CY=1
        elif op==0x3F: CY^=1
        elif op==0x00: pass
        else:
            raise ValueError("unsupported opcode %02X at PC=%04X"%(op,(PC-1)&0xFFFF))
    return steps

def load(path, base=0x100):
    for i,b in enumerate(open(path,'rb').read()):
        MEM[base+i]=b

def main():
    global SP, PC
    load('programs/sdprobe.com', 0x100)
    MEM[0xFC00]=0x76                                   # HLT (return target)
    MEM[0xDFFF]=0xFC; MEM[0xDFFE]=0x00
    SP=0xDFFE; PC=0x0100
    steps = run(max_steps=500_000)
    print("=== SDPROBE OUTPUT ===")
    print(''.join(stdout).replace('\r',''))
    print("=== steps:", steps, "SP=%04X PC=%04X (clean quit if PC at 0xFC00 HLT)"%(SP,PC))
    print("=== reached HLT/return target? PC=%04X ==="%PC)
    print("=== BDOS func counts ===", collections.Counter(bdos_calls))
    from collections import Counter
    if any(b==0xFC00 for a,b in RETS):
        print("=== RET to 0xFC00 (clean exit) seen ===")
    else:
        print("=== WARNING: did not RET to 0xFC00 ===")

if __name__=='__main__':
    main()
