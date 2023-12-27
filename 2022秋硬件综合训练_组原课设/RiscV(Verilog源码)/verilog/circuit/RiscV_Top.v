module RiscV_Top (
    clk,go,rst,AN,SEG
);
    input clk,rst,go;
    output [7:0] AN,SEG;
    wire Beq,Blt,Bne,MemToReg,MemWrite,ALU_SrcB,RegWrite,Jal,Jalr,Lbu,Uret,S_type,ecall,
    IR21;
    wire [3:0] AluOP;
    wire [4:0]op,func;
    wire [31:0] LedData;
    control Controlor(func,
                IR21,
                //LOGISIM_CLOCK_TREE_0,
                op,
                AluOP,
                ALU_SrcB,
                Blt,
                Beq,
                Bne,
                Jal,
                Jalr,
                Lbu,
                MemToReg,
                MemWrite,
                RegWrite,
                S_type,
                ecall,
                Uret
    );
    datapath Datapath(clk,
                rst,
                go,
                Beq,
                Blt,
                Bne,
                MemToReg,
                MemWrite,
                AluOP,
                ALU_SrcB,
                RegWrite,
                Jal,
                Jalr,
                Lbu,
                Uret,
                S_type,
                ecall,
                IR21,
                op,
                func,
                LedData);
        FPGADigit  FPGADigit( clk,LedData,AN,SEG);
             
endmodule //RiscV_Top