#!/usr/bin/env python3
# Reproduce the drive C: (SD) write corruption in the 8080 interpreter.
#
# Drives the CBIOS WRITE/READ path (tb/pipdrv.s, loaded at 0x0100) against a
# SIMULATED SD card whose write path models REAL card behavior that the
# sdtool_sim.py model omits:
#   * after the 512 data bytes + CRC, the card needs Nwr byte-times BEFORE it
#     presents the data-response token (MISO high / 0xFF until then);
#   * after the response token, the card holds MISO LOW (reads as 0x00) for
#     the whole programming window (1-5 ms typical, up to 250 ms worst) --
#     ~1500-7500 byte-times at the 12.5 MHz engine bit rate;
#   * commands clocked in while busy are IGNORED.
#
# The busy counter is decremented per 0x53 read (i.e. per byte clocked), which
# matches how a real card's busy window is consumed by host clocking.
#
# Usage: python tb/write_corrupt_sim.py [cpm_image.bin]
import collections, sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import sdtool_sim as S

RESP_DELAY = 2       # byte-times after CRC before the response token appears
BUSY_BYTES = 1500    # ~1 ms of card programming time (>> the 255-byte wait!)

class BusySD:
    """SD model with a realistic post-write busy window."""
    def __init__(self):
        self.cs = 1
        self.blocks = {}
        self.resp = collections.deque()
        self.tx = []
        # write data phase
        self.wstate = None   # None|'token'|'data'|'crc'
        self.wblk = 0
        self.wbuf = bytearray(512)
        self.wlen = 0
        self.wcrc = 0
        # post-CRC response/busy stream
        self.post = None     # {'delay':n, 'busy':n, 'token':True/False}
        self.committed = {}  # blocks latched by an accepted write

    def out(self, byte):
        if self.post is not None:
            return                      # busy (or pre-response): ignore ALL data
        if self.wstate == 'token':
            self.tx = []
            if byte == 0xFE:
                self.wstate = 'data'; self.wlen = 0
            return
        if self.wstate == 'data':
            self.wbuf[self.wlen] = byte; self.wlen += 1
            if self.wlen == 512: self.wstate = 'crc'; self.wcrc = 0
            return
        if self.wstate == 'crc':
            self.wcrc += 1
            if self.wcrc == 2:
                # data accepted: latch it, present the response token, go busy
                self.committed[self.wblk] = bytearray(self.wbuf)
                self.blocks[self.wblk] = bytearray(self.wbuf)
                self.wstate = None
                self.post = {'delay': RESP_DELAY, 'busy': BUSY_BYTES, 'token': True}
            return
        if self.cs == 0:
            self.tx.append(byte)
            if len(self.tx) == 6:
                self.process(self.tx[0] & 0x3F, self.tx)
                self.tx = []

    def process(self, cmd, tx):
        blk = (tx[1]<<24)|(tx[2]<<16)|(tx[3]<<8)|tx[4]
        if cmd == 24:
            self.resp.append(0x00)
            self.wstate = 'token'; self.wblk = blk
        elif cmd == 17:
            self.resp.append(0x00); self.resp.append(0xFE)
            self.resp.extend(self.blocks.get(blk, bytearray([0xFF]*512)))
            self.resp.extend([0x00, 0x00])
        else:
            self.resp.append(0x00)

    def read(self):
        if self.post is not None:
            if self.post['delay'] > 0:
                self.post['delay'] -= 1
                return 0xFF             # MISO high until the card answers
            if self.post['token']:
                self.post['token'] = False
                return 0x05             # data-response token: accepted
            if self.post['busy'] > 0:
                self.post['busy'] -= 1
                return 0x00             # MISO LOW = card busy programming
            self.post = None
            return 0xFF                 # busy done, card idle
        return self.resp.popleft() if self.resp else 0xFF

# ---- wire the busy model into the interpreter ----
SD = BusySD()
S.SD = SD

def load_bin(path):
    data = open(path, 'rb').read()
    for i, b in enumerate(data):
        S.MEM[0xD000 + i] = b

def load_com(path):
    """Parse Intel HEX type-00 records into memory (a85 emits HEX, not .com)."""
    mina = None
    for line in open(path):
        line = line.strip()
        if not line.startswith(':'): continue
        b = bytes.fromhex(line[1:])
        n, addr, typ = b[0], (b[1] << 8) | b[2], b[3]
        if typ == 0:
            for i, v in enumerate(b[4:4+n]):
                S.MEM[addr + i] = v
                mina = addr if mina is None else min(mina, addr)
        elif typ == 1: break
    assert mina == 0x100, "driver not ORG'd at 0x0100 (min addr %04X)" % mina

def main():
    binpath = sys.argv[1] if len(sys.argv) > 1 else 'cpm/brevia2_cpm.bin'
    load_bin(binpath)
    load_com('tb/pipdrv.hex')
    S.MEM[0xFC00] = 0x76
    S.SP = 0xCE00; S.PC = 0x100
    pchist = collections.Counter()
    S.PC_HOOK = lambda pc: pchist.__setitem__(pc, pchist[pc] + 1)
    steps = S.run(max_steps=20_000_000)
    S.PC_HOOK = None
    print("=== image:", binpath, " steps:", steps, " PC=%04X" % S.PC)
    top = pchist.most_common(6)
    if steps >= 20_000_000:
        print("=== STEP CAP HIT; hottest PCs:", [("%04X" % a, n) for a, n in top])
    werr  = [r for r in range(128) if S.MEM[0x200 + r] != 0]
    wbad  = [(r, S.MEM[0x200 + r]) for r in werr]
    rdiff = [r for r in range(128) if S.MEM[0x300 + r] != 0]
    print("=== WRITE errors reported: %d %s" % (len(wbad), wbad[:12]))
    print("=== READBACK mismatches:   %d %s" % (len(rdiff), rdiff[:12]))
    # what actually landed on the card?
    lost, garbled, ok = [], [], 0
    for rec in range(128):
        blk = (rec >> 2) + 1
        off = (rec & 3) * 128
        exp = bytes((rec + j) & 0xFF for j in range(128))
        got = bytes(SD.blocks.get(blk, bytearray([0xFF]*512))[off:off+128])
        if got == exp: ok += 1
        elif got == bytearray([0xFF]*128): lost.append(rec)
        else: garbled.append(rec)
    print("=== on-card: %d good, %d missing, %d garbled %s" % (
        ok, len(lost), len(garbled), garbled[:12]))
    print("=== committed-but-unreachable blocks (latched during busy):",
          sorted(set(SD.committed) - set(SD.blocks)))

if __name__ == '__main__':
    main()
