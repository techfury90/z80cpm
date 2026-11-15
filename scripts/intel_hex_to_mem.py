#!/usr/bin/env python3
"""Convert an a85 Intel-HEX file to a $readmemh-compatible memory image.

Usage: intel_hex_to_mem.py <in.hex> <out.mem>
Writes a file with '@<hexaddr>' address markers followed by space-separated
data bytes, in $readmemh (@addr) format.
"""
import sys


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


def main():
    if len(sys.argv) != 3:
        print(__doc__)
        sys.exit(1)
    data = parse_intel_hex(sys.argv[1])
    out = []
    cur = -2
    for addr in sorted(data):
        if addr != cur + 1:
            out.append("@%04X" % addr)
        out.append("%02X" % data[addr])
        cur = addr
    with open(sys.argv[2], "w") as fh:
        fh.write("\n".join(out) + "\n")
    print("wrote %d bytes to %s" % (len(data), sys.argv[2]))


if __name__ == "__main__":
    main()
