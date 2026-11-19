#!/usr/bin/env python3
"""Combine the DR CP/M 2.2 CCP, BDOS and the assembled CBIOS into one Intel HEX
file for the GWMON-80 'L' command.

The resulting image is laid out at the CP/M 2.2 64K addresses:
    0xD000  CCP   (2048 bytes)
    0xD800  BDOS  (3584 bytes)
    0xE600  CBIOS (assembled cbios.hex)
and is emitted as well-formed Intel HEX records in ascending address order.
"""
import sys, os

def parse_intel_hex(path):
    data = {}
    with open(path, "r") as fh:
        for line in fh:
            line = line.strip()
            if not line or line[0] != ":":
                continue
            n = int(line[1:3], 16)
            addr = int(line[3:7], 16)
            rectype = int(line[7:9], 16)
            bytes_ = [int(line[9 + i * 2:11 + i * 2], 16) for i in range(n)]
            csum = int(line[9 + n * 2:11 + n * 2], 16)
            total = (n + ((addr >> 8) & 0xFF) + (addr & 0xFF) + rectype
                     + sum(bytes_) + csum)
            assert total % 256 == 0, "bad checksum in " + line
            if rectype == 0x00:
                for i, b in enumerate(bytes_):
                    data[addr + i] = b
            elif rectype == 0x01:
                break
    return data

def bin_to_dict(path, base):
    d = {}
    with open(path, "rb") as fh:
        b = fh.read()
    for i, x in enumerate(b):
        d[base + i] = x
    return d

def write_hex(path, data, recsize=16):
    """Emit Intel HEX records in ascending address order."""
    addrs = sorted(data)
    # group contiguous addresses into records of <= recsize bytes
    lines = []
    i = 0
    while i < len(addrs):
        a = addrs[i]
        # gather up to recsize contiguous bytes
        run = [a]
        j = i + 1
        while j < len(addrs) and addrs[j] == addrs[j-1] + 1 and len(run) < recsize:
            run.append(addrs[j])
            j += 1
        rec = bytes(data[x] for x in run)
        n = len(rec)
        out = ":"
        out += "%02X" % n
        out += "%04X" % a
        out += "00"
        out += rec.hex().upper()
        csum = (n + ((a >> 8) & 0xFF) + (a & 0xFF) + sum(rec)) & 0xFF
        out += "%02X" % ((0x100 - csum) & 0xFF)
        lines.append(out)
        i = j
    lines.append(":00000001FF")
    with open(path, "w") as fh:
        fh.write("\n".join(lines) + "\n")
    print("wrote %d bytes across %d records to %s" % (len(data), len(lines)-1, path))

base = os.path.dirname(os.path.abspath(__file__))
ccp = bin_to_dict(os.path.join(base, "cpm22", "ccp.bin"), 0xD000)
bdos = bin_to_dict(os.path.join(base, "cpm22", "bdos.bin"), 0xD800)
cbios = parse_intel_hex(os.path.join(base, "cbios.hex"))

# basic sanity checks
cmin, cmax = min(cbios), max(cbios)
assert cmin == 0xE600, "CBIOS does not start at 0xE600"
assert cmax < 0x10000, "CBIOS runs past 0xFFFF"
assert max(ccp) + 1 == min(bdos), "gap between CCP and BDOS"
assert max(bdos) + 1 == min(cbios), "gap between BDOS and CBIOS"
print("CCP  : 0x%04X-0x%04X (%d bytes)" % (min(ccp), max(ccp), len(ccp)))
print("BDOS : 0x%04X-0x%04X (%d bytes)" % (min(bdos), max(bdos), len(bdos)))
print("CBIOS: 0x%04X-0x%04X (%d bytes)" % (cmin, cmax, len(cbios)))

# ensure no overlaps
assert not (set(ccp) & set(bdos)), "CCP/BDOS overlap"
assert not (set(ccp) & set(cbios)), "CCP/CBIOS overlap"
assert not (set(bdos) & set(cbios)), "BDOS/CBIOS overlap"

image = {}
image.update(ccp); image.update(bdos); image.update(cbios)

# a85 omits zero bytes from the CBIOS HEX (e.g. the DPB/variable area), leaving
# internal gaps. The diskutil 'C' command loads a contiguous raw .bin straight
# into machine RAM, so pad every gap with 0x00 (matching the .mem/sim, which
# initialize unused SRAM to 0). Emit BOTH the .hex and the .bin from this same
# contiguous image so they never diverge.
lo, hi = min(image), max(image)
full = {a: image.get(a, 0x00) for a in range(lo, hi + 1)}   # fill gaps with 0
write_hex(os.path.join(base, "brevia2_cpm.hex"), full)

# Raw .bin: contiguous bytes from 0xE400 (CCP) to end of CBIOS. This is exactly
# what diskutil's 'C' command receives over XMODEM: it loads sequentially into
# machine RAM from 0xE400, then cold-boots CP/M. No address header; the fixed
# CP/M layout defines where each block goes.
bin_bytes = bytes(full[a] for a in range(lo, hi + 1))
with open(os.path.join(base, "brevia2_cpm.bin"), "wb") as fh:
    fh.write(bin_bytes)
print("wrote brevia2_cpm.bin: %d bytes from 0x%04X to 0x%04X"
      % (len(bin_bytes), lo, hi))

print("OK: combined image is contiguous 0x%04X-0x%04X" % (lo, hi))
