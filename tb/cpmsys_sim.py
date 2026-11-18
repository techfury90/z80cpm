#!/usr/bin/env python3
# Full-system 8080 simulator for the Brevia2 CP/M port.
#   - complete-enough 8080 core (BDOS + CBIOS both run)
#   - ports: 0x20/21/22 RAM disk, 0x50/51/52 SPI flash, 0x53/54/55 SD card,
#            0x80/81 UART (console), 0x30 ROM bank
#   - writable SD card model + flash model (persistent across a run)
# Loads cpm/brevia2_cpm.bin at 0xD000 and can call BIOS routines directly
# (set PC to the routine, push a return address, run) or boot the whole system.
import collections, sys

MEM = bytearray(65536)          # bank A (machine RAM)
RAMDISK = bytearray(65536)      # bank B (drive B)
PAGE = bytearray(8)             # page zero

A=B=C=D=E=H=L=0
SP=0xCDF0; PC=0xE600
S=Z=AC=P=CY=0
HALTED=False
stdout=[]
steps=0

# ------------------------------------------------------------------ models
class SDCard:
    BUSY_BYTES = 0     # EMULATED INSTRUCTIONS the card stays busy after a write
                       # (time-based, like real hardware -- NOT per byte clocked)
    DROP_EVERY = 0     # fault injection: silently ignore every Nth command
    DROP_PCT = 0.0     # fault injection: drop this fraction of commands (random)
    TRISTATE_BUSY = False  # busy reads 0xFF instead of 0x00 (MISO floats high)
    FLAKY_BUSY = False     # busy reads a random mix of 0x00/0xFF (floating MISO)
    _rng = 12345
    def __init__(self):
        self.cs = 1
        self.busy_until = 0
        self.data_resp_pending = False
        self.cmds_seen = 0
        self.dropped = 0
        self.tx = []
        self.resp = collections.deque()
        self.acmd = 0
        self.blocks = {}
        self.write_state = None
        self.write_blk = 0
        self.write_buf = bytearray(512)
        self.write_len = 0
        self.write_crc = 0
        self.writes = []          # log of (blk, data) for forensics
        self.cid = bytes([0x40,0x53,0x44,0x42,0x52,0x45,0x56,0x31,0x04,
                          0x53,0x7F,0x80,0x0A,0x05,0x63,0x01])
    def cs_edge(self, cs):
        # A real card starts each transaction with a fresh command frame, aborts
        # any half-received data block when CS# moves, and keeps nothing queued
        # across transactions -- model all three, otherwise a dropped command
        # leaves junk responses that make recovery look impossible.
        if self.cs and not cs:
            self.tx = []
            self.resp.clear()
            self.write_state = None
        elif (not self.cs) and cs:
            self.tx = []
            self.write_state = None
        self.cs = cs
    def _block(self,n): return self.blocks.get(n, bytearray([0xFF]*512))
    def _store(self,n,d):
        self.blocks[n]=bytearray(d)
        self.writes.append((n, bytes(d)))
    def busy_now(self):
        return steps < self.busy_until
    def out(self,b):
        if self.busy_now():      # ignores everything (incl. commands) while programming
            return
        if self.write_state=='token':
            self.tx=[]
            if b==0xFE:
                self.write_state='data'; self.write_len=0; self.write_buf=bytearray(512)
            return
        if self.write_state=='data':
            self.write_buf[self.write_len]=b; self.write_len+=1
            if self.write_len==512: self.write_state='crc'; self.write_crc=0
            return
        if self.write_state=='crc':
            self.write_crc+=1
            if self.write_crc==2:
                self._store(self.write_blk,self.write_buf)
                self.write_state=None
                self.resp.append(0x05)
                # the data-response token is clocked out BEFORE the card goes
                # busy; the busy period starts once that token has been read
                self.data_resp_pending=True
            return
        if self.cs==0:
            self.tx.append(b)
            if len(self.tx)==6:
                self.process(self.tx[0]&0x3F,self.tx); self.tx=[]
    def process(self,cmd,tx):
        if self.DROP_EVERY or self.DROP_PCT:
            self.cmds_seen += 1
            drop = (self.DROP_EVERY and self.cmds_seen % self.DROP_EVERY == 0)
            if self.DROP_PCT:
                self._rng = (self._rng * 1103515245 + 12345) & 0x7FFFFFFF
                drop = drop or ((self._rng / 0x7FFFFFFF) < self.DROP_PCT)
            if drop:
                self.dropped += 1
                return               # command silently ignored: no response at all
        blk=(tx[1]<<24)|(tx[2]<<16)|(tx[3]<<8)|tx[4]
        if cmd==0: self.resp.append(0x01)
        elif cmd==8: self.resp.append(0x01); self.resp.extend([0,0,1,0xAA])
        elif cmd==55: self.resp.append(0x01)
        elif cmd==41:
            self.acmd+=1; self.resp.append(0x00 if self.acmd>=4 else 0x01)
        elif cmd==58: self.resp.append(0x00); self.resp.extend([0xC0,0xFF,0x80,0x00])
        elif cmd==9:
            self.resp.append(0x00); self.resp.append(0xFE); self.resp.extend(self.cid); self.resp.extend([0,0])
        elif cmd==17:
            d=self._block(blk); self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(d); self.resp.extend([0,0])
        elif cmd==24:
            self.resp.append(0x00); self.write_state='token'; self.write_blk=blk
        else: self.resp.append(0x00)
    def read(self):
        if self.busy_now():
            if self.FLAKY_BUSY:
                self._rng = (self._rng * 1103515245 + 12345) & 0x7FFFFFFF
                return 0xFF if (self._rng >> 16) & 1 else 0x00
            return 0xFF if self.TRISTATE_BUSY else 0x00   # busy: low, or floats high
        if self.resp:
            b=self.resp.popleft()
            if self.data_resp_pending and b==0x05:
                self.data_resp_pending=False
                self.busy_until = steps + self.BUSY_BYTES   # programming starts after the token
            return b
        return 0xFF

class Flash:
    """ISSI IS25LD040 byte engine model: each OUT/IN clocks one byte."""
    def __init__(self, size=512*1024):
        self.mem = bytearray([0xFF]*size)
        self.cs = 1
        self.state = 'idle'
        self.cmd = 0
        self.addr = 0
        self.naddr = 0
        self.out_idx = 0
        self.wel = 0
        self.buf = bytearray(256)
        self.bufn = 0
    def sel(self, cs):
        self.cs = cs
        if cs:
            self.state='idle'; self.cmd=0; self.naddr=0; self.out_idx=0
    def xfer(self, b):
        if self.cs: return 0xFF
        st=self.state
        if st=='idle':
            self.cmd=b; self.state='cmd'; return 0xFF
        if st=='cmd':
            c=self.cmd
            if c in (0x03,0x0B,0x20,0xD8,0x02):
                self.addr=(self.addr<<0)|0
                self.naddr=0
                if self.naddr==0: self.addr=0
                self.state='addr'
                self.addr=(b<<16)&0xFF0000
                self.naddr=1
                return 0xFF
            if c in (0x05,0x06,0x04):
                self.state='status'; return 0xFF
            if c in (0xC7,0x60):
                self.mem[:]=b'\xFF'*len(self.mem); self.state='idle'; self.wel=0; return 0xFF
            self.state='idle'; return 0xFF
        if st=='addr':
            c=self.cmd
            if c==0x03:
                if self.naddr==1: self.addr=(self.addr&0xFF0000)|(b<<8); self.naddr=2; return 0xFF
                if self.naddr==2: self.addr=(self.addr&0xFFFF00)|b; self.naddr=3; self.state='read'; return 0xFF
            if c==0x02:
                if self.naddr==1: self.addr=(self.addr&0xFF0000)|(b<<8); self.naddr=2; return 0xFF
                if self.naddr==2: self.addr=(self.addr&0xFFFF00)|b; self.naddr=3;
                self.state='wrdata'; self.bufn=0; return 0xFF
            if c==0x20:
                if self.naddr==1: self.addr=(self.addr&0xFF0000)|(b<<8); self.naddr=2; return 0xFF
                if self.naddr==2:
                    self.addr=(self.addr&0xFFFF00)|b
                    base=self.addr&0xFFFFF000
                    self.mem[base:base+0x1000]=b'\xFF'*0x1000
                    self.wel=0; self.state='idle'
                return 0xFF
            self.state='idle'; return 0xFF
        if st=='read':
            v=self.mem[self.addr & (len(self.mem)-1)]
            self.addr+=1
            return v
        if st=='wrdata':
            self.buf[self.bufn]=b; self.bufn+=1
            if self.bufn==256:
                base=self.addr&~0xFF
                self.mem[base:base+256]=self.buf
                self.addr+=256; self.wel=0; self.bufn=0; self.state='wrdata'
            return 0xFF
        if st=='status':
            # WEL bit0, WIP bit1
            return (self.wel & 1)
        return 0xFF

SD = SDCard()
FL = Flash()

ramptr = 0
rxq = collections.deque()
rom_banked = 0

# ------------------------------------------------------------------ ports
def out_port(port,val):
    global ramptr, rom_banked, SD, FL
    port &= 0xFF
    if port==0x20:
        RAMDISK[ramptr]=val; ramptr=(ramptr+1)&0xFFFF
    elif port==0x21: ramptr=(ramptr&0xFF00)|val
    elif port==0x22: ramptr=((val<<8)|(ramptr&0xFF))&0xFFFF
    elif port==0x50: FL.xfer(val)
    elif port==0x51: FL.sel(val&1)
    elif port==0x52: pass
    elif port==0x53: SD.out(val)
    elif port==0x54: SD.cs_edge(1 if (val&1) else 0)
    elif port==0x81: stdout.append(val)
    elif port==0x30: rom_banked=val&1
    # 0x40 sw / 0x41-0x45 ignore
def in_port(port):
    global ramptr
    port &= 0xFF
    if port==0x20:
        v=RAMDISK[ramptr]; ramptr=(ramptr+1)&0xFFFF; return v
    if port==0x50: return FL.xfer(0xFF)
    if port==0x52: return 0
    if port==0x53: return SD.read()
    if port==0x55: return 0
    if port==0x80:
        # bit0 tx_busy (always 0), bit1 rx_avail
        return 0x02 if rxq else 0x00
    if port==0x81:
        return rxq.popleft() if rxq else 0x00
    if port==0x40: return 0xFF
    return 0

# ------------------------------------------------------------------ 8080 core
def reg_pair(i):
    return ((B<<8)|C, (D<<8)|E, (H<<8)|L, SP)[i]
def set_reg_pair(i,v):
    global B,C,D,E,H,L,SP
    v&=0xFFFF
    if i==0: B,C=v>>8,v&0xFF
    elif i==1: D,E=v>>8,v&0xFF
    elif i==2: H,L=v>>8,v&0xFF
    else: SP=v
def get_r(i): return (B,C,D,E,H,L,0,A)[i]
def set_r(i,v):
    global A,B,C,D,E,H,L
    v&=0xFF
    if i==0: B=v
    elif i==1: C=v
    elif i==2: D=v
    elif i==3: E=v
    elif i==4: H=v
    elif i==5: L=v
    elif i==7: A=v
def get_rm(i): return MEM[(H<<8)|L] if i==6 else get_r(i)
def set_rm(i,v):
    if i==6: MEM[(H<<8)|L]=v&0xFF
    else: set_r(i,v)
def rd(a): return MEM[a&0xFFFF]
WRITE_HOOK=None      # fn(addr,val) on every store
def wr(a,v):
    if WRITE_HOOK: WRITE_HOOK(a&0xFFFF,v&0xFF)
    MEM[a&0xFFFF]=v&0xFF
def rd16(a): return rd(a)|(rd(a+1)<<8)
def wr16(a,v): wr(a,v&0xFF); wr(a+1,(v>>8)&0xFF)
def flags():
    return (0x80 if S else 0)|(0x40 if Z else 0)|(0x10 if AC else 0)|(0x02 if P else 0)|(0x01 if CY else 0)|0x02
def set_flags_arith(v,cy,ac):
    global S,Z,AC,P,CY
    v&=0xFF
    S=1 if v&0x80 else 0; Z=1 if v==0 else 0; AC=ac; CY=cy
    P=1 if bin(v).count('1')%2==0 else 0
def alu(op,src):
    global A
    av=A&0xFF; src&=0xFF
    if op in ('ADD','ADC'):
        c=1 if (op=='ADC' and CY) else 0
        r=av+src+c
        set_flags_arith(r,1 if r>0xFF else 0, ((av&0xF)+(src&0xF)+c)>0xF)
        A=r&0xFF
    elif op in ('SUB','SBB','CMP'):
        b=1 if (op=='SBB' and CY) else 0
        r=av-src-b
        set_flags_arith(r,1 if r<0 else 0, (av&0xF) < ((src&0xF)+b))
        if op!='CMP': A=r&0xFF
    elif op=='ANA':
        r=av&src; set_flags_arith(r,0,1); A=r
    elif op=='XRA':
        r=av^src; set_flags_arith(r,0,0); A=r
    elif op=='ORA':
        r=av|src; set_flags_arith(r,0,0); A=r
def cond(op):
    if op in (0xC2,0xC0,0xC4): return Z==0
    if op in (0xCA,0xC8,0xCC): return Z==1
    if op in (0xD2,0xD0,0xD4): return CY==0
    if op in (0xDA,0xD8,0xDC): return CY==1
    if op in (0xE2,0xE0,0xE4): return P==0
    if op in (0xEA,0xE8,0xEC): return P==1
    if op in (0xF2,0xF0,0xF4): return S==0
    return S==1
def push(v):
    global SP
    SP=(SP-1)&0xFFFF; wr(SP,(v>>8)&0xFF)
    SP=(SP-1)&0xFFFF; wr(SP,v&0xFF)
def pop():
    global SP
    lo=rd(SP); SP=(SP+1)&0xFFFF; hi=rd(SP); SP=(SP+1)&0xFFFF
    return (hi<<8)|lo
def incdec(i,d):
    global AC
    v=get_rm(i); old=v
    v=(v+d)&0xFF
    set_rm(i,v)
    cy=CY
    set_flags_arith(v,cy,1 if ((old&0xF)+(d&0xF))>0xF else 0)
def daa():
    global A,CY,AC
    a=A; cor=0; cy=CY
    if AC or (a&0xF)>9: cor|=0x06
    if CY or a>0x99: cor|=0x60; cy=1
    r=a+cor
    if r>0xFF: cy=1
    A=r&0xFF
    CY=cy
    set_flags_arith(A,CY,AC)

TRACE=None   # optional fn(PC, op) called each step
def step():
    global PC,A,B,C,D,E,H,L,SP,S,Z,AC,P,CY,HALTED,steps
    steps+=1
    op=rd(PC); PC=(PC+1)&0xFFFF
    if TRACE: TRACE(op)
    if op==0x76: HALTED=True; PC=(PC-1)&0xFFFF; return
    if 0x40<=op<=0x7F: set_rm((op>>3)&7, get_rm(op&7))
    elif op in (0x06,0x0E,0x16,0x1E,0x26,0x2E,0x36,0x3E):
        set_rm((op>>3)&7, rd(PC)); PC+=1
    elif op in (0x01,0x11,0x21,0x31): set_reg_pair((op>>4)&3, rd16(PC)); PC+=2
    elif 0x80<=op<=0x87: alu('ADD',get_rm(op&7))
    elif 0x88<=op<=0x8F: alu('ADC',get_rm(op&7))
    elif 0x90<=op<=0x97: alu('SUB',get_rm(op&7))
    elif 0x98<=op<=0x9F: alu('SBB',get_rm(op&7))
    elif 0xA0<=op<=0xA7: alu('ANA',get_rm(op&7))
    elif 0xA8<=op<=0xAF: alu('XRA',get_rm(op&7))
    elif 0xB0<=op<=0xB7: alu('ORA',get_rm(op&7))
    elif 0xB8<=op<=0xBF: alu('CMP',get_rm(op&7))
    elif op in (0xC6,0xCE,0xD6,0xDE,0xE6,0xEE,0xF6,0xFE):
        v=rd(PC); PC+=1
        alu({0xC6:'ADD',0xCE:'ADC',0xD6:'SUB',0xDE:'SBB',0xE6:'ANA',0xEE:'XRA',0xF6:'ORA',0xFE:'CMP'}[op],v)
    elif op in (0x04,0x0C,0x14,0x1C,0x24,0x2C,0x34,0x3C): incdec((op>>3)&7,1)
    elif op in (0x05,0x0D,0x15,0x1D,0x25,0x2D,0x35,0x3D): incdec((op>>3)&7,-1)
    elif op in (0x03,0x13,0x23,0x33): i=(op>>4)&3; set_reg_pair(i,reg_pair(i)+1)
    elif op in (0x0B,0x1B,0x2B,0x3B): i=(op>>4)&3; set_reg_pair(i,reg_pair(i)-1)
    elif op==0x07:
        global CY; c=(A>>7)&1; A=((A<<1)&0xFF)|c; CY=c
    elif op==0x0F: c=A&1; A=(A>>1)|(c<<7); CY=c
    elif op==0x17: c=(A>>7)&1; A=((A<<1)&0xFF)|(1 if CY else 0); CY=c
    elif op==0x1F: c=A&1; A=(A>>1)|(0x80 if CY else 0); CY=c
    elif op in (0x09,0x19,0x29,0x39):
        v=reg_pair(2)+reg_pair((op>>4)&3); set_reg_pair(2,v&0xFFFF); CY=1 if v>0xFFFF else 0
    elif op==0x3A: A=rd(rd16(PC)); PC+=2
    elif op==0x32: wr(rd16(PC),A); PC+=2
    elif op==0x2A: set_reg_pair(2, rd16(rd16(PC))); PC+=2
    elif op==0x22: wr16(rd16(PC), reg_pair(2)); PC+=2
    elif op==0x0A: A=rd((B<<8)|C)
    elif op==0x02: wr((B<<8)|C,A)
    elif op==0x1A: A=rd((D<<8)|E)
    elif op==0x12: wr((D<<8)|E,A)
    elif op==0xEB:
        H,L,D,E=D,E,H,L
    elif op==0xE3:
        t=rd16(SP); wr16(SP,(H<<8)|L); H,L=t>>8,t&0xFF
    elif op==0xF9: SP=(H<<8)|L
    elif op==0xE9: PC=(H<<8)|L
    elif op==0xC3: PC=rd16(PC)
    elif op in (0xC2,0xCA,0xD2,0xDA,0xE2,0xEA,0xF2,0xFA):
        t=rd16(PC)
        if cond(op): PC=t
        else: PC+=2
    elif op in (0xC4,0xCC,0xD4,0xDC,0xE4,0xEC,0xF4,0xFC):
        t=rd16(PC); PC+=2
        if cond(op): push(PC); PC=t
    elif op==0xCD:
        t=rd16(PC); PC+=2; push(PC); PC=t
    elif op==0xC9: PC=pop()
    elif op in (0xC0,0xC8,0xD0,0xD8,0xE0,0xE8,0xF0,0xF8):
        if cond(op): PC=pop()
    elif op in (0xC5,0xD5,0xE5,0xF5):
        v={0xC5:reg_pair(0),0xD5:reg_pair(1),0xE5:reg_pair(2),0xF5:(A<<8)|flags()}[op]
        push(v)
    elif op in (0xC1,0xD1,0xE1,0xF1):
        v=pop()
        if op==0xC1: B,C=v>>8,v&0xFF
        elif op==0xD1: D,E=v>>8,v&0xFF
        elif op==0xE1: H,L=v>>8,v&0xFF
        else:
            A=v>>8
            lo=v&0xFF
            S=1 if lo&0x80 else 0; Z=1 if lo&0x40 else 0; AC=1 if lo&0x10 else 0
            P=1 if lo&0x04 else 0; CY=1 if lo&0x01 else 0
    elif op==0xDB: A=in_port(rd(PC)); PC+=1
    elif op==0xD3: out_port(rd(PC),A); PC+=1
    elif op==0x2F: A^=0xFF
    elif op==0x27: daa()
    elif op==0x37: CY=1
    elif op==0x3F: CY=1-CY
    elif op==0x00: pass
    elif op in (0xFB,0xF3,0x08,0x10,0x18,0x20,0x28,0x30,0x38,0xCB,0xDD,0xED,0xFD):
        pass                      # EI/DI/RIM/SIM/NOP-ish: ignore
    elif 0xC7<=op<=0xFF and (op&7)==7:
        push(PC); PC=op&0x38
    else:
        raise ValueError("unsupported opcode %02X at %04X"%(op,(PC-1)&0xFFFF))

def run(max_steps=5_000_000, until=None):
    n=0
    while n<max_steps and not HALTED:
        if until and until(): break
        step(); n+=1
    return n

def load_bin(path, base=0xD000):
    data=open(path,'rb').read()
    MEM[base:base+len(data)]=data
    return len(data)

# ---- symbol table straight from the assembler listing (never hardcode addrs) ----
import re
def symtab(path='cpm/cbios.prn'):
    d={}
    lab=re.compile(r'^\s*([0-9a-f]{4})(?:\s+[0-9a-f]{2})*\s+(\w+):')
    for line in open(path, errors='replace'):
        m=lab.match(line)
        if m: d[m.group(2)]=int(m.group(1),16)
    return d
import os
SYM=symtab(os.environ.get('CBPRN','cpm/cbios.prn'))
def V(name):
    if name not in SYM: raise KeyError("no symbol %s in cbios.prn"%name)
    return SYM[name]

def call(addr, ret=0xFC00, max_steps=200000):
    """Call a routine: push a return address to a HLT, run until it returns."""
    global SP,PC,HALTED
    MEM[0xFC00]=0x76
    SP=0xCE00
    push(ret); PC=addr
    HALTED=False
    run(max_steps=max_steps, until=lambda: PC==ret and MEM[ret]==0x76)
    return A
