\# 4-bit Ripple Carry Adder — Verilog



\*\*Project | ECE Digital Design Series\*\*



\## Description

A 4-bit Ripple Carry Adder built using 4 Full Adder modules.

Carry output of each Full Adder feeds into the next one.



\## Structure

FA0 → FA1 → FA2 → FA3



\## Files

\- src/full\_adder.v         — 1-bit Full Adder module

\- src/ripple\_carry\_adder.v — 4-bit Ripple Carry Adder

\- tb/tb\_ripple\_carry\_adder.v — Testbench



\## Project Structure

\- src/ — Verilog source modules

\- tb/  — Testbench files

\- sim/ — Simulation outputs

\- docs/ — Documentation



\## Tools Used

\- Icarus Verilog

\- EDA Playground

\- GTKWave

\- Git Bash



\## Test Cases

| A    | B    | Cin | Sum  | Cout |

|------|------|-----|------|------|

| 0000 | 0000 |  0  | 0000 |  0   |

| 0101 | 0011 |  0  | 1000 |  0   |

| 1010 | 0101 |  0  | 1111 |  0   |

| 1111 | 0001 |  0  | 0000 |  1   |

| 0111 | 1000 |  1  | 0000 |  1   |

