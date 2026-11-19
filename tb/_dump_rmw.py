
import sys
sys.path.insert(0, "tb")
import sdtool_sim as S
import collections
src = open("tb/write_corrupt_sim.py").read()
ns = {"__file__": "tb/write_corrupt_sim.py"}
exec(compile(src.split("def main()")[0], "wcs", "exec"), ns)
BusySD = ns["BusySD"]
S.SD = BusySD()
SD = S.SD
data = open("cpm/brevia2_cpm.bin","rb").read()
for i,b in enumerate(data): S.MEM[0xD000+i]=b
for line in open("tb/pipdrv.hex"):
    line=line.strip()
    if not line.startswith(":"): continue
    b=bytes.fromhex(line[1:]); n=b[0]; addr=(b[1]<<8)|b[2]; typ=b[3]
    if typ==0:
        for i,v in enumerate(b[4:4+n]): S.MEM[addr+i]=v
S.MEM[0xFC00]=0x76
S.SP=0xCE00; S.PC=0x100
steps=S.run(max_steps=1_000_000)
print("steps:", steps, "PC=%04X" % S.PC)
# dump RMWBUF region
rmw = bytes(S.MEM[a] for a in range(0xEF00,0xFF00))
print("RMWBUF first 64:", " ".join("%02X"%b for b in rmw[:64]))
print("RMWBUF @0xF700:", " ".join("%02X"%b for b in rmw[0x800:0x800+32]))
# histogram of nonzero bytes
from collections import Counter
c = Counter(rmw)
print("top bytes:", c.most_common(6))
# find where 00/F6 pattern starts
for i in range(len(rmw)-2):
    if rmw[i]==0x00 and rmw[i+1]==0xF6 and rmw[i+2]==0x00:
        print("00 F6 pattern starts at %04X" % (0xEF00+i)); break
