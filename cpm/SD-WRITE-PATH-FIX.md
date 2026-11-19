# Drive C: (SD card) — WRITE path: what was broken and how it is fixed

Status: **fixed and verified on silicon (2026-11-18)** — `PIP C:=A:*.*` copies
cleanly, `dir c:` is stable, and `SDTOOL F` formats in one pass.
Applies to the CBIOS at commit `356b181` (`cpm/brevia2_cpm.bin`, sha256
`7b30a3e8…c515c638ef`, 7424 B).

Audience: any agent or human touching `cpm/cbios.asm` drive-C code,
`programs/sdtool.s`, the SD SPI driver, or the `CPMIMGLEN` / flash-boot path.

---

## 1. Symptom history (read this before assuming anything)

| Observation | Real cause |
|---|---|
| `pip *c:=a:*.*` copies a file or two, then `Bdos Err On C: Bad Sector` | a command issued while the card was still programming was silently dropped |
| after the error CP/M seemed "corrupted", needed a cold boot | **not** a memory clobber — CP/M 2.2 `errflg` prints the message then falls into `conin` waiting for a key with the FCB/dir state mid-operation |
| a `00 F6 00 F6 …` fill at 0xF700+ | RMWBUF (`0xEF00-0xFEFF`) residue — only a drive-A 4 KB flash RMW fills that far up; nothing writes into the system |
| some writes landed, some did not; a copied .COM "sometimes" ran from C: | every write *was* accepted, but **every sector was written one byte high** (see 2.1); the ones that worked were the ones CP/M read back through the same wrong offset |
| `SDTOOL F` sometimes needed two passes | first write (MBR `C`) left the card busy; the next command was dropped |
| `dir c:` failed intermittently but a retry worked | a read issued inside a busy window (see 2.2) |

---

## 2. The four defects

### 2.1 `SDMAP` computed the in-sector offset with `RLC` (circular) instead of `RAL`

`SDOFF_lo = ((record & 3) << 7) & 0xFF`. `RLC` rotates **circularly**, so bit 7
wraps back into bit 0:

| `record & 3` | wanted | produced |
|---|---|---|
| 0 | `0x0000` | `0x0000` |
| 1 | `0x0080` | `0x0080` |
| 2 | `0x0100` | **`0x0101`** |
| 3 | `0x0180` | **`0x0181`** |

Records 2 and 3 of every 512-byte sector were deblocked **one byte high**. Because
`READS` used the same wrong offset, CP/M round-tripped its own writes, which hid
the bug; the *card* content was shifted, so every directory/data sector written
to C: was silently corrupt to any host-side reader or any fixed CBIOS.

```asm
        XRA     A               ; clear CY (and A)  -- MUST use RAL, not RLC
        MOV     A,B
        RAL                     ; *2 ... 7 x RAL -> ((record&3)<<7) & 0xFF
        STA     SDOFF
```

### 2.2 No "card is ready" handling → dropped commands

A card that is still programming a block drives MISO **low**, so every byte read
returns `00h`. `SD_SEND6` reads R1 as "first byte that is not `0FFh`" — so that
`00h` was accepted as **`R1 = OK`** and the command was thrown away, desyncing
the card. The old write tail also polled busy for only 255 clocks (~80 µs) and
then released CS while the card was still programming.

Added `SD_READY` — clock `0FFh` until a non-busy read, ~0.4 s timeout, preserves
`D`/`H`/`L` (SD_INIT keeps its ACMD41 retry counter in `D`) — called **before
every command** and **before releasing CS** after a write.

### 2.3 The data-response token was discarded

`SD_WRITEBLK` read the response byte and ignored it, so a CRC error or a rejected
write was reported as success and the retry layer never fired.

```asm
        MVI     B,16
SDWB_RSP: IN   SD_DATA          ; 0FFh filler first
        CPI     0FFH
        JNZ     SDWB_GOT
        DCR     B
        JNZ     SDWB_RSP
SDWB_GOT: ANI  1FH             ; 05h = data accepted
        CPI     05H
        JNZ     SDWB_ERR
```

### 2.4 One-shot error handling turned any hiccup into a fatal error

Polling cannot fully solve 2.2: while programming, a card may hold MISO low **or
let it float**, and a floating MISO reads back as `0FFh` — indistinguishable from
idle. Any command landing in that window is dropped, invisibly. So the driver
must be allowed to **retry**, with enough *time* between attempts:

- `READC` / `WRITEC` (reached from the `READ`/`WRITE` dispatchers for `SELBL==2`)
  retry the whole operation up to **6 attempts** (`SDTRIES`).
- `SD_RECOVER` releases CS, waits `SD_RDLY` (**~10 ms**, 65536 iterations), then
  re-runs the full `SD_INIT` handshake and retries.
- `SD_RDLY` matters: `SD_DELAY` (~1.6 ms) was short enough that a 0.8 ms busy
  window outlived the entire retry budget and the copy still died.
- Re-running `SD_INIT` also heals an init that failed at **boot** — `BOOT` calls
  `SD_INIT` and ignores the result, so one bad handshake used to kill drive C for
  the whole session.

Budget: ~60 ms of card time across attempts, plus `SD_READY`'s ~0.4 s wait when
MISO is honest. A card that takes the spec-maximum 250 ms per block *and* floats
its MISO can still surface an error; that is the residual limit.

---

## 3. Related fix: the flash boot image was being burned truncated

`DO_FLASH_BURN` in `programs/diskutil.s` still programmed **26 pages (0x1A00)**
while `CPMIMGLEN` has been **0x1D00** since drive C landed. Everything from
`0xEA09` up — `SPI_PAGE`/`SPI_READBUF`/`SPI_ERASE_SECT`, `FLADDR`, `READB`,
`WRITEB` (drive A:), the DPH/DPB tables, every CBIOS variable — was never
written, so a power-up boot from flash ran a CBIOS whose tail was erased `0xFF`.
Booting via `diskutil C` (RAM) masked it completely.

Fixed to **29 pages**, and the comment now says it must equal `CPMIMGLEN`.
Whenever `CPMIMGLEN` changes, three places must move together:
`cpm/make_combined_hex.py`, `programs/diskutil.s` (EQU **and** burn page count),
`gwmon/smbrevia.asm` (which implies a bitstream rebuild — avoid).

---

## 4. Current build map (CBIOS at `0xE600`, image ends `0xECF2`)

```
READ        E76D    WRITE       E791   dispatchers (SELBL 0=A: flash, 1=B: RAM, 2=C: SD)
SDMAP       E7B5    -> BLKN (32-bit, MSB first) + SDOFF (0/0x80/0x100/0x180)
READC       E806    WRITEC      E81A   retry wrappers (SDTRIES=6)
SDOP_OK     E82E    SD_RECOVER  E830   release CS, SD_RDLY, re-init, retry
READS       E84D    WRITES      E87A   deblock (RMW for writes)
SD_READBLK  E8B1    SD_WRITEBLK E909   CMD17 / CMD24 + 512-byte transfer
SD_READY    E97C    SD_SEND6    E999   idle-wait / command + R1
SD_WAITTKN  E9B6    SD_INIT     E9C7   data token / CMD0-CMD8-ACMD41
SD_DELAY    EA12    SD_RDLY     EA1C   ~1.6 ms / ~10 ms
SELBL EBD0  TRK EBD1  SECN EBD2  DMA EBD3
DIRBUF EC02  DPHC ECC4  DPBC ECE4
SDOFF ED14  BLKN ED16  SDCMDB ED1A  SDTRY ED20   <- scratch, ABOVE CPMIMGLEN (0xED00)
RMWBUF 0xEF00-0xFEFF (aliased as the 512-byte deblock buffer)
```

Deblock: `record = TRK*32 + SECN`; SD block = `SDPLBA(1) + record/4`; byte offset
= `(record & 3) * 128`. Read = 512 B into RMWBUF, copy 128 B out. Write = 512 B
read-modify-write. Ports: data `0x53`, ctl `0x54` (bit0 CS#, bit1 slow), status
`0x55`.

### Identifying which build is loaded (GWMON)

```
d e806 e815
```

- current (retry + 10 ms recovery):
  `3E 06 32 20 ED CD 4D E8 B7 CA 2E E8 CD 30 E8 B7`
- pre-retry (ready-wait only):
  `3E 06 32 16 ED CD 4D E8 B7 CA 2E E8 CD 30 E8 B7`
- pre-deblock-fix builds have no `READC` at all: `d e806` shows read-path code.

Addresses shift whenever code is inserted, so always take symbols from a fresh
`cpm/cbios.prn` (`a85 ... -l cpm/cbios.prn`) — never hardcode them.

---

## 5. Verification harness (runs without the board)

`tb/cpmsys_sim.py` — full-system 8080 simulator: real `cpm/brevia2_cpm.bin`
(CCP+BDOS+CBIOS) in RAM, RAM disk (drive B), SPI-flash model (drive A), writable
SD model (drive C) with
- `BUSY_BYTES` — card stays busy for N **emulated instructions** (time-based!),
- `DROP_PCT` — fraction of commands silently dropped,
- `TRISTATE_BUSY` / `FLAKY_BUSY` — busy MISO reads `0xFF` / a random mix,
- CS# edges clear the command frame and abort a half-received data block.

`tb/test_drive_c.py <busy> <max_steps> <drop> <mode> [image]` boots, runs
`DIR C:` → `PIP C:=A:*.*` (two files) → `DIR C:`, then verifies both copies
**through the CBIOS** and reconstructs them **from the raw card blocks** (the
host-side view is what the old off-by-one broke).

```sh
python3 tb/test_drive_c.py 3000  40000000 0.10 flaky   # hostile, fast card
python3 tb/test_drive_c.py 20000 60000000 0.10 flaky   # hostile, slow card
```

Results that gate this fix:

| image | busy | faults | result |
|---|---|---|---|
| pre-retry | 0.12 ms | 10% drops | FAIL (4 of 61 dropped kills it) |
| current | 0.12 ms | 10% drops | PASS (87/1020 dropped, byte-exact) |
| current | 0.8 ms | 10% drops | PASS (97/1035 dropped, byte-exact) |
| current | — | none | PASS |

Other harnesses: `tb/test_write.py` (128-record write/read sweep + card-content
check), `tb/test_sdmap.py` (prints SDOFF/BLKN per record), `tb/sdtool_sim.py`
(`SD_BUSY=<instructions> python3 tb/sdtool_sim.py <com>` to regression-test
`sdtool.com` against a busy card).

---

## 6. Rules for future changes to this path

1. **Never use `RLC`/`RRC` for a shift that must lose bits** — they are circular.
   `XRA A` + `RAL` (or `RAR`) when a carry must fall out.
2. **Any shift/count/mapping change needs a card-content check**, not just a
   CP/M-level round-trip: READS and WRITES sharing a wrong offset will always
   round-trip and will hide the bug.
3. **Every SD command goes through `SD_SEND6`** (which waits for idle first).
   Do not issue commands from new code paths without it.
4. **A CP/M BIOS must not report a transient as a hard error.** Retry with a
   delay longer than the device's worst-case service time, then fail.
5. **`CPMIMGLEN` has three owners** (make_combined_hex.py, diskutil.s EQU + burn
   pages, gwmon/smbrevia.asm). The image currently ends `0xECF2` — only ~13
   bytes of code headroom before it truncates silently in the pad at `0xED00`.
   Trim code rather than growing it; if it must grow, move the whole
   `CPMIMGLEN` set together and rebuild the bitstream.
6. **Simulator modelling pitfalls that wasted real time**: busy must be
   *time-based* (a per-clocked-byte counter can never drain once the driver stops
   clocking), a *periodic* "drop every Nth" injector is pathological (the retry
   path emits exactly N-1 commands, so the same command is dropped forever), and
   CS# edges must abort the data phase or junk responses leak across
   transactions. Get all three wrong and the sim "proves" recovery is impossible.
7. Verify a suspected CBIOS change by **disassembling the assembled bytes** and
   fingerprinting the loaded image with `d e806 e815` — `a85` reports "No Errors"
   for plenty of wrong code.

---

## 7. Files touched by this fix

| file | change |
|---|---|
| `cpm/cbios.asm` | `SDMAP` RAL fix; `SD_READY`; data-response check; `READC`/`WRITEC`/`SD_RECOVER`/`SD_RDLY` retry layer; `SDTRY` var |
| `programs/sdtool.s` | same `SD_READY` + response check (its `F` needed two passes for the same reason) |
| `programs/diskutil.s` | burn 29 pages, not 26 |
| `cpm/brevia2_cpm.{bin,hex,mem}`, `programs/sdtool.{com,hex}`, `programs/diskutil.{hex}` | rebuilt |
| `tb/cpmsys_sim.py`, `tb/test_drive_c.py`, `tb/test_write.py`, `tb/test_sdmap.py`, `tb/dbg_fault.py`, `tb/sdtool_sim.py` | new / extended verification |
| `HANDOFF-sd-write-corruption.md` | investigation history + results |

Board procedure used to confirm: GWMON `L` the new `diskutil.hex` →
`G 1000` → `C` → XMODEM-send `cpm/brevia2_cpm.bin` (loads RAM **and** burns
flash) → `dir c:` (no reset; `C` jumps into the new CBIOS in RAM) →
`XMODEM R SDTOOL.COM` → `SDTOOL` `I`/`F` → `PIP C:=A:*.*` → `dir c:`.
Do **not** use GWMON `b` to test a new image: that boots the flash copy, which
is only as good as the last burn.
