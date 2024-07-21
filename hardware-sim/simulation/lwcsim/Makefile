###############################################################################
# Directories

SRCS              = $(wildcard src/*.cpp) $(wildcard lib/*.cpp)
OBJ               = obj/
OBJS              = $(addprefix $(OBJ), $(notdir $(SRCS:.cpp=.o)))
LIBCSOC_INCLUDE   = /home/yagyag12/riscv32-toolchain/certify_le_soc_pmp/libcsoc
VERILATOR_INCLUDE = /home/yagyag12/riscv32-toolchain/verilator/include
INC               = -I$(LIBCSOC_INCLUDE) -I$(LIBCSOC_INCLUDE)/verilated_soc  \
						-I$(VERILATOR_INCLUDE) -I$(VERILATOR_INCLUDE)/vltstd \
						-Ilib -Isrc

###############################################################################
# Toolchain

CC        = g++
CFLAGS    = -c -g -O0
LDFLAGS   = -lcsoc -L$(LIBCSOC_INCLUDE) -pthread

###############################################################################

###############################################################################
# Misc

MKDIR     = @mkdir -p $(@D) 		# Creates folders if not present

###############################################################################

.PHONY: default clean

default: bin/simulation.elf
	cp bin/simulation.elf ../../csoc_simulation

$(OBJ)%.o: src/%.cpp
	@echo "[OBJ]	Creating OBJs from src"
	$(MKDIR)
	$(CC) -o $@ $^ $(INC) $(CFLAGS)

$(OBJ)%.o: lib/%.cpp
	@echo "[OBJ]	Creating OBJs from libs"
	$(MKDIR)
	$(CC) -o $@ $^ $(INC) $(CFLAGS)

bin/simulation.elf: $(OBJS)
	@echo "[ELF]	Creating elf file"
	$(MKDIR)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	@rm -rf obj
	@rm -rf bin

