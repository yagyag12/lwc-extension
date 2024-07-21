WRITE_RD((RS1 >> insn.i_imm()) | (RS1 << (32 - insn.i_imm())));
