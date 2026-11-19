RMFLAGS		= -f

ASM		= a85
RM		= rm

all: 8085r1 8085r3 8085r4 certek2 cpm80 cscc imsai1 mai mits1 mits2 mits3 rp sds100 sds200 sol201 subb tdlsmb vgzcb

8085r1: sm8085r1

sm8085r1:
	$(ASM) sm8085r1.asm -o sm8085r1.hex -l sm8085r1.prn

8085r3: sm8085r3

sm8085r3:
	$(ASM) sm8085r3.asm -o sm8085r3.hex -l sm8085r3.prn

8085r4: sm8085r4

sm8085r4:
	$(ASM) sm8085r4.asm -o sm8085r4.hex -l sm8085r4.prn

certek2: smcertk2

smcertk2:
	$(ASM) smcertk2.asm -o smcertk2.hex -l smcertk2.prn

cpm80: smcpm80

smcpm80:
	$(ASM) smcpm80.asm -o smcpm80.hex -l smcpm80.prn

cscc: smcscc

smcscc:
	$(ASM) smcscc.asm -o smcscc.hex -l smcscc.prn

imsai1: smimsai1

smimsai1:
	$(ASM) smimsai1.asm -o smimsai1.hex -l smimsai1.prn

jadebigz: smjadebz

smjadebz:
	$(ASM) smjadebz.asm -o smjadebz.hex -l smjadebz.prn

mai: smmai

smmai:
	$(ASM) smmai.asm -o smmai.hex -l smmai.prn

mits1: smmits1

smmits1:
	$(ASM) smmits1.asm -o smmits1.hex -l smmits1.prn

mits2: smmits2

smmits2:
	$(ASM) smmits2.asm -o smmits2.hex -l smmits2.prn

mits3: smmits3

smmits3:
	$(ASM) smmits3.asm -o smmits3.hex -l smmits3.prn

rp2350: smrp2350

smrp2350:
	$(ASM) smrp2350.asm -o smrp2350.hex -l smrp2350.prn

sds100: smsds100

smsds100:
	$(ASM) smsds100.asm -o smsds100.hex -l smsds100.prn

sds200: smsds200

smsds200:
	$(ASM) smsds200.asm -o smsds200.hex -l smsds200.prn

sol201: smsol201

smsol201:
	$(ASM) smsol201.asm -o smsol201.hex -l smsol201.prn

subb: smsubb

smsubb:
	$(ASM) smsubb.asm -o smsubb.hex -l smsubb.prn

tdlsmb: smtdlsmb

smtdlsmb:
	$(ASM) smtdlsmb.asm -o smtdlsmb.hex -l smtdlsmb.prn

vgzcb: smvgzcb

smvgzcb:
	$(ASM) smvgzcb.asm -o smvgzcb.hex -l smvgzcb.prn

clean:
	$(RM) $(RMFLAGS) *.hex *.prn

distclean: clean
