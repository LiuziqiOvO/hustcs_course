module datapath (
    clk,rst,go,
    Beq,Blt,Bne,MemToReg,MemWrite,AluOP,ALU_SrcB,RegWrite,Jal,Jalr,Lbu,Uret,S_type,ecall,
    IR21,op,func,LedData
);
    input clk,rst,go;
    input Beq,Blt,Bne,MemToReg,MemWrite,RegWrite,Jal,Jalr,Lbu,Uret,S_type,ecall,ALU_SrcB;
    input [3:0] AluOP;
    output IR21;
    output [4:0] op;
    output [4:0] func;
    output [31:0] LedData;
    wire PC_branch;
    wire [31:0] PC4,Mux2PC;
    wire [31:0] PC,IR;
    wire halt;
    wire [4:0] R1Adr,R2Adr;
    wire [31:0] R1,R2,Din;
    wire [4:0] Aluop;
    wire [31:0] B,Bpre;
    wire les,Equal,geq;
    wire [31:0] Result;
    wire [31:0] RAM_Data;
    
    wire [31:0] o_RAM_MUX,o_LBU,o_RAM;
    
    wire [31:0] o_IorS_MUX;
    wire [31:0] Imm_IorS,Imm_B,Imm_J,Imm_BorJ,ALU4PC_A,ALU4PC_B,NewPC;
    Adder adder(.DataA(PC),.CarryIn(1'b0),.DataB(32'h4),.Result(PC4));
    Mux #(32) PC_Mux(1'b1,PC4,NewPC,PC_branch,Mux2PC);
    REGISTER_FLIP_FLOP_PC #(32) PC_Reg(.Clock(clk),.ClockEnable(~halt),.D(Mux2PC),.Reset(rst),.Q(PC));
    ROM_ROM ROM(PC[11:2],IR);

    Mux #(5)R1Adr_MUX  (1,IR[19:15],17,ecall,R1Adr);
    Mux #(5)R2Adr_MUX  (1,IR[24:20],10,ecall,R2Adr);
    RegFile RegFile(clk,Din,R1Adr,R2Adr,IR[11:7],RegWrite,R1,R2);

    Mux #(32)R1orImm_MUX(1,R2,Imm_IorS,ALU_SrcB,Bpre);
    Mux #(32)ecall_Mux(1,Bpre,32'h22,ecall,B);  
    ALU ALU(AluOP,R1,B,les,Equal,Result);

    RAM_RAM RAM(Result[11:2],clk,R2,MemWrite,RAM_Data);
    //RamData->i_LBU
    wire [7:0] i_LBU;
    //assign i_LBU=Result[1]? (Result[0]?RAM_Data[7:0]:RAM_Data[15:8]) : (Result[0]? RAM_Data[23:16]:RAM_Data[31:24] );
    assign i_LBU=Result[1]? (Result[0]?RAM_Data[31:24]:RAM_Data[23:16]) : (Result[0]? RAM_Data[15:8]:RAM_Data[7:0]);
    Mux #(32)RAM_MUX(1,Result,RAM_Data,MemToReg,o_RAM_MUX);
    Bit_Extender_8_32 LBU_Ext( i_LBU ,o_LBU);
    Mux #(32)LBU_MUX(1,o_RAM_MUX,o_LBU,Lbu,o_RAM);
    
    Mux #(32)RegFile_MUX(1,o_RAM,PC4,Jal||Jalr,Din);
    
                                                                    
    //PC Calculator
    Mux #(12)IorS_MUX(1,IR[31:20],{IR[31:25],IR[11:7]},S_type,o_IorS_MUX);
    Bit_Extender_12_32_SIGN IorS_Ext(o_IorS_MUX,Imm_IorS);  
      
    wire [31:0] Shifter_Imm_B,Shifter_Imm_J;
    
    Shifter_12_bit#(0) Shifter_12_bit ({IR[31],IR[7],IR[30:25],IR[11:8]},4'b1,Shifter_Imm_B);  
    Bit_Extender_12_32_SIGN B_Ext( Shifter_Imm_B,Imm_B);
    
    Shifter_20_bit#(0) Shifter_20_bit ( {IR[31],IR[19:12],IR[20],IR[30:21]},4'b1,Shifter_Imm_J);
    Bit_Extender_20_32_SIGN J_Ext(Shifter_Imm_J,Imm_J);
    
    Mux #(32) BorJ_MUX(1,Imm_B,Imm_J,Jal,Imm_BorJ);
    Mux #(32)Imm_MUX(1,Imm_BorJ,Imm_IorS,Jalr,ALU4PC_A);
    Mux #(32)PCorReg(1,PC,R1,Jalr,ALU4PC_B);
    ALU ALU4PC(.AluOP(4'h5),.X(ALU4PC_A),.Y(ALU4PC_B),.Result(NewPC));

    assign IR21=IR[21];
    assign op=IR[6:2];
    assign func={IR[30],IR[25],IR[14:12]};

    assign PC_branch=((Beq&&Equal)||(Bne&&~Equal)||(Blt&&les)) || Jal || Jalr;
    assign halt=~ (go || ~(ecall&&~Equal));
    
    REGISTER_FLIP_FLOP_PC #(32) LedData_Reg(.Clock(clk),.ClockEnable(ecall && Equal),.D(R2),.Reset(rst),.Q(LedData));

endmodule //RiscV_D ataPath