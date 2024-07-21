////////////////////////////////////////////////////////////////////////////////
// Engineer        Yagiz Yagmur                                               //
//                                                                            //               
// Design Name:    Custom Decoder                                             //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Decoder For Custom Instructions and Zknh Extension         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


module cv32e40s_cust_decoder import cv32e40s_pkg::*;
(
    input logic [31:0] instr_rdata_i,
    output             decoder_ctrl_t decoder_ctrl_o
);
    
    always_comb begin
        // Default
        decoder_ctrl_o = DECODER_CTRL_ILLEGAL_INSN;
        decoder_ctrl_o.illegal_insn = 1'b0;

        unique case (instr_rdata_i[6:0])
            OPCODE_OPIMM: begin
                decoder_ctrl_o.alu_en           = 1'b1;
                decoder_ctrl_o.alu_op_a_mux_sel = OP_A_REGA_OR_FWD;
                decoder_ctrl_o.alu_op_b_mux_sel = OP_B_NONE;
                decoder_ctrl_o.rf_re[0]         = 1'b1;
                decoder_ctrl_o.rf_re[1]         = 1'b0;
                decoder_ctrl_o.rf_we            = 1'b1;

                if ({instr_rdata_i[31:25], instr_rdata_i[14:12]} == {7'b000_1000, 3'b001}) begin   
                        unique case (instr_rdata_i[24:20])
                            5'b00010: decoder_ctrl_o.alu_operator = ALU_SHA256SIG0;
                            5'b00011: decoder_ctrl_o.alu_operator = ALU_SHA256SIG1;
                            5'b00000: decoder_ctrl_o.alu_operator = ALU_SHA256SUM0;
                            5'b00001: decoder_ctrl_o.alu_operator = ALU_SHA256SUM1;
                            default: decoder_ctrl_o = DECODER_CTRL_ILLEGAL_INSN;
                        endcase                    
                end else begin
                    decoder_ctrl_o = DECODER_CTRL_ILLEGAL_INSN;
                end            
            end 
            /*
            OPCODE_OP: begin
                decoder_ctrl_o.alu_en           = 1'b1;
                decoder_ctrl_o.alu_op_a_mux_sel = OP_A_REGA_OR_FWD;
                decoder_ctrl_o.alu_op_b_mux_sel = OP_B_REGB_OR_FWD;
                decoder_ctrl_o.rf_we            = 1'b1;
                decoder_ctrl_o.rf_re[0]         = 1'b1;
            
                unique case ({instr_rdata_i[31:25], instr_rdata_i[14:12]})
                    {7'b001_1000, 3'b000}: decoder_ctrl_o.alu_operator = ALU_ROT;
                    {7'b011_0000, 3'b000}: decoder_ctrl_o.alu_operator = ALU_SBOX;
                    default: decoder_ctrl_o = DECODER_CTRL_ILLEGAL_INSN;
                endcase
            end
            */
            default: decoder_ctrl_o = DECODER_CTRL_ILLEGAL_INSN;
        endcase
    end




endmodule
