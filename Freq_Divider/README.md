# Frequency Divider using T Flip-Flops  

## Overview  
This project implements a **frequency divider** using **T flip-flops** in Verilog. The design divides the input clock frequency by 2, 4, 8, and 16, generating multiple frequency outputs.  

## Directory Structure  
- **`sim/`**   # Simulation results
    - `waveform.png`  # Output waveform (generated using Vivado)
- **`src/`**   # Design sources
    - `tff.v`  # T Flip-Flop module
    - `freq_divider.v`  # Frequency divider using T flip-flops
- **`tb/`**    # Testbench files
    - `freq_divider_tb.v`  # Testbench for frequency divider
- **`README.md`**  # Project documentation

## Design Explanation  
The frequency divider is built using **T flip-flops**, which toggle their state on every clock cycle when `T = 1`.  

- The first flip-flop divides the clock frequency by **2**.  
- The second flip-flop divides the frequency by **4**.  
- The third flip-flop divides it by **8**.  
- The fourth flip-flop divides it by **16**.  

## Modules  

### **T Flip-Flop (`tff.v`)**  
A simple **T flip-flop** with an active-high reset. When `T = 1`, the output toggles on every clock edge.  

### **Frequency Divider (`freq_divider.v`)**  
A **4-bit frequency divider** implemented using T flip-flops. Each stage toggles on the negated output of the previous stage, achieving division ratios of 2, 4, 8, and 16.  

### **Testbench (`freq_divider_tb.v`)**  
The testbench initializes the clock and reset signals, then observes the frequency division over time.  

## Simulation  
Run the testbench in **Vivado ModelSim/ISE** or any Verilog simulator. The expected waveform should show frequency division at each stage.  

Example waveform output:  
![Waveform](sim/waveform.png)  

## How to Run  
1. Create a new Project in Vivado.
2. Add all files in `src/` as desgin sources.
3. Add `tb/freq_divider_tb.v` file to simualtion source (Select it as Top module if not already).
3. View the generated waveform by running the simulation to verify correctness.

## Tools Used  
- **Vivado** for simulation  
- **Verilog HDL** for design  

## License  
This project is open-source. Feel free to use and modify it.  

---
Happy Coding! 🚀  
