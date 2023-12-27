
module mips_1stage_datapath(
	input 				clk,
	input 				rst,
	
	input [3:0]			i_alu_op,
	input 				i_MemtoReg,
	input 				i_MemWrite,
	input 				i_ALU_SRC,
	input 				i_RegWrite,
	input 				i_SYSCALL,
	input 				i_SignedExt,
	input 				i_RegDst,
	input 				i_BEQ,
	input 				i_BNE,
	input 				i_JR,	
	input 				i_JUMP,
	input 				i_JAL,
	
    output wire [5:0]   o_op,
	output wire [5:0]	o_func,
	
	output wire [31:0]	o_pc,
	output wire [31:0]  o_instr,
	output wire [31:0]  o_LedData
);
	
reg [31:0] InsMem [30:0];
wire [31:0] pc_address_o, pc_address_in,    imm,R1,R2,B;
wire [5:0] op,func,shamt;
wire [4:0] rs,rt,rd,R1#,R2#,d,W#;
wire [15:0] Imm16;
wire [25:0] Imm26;

mips_pc_reg PC(clk, rstn, pc_address_in, pc_address_o);

assign o_op=pc_address_o[31:26];
assign o_func=pc_address_o[5:0];
assign rs=pc_address_o[25:21];
assign rt=pc_address_o[20:16];
assign rd=pc_address_o[15:11];
assign shamt=pc_address_o[10:5];
assign Imm16=pc_address_o[15:0];
assign Imm26=pc_address_o[25:0];

mux21 MUXs(rs,02,i_SYSCALL,R1#);
mux21 MUXt(rt,04,i_SYSCALL,R2#);
mux21 MUXd(rt,rd,i_RegDst,d);
mux21 MUXw(d,1f,i_JAL,W#);


mips_regfile RegFile(
    R1#,
    R2#,
    W#,
    data_in,
    i_RegWrite,
    clk,
    R1,
    R2);

mux21 MUXimm(R2,imm,i_ALU_SRC,B);

mips_alu ALU(
    R1,
    B,
    i_alu_op,
    R,
    result_2,
    over_flow,
    unsig_over_flow,
    equal);

mips_ram RAM(
    R,
    R2,
    i_MemWrite,
    Mode,
    D_out,
    clk);

//MUX ALU | 数据存储器
mux21 MUX4(R,D_out,i_MemWrite,MUX4);
//MUX MUX4 | PC+4
mux21 MUX5(MUX4,PC+4,JAL,Mem2Reg);
1

////////////////////////////////////////////////////////////////
mips_unsignal_extend (Imm16, unsigned_i  
mux21 MUXextend (unsigned_imm, signed_imm, i_SignedExt, Imm);
endmodule
