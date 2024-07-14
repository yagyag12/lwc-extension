import subprocess
import sys
from collections import defaultdict
import os

# Define the C source files and the output binaries
c_source_files = ["main.c", "aead.c", "permutations.c", "interleave.c", "constants.c", "crypto_aead.c", "update.c"]
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

    # Run the Spike simulator and capture statistics
    spike_command_with_log = ["spike", "-l", pk_path, output_binaries[idx]]

    print(f"Running the Spike simulator with {opt_level} optimization...")
    process = subprocess.Popen(spike_command_with_log, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)

    encrypt_instruction_count = 0
    encrypt_instruction_frequency = defaultdict(int)
    encrypt_unique_instruction_addresses = set()  # To track unique instruction memory addresses for encryption

    decrypt_instruction_count = 0
    decrypt_instruction_frequency = defaultdict(int)
    decrypt_unique_instruction_addresses = set()  # To track unique instruction memory addresses for decryption

    # Variables to track if we are inside the encryption or decryption functions
    inside_encrypt_function = False
    inside_decrypt_function = False

    # Open the instruction log file and output file
    with open(f"{output_folders[idx]}/instruction_log.txt", "w") as log_file, open(f"{output_folders[idx]}/out.txt", "w") as out_file:
        for output in process.stdout:
            instruction = output.strip()
            if instruction.startswith("core"):
                log_file.write(instruction + "\n")  # Always write to instruction log file
            
            if "ENCRYPT_FUNCTION_START" in instruction:
                inside_encrypt_function = True
                continue  # Skip logging the marker
            if "ENCRYPT_FUNCTION_END" in instruction:
                inside_encrypt_function = False
                continue  # Skip logging the marker
            if "DECRYPT_FUNCTION_START" in instruction:
                inside_decrypt_function = True
                continue  # Skip logging the marker
            if "DECRYPT_FUNCTION_END" in instruction:
                inside_decrypt_function = False
                continue  # Skip logging the marker
                
            if inside_decrypt_function:
                # Handle decryption instruction counting
                decrypt_instruction_count += 1  # Increment instruction count for each line
                # Extract instruction memory address and opcode
                parts = instruction.split()
                if len(parts) >= 5:
                    address = parts[2]  # Address is the third element in the line
                    opcode = parts[4]   # Opcode is the fifth element in the line
                    decrypt_unique_instruction_addresses.add(address)
                    decrypt_instruction_frequency[opcode] += 1
                    
            elif inside_encrypt_function:
                # Handle encryption instruction counting
                encrypt_instruction_count += 1  # Increment instruction count for each line
                # Extract instruction memory address and opcode
                parts = instruction.split()
                if len(parts) >= 5:
                    address = parts[2]  # Address is the third element in the line
                    opcode = parts[4]   # Opcode is the fifth element in the line
                    encrypt_unique_instruction_addresses.add(address)
                    encrypt_instruction_frequency[opcode] += 1

            if not instruction.startswith("core"):
                # Handle program output
                out_file.write(instruction + "\n")

    # Calculate instruction memory usage for encryption in bytes and kilobytes
    encrypt_instruction_memory_bytes = len(encrypt_unique_instruction_addresses) * 4  # Assuming 4 bytes per instruction
    encrypt_instruction_memory_kb = encrypt_instruction_memory_bytes / 1024
    encrypt_instruction_memory_mb = encrypt_instruction_memory_kb / 1024

    # Calculate instruction memory usage for decryption in bytes and kilobytes
    decrypt_instruction_memory_bytes = len(decrypt_unique_instruction_addresses) * 4  # Assuming 4 bytes per instruction
    decrypt_instruction_memory_kb = decrypt_instruction_memory_bytes / 1024
    decrypt_instruction_memory_mb = decrypt_instruction_memory_kb / 1024

    print(f"Spike simulation completed with {opt_level} optimization level.")

    # Write the total encryption instruction count, frequencies, and memory usage to encrypt_stats.txt
    with open(f"{output_folders[idx]}/encrypt_stats.txt", "w") as encrypt_stats_file:
        encrypt_stats_file.write(f"Total encryption instruction count: {encrypt_instruction_count}\n")
        encrypt_stats_file.write(f"Encryption Instruction Memory Usage: {encrypt_instruction_memory_bytes} bytes ")
        encrypt_stats_file.write(f"({encrypt_instruction_memory_kb:.1f} kB, {encrypt_instruction_memory_mb:.2f} MB)\n")
        encrypt_stats_file.write(f"Encryption Instruction Opcode Frequencies (sorted by most used):\n")
        sorted_encrypt_instructions = sorted(encrypt_instruction_frequency.items(), key=lambda item: item[1], reverse=True)
        for opcode, freq in sorted_encrypt_instructions:
            encrypt_stats_file.write(f"{opcode}: {freq}\n")

    # Write the total decryption instruction count, frequencies, and memory usage to decrypt_stats.txt
    with open(f"{output_folders[idx]}/decrypt_stats.txt", "w") as decrypt_stats_file:
        decrypt_stats_file.write(f"Total decryption instruction count: {decrypt_instruction_count}\n")
        decrypt_stats_file.write(f"Decryption Instruction Memory Usage: {decrypt_instruction_memory_bytes} bytes ")
        decrypt_stats_file.write(f"({decrypt_instruction_memory_kb:.1f} kB, {decrypt_instruction_memory_mb:.2f} MB)\n")
        decrypt_stats_file.write(f"Decryption Instruction Opcode Frequencies (sorted by most used):\n")
        sorted_decrypt_instructions = sorted(decrypt_instruction_frequency.items(), key=lambda item: item[1], reverse=True)
        for opcode, freq in sorted_decrypt_instructions:
            decrypt_stats_file.write(f"{opcode}: {freq}\n")

    print(f"Encryption instruction count: {encrypt_instruction_count}. Stats have been logged to encrypt_stats.txt.")
    print(f"Decryption instruction count: {decrypt_instruction_count}. Stats have been logged to decrypt_stats.txt.")
    print(f"Program output has been written to {output_folders[idx]}/out.txt.")

print("All done.")

