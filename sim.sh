#!/bin/bash
# usage: ./sim.sh <tbname>   -- compile+run tb/tb_<tbname>.v against rtl/*.v
set -e
source ./env.sh
TB=${1:?usage: ./sim.sh <tbname>}
iverilog -g2001 -s tb_$TB -o sim/$TB.out rtl/*.v tb/tb_$TB.v
vvp sim/$TB.out
