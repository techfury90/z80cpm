import serial, time, sys

PORT = 'COM4'
BAUD = 115200

_started = None
def open_serial():
    global _started
    s = serial.Serial(PORT, BAUD, timeout=0.4)
    return s

def send(s, text, pause=0.35):
    s.reset_input_buffer()
    s.write(text.encode() if isinstance(text,str) else text)
    time.sleep(pause)

def read_until(s, marker, timeout=4.0, echo_marker=True):
    data = b''
    end = time.time()+timeout
    while time.time() < end:
        try:
            ch = s.read(1)
        except Exception as e:
            # nonblocking-ish
            continue
        if ch:
            data += ch
            if marker.encode() in data:
                return data
        else:
            time.sleep(0.02)
    return data

def cmd(s, text, marker=b'|', timeout=4.0):
    """Send a command and read until the prompt marker returns."""
    send(s, text)
    return read_until(s, marker, timeout)

# ---------- GWMON memdump parse ----------
def parse_bytes(text):
    """Parse hex byte tokens from a monitor dump like '00 11 22 ...'."""
    import re
    toks = re.findall(r'[0-9A-Fa-f]{2}', text)
    return bytes(int(t,16) for t in toks)
