# INSTRUCTION SET EXTENSION OF RISC-V PROCESSOR FOR ASCON AND SHA-2 LIGHTWEIGHT CRYPTOGRAPHY ALGORITHMS

## Overview
This project allows instruction set extension "zknh" for SHA256 algorithm and creates custom instructions for ASCON LWC algorithms. Hardware simulation is only for SHA256.

## Files:
**hardware-sim:**
- **cv32e40s:** RISC-V CV32E40S processor modified for SHA256 instructions.
- **lwcsim:** Simulation setup program.
- **software:** Algorithm softwares for hardware simulation.
- **tb:** Testbenches for certain modules inside the processor.

**isa-sim:**
- **simulations:** C programs with spike simulation and results.  
  - **ascon128av12:** ASCON encryption and decryption
  - **asconhashav12:** ASCON hashing
  - **sha-2:** SHA256
- **gnu-toolchain-extension:** Necessary modifications to the toolchain for ASCON custom instructions.
- **spike-extension:** Necessary modifications to riscv-isa-sim for ASCON custom instructions.
- **test:** C program for testing the simulation environment.

## ISA Simulation:
### Building the Toolchain:
Clone the gnu toolchain github repository, configure it accordingly and build it. For ASCON custom instructions, follow the steps on the gnu-toolchain-extension folder. Example:

```bash
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain
$ cd riscv-gnu-toolchain
$ ./configure --prefix=$PATH/rv32gc_zknh --witharch=rv32gc_zknh --with-abi=ilp32
make
make install
$ riscv32-unknown-elf-gcc --version
```

### Building the Simulator:
Clone riscv-isa-sim repository, configure it accordingly and build it. For ASCON custom instructions, follow the steps on the spike-extension folder. Example:

```bash
$ git clone https://github.com/riscv-software-src/riscv-isa-sim.git
cd riscv-isa-sim
mkdir build
cd build
../configure --prefix=$PATH/build --with-arch=rv32gc_zknh
make
$ sudo make install
$ ./spike
```

### Building the Proxy Kernel (pk):
RISC-V Proxy Kernel is cloned, installed, and configured so that it uses the current toolchain
as the host. Example:

```bash
$ git clone https://github.com/riscv-software-src/riscv-pk.git
cd riscv-pk
mkdir build
cd build
./configure --prefix=/home/yagyag12/riscv32-toolchain/riscv-pk/build --
host=riscv32-unknown-elf
make install
```

### Running the simulation:
- Open the file you want to simulate (ascon128av12, asconhashav12, sha-2)
- Choose either the extension or normal simulation folder
- Edit the pk path on run_sim.py accordingly to your environment.
- Run the simulation with the command:
 python run_sim.py
- The simulations results with five folders for each optimization level. Each folder contains the instructions executed, output, elf binary program and stats.txt where simulation information can be reached.

## Hardware Simulation:
### Building the Toolchain:
Build the toolchain with multilib linux configuration. Example:

```bash
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain
$ cd riscv-gnu-toolchain
$ ./configure --prefix=/home/yagyag12/riscv32-toolchain/rv32_full
--enable-multilib --with-arch=rv32gc_zknh --with-abi=ilp32
make linux
```

### Building the Simulator:
Install Verilator, srecord and gtkwave programs fro simulation:

```bash
$ git clone https://github.com/verilator/verilator.git
$ export VERILATOR_ROOT=/home/yagyag12/riscv32-toolchain/verilator
$ sudo apt-get install srecord
$ sudo apt-get install gtkwave
```
For hardware simulation, the toolchain from the GitHub is used: https://github.com/annaamodio/certify_le_soc_pmp.git 

```bash
$ https://github.com/annaamodio/certify_le_soc_pmp.git
cd certify_le_soc_pmp
```

### Running the Simulation:
- Modify and add the files inside the hardware-sim folder accordingly to the README inside.
- Build the simulation toolchain with the waveform traces:
```bash
$ make trace
```
- Build the simulation and the software you want to simulate together. For testing "default" can be used:
```bash
$ make [simulation]@[software]
```
-  Run the simulation, the output will be on the log file created:
```bash
$ ./csoc_simulation
```
