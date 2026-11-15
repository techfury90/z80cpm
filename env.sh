# Source this from git-bash before any build/sim command.
# Toolchain paths for the Z80/CP/M Brevia2 project.
IVERO=/c/iverilog/bin
WL=/c/Users/techf/AppData/Local/Microsoft/WinGet/Packages/BrechtSanders.WinLibs.POSIX.UCRT.LLVM_Microsoft.Winget.Source_8wekyb3d8bbwe/mingw64/bin
A85=$PWD/scripts/a85/a85
export PATH="$IVERO:$WL:$PATH"
