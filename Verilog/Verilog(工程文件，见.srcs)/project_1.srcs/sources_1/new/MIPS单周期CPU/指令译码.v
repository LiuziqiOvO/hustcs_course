
module mips_1stage_decoder(
  input [5:0]         i_op,
	input [5:0]			i_func,

	output wire [3:0]	o_alu_op,
    output wire 		o_MemtoReg,
	output wire 		o_MemWrite,
	output wire 		o_ALU_SRC,
	output wire 		o_RegWrite,
	output wire 		o_SYSCALL,
	output wire 		o_SignedExt,
	output wire 		o_RegDst,
	output wire 		o_BEQ,
	output wire 		o_BNE,
	output wire 		o_JR,	
	output wire 		o_JUMP,
	output wire 		o_JAL
);

  reg [15:0] temp;

    always@(*) begin
        case(i_op)
            6'd2: temp={4'd0, 12'h002};//J
            6'd3: temp={4'd0, 12'h103};//JAL
            6'd4: temp={4'd11, 12'h050};//BEQ
            6'd5: temp={4'd11, 12'h048};//BNE
            6'd8: temp={4'd5, 12'h340};//ADDI
            6'd12: temp={4'd7, 12'h300};
            6'd9: temp={4'd5, 12'h300};
            6'd10: temp={4'd11, 12'h340};
            6'd13: temp={4'd8, 12'h300};
            6'd35: temp={4'd5, 12'hb40};
            6'd43: temp={4'd5, 12'h640};
        
            default:begin
                case(i_func)
                    6'd00:  temp={4'd0, 12'h120};//SLL
                    6'd03:  temp={4'd1, 12'h120};//SRA
                    6'd02:  temp={4'd2, 12'h120};//SRL
                    6'd32:  temp={4'd5, 12'h120};//ADD
                    6'd33:  temp={4'd5, 12'h120};//ADDU
                    6'd34:  temp={4'd6, 12'h120};//SUB
                    6'd36:  temp={4'd7, 12'h120};//AND
                    6'd37:  temp={4'd8, 12'h120};//OR
                    6'd39:  temp={4'd10, 12'h120};//NOR
                    6'd42:  temp={4'd11, 12'h120};//SLT
                    6'd43:  temp={4'd12, 12'h120};//SLTU
                    6'd8:   temp={4'd0, 12'h006};//JR
                    6'd12:  temp={4'd0, 12'h080};//SYSCALL
                endcase
                end
        endcase

    end
  assign {o_alu_op,o_MemtoReg,o_MemWrite,o_ALU_SRC,o_RegWrite,o_SYSCALL,o_SignedExt,o_RegDst,o_BEQ,o_BNE,o_JR,o_JUMP,o_JAL}=temp;


endmodule




  
