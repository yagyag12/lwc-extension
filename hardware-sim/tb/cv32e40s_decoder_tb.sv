module cv32e40s_decoder_tb import cv32e40s_pkg::*;
#(
  // Parameters
  parameter rv32_e       RV32                   = RV32I,
  parameter int unsigned REGFILE_NUM_READ_PORTS = 2,
  parameter b_ext_e      B_EXT                  = B_NONE,
  parameter m_ext_e      M_EXT                  = M,
  parameter bit          CLIC                   = 1
)();
  // Signals
  logic          deassert_we_i;
  logic          sys_en_o;
  logic          illegal_insn_o;
  logic          sys_ebrk_insn_o;
  logic          sys_mret_insn_o;
  logic          sys_dret_insn_o;
  logic          sys_ecall_insn_o;
  logic          sys_wfi_insn_o;
  logic          sys_wfe_insn_o;
  logic          sys_fence_insn_o;
  logic          sys_fencei_insn_o;
  if_id_pipe_t   if_id_pipe_i;
  logic          alu_en_o;
  logic          alu_bch_o;
  logic          alu_jmp_o;
  logic          alu_jmpr_o;
  alu_opcode_e   alu_operator_o;
  alu_op_a_mux_e alu_op_a_mux_sel_o;
  alu_op_b_mux_e alu_op_b_mux_sel_o;
  mul_opcode_e   mul_operator_o;
  logic          mul_en_o;
  logic [1:0]    mul_signed_mode_o;
  div_opcode_e   div_operator_o;
  logic          div_en_o;
  logic          csr_en_o;
  logic          csr_en_raw_o;
  csr_opcode_e   csr_op_o;
  mstatus_t      mstatus_i;
  logic          lsu_en_o;
  logic          lsu_we_o;
  logic [1:0]    lsu_size_o;
  logic          lsu_sext_o;
  logic          rf_we_o;
  logic [1:0]    rf_re_o;
  rf_addr_t      rf_raddr_i[REGFILE_NUM_READ_PORTS];
  rf_addr_t      rf_waddr_i;
  logic [REGFILE_NUM_READ_PORTS-1:0] rf_illegal_raddr_o;
  op_c_mux_e     op_c_mux_sel_o;
  imm_a_mux_e    imm_a_mux_sel_o;
  imm_b_mux_e    imm_b_mux_sel_o;
  bch_jmp_mux_e  bch_jmp_mux_sel_o;
  ctrl_fsm_t     ctrl_fsm_i;
  logic          tbljmp_first_i;

  // Instantiate the cv32e40s_decoder
  cv32e40s_decoder #(
    .RV32(RV32),
    .REGFILE_NUM_READ_PORTS(REGFILE_NUM_READ_PORTS),
    .B_EXT(B_EXT),
    .M_EXT(M_EXT),
    .CLIC(CLIC)
  ) dut (
    .deassert_we_i(deassert_we_i),
    .sys_en_o(sys_en_o),
    .illegal_insn_o(illegal_insn_o),
    .sys_ebrk_insn_o(sys_ebrk_insn_o),
    .sys_mret_insn_o(sys_mret_insn_o),
    .sys_dret_insn_o(sys_dret_insn_o),
    .sys_ecall_insn_o(sys_ecall_insn_o),
    .sys_wfi_insn_o(sys_wfi_insn_o),
    .sys_wfe_insn_o(sys_wfe_insn_o),
    .sys_fence_insn_o(sys_fence_insn_o),
    .sys_fencei_insn_o(sys_fencei_insn_o),
    .if_id_pipe_i(if_id_pipe_i),
    .alu_en_o(alu_en_o),
    .alu_bch_o(alu_bch_o),
    .alu_jmp_o(alu_jmp_o),
    .alu_jmpr_o(alu_jmpr_o),
    .alu_operator_o(alu_operator_o),
    .alu_op_a_mux_sel_o(alu_op_a_mux_sel_o),
    .alu_op_b_mux_sel_o(alu_op_b_mux_sel_o),
    .mul_operator_o(mul_operator_o),
    .mul_en_o(mul_en_o),
    .mul_signed_mode_o(mul_signed_mode_o),
    .div_operator_o(div_operator_o),
    .div_en_o(div_en_o),
    .csr_en_o(csr_en_o),
    .csr_en_raw_o(csr_en_raw_o),
    .csr_op_o(csr_op_o),
    .mstatus_i(mstatus_i),
    .lsu_en_o(lsu_en_o),
    .lsu_we_o(lsu_we_o),
    .lsu_size_o(lsu_size_o),
    .lsu_sext_o(lsu_sext_o),
    .rf_we_o(rf_we_o),
    .rf_re_o(rf_re_o),
    .rf_raddr_i(rf_raddr_i),
    .rf_waddr_i(rf_waddr_i),
    .rf_illegal_raddr_o(rf_illegal_raddr_o),
    .op_c_mux_sel_o(op_c_mux_sel_o),
    .imm_a_mux_sel_o(imm_a_mux_sel_o),
    .imm_b_mux_sel_o(imm_b_mux_sel_o),
    .bch_jmp_mux_sel_o(bch_jmp_mux_sel_o),
    .ctrl_fsm_i(ctrl_fsm_i),
    .tbljmp_first_i(tbljmp_first_i)
  );

  // Test Instructions
  logic [31:0] test_instr;

  // Initialize signals and apply test cases
  initial begin
    // Initialize control signals
    deassert_we_i = 0;
    mstatus_i = '0;
    ctrl_fsm_i = '0;
    tbljmp_first_i = 0;

    // Initialize if_id_pipe_i
    if_id_pipe_i.instr_valid = 1;
    if_id_pipe_i.illegal_c_insn = 0;
    if_id_pipe_i.priv_lvl = PRIV_LVL_U; // Assuming machine level is used
    if_id_pipe_i.trigger_match = 0;
    if_id_pipe_i.ptr = 0;
    if_id_pipe_i.first_op = 0;
    if_id_pipe_i.last_op = 0;
    if_id_pipe_i.abort_op = 0;
    if_id_pipe_i.compressed_instr = 0;

    // Test SHA256SIG0
    test_instr = 32'b00010000001000100001000010010011; // sha256sig0
    #10;
    if_id_pipe_i.instr.bus_resp.rdata = test_instr;
    #10;
    $display("Testing SHA256SIG0: instr = %b", test_instr);
    assert(alu_en_o == 1'b1);
    assert(alu_operator_o == ALU_SHA256SIG0);
    assert(illegal_insn_o == 1'b0);

    // Test SHA256SIG1
    test_instr = 32'b00010000001100100001000010010011; // sha256sig1
    #10;
    if_id_pipe_i.instr.bus_resp.rdata = test_instr;
    #10;
    $display("Testing SHA256SIG1: instr = %b", test_instr);
    assert(alu_en_o == 1'b1);
    assert(alu_operator_o == ALU_SHA256SIG1);
    assert(illegal_insn_o == 1'b0);

    // Test SHA256SUM0
    test_instr = 32'b00010000000000100001000010010011; // sha256sum0
    #10;
    if_id_pipe_i.instr.bus_resp.rdata = test_instr;
    #10;
    $display("Testing SHA256SUM0: instr = %b", test_instr);
    assert(alu_en_o == 1'b1);
    assert(alu_operator_o == ALU_SHA256SUM0);
    assert(illegal_insn_o == 1'b0);

    // Test SHA256SUM1
    test_instr = 32'b00010000000100100001000010010011; // sha256sum1
    #10;
    if_id_pipe_i.instr.bus_resp.rdata = test_instr;
    #10;
    $display("Testing SHA256SUM1: instr = %b", test_instr);
    assert(alu_en_o == 1'b1);
    assert(alu_operator_o == ALU_SHA256SUM1);
    assert(illegal_insn_o == 1'b0);

    // Test RV32I ADD
    test_instr = 32'b0000000_00001_00001_000_00001_0110011; // ADD
    #10;
    if_id_pipe_i.instr.bus_resp.rdata = test_instr;
    #10;
    $display("Testing RV32I ADD: instr = %b", test_instr);
    assert(alu_en_o == 1'b1);
    assert(alu_operator_o == ALU_ADD); // Assuming ALU_ADD is the correct enum value for ADD
    assert(illegal_insn_o == 1'b0);

    $display("All tests passed.");
    $finish;
  end
endmodule
