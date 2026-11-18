#!/usr/bin/env python3
# Minimal 8080 interpreter to drive programs/sdtool.com against a SIMULATED,
# WRITABLE SD card, verifying the partition/format tool flow end-to-end:
#   I -- init + info (type, CID, block-0 read)
#   C -- create an MBR with one CP/M partition (writes block 0)
#   P -- read + print the MBR partition table (reads back what C wrote)
#   F -- format the partition (writes the directory 0xE5)
# The card model is writable: blocks persist, and CMD17/CMD24 read/write them.
# Ports: 0x54 = SD_CTL (bit0 CS#, bit1 slow), 0x53 = SD data, 0x55 = SD status.
import collections
import sys

MEM = bytearray(65536)
A=B=C=D=E=H=L=0
SP=0xDFFE; PC=0x0100
S=Z=AC=P=CY=0
stdout=[]
bdos_calls=[]
RETS=[]

class SDCard:
    def __init__(self):
        self.cs = 1
        self.tx = []                 # command bytes accumulated while selected
        self.resp = collections.deque()
        self.acmd = 0
        self.blocks = {}             # blocknum -> bytearray(512); missing = 0xFF (blank)
        self.write_state = None      # None | 'token' | 'data' | 'crc'
        self.write_blk = 0
        self.write_buf = bytearray(512)
        self.write_len = 0
        self.write_crc = 0
        self.cid = bytes([0x40,0x53,0x44, 0x42,0x52,0x45,0x56,0x31, 0x04,
                          0x53,0x7F,0x80,0x0A, 0x05,0x63,0x01])

    def _block(self, n):
        return self.blocks.get(n, bytearray([0xFF]*512))

    def _store(self, n, data):
        self.blocks[n] = bytearray(data)

    def out(self, byte):
        # handle the write data phase (token/data/crc) first
        if self.write_state == 'token':
            self.tx = []             # drop any stray command accumulation
            if byte == 0xFE:
                self.write_state = 'data'
                self.write_len = 0
                self.write_buf = bytearray(512)
            return
        if self.write_state == 'data':
            self.write_buf[self.write_len] = byte
            self.write_len += 1
            if self.write_len == 512:
                self.write_state = 'crc'
                self.write_crc = 0
            return
        if self.write_state == 'crc':
            self.write_crc += 1
            if self.write_crc == 2:
                self._store(self.write_blk, self.write_buf)
                self.write_state = None
                self.resp.append(0x05)   # data response OK
            return
        # otherwise accumulate a command (only while selected)
        if self.cs == 0:
            self.tx.append(byte)
            if len(self.tx) == 6:
                self.process(self.tx[0] & 0x3F, self.tx)
                self.tx = []

    def process(self, cmd, tx):
        blk = (tx[1]<<24)|(tx[2]<<16)|(tx[3]<<8)|tx[4]
        if cmd == 0:   self.resp.append(0x01)
        elif cmd == 8:
            self.resp.append(0x01); self.resp.extend([0x00,0x00,0x01,0xAA])
        elif cmd == 55: self.resp.append(0x01)
        elif cmd == 41:
            self.acmd += 1
            self.resp.append(0x00 if self.acmd >= 4 else 0x01)
        elif cmd == 58:
            self.resp.append(0x00); self.resp.extend([0xC0,0xFF,0x80,0x00])
        elif cmd == 9:
            self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(self.cid); self.resp.extend([0x00,0x00])
        elif cmd == 17:
            data = self._block(blk)
            self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(data); self.resp.extend([0x00,0x00])
        elif cmd == 24:
            self.resp.append(0x00)             # R1 OK
            self.write_state = 'token'
            self.write_blk = blk
        else:
            self.resp.append(0x00)

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
        SD.cs = 1 if (val & 1) else 0
    elif port == 0x53:
        SD.out(val)
def in_port(port):
    port &= 0xFF
    if port == 0x53: return SD.read()
    if port == 0x55: return 0
    return 0

# ---------------- BDOS stub ----------------
inqueue = list("ICPFPQ")
def bdos():
    global A,B,C,D,E,H,L,S,Z,AC,P,CY
    func = C
    bdos_calls.append(func)
    if func==1:
        A = ord(inqueue.pop(0)) if inqueue else 0
    elif func==2:
        stdout.append(chr(E)); A = 0; B=0; H=0; L=0
    elif func==6:
        if E==0xFF: A = ord(inqueue.pop(0)) if inqueue else 0
        elif E==0xFE: A = 0
        else: stdout.append(chr(E)); A=0; B=0; H=0; L=0
    elif func==9:
        p=(D<<8)|E; s=[]
        while read8(p)!=0x24:
            s.append(chr(read8(p))); p=(p+1)&0xFFFF
        stdout.extend(s); B=0; H=0; L=0

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
    load('programs/sdtool.com', 0x100)
    MEM[0xFC00]=0x76
    MEM[0xDFFF]=0xFC; MEM[0xDFFE]=0x00
    SP=0xDFFE; PC=0x0100
    steps = run(max_steps=1_000_000)
    print("=== SDTOOL OUTPUT (commands I C P F P Q) ===")
    print(''.join(stdout).replace('\r',''))
    print("=== steps:", steps, "PC=%04X (clean quit if returned to 0xFC00)"%PC)
    print("=== block 0 (MBR) bytes 446..461, 510..511 ===")
    b0 = SD.blocks.get(0)
    if b0 is not None:
        print("  stat=%02X type=%02X lba=%02X%02X%02X%02X size=%02X%02X%02X%02X sig=%02X%02X"%(
            b0[446],b0[450], b0[454],b0[455],b0[456],b0[457], b0[458],b0[459],b0[460],b0[461], b0[510],b0[511]))
    else:
        print("  block 0 not written")
    # verify the formatted directory (partition start = LBA 1) is 0xE5
    b1 = SD.blocks.get(1)
    if b1 is not None:
        alle5 = all(x==0xE5 for x in b1)
        print("  partition LBA1 first 8 bytes:", [hex(x) for x in b1[:8]])
        print("  partition LBA1 ALL 512 bytes 0xE5? :", "YES" if alle5 else "NO  (upper half not filled = format bug)")
    print("=== BDOS func counts ===", collections.Counter(bdos_calls))

if __name__=='__main__':
    main()
