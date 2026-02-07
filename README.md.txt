# Smart Digital Lock using VHDL

This project implements a Smart Digital Lock using VHDL and is simulated using Xilinx Vivado.

## Features
- Password-based digital lock
- Clock and reset controlled operation
- Seven-segment display output
- Behavioral simulation with testbench

## Modules
- top_module.vhd : Top-level module
- keypad.vhd : Keypad input logic
- lock_control.vhd : Password verification and control logic
- seven_seg.vhd : Seven-segment display driver
- tb_top_module.vhd : Testbench for simulation

## Tools Used
- Xilinx Vivado (Behavioral Simulation)
- VHDL (IEEE STD_LOGIC_1164)

## Simulation
The design was verified using Vivado behavioral simulation.
Correct password unlocks the system, and incorrect inputs keep it locked.

## Author
HRUTIK SHELAKE