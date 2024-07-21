module cv32e40s_alu_tb import cv32e40s_pkg::*;
#(
  // Parameters
  parameter ALU_SHA256SUM0 = 6'b110110,
  parameter ALU_SHA256SUM1 = 6'b111010,
  parameter ALU_SHA256SIG0 = 6'b111011,
  parameter ALU_SHA256SIG1 = 6'b111111
)();
  // Inputs
  reg [5:0] operator_i;
  reg [31:0] operand_a_i;
  reg [31:0] operand_b_i;
  reg [31:0] muldiv_operand_b_i;
  reg div_clz_en_i;
  reg [31:0] div_clz_data_rev_i;
  reg div_shift_en_i;
  reg [5:0] div_shift_amt_i;

  // Outputs
  wire [31:0] result_o;
  wire cmp_result_o;
  wire [5:0] div_clz_result_o;
  wire [31:0] div_op_b_shifted_o;

  // Instantiate the ALU
  cv32e40s_alu uut (
    .operator_i(operator_i),
    .operand_a_i(operand_a_i),
    .operand_b_i(operand_b_i),
    .muldiv_operand_b_i(muldiv_operand_b_i),
    .result_o(result_o),
    .cmp_result_o(cmp_result_o),
    .div_clz_en_i(div_clz_en_i),
    .div_clz_data_rev_i(div_clz_data_rev_i),
    .div_clz_result_o(div_clz_result_o),
    .div_shift_en_i(div_shift_en_i),
    .div_shift_amt_i(div_shift_amt_i),
    .div_op_b_shifted_o(div_op_b_shifted_o)
  );

  // Test vectors
  reg [31:0] test_operand_a;

  // Initialize and apply test vectors
  initial begin
    // Apply test cases
    $display("Starting test...");

    // Test case 1: ALU_SHA256SUM0
    operator_i = ALU_SHA256SUM0;
    test_operand_a = 32'h12345678; // Example value
    operand_a_i = test_operand_a;
    operand_b_i = 32'h0; // operand_b is unimportant
    muldiv_operand_b_i = 32'h0; // Not used in this case
    div_clz_en_i = 0;
    div_clz_data_rev_i = 32'h0;
    div_shift_en_i = 0;
    div_shift_amt_i = 6'h0;

    #10; // Wait for outputs to stabilize

    $display("ALU_SHA256SUM0 result: %h", result_o);

    // Test case 2: ALU_SHA256SUM1
    operator_i = ALU_SHA256SUM1;
    operand_a_i = test_operand_a;

    #10; // Wait for outputs to stabilize

    $display("ALU_SHA256SUM1 result: %h", result_o);

    // Test case 3: ALU_SHA256SIG0
    operator_i = ALU_SHA256SIG0;
    operand_a_i = test_operand_a;

    #10; // Wait for outputs to stabilize

    $display("ALU_SHA256SIG0 result: %h", result_o);

    // Test case 4: ALU_SHA256SIG1
    operator_i = ALU_SHA256SIG1;
    operand_a_i = test_operand_a;

    #10; // Wait for outputs to stabilize

    $display("ALU_SHA256SIG1 result: %h", result_o);

    $display("Test finished.");
    $stop; // Stop the simulation
  end

endmodule
