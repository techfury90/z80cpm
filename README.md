# z80cpm — CP/M 2.2 on the Lattice Brevia2

A Z80 soft-core SoC for the LatticeXP2 **Brevia2** development board running
**CP/M 2.2** (Digital Research), with the CBIOS written from scratch for this
hardware.

- **CPU:** TV80 soft-core (OpenCores), byte-wide bus, von Neumann, 1 byte/cycle.
- **Memory:** 128K×8 SRAM — bank A = CP/M memory, bank B = volatile RAM disk.
- **Disks:** drive A: = on-board ISSI IS25LD040 SPI flash (persistent boot
  drive); drive B: = volatile RAM disk (bring-up aid); drive C: = SD card in SPI
  mode on a dedicated port.
- **Monitor:** glitchwrks **GWMON-80** baked into the FPGA bitstream in EBR block
  RAM (bring-up / debug monitor).
- **Build:** Lattice Diamond 3.14 (Windows) for the bitstream, `iverilog` for
  simulation with strict Verilog-2001 (`-g2001`), and the `a85` 8080
  cross-assembler for all CP/M/monitor assembly.

> See **`AGENTS.md`** for the full bring-up, build, and debug procedure — every
> hard-won pitfall (a85 repo-root quirk, BDOS register clobbering, SPI WREN
> trap, SD deblock `RAL`-not-`RLC`, drive geometry ceilings) is documented there.
> Deeper post-mortems live in the `HANDOFF-*.md` files and the design docs under
> `cpm/`.

## Quick build (from the repo root — this matters, see AGENTS.md)

```bash
# CP/M image (hex / mem / raw boot bin)
python cpm/make_combined_hex.py

# Boot simulator
iverilog -g2001 -s tb_cpm -o sim/cpm.out $(ls rtl/*.v | grep -v boot_rom) \
  tb/pmi_pll_sim.v tb/tb_cpm.v && vvp sim/cpm.out

# Disk drives / SD tool simulators (Python 8080 harness)
python tb/test_drive_c.py
```

The bitstream is `build/impl1/z80cpm_impl1.jed` (Lattice Diamond project in
`build/`).

## License

CP/M 2.2 is Digital Research freeware; the CBIOS and SoC port for the Brevia2
are original. GWMON-80 (glitchwrks) is GPLv3 — see `gwmon/LICENSE`.
