import sys
mem = {}
for line in open('brevia2_cpm.mem'):
    line = line.strip()
    if line.startswith('@'):
        a = int(line[1:], 16)
    else:
        mem[a] = int(line, 16); a += 1

def dis(a, n):
    I = lambda x: mem.get(x, 0)
    ops = {
        0xcd:('CALL',3),0xc9:('RET',1),0xc3:('JMP',3),0xc2:('JNZ',3),0xca:('JZ',3),
        0xd2:('JNC',3),0xda:('JC',3),0x21:('LXI H',3),0x01:('LXI B',3),0x11:('LXI D',3),
        0x31:('LXI SP',3),0x3e:('MVI A',2),0x06:('MVI B',2),0x0e:('MVI C',2),0xfe:('CPI',2),
        0xe6:('ANI',2),0xd3:('OUT',2),0xdb:('IN',2),0x32:('STA',2),0x3a:('LDA',2),
        0x22:('SHLD',2),0x2a:('LHLD',2),0x78:('MOV A,B',1),0x79:('MOV A,C',1),0x4f:('MOV C,A',1),
        0x7e:('MOV A,M',1),0xb1:('ORA C',1),0xb7:('ORA A',1),0xa7:('AND A',1),0xb9:('CMP C',1),
        0x0b:('DCX B',1),0x13:('INX D',1),0x23:('INX H',1),0x2b:('DCX H',1),0xc1:('POP B',1),
        0xd1:('POP D',1),0xe1:('POP H',1),0xc5:('PUSH B',1),0xd5:('PUSH D',1),0xe5:('PUSH H',1),
        0xf5:('PUSH PSW',1),0x57:('MOV D,A',1),0x5f:('MOV E,A',1),0x47:('MOV B,A',1),
        0x0c:('INR C',1),0x04:('INR B',1),0x05:('DCR B',1),0xaf:('XRA A',1),0x3c:('INR A',1),
        0x3d:('DCR A',1),
    }
    out = []; i = a
    for _ in range(n):
        b = I(i); m = ops.get(b)
        if m:
            name, w = m
            if name in ('CALL','JMP','JNZ','JZ','JNC','JC','LXI H','LXI B','LXI D','LXI SP'):
                s = '%s %04X' % (name, I(i+1)|(I(i+2)<<8)); w = 3
            elif name in ('MVI A','MVI B','MVI C','CPI','ANI','OUT','IN','STA','LDA','SHLD','LHLD'):
                s = '%s %02X' % (name, I(i+1)); w = 2
            else:
                s = name; w = 1
        else:
            s = 'db %02X' % b; w = 1
        out.append('%04X: %s' % (i, s)); i += w
    return out

lo = int(sys.argv[1], 16)
n = int(sys.argv[2], 16)
for l in dis(lo, n):
    print(l)
