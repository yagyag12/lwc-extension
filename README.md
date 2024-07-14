## Preview
ISA Extension for ASCON and SHA256 LWC Algorithms

---

# INSTRUCTION SET EXTENSION OF RISC-V PROCESSOR FOR ASCON AND SHA-2 LIGHTWEIGHT CRYPTOGRAPHY ALGORITHMS

## Introduction
This project allows instruction set extension "zknh" for SHA256 algorithm and creates custom instructions for ASCON LWC algorithms. 

## Files:
- **ascon128av12:** ASCON encryption and decryption C program with spike simulation and results.
- **asconhashav12:** ASCON hashing C program with spike simulation and results.
- **gnu-toolchain-extension:** Necessary modifications to the toolchain for ASCON custom instructions.
- **sha-2:** SHA256 C program with spike simulation and results.
- **spike-extension:** Necessary modifications to riscv-isa-sim for ASCON custom instructions.
- **test:** C program for testing the simulation environment.

## Building the Toolchain:
Clone the gnu toolchain github repository, configure it accordingly and build it. For ASCON custom instructions, follow the steps on the gnu-toolchain-extension folder. Example:

'''bash
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain
$ cd riscv-gnu-toolchain
$ ./configure --prefix=$PATH/rv32gc_zknh --witharch=rv32gc_zknh --with-abi=ilp32
make
make install
$ riscv32-unknown-elf-gcc --version
'''

## Building the Simulator:
Clone riscv-isa-sim repository, configure it accordingly and build it. For ASCON custom instructions, follow the steps on the spike-extension folder. Example:

'''bash
$ git clone https://github.com/riscv-software-src/riscv-isa-sim.git
cd riscv-isa-sim
mkdir build
cd build
../configure --prefix=$PATH/build --with-arch=rv32gc_zknh
make
$ sudo make install
$ ./spike
'''

## Building the Proxy Kernel (pk):
RISC-V Proxy Kernel is cloned, installed, and configured so that it uses the current toolchain
as the host. Example:

'''bash
$ git clone https://github.com/riscv-software-src/riscv-pk.git
cd riscv-pk
mkdir build
cd build
./configure --prefix=/home/yagyag12/riscv32-toolchain/riscv-pk/build --
host=riscv32-unknown-elf
make install
'''

## Running the simulation:
- Open the file you want to simulate (ascon128av12, asconhashav12, sha-2)
- Choose either the extension or normal simulation folder
- Edit the pk path on run_sim.py accordingly to your environment.
- Run the simulation with the command:
 python run_sim.py
- The simulations results with five folders for each optimization level. Each folder contains the instructions executed, output, elf binary program and stats.txt where simulation information can be reached.
 
