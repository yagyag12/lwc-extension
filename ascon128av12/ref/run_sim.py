import subprocess
import sys
from collections import defaultdict
import os

# Define the C source files and the output binaries
c_source_files = ["main.c", "aead.c"]
optimization_levels = ["O0", "O1", "O2", "O3", "Os"]
output_folders = ["sim_O0", "sim_O1", "sim_O2", "sim_O3", "sim_Os"]
output_binaries = [f"{folder}/my_program" for folder in output_folders]

# Path to the proxy kernel (pk)
pk_path = "/home/yagyag12/lwc-extension-project/riscv-pk/build/pk"

# Compile and create folders for each optimization level
for folder in output_folders:
    os.makedirs(folder, exist_ok=True)

for idx, opt_level in enumerate(optimization_levels):
    compile_command = ["riscv32-unknown-elf-gcc", f"-{opt_level}", "-o", output_binaries[idx]] + c_source_files
    print(f"Compiling {c_source_files} with optimization {opt_level}...")

    try:
        subprocess.run(compile_command, check=True)
        print(f"Compilation with {opt_level} optimization successful.")
    except subprocess.CalledProcessError as e:
        print(f"Compilation failed with error: {e}", file=sys.stderr)
        sys.exit(1)

    # Generate assembly code using objdump
    assembly_output = f"{output_folders[idx]}/assembly_{opt_level}.S"
    objdump_command = ["riscv32-unknown-elf-objdump", "-d", output_binaries[idx]]

    with open(assembly_output, "w") as assembly_file:
        try:
            subprocess.run(objdump_command, stdout=assembly_file, check=True)
            print(f"Generated assembly code for {opt_level} optimization level.")
        except subprocess.CalledProcessError as e:
            print(f"Error generating assembly code: {e}", file=sys.stderr)
            sys.exit(1)

    # Run the Spike simulator and capture statistics
    spike_command_with_log = ["spike", "-l", pk_path, output_binaries[idx]]

    print(f"Running the Spike simulator with {opt_level} optimization...")
    process = subprocess.Popen(spike_command_with_log, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)

    instruction_count = 0
    instruction_frequency = defaultdict(int)
    unique_instruction_addresses = set()  # To track unique instruction memory addresses

    # Open the instruction log file and output file
    with open(f"{output_folders[idx]}/instruction_log.txt", "w") as log_file, open(f"{output_folders[idx]}/out.txt", "w") as out_file:
        for output in process.stdout:
            instruction = output.strip()
            if instruction.startswith("core"):
                # Handle instruction logging
                log_file.write(instruction + "\n")  # Write to instruction log file
                instruction_count += 1  # Increment instruction count for each line

                # Extract instruction memory address and opcode
                parts = instruction.split()
                if len(parts) >= 5:
                    address = parts[2]  # Address is the third element in the line
                    opcode = parts[4]   # Opcode is the fifth element in the line
                    unique_instruction_addresses.add(address)
                    instruction_frequency[opcode] += 1
            else:
                # Handle program output
                out_file.write(instruction + "\n")  # Write to out.txt
                print(instruction)  # Print to console

    # Calculate instruction memory usage in bytes and kilobytes
    instruction_memory_bytes = len(unique_instruction_addresses) * 4  # Assuming 4 bytes per instruction
    instruction_memory_kb = instruction_memory_bytes / 1024
    instruction_memory_mb = instruction_memory_kb / 1024

    print(f"Spike simulation completed with {opt_level} optimization level.")

    # Write the total instruction count, instruction frequencies, memory usage, and estimated cycles to stats.txt
    with open(f"{output_folders[idx]}/stats.txt", "w") as stats_file:
        stats_file.write(f"Total instruction count: {instruction_count}\n")
        stats_file.write(f"Instruction Memory Usage: {instruction_memory_bytes} bytes ")
        stats_file.write(f"({instruction_memory_kb:.1f} kB, {instruction_memory_mb:.2f} MB)\n")
        stats_file.write(f"Instruction Opcode Frequencies (sorted by most used):\n")
        sorted_instructions = sorted(instruction_frequency.items(), key=lambda item: item[1], reverse=True)
        for opcode, freq in sorted_instructions:
            stats_file.write(f"{opcode}: {freq}\n")

    print(f"Total instruction count: {instruction_count}. Stats have been logged to stats.txt.")
    print(f"Program output has been written to {output_folders[idx]}/out.txt.")

