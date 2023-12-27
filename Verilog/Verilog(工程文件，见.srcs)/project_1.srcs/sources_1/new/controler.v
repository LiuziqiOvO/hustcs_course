
//??????

module mips_1stage_decoder(
    input [5:0]         i_op,
	input [5:0]			i_func,
	output reg [3:0]	o_alu_op,
	output reg 		o_MemtoReg,
	output reg 		o_MemWrite,
	output reg 		o_ALU_SRC,
	output reg 		o_RegWrite,
	output reg 		o_SYSCALL,
	output reg 		o_SignedExt,
	output reg 		o_RegDst,
	output reg 		o_BEQ,
	output reg 		o_BNE,
	output reg 		o_JR,	
	output reg 		o_JUMP,
	output reg 		o_JAL
);

    always @(i_op) begin
        case(i_op)
        6'd0:begin
            o_RegWrite=1;
            o_RegDst=1;
            case(i_func)
                6'd00:  o_alu_op=4'd0;//SLL
                6'h03:  o_alu_op=4'd1;//SRA
                6'd02:  o_alu_op=4'd2;//SRL
                6'd32:  o_alu_op=4'd5;//ADD
                6'd33:  o_alu_op=4'd5;//ADDU
                6'd34:  o_alu_op=4'd6;//SUB
                6'd36:  o_alu_op=4'd7;//AND
                6'd37:  o_alu_op=4'd8;//OR
                6'd39:  o_alu_op=4'd10;//NOR
                6'd42:  o_alu_op=4'd11;//SLT
                6'd43:  o_alu_op=4'd12;//SLTU
                6'd8:begin //JR
                    o_alu_op=4'd0;
                    o_JR=1;
                    o_JUMP=1;
                end
                6'd12:begin//SYSCALL
                    o_alu_op=4'd0;
                    o_SYSCALL=1;
                end
                default:
                    o_alu_op=4'hf;//?test
            endcase
        end
        
        6'd2:begin//J
            o_alu_op=4'd0;
            o_JUMP=1;
        end
        6'd3:begin//JAL
            o_alu_op=4'd0;
            o_RegWrite=1;
            o_JUMP=1;
            o_JAL=1;
        end
        6'd4:begin//BEQ
            o_alu_op=4'd11;
            o_SignedExt=1;
            o_BEQ=1;
        end
        6'd5:begin//BNE
            o_alu_op=4'd11;
            o_SignedExt=1;
            o_JR=1;
        end
        6'd8:begin//ADDI
            o_alu_op=4'd5;
            o_ALU_SRC=1;
            o_RegWrite=1;
            o_SignedExt=1;            
        end
        6'd12:begin//ANDI
            o_alu_op=4'd7;
            o_ALU_SRC=1;
            o_RegWrite=1;
        end
        6'd9:begin//ADDI
            o_alu_op=4'd5;
            o_ALU_SRC=1;
            o_RegWrite=1;
            o_SignedExt=0;            
        end
        6'd10:begin//SLTI
            o_alu_op=4'd11;
            o_ALU_SRC=1;
            o_RegWrite=1;
            o_SignedExt=1;
        end
        6'd35:begin
            o_alu_op=4'd5;
            o_MemtoReg=1;
            o_ALU_SRC=1;
            o_RegWrite=1;
            o_SignedExt=1;
        end
        6'd43:begin
            o_alu_op=4'd5;
            o_MemWrite=1;
            o_ALU_SRC=1;
            o_SignedExt=1;
        end
        endcase 
    end
    
endmodule
