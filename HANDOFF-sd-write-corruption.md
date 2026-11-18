
## UPDATE (retry layer) — the failure is intermittent: retry, don't poll harder

On the board `dir c:` failed **intermittently** even with the ready-wait. Cause:
a card that is still programming may hold MISO low **or let it float**, and a
floating MISO reads back as `0FFh` -- identical to idle. No amount of readiness
polling can rule out a command landing in that window; it is dropped silently.

Implemented (commit c32bc63 + 356b181):
- `READC`/`WRITEC` wrap the whole drive-C op, up to **6 attempts**.
- Between attempts `SD_RECOVER` releases CS, waits **`SD_RDLY` ~10 ms**, then
  re-runs the full `SD_INIT` handshake (this also heals an init that failed at
  boot -- BOOT ignores SD_INIT's return, so one bad handshake used to kill drive
  C for the session). `SD_DELAY` (1.6 ms) was too short; a 20k-instruction busy
  window outlived the entire retry budget.
- Scratch vars `SDCMDB`/`SDTRY` now sit at 0xED1A/0xED20 (above CPMIMGLEN, in
  the unused gap below RMWBUF). Image ends 0xECF2; ~13 bytes of code headroom
  left, so trim rather than grow.

Current fingerprint (`d e806 e815`): `3E 06 32 20 ED CD 4D E8 B7 CA 2E E8 CD 30 E8 B7`

Simulator results (`tb/test_drive_c.py <busy_instr> <steps> <drop> <mode>`), card
busy is now TIME-based and drops are random:

| image | busy | faults | result |
|---|---|---|---|
| pre-retry c38c8124 | 3000 | 10% drops + flaky MISO | FAIL (4/61 dropped kills it) |
| **7b30a3e8** | 3000 | 10% drops + flaky MISO | PASS (87/1020 dropped, byte-exact) |
| **7b30a3e8** | 20000 | 10% drops + flaky MISO | PASS (97/1035 dropped, byte-exact) |
| **7b30a3e8** | 3000 | none | PASS |

Model-fidelity lessons that cost time: busy must be time-based (a per-clock-byte
counter can never drain once the driver stops clocking), a periodic drop
injector is pathological (retry emits exactly N-1 commands -> same command
dropped forever), and CS# edges must abort the data phase or junk responses leak
across transactions.

---
# HANDOFF — SD drive C: WRITE path corruption — **RESOLVED** (sim-verified)

Two independent defects in the WRITE path. Both were reproduced deterministically
in a new full-system simulator (`tb/cpmsys_sim.py` + `tb/test_drive_c.py`), fixed,
and re-verified. **Board confirmation still pending** (build below).

## Root cause 1 — deblock sector offset was off by one (silent card corruption)

`SDMAP` computed `SDOFF_lo = ((record & 3) << 7)` with **`RLC`**, which is a
*circular* rotate: bit 7 wraps back into bit 0. So

| record & 3 | SDOFF wanted | SDOFF produced |
|---|---|---|
| 0 | `0x0000` | `0x0000` |
| 1 | `0x0080` | `0x0080` |
| 2 | `0x0100` | **`0x0101`** |
| 3 | `0x0180` | **`0x0181`** |

Records 2 and 3 of every 512-byte sector were deblocked **one byte high**.
Because READS used the same wrong offset, CP/M round-tripped its own writes — which
is exactly why "a copied file can SOMETIMES run from C:". But the *card* content
was shifted: the byte at offset `0x100` kept its stale value and everything after
drifted, so every directory/data sector written to C: was silently corrupt to any
host-side reader (and to any later fixed CBIOS).

Fix: `XRA A` (clear CY) + 7 × **`RAL`** (rotate through carry) in `SDMAP`.

Evidence: `tb/test_write.py` writes 128 records through the CBIOS and compares the
card. Before: "block 1 offset 256 wrong: ff020304..." (data at 0x101). After:
"SDOFF 0x0100/0x0180", "SD card content matches the deblock mapping: True".

## Root cause 2 — no busy/ready handling on the SD bus ("Bad Sector" + flaky format)

A card that is still programming a block drives MISO **low**, so every byte read
returns `0x00`. `SD_SEND6` reads the R1 byte with `CPI 0FFH / JNZ done`, i.e. it
accepts that `0x00` as **"R1 = OK"** and the command is silently dropped —
desyncing the card's stream. On top of that the old write tail only polled busy
for 255 clocks (~80 µs) and then released CS, far short of the SD spec's 250 ms
worst-case block programming time.

Sequence that produces the reported failure: CMD24 accepted → 512B written → CS
released while the card is still programming → the *next* command (the CMD17 of the
following RMW, or the directory read) is fed into a busy card → garbage/`0FFh` R1 →
BIOS WRITE returns `0FFh` → **`Bdos Err On C: Bad Sector`**, with some writes
having landed and others not.

Same defect in `programs/sdtool.s`: the first write (MBR `C`) succeeds, then every
subsequent command fails → `F` (format) has to be run **twice**. Reproduced:
old `sdtool.com` against a realistically busy card prints `INIT ok`,
`MBR written`, then `NO CARD / init failed` for every following command.

Fix (both `cpm/cbios.asm` and `programs/sdtool.s`):
- new **`SD_READY`**: clock `0FFh` until the card is not busy, 4 × 65536 reads
  (~0.4 s @ 25 MHz) timeout; preserves D/H/L (SD_INIT keeps its ACMD41 retry
  counter in D).
- `SD_SEND6` calls `SD_READY` **before** every command.
- `SD_WRITEBLK(N)` now actually **checks the data-response token** (`& 1Fh == 05h`)
  instead of discarding it, then calls `SD_READY` **before** releasing CS.

## About the "00 F6" fill and the "corrupted CP/M"

Not a memory-clobber. Instrumented the whole PIP copy for stores into the CCP
(`0xD000-0xD7FF`) and CBIOS code (`0xE600-0xEB00`): the only writes are the CCP's
own stack (`0xD7A7-0xD7AA`) and `FBADDR`. Nothing writes into the system.
`0xF700+` is inside RMWBUF (`0xEF00-0xFEFF`) — buffer residue, not corruption;
only a drive-A 4 KB flash RMW fills that far up. What looks like a dead system
after the error is CP/M 2.2's `errflg`, which prints the message and then **drops
into `conin`** waiting for a key, with the FCB/dir state left mid-operation — a
cold boot is the only clean way out.

## Verification (simulator, `tb/cpmsys_sim.py`)

Faithful 8080 core + real CCP/BDOS/CBIOS image + writable SD model that models
programming busy (data-response token first, *then* MISO low) + SPI-flash model
for drive A + console input queue. `python3 tb/test_drive_c.py <busy_clocks> <max_steps>`:
boots, `DIR C:`, `PIP C:=A:*.*` (two files), `DIR C:`, then reads both files back
through the CBIOS **and** reconstructs them from the raw card blocks.

```
A>PIP C:=A:*.*
COPYING -
PIP.COM
ED1.COM
A>DIR C:
C: PIP      COM : ED1      COM
=== disk error reported: False
PIP.COM  CBIOS read-back: byte-exact   host view of card: byte-exact
ED1.COM  CBIOS read-back: byte-exact   host view of card: byte-exact
=== RESULT: PASS
```

Same run on the old image: `COPYING - PIP.COM` then `Bdos Err On C: Bad Sector`
(busy ≥ 300 clocks), and with a non-busy model the copy "succeeds" but the host
view of the card is `CORRUPT` (root cause 1).

## Build pushed to the board

| file | bytes | sha256 |
|---|---|---|
| `cpm/brevia2_cpm.bin` | 7424 | `c38c8124f0136766e4ac56e4407182441f0e343b1d1fd843e74a292a4b3a5cf1` |
| `programs/sdtool.com` | 1761 | `319f2e90965f9cc0248913b2a6d193cb6723e519fb9cdf144e1e29d0bc70b5d3` |

CBIOS now ends at `0xECA1` (was `0xEC9F`), still inside `CPMIMGLEN 0x1D00`, so
`make_combined_hex.py`, `diskutil.s` and `gwmon/smbrevia.asm` are unchanged.

## Board procedure (must reformat: old writes left every sector misaligned)

1. `G 1000` → `C` → XMODEM-send `cpm/brevia2_cpm.bin` (loads + burns flash), cold boot.
2. `XMODEM R SDTOOL.COM` → send `programs/sdtool.com` (lands on drive A:).
3. `SDTOOL` → `I` (init ok) → `C` (create MBR, only if the card has none) → `F`.
   `F` must succeed **first time** now; `DIR C:` must show `No File` and `STAT C:`
   ~500 K free.
4. `PIP C:=A:*.*` — no `Bad Sector`; `DIR C:` lists every file.
5. Optional: run a copied `.COM` from `C:` (e.g. `C:PIP` or `C:SDTOOL`).

## Files
- `cpm/cbios.asm` — `SDMAP` (RAL), `SD_READY`, `SD_WRITEBLK` response check.
- `programs/sdtool.s` — same two fixes; `programs/sdtool.com`/`.hex` rebuilt.
- `tb/cpmsys_sim.py` — full-system simulator (CPU, RAM disk, flash, SD, UART).
- `tb/test_drive_c.py` — end-to-end regression (boot → DIR → PIP → verify).
- `tb/test_write.py` — 128-record write/read sweep + card-content check.
- `tb/test_sdmap.py` — prints SDOFF/BLKN per record.
- `tb/sdtool_sim.py` — now models card busy (`SD_BUSY=<read clocks>`).

The original investigation notes are kept below for context.

---
# HANDOFF — SD drive C: WRITE path corruption (fresh investigation)

Goal: get the SD (drive C:) to a fully working CP/M disk.  READS and directory
listing now work, but WRITING (a PIP copy to C:) fails with "Bdos Err On C: Bad
Sector" and CORRUPTS the in-memory CP/M system.  This handoff is for a fresh
investigation — do not re-derive the format or the read path (those are done).

## Current state (WORKING — do not redo)
- SD card initializes (CMD0/CMD8/ACMD41), drive C: exists, `dir c:` shows clean
  "No File", `stat c:` reports ~500k free.  Reads and directory listing work.
- The format bug was FIXED (commit 0747595): sdtool's 'F' only filled 256 bytes
  of the 512-byte buffer (a `MVI B,0; DCR B` wrap), leaving the upper half of
  every directory sector as stale bytes -> phantom 'S~' dir entries.  Fixed to a
  16-bit count.  A clean format produces fully-0xE5 directory sectors.
- SD driver (SD_INIT/SD_SEND6/SD_WAITTKN/SD_READBLK/SD_WRITEBLK) + deblock were
  ported from the validated SDPROBE/SDTOOL; READS maps a 128-byte BDOS record to
  SD block (SDPLBA + rec/4) at byte offset (rec&3)*128.

## Remaining bug (NOT FIXED — investigate THIS)
- `pip`  `*c:=a:*.*`  copies a couple of files (PIP.COM, STAT.COM print
  "COPYING -") then dies with **"Bdos Err On C: Bad Sector"**.
- After that, CP/M is **corrupted** and needs a cold boot.  A copied file (PIP
  from C:) can SOMETIMES run from C:, i.e. some writes DO land.
- A memory dump around 0xF700-0xF9FF+ shows a **constant `00 F6 00 F6 ...` fill**
  (this is inside the **RMWBUF region 0xEF00-0xFEFF**).  The user recognized this
  "00 F6 fill" from **earlier SPI RMW-buffer-related clobbering** — a strong
  smell that the deblock/RMW buffer aliasing is involved.
- Hints from the user:
  - Reformatting in sdtool sometimes has to be done TWICE (the first 'F' can
    fail) — the write path is flaky.
  - After reboot + delete PIP's temp file + copy a new file -> corruption again.
  - "There seems to be a file size variable with PIP.  Maybe we do have a buffer
    conflict?"  (i.e. suspect a buffer/pointer collision with the Linux... rather
    a CP/M buffer/PIP internal variable.)
  - The cpuville page's notable bug is a **SECTRAN sector-translation mismatch**
    (directory reads land on the wrong sector due to a bad translation table).
    NOTE: our CBIOS SECTRAN is identity (no translation), so that specific bug
    LIKELY does NOT apply — but the analogous concern is the correctness of our
    deblock mapping; confirm it if the write still mismaps.

## Key technical facts
- Memory: CCP 0xD000, BDOS 0xD800, CBIOS 0xE600; CBIOS vars ~0xEB00-0xECA0
  (DIRBUF 0xEB82, DMA 0xEB53, SDOFF 0xEC94, BLKN 0xEC96, SDCMDB 0xEC9A).
- **RMWBUF 0xEF00-0xFEFF** — used by the flash drive-A write RMW (4KB), AND now
  ALIASED as the SD deblock sector buffer (512B).  Drive A writes and drive C
  accesses never occur at the same time, so the alias was assumed safe.
- SD deblock (cbios.asm READS/WRITES): record = TRK*32 + SECN;
  SD block = SDPLBA(1) + record/4;  in-sector offset = (record & 3) * 128.
  READ  = read 512B SD block into RMWBUF, copy 128B at offset -> DMA.
  WRITE = read 512B SD block into RMWBUF, overlay 128B from DMA at offset,
          write the 512B block back.
- SDPLBA = 1 (partition LBA from the sdtool MBR).  SD data 0x53, ctl 0x54
  (bit0 CS#, bit1 slow), status 0x55.  SD DPB: SPT=32, BSH=4 (2KB blocks),
  DSM=251 (single-DM), DRM=127, AL0=0xC0, OFF=0.  CPMIMGLEN 0x1D00 (image 7424B).

## Suspects to investigate (in priority order)
1. **The write-back / Bad Sector**: SD_WRITEBLK returns an error to the BDOS.
   Audit SD_WRITEBLK's data-response read (expect 0x05) and the busy-wait
   (`IN SD_DATA; ANI 01H; JNZ done`).  A wrong busy-poll (e.g. exiting on the
   data-response byte's bit0 instead of the actual busy state) or an error return
   would yield exactly "Bad Sector" on every write.  This is the most likely
   direct cause of the error message.
2. **RMWBUF aliasing -> system corruption**: The deblock writes into RMWBUF
   (0xEF00-0xFEFF).  That region is above the system (0xD000-0xECA0), so it
   should NOT corrupt CP/M — yet CP/M dies.  Two ways it could:
   (a) the SD op writes OUTSIDE RMWBUF (a bad address/offset) into the system;
   (b) the DMA pointer for the copy/overlay is wrong, so the CBIOS writes the
   record to a system-area address instead of the intended DMA/DIRBUF.
   Dump BOTH the system area (0xD000-0xECA0) and the RMWBUF region after a
   failed write to see the real extent of the clobber.
3. **The "00 F6" data**: determine whether the SD READ returns 0x00/0xF6 into
   RMWBUF (bad block/offset in the read) or the WRITE writes 0x00/0xF6 source
   bytes into RMWBUF.  0xF6 = ORI opcode / 0x00 = NOP — could be leftover code
   or file data.  Check the SD block contents on the card after a write vs what
   the CBIOS should have written.
4. **PIP buffer conflict (user's hint)**: check whether PIP's internal buffer or
   the file-size variable overlaps RMWBUF or a CBIOS buffer.  PIP runs in the TPA
   (loaded at 0x0100), so it shouldn't reach 0xEF00 unless its fcb/buffer or the
   DMA is positioned high.  Verify the DMA address PIP uses and the CBIOS DMA var.

## How to reproduce & instrument (on the board)
- Format the SD clean (sdtool `c` then `f`; may need the format twice per the
  flaky hint), then `pip *c:=a:*.*`.  After the "Bad Sector", use GWMON `d` to
  dump 0xD000-0xEFFF (system) and 0xF000-0xFEFF (RMWBUF) to find the clobber.
- Add PRTDBG-style trace (or a temporary print) in READS/WRITES/SD_WRITEBLK to
  log BLKN, SDOFF, the DMA pointer, and the SD_WRITEBLK return value at each step
  — the user's preferred loop is add-trace-prints-and-run.

## Related files
- cpm/cbios.asm — READS / WRITES / SDMAP / SD_READBLK / SD_WRITEBLK + DPBC.
- programs/sdtool.s, programs/sdprobe.s — SD drivers + format/MBR.
- tb/sdtool_sim.py — a WRITABLE SD model; EXTEND it to reproduce the write
  corruption (an SD_WRITEBLK that returns error / a bad offset) before touching
  the board.  This is the fastest way to reproduce a failing write.
- cpm/brevia2_cpm.bin (7424B) — the current boot image.

## Verdict / where I left off
READ the description of this bug as-is; the write path (SD_WRITEBLK error return
or the RMWBUF/DMA aliasing corruption) is the prime suspect.  The deblock
mapping and the read path are verified correct — do not re-audit them unless the
write evidence points there.
