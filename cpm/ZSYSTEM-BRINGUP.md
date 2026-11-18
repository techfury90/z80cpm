# Z-System (ZCPR3 + ZRDOS) bring-up reference for the Brevia2

Goal: a cleared picture of what Z-System is and what it would take to bring it
up on the Brevia2, as a comparison path to the CP/M 3 port (see CPM3-BANKING.md).
Sources are the original Echelon manuals, cited inline.

## 1. What Z-System is

Z-System is NOT a new kernel. It is a **drop-in CP/M 2.2 upgrade** that replaces
the two Digital Research-licensed components while **keeping your own CBIOS**:

- **ZCPR3** ("Z80 Command Processor Replacement") — replaces the **CCP**. The
  focus of the project; vastly more capable command processor.
- **ZRDOS** ("Z80 Replacement Disk Operating System") — replaces the **BDOS**
  (Echelon, released ~Jan 1985; Z80-coded). CP/M 2.2-compatible.
- A large companion utilities set (ZEX, ZFILER, VFILER, VMENU, XDIR, UNERASE,
  WHEEL, ALIAS, HELP, PATH, PWD, MKDIR, MENU, AC, DFA, SFA, PUBLIC, DUMP,
  TCHECK/TCMAKE/TCSELECT, etc.), plus Z3INS/Z3LOC/Z3X install/status tools.

It runs on Z80 (ZCPR3 can also be assembled for 8080/8085; ZRDOS is Z80-only).
History: ZCPR1 (~Feb 1982, the hobbyist "CCP Group": Frank Wancho, Keith
Petersen, Ron Fowler, Charlie Strom, Bob Mathias, Richard Conn) → ZCPR2
(Feb 1983, Richard Conn) → ZCPR3 (Jul 1984, Richard Conn, marketed by Echelon,
Inc. after Aug 1984) → ZCPR31/3.3/3.4 (Jay Sage). Z-System = the full
combination sold/published by Echelon. Compatible with virtually all CP/M
software.

## 2. What Z-System needs from the BIOS

The Z-System User's Guide: "The BIOS under the Z-System is similar to the BIOS
under CP/M but with **certain additional functions during the cold boot**."

- The **core disk/console BIOS entries are unchanged** — ZCPR3/ZRDOS use the
  standard CP/M 2.2 BIOS jump table (BOOT/WBOOT/CONST/CONIN/CONOUT/LIST/HOME/
  SELDSK/SETTRK/SETSEC/SETDMA/READ/WRITE/LISTST/SECTRN) exactly as CP/M 2.2
  does. Our existing CBIOS already implements these.
- The ONE thing Z-System adds is **cold-boot glue in the BIOS** that sets up the
  ZCPR3 **protected buffers** — specifically the initial multiple-command-line
  and the **command search path**. ZCPR3 3.3 User's Guide §2.4/§2.3: "Typical
  ZCPR3 BIOS coldboot routines set up the multiple command line with an initial
  command, usually an alias ... The most common initial command line is
  'STARTUP'." So the BIOS cold-boot must initialize the path (e.g. to `A0`) and
  seed the command line. That plus the standard CP/M 2.2 BIOS is the whole
  hardware side.

So: **no new BIOS jump-vector entries and no banking** — just additional
cold-boot initialization code. That is a far smaller BIOS delta than CP/M 3.

## 3. ZCPR3 memory model: the "protected buffers" above the BIOS

ZCPR2 introduced, and ZCPR3 uses, **memory buffers in protected memory above
the BIOS** to hold new OS modules (ZCPR 3.3 User's Guide §1.3.2). These survive
warm boots because they are above the region the CCP/BDOS get reloaded into.
They include:

- the **multiple command line buffer** (kept intact across warm boot),
- the **command search path buffer** (changeable at runtime),
- the **named directory register (NDR)**,
- the **message buffer** (program↔processor communication; flow-control/error
  flags),
- the **shell stack**, **wheel byte**, **flow control package**, **resident
  command package (RCP)**,
- the **environment descriptor module**.

**Environment descriptor:** a special memory block describing the whole system
(number of drives, CPU clock speed, terminal rows/columns, max user, etc.) that
ordinary CP/M has no equivalent of. ZCPR3 programs find it via a `Z3ENV` marker
and its address; **Z3INS** implants that address into each COM file. Without a
correct environment descriptor, ZCPR3 programs misbehave (this is why
"forgot to run Z3INS" was a classic ZCPR3 symptom).

So a Z-System bring-up needs a chunk of RAM **above the CBIOS** for these
buffers + the environment descriptor, all of which must NOT be overwritten by
transients or by the CCP/BDOS reload. On our layout that region is the RAM
between the top of the CBIOS and 0xFFFF.

## 4. ZRDOS specifics

ZRDOS is a Z80-coded, CP/M 2.2-compatible BDOS (Dennis L. Wright / Echelon,
v1.0). It supports CP/M 2.2 BDOS function calls 0-40 plus ZRDOS extensions
47/48/50/52, and adds:
- **Automatic log-in of changed disks** (no more forced `^C` after a disk swap;
  "Disk Changed Error" only if a file was open during the swap).
- **Read-only drive state maintained across warm boot.**
- **File archive attribute** (set via func 30) for backup tools (compatible with
  CP/M 3 / MP/M archive semantics).
- **Wheel-byte write protection** of files (non-wheel users can't modify them).
- **Public files**: designate user areas 1-8 as "public" so overlays (e.g.
  WordStar's) are visible from any user area.
- Func 10 treats rubout (DEL) as backspace; enhanced numbered error messages
  (DOSERR explains them).
- ZRDOS Plus is the re-entrant version (I/O packages); its internal parameter
  buffer is 147 bytes at ZRDOS base+5.

ZRDOS is **Z80 code** — our TV80 IS a Z80 core, so it runs. (Our current CP/M
2.2 kernel is 8080 code; ZRDOS's data-block/`ED`-style ops need Z80.)

## 5. Installation paths

From ZCPR 3.3 User's Guide §4 (and the Z-System User's Guide intro):
- **Manual install:** assemble Z33 (ZCPR3 .Z80 source) with an assembler (ZAS
  preferred; needs Z33HDR.LIB, Z33MAC.LIB, Z3BASE.LIB), then write it into the
  CP/M system image — either by patching the system tracks with a disk utility
  (**DU3**) or by rebuilding via **SYSGEN** / a SYSGEN image. Same idea for
  ZRDOS (it ships as hex to patch into the system).
- **Auto-install products:** Echelon's **Z-Com** (auto-install ZCPR3 on CP/M
  2.2), **Z3-Dot-Com** (Z80/HD64180 auto-install), **Vanguard**, and the file
  **NZ-COM** / Z3.COM families. These do the SYSGEN/patch for you on a known
  platform. For a fully custom board like ours we'd do the manual/DU3 path.
- ZCPR3 3.3 is designed so that "installing Z33 requires only that the new code
  be assembled and installed in place of the old command processor code" — the
  rest of the system (memory allocation, modules) is unchanged from Z30.

## 6. Mapping to the Brevia2

What we already have that carries over:
- Our **CBIOS is CP/M 2.2** (console UART, SPI-flash drive A:, RAM disk B:,
  the 33-byte... the standard 17-entry CP/M 2.2 vector) — **unchanged** by
  Z-System except for the cold-boot buffer-init glue (§2).
- Our **TV80 is a Z80 core** → ZRDOS (Z80) and the Z80-assembled ZCPR3 run.
- We have a working CP/M 2.2 disk+console and XMODEM transfer to push files.
- Persistent storage is now the SPI-flash drive A: (we no longer depend on the
  RAM disk), so drive B: is disposable.

What we'd need to do/decide:
1. **Room above the CBIOS for the ZCPR3 protected buffers + environment
   descriptor.** Our CP/M layout today: CCP@0xD000, BDOS@0xD800, CBIOS≈0xE600-
   0xEA0C; GWMON reserves 0xFF00-0xFFFF. That leaves roughly **0xEA0C-0xFF00
   (~5.3 KB)** above the CBIOS. ZCPR3's buffers + env descriptor can be tuned
   (Z33 supports "dynamic sizing of FCP/RCP/NDR"), but we must confirm 5 KB is
   enough or free more room (move the system down / shrink the buffer region /
   pull GWMON's reserved area back). This is the main layout unknown.
2. **ZCPR3/ZRDOS are larger than the DR CCP/BDOS.** Replacing the CCP with
   ZCPR3 (bigger) and the BDOS with ZRDOS means re-fitting the system image;
   the CCP/BDOS region (and possibly the whole system move) has to be reworked
   to fit, and the ZCPR3 buffers must sit above the BIOS in a warm-boot-surviving
   region. This is a SYSGEN/assembly problem, not a hardware problem.
3. **BIOS cold-boot addition** to seed the path (e.g. `A0`) and initial command
   line ("STARTUP").
4. **Build toolchain:** ZCPR3 needs a Z80 assembler (ZAS or equivalent) + the
   Z33 HDR/MAC/BASE libraries; ZRDOS is patched-in hex. We do NOT need the DRI
   RMAC/LINK-80/GENCPM flow that CP/M 3 demands — Z-System stays on the CP/M 2.2
   system-generation model (DU3/SYSGEN). (We could even assemble on the board
   with M80/L80.)

## 7. Z-System vs. CP/M 3 as a future path

| | Z-System (ZCPR3+ZRDOS) | CP/M 3 (banked) |
|--|--|--|
| Base | CP/M **2.2** | CP/M **3** |
| BIOS changes | cold-boot buffer-init glue only | new 33-entry vector + banking |
| Memory gain | richer shell/security, no TPA gain | **~60K+ TPA** via banking |
| Hardware needed | none beyond RAM above BIOS | **bank-select RTL** |
| Toolchain | Z80 asm + SYSGEN/DU3 (CP/M 2.2 flow) | RMAC/LINK-80/GENCPM |
| OS features | aliases, PATH, named dirs, shells, I/O redirection, flow control, error handlers, wheel/password security, environment descriptor, ZRDOS auto-login/archive | big TPA, RTC/date, file passwords, extended errors, (banked) |

Both are authentic and rewarding. Z-System is the **lower-effort, richer-shell**
path (CP/M 2.2 + our existing CBIOS); CP/M 3 is the **bigger-TPA** path but is a
real port with new toolchain and (for banked) bank-select hardware. They are
not mutually exclusive long-term, but Z-System is dramatically easier to get
running on the hardware we already have.

## Sources
- "The Z-System User's Guide" (Richard Jacobson / Bruce Morgen, Apr 1986) —
  components, differences from CP/M, BIOS "additional functions during cold
  boot," utilities (oldcomputers-ddns.org .../zsystem_users_guide.pdf).
- "ZCPR 3.3 User's Guide" (Jay P. Sage, Echelon 1987) — history, environment
  descriptor / `Z3ENV`, protected memory buffers above the BIOS, installation
  (ZAS + Z33 libs, DU3/SYSGEN, Z-Com/Z3-Dot-Com), Type-1/2/3 environments,
  command acquisition/resolution hierarchies (gaby.de znode51 .../zcpr3.pdf).
- "ZRDOS Version 1.0 Programmer's Guide" (Dennis L. Wright, Echelon Jan 1985) +
  ZRDOS Plus addendum — ZRDOS function calls 0-40 + 47/48/50/52, disk-change
  auto-login, archive/attribute, wheel protection, public files, re-entrancy
  (147-byte param buffer at base+5) (bitsavers .../ZRDOS_Programmers_Guide.pdf).
- Digital Research CPM FAQ Q26 — "What is ZCPR and the Z System?" summary.
