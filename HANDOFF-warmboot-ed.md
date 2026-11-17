# Handoff — Investigate the ^C warm-boot breakage and the ED.COM default-drive bug

> **RESOLVED (2026-11-17) — the port is healthy; neither symptom is a regression.**
> No code fix was needed. Investigation result:
> 1. **ED default-drive bug** → *not the port.* ED resolves a no-drive FCB via **BDOS
>    func25 (`curdsk`)**, not page-zero 0x0004. An on-silicon probe (`programs/diag.com`)
>    confirmed `curdsk=CUR=00` (healthy), and `ED1 TEST.TXT` (no drive) works. The
>    `Bdos Err On H/L/M: Select` + hang was the **deramp "Original Source" `ED.COM`**
>    build — it's flaky; **`ED1.COM`** (the other deramp build, now in `cpm/ED1.COM`)
>    works on both default and explicit drives. **Use ED1.COM.**
> 2. **^C warm-boot breakage** → *not a regression.* Repeated `^C` leaves all files
>    intact, `B:` switches, `dir b:` works. The earlier `NO FILE` was stale state
>    left by the wedged editor, not the relocation (`b2bb81b`). Test on a FRESH cold
>    boot (diskutil `C`) before blaming code.
> 3. **0x0004 prime suspect** → *refuted.* `ccp.asm` `saveuser`/`setdiska` DO write
>    0x0004 (`sta diska`); the earlier grep only matched the literal `0004h`, missing
>    the `diska` symbol. ED doesn't read 0x0004 anyway.
>
> Keep the rest below as the general CP/M structure reference.

**Task for the next worker:** Two symptoms appeared on silicon after the CP/M
system was relocated (commit `b2bb81b`). They are almost certainly NOT caused by
the relocation logic (DIR/STAT/SAVE all work), but they need real investigation.
The current-drive page-zero convention is the prime suspect and may be ONE root
cause behind BOTH symptoms. Investigate, do not assume — and note the user's own
observation ("this could have always been present", i.e. possibly a pre-existing
port bug, not a regression).

**Current build facts (do not re-litigate):**
- System relocated: CCP=0xD000, BDOS=0xD800, CBIOS=0xE600-0xEA0C, drive-B RMW
  buffer at 0xEF00-0xFEFF (above the system, below GWMON's reserved 0xFF00).
- Boot: GWMON `L` + paste `cpm/brevia2_cpm.hex` + `G E600` (or diskutil `C`).
- CBIOS: `WBOOT` at BIOS+3 (0xE603); page-zero 0x0000=JP WBOOT, 0x0005=JP BDOS.

---

## Symptom 1 — ED.COM default-drive bug

Reproduced on silicon (both drive A: and drive B: show it):

```
A>ed lol.txt
NEW FILE
DISK OR DIRECTORY FULL
Bdos Err On L: Select
Bdos Err On M: Select
```

- **`ED LOL.TXT`** (no drive spec) → "Bdos Err On L:/M: Select" + ED's
  "DISK OR DIRECTORY FULL". 
- **`ED B:LOL.TXT`** (explicit drive) → **works** (user confirmed).
- "On L/M" means the BDOS attempted `SELDSK` for drive **11/12** (L/M) — drives
  that do not exist. So the default-drive path resolves to a **garbage high
  drive number instead of the current drive.**

## Symptom 2 — ^C warm boot makes both drives non-functional

```
A>dir
A: ED       COM : LOL      TXT : LOL      $$$
A>^C
A>dir
NO FILE
```

- After `^C` (warm start → WBOOT), **both A: and B: become unusable** — `dir`
  reports "NO FILE" even though the files are present, and file ops fail/Select.
- **Cold boot (`G E600`) recovers and the data is still there** → it is NOT data
  loss; the *directory read / drive login* is broken after WBOOT. The directory
  contents and data blocks are intact.
- WBOOT only reloads the CCP/BDOS from the RAM-disk system tracks (0x0000/0x0800)
  and re-enters the CCP; it does not (re)format or touch the user directory, so
  the data surviving a cold boot is expected — the failure is in the read path
  or drive state after WBOOT.

---

## Prime suspect: un-maintained page-zero current-drive byte (0x0004)

- `cpm/cpm22/ccp.asm` line ~86: **`diska equ 0004h   ;disk address for current disk`**
- **A repo-wide grep for writes to 0x0004 found ONLY this EQU — nothing ever
  stores the current drive to 0x0004.** (The CCP uses its own `cdisk`/`sdisk`;
  the BDOS uses its internal `curdsk`. Function 25/`curdsk` is maintained, but the
  **page-zero byte 0x0004 is never written.**)
- CP/M 2.2 convention: the *current drive number* is published at page-zero
  **0x0004**. Several utilities/programs read it directly instead of calling
  BDOS function 25. If 0x0004 is stale/garbage (e.g. 0x0B/0x0C), a program that
  reads it and treats it as the drive number will SELDSK drive L/M → exactly the
  "Bdos Err On L/M: Select" seen with ED.

**ACTION — verify, don't assume:** read `diska` usage in `ccp.asm` and confirm
0x0004 is genuinely never maintained, then confirm the CP/M convention (0x0004 =
current drive). If confirmed, the fix is to make the system maintain 0x0004:
BOOT/CBIOS logic should set 0x0004, and it must be updated whenever the current
drive changes (CCP `setdiska`/`select`, and the BDOS curdsk updates).

---

## Suggested investigation (ordered)

### A. ED default-drive bug
1. Fetch the ED source: **https://deramp.com/downloads/digital_research/Software/CPM%202.2/Original%20Source/ED.PLM**
   — find exactly how ED resolves the drive when none is given (does it read
   page-zero 0x0004, call BDOS func25, or assume the FCB drive byte is set?).
2. Confirm whether ED reads 0x0004. If yes, that proves the un-maintained
   current-drive byte is the cause, and fixing 0x0004 fixes ED.
3. Cross-check the FCB drive byte the CCP builds for `ED LOL.TXT` (should be 0 /
   default) vs `ED B:LOL.TXT` (should be 2). Verify the CCP's `comfcb` setup.

### B. ^C warm-boot drive breakage
1. Dump page-zero 0x0000-0x0005 and the relevant BDOS/CCP drive state **before**
   and **after** a `^C` (use diskutil's `M` = CPU memdump, bank A, or GWMON `d`).
   - Is 0x0004 garbage after WBOOT? Is `curdsk`/the DPH `scratch` (cdrmax/curtrk/
     currec) in a bad state?
2. Check whether WBOOT needs to reset the BDOS drive-login state (`dlog`/`curdsk`
   / the allocation vector) — standard CP/M resets `dlog` on warm start via the
   CCP's BDOS function 13 call or the system reset. Confirm the reloaded BDOS
   actually logs the drive in on first access.
3. Verify the **WBOOT reload path** copies a clean CCP/BDOS from the RAM-disk
   system tracks. If `dir` returns "NO FILE" while the SAME `dir` worked before
   the ^C, the CCP/BDOS copy or the BDOS login is the problem, not the disk data.
4. Consider whether the warm-boot breakage and the ED bug share the root cause
   (the current-drive convention / drive-state initialization). If fixing 0x0004
   or the WBOOT drive-reset fixes BOTH, that is the cleanest outcome.

### C. Common cross-checks
- After WBOOT, does `B:` still switch correctly? Is the flash (drive B) dir read
  working post-WBOOT (the user reports both A and B break)?
- `stat`/`save`/`dir` before vs after `^C` to isolate the failing operation.

---

## Files
- `cpm/cbios.asm` (BOOT, WBOOT, SETVEC, drive A/B READ/WRITE, DPB/DPH).
- `cpm/cpm22/ccp.asm` (`diska equ 0004h`, `cdisk`/`sdisk`, `setdiska`/`select`).
- `cpm/cpm22/bdos.asm` (func25/`curdsk`, `reselect`/`curselect`, drive login/`dlog`).
- `cpm/brevia2_cpm.hex` — the image to upload; boot with `G E600`.
- `programs/diskutil.hex` — `M` (CPU memdump) to inspect live system state.

---
*Prepared by Whale-Chan after the CP/M system relocation (`b2bb81b`), boot-verification
(`E600` reaches `A>`), and on-silicon testing of ED.COM and `^C`.*
