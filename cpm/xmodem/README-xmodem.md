# Martin XMODEM for CP/M (this port)

XMODEM.COM (4224 bytes) loads at 0x0100 (standard CP/M transient).
It drives the CBIOS console (CONIN/CONOUT, i.e. the UART) directly via the
WBOOT-derived BIOS base, and reads the BDOS addr from page-zero to size its
buffer under the BDOS, so it runs in the TPA on this port.

Usage (default /X0 = console):
  XMODEM R FILE   - receive FILE via XMODEM (initiate with NAK/CRC)
  XMODEM S FILE   - send FILE via XMODEM
  XMODEM          - interactive; prompts for direction/filename
Do the other side (send/receive) in the host terminal (Tera Term) XMODEM.
On the console, ^C aborts.

If console mode is too slow / the transfer sees ^C issues, use direct I/O:
  XMODEM /X2 /P80 81 <op> <file>   (status 0x80, data 0x81; may need a bit-mask)
See XMODEM.ASM / XMODEM.CFG for /P and timing (/X0, /X1=RDR/PUN, /X2=direct,
/X3=custom).
