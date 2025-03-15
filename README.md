# Digital Circuit Simulation with Verilog, Icarus Verilog, and GTKWave

## Overview
This project demonstrates the design, simulation, and verification of fundamental digital circuits using **Verilog**, simulated with **Icarus Verilog (iverilog)**, and waveform visualization using **GTKWave**. The circuits implemented include basic logic gates, multiplexers, subtractors, and other combinational circuits.

## Features
- Design and implementation of **Half Subtractor**, **Full Subtractor**, and **4x1 Multiplexer** in Verilog.
- Testbench development for simulating and verifying circuit behavior.
- Waveform analysis using GTKWave to visualize output responses.
- Automated test sequences for validation using systematic input variations.

## Tools & Technologies Used
- **Verilog HDL** - For hardware description and circuit design.
- **Icarus Verilog (iverilog)** - For simulation and compiling Verilog code.
- **GTKWave** - For waveform visualization and debugging.
- **Ubuntu/Linux Environment** - For running simulations and testing.

## Circuit Implementations
### 1. Half Subtractor & Full Subtractor
- Implements bitwise subtraction using basic logic gates.
- Simulated using testbenches to verify correct borrow and difference outputs.

### 2. 4x1 Multiplexer
- Designed using behavioral and structural Verilog models.
- Inputs selected using two control signals and tested with varying combinations.

## Simulation & Testing Process
1. **Write Verilog Code**: Develop modules for each digital circuit.
2. **Create Testbench**: Write test cases to validate functionality.
3. **Compile & Simulate**: Use Icarus Verilog to compile and run simulations.
4. **View Waveforms**: Use GTKWave to analyze output behavior.
5. **Iterate & Debug**: Modify and optimize based on observed results.

## Running the Simulations
1. Clone the repository:
   ```sh
   git clone https://github.com/Prasannahariveeresh/simple-verilog-simulations
   cd simple-verilog-simulations/
   ```
2. Compile using **Icarus Verilog**:
   ```sh
   iverilog -o output_sim testbench_file.v
   ```
3. Run the simulation:
   ```sh
   vvp output_sim
   ```
4. View results in GTKWave:
   ```sh
   gtkwave output.vcd
   ```

## Results & Observations
- The implemented circuits were successfully simulated and validated.
- The waveform analysis in GTKWave confirmed expected logic operations.
- The testbenches systematically tested all input combinations.

## Contributors
- **@Prasannahariveeresh** - Design, Implementation, and Testing.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

