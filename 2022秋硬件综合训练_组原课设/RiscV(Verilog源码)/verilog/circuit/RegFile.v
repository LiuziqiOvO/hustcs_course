`timescale 1ns/1ps
module RegFile( Clk,
                Din,
                R1Adr,
                R2Adr,
                WAdr,
                WE,
                R1,
                R2);
   input  Clk;
   input[31:0]  Din;
   input[4:0]  R1Adr;
   input[4:0]  R2Adr;
   input[4:0]  WAdr;
   input  WE;
   output reg[31:0] R1;
   output reg[31:0] R2;
   reg [31:0] Reg [31:0] ;
   initial begin
        Reg[0] <= 32'b0;Reg[1] <= 32'b0;Reg[2] <= 32'b0;Reg[3] <=32'b0;Reg[4] <= 32'b0;Reg[5] <= 32'b0;Reg[6] <= 32'b0;Reg[7]<=32'b0;
        Reg[8] <= 32'b0;Reg[9] <= 32'b0;Reg[10] <= 32'b0;Reg[11] <= 32'b0;Reg[12] <= 32'b0;Reg[13] <= 32'b0;Reg[14] <= 32'b0;Reg[15] <= 32'b0;
        Reg[16] <= 32'b0;Reg[17] <= 32'b0;Reg[18] <= 32'b0;Reg[19] <= 32'b0;Reg[20] <= 32'b0;Reg[21] <= 32'b0;Reg[22] <= 32'b0;Reg[23] <= 32'b0;
        Reg[24] <= 32'b0;Reg[25] <= 32'b0;Reg[26] <= 32'b0;Reg[27] <= 32'b0;Reg[28] <= 32'b0;Reg[29] <= 32'b0;Reg[30] <= 32'b0;Reg[31] <= 32'b0;        
   end
always @(*) begin
       R1 <= R1Adr==00? 32'b0:Reg[R1Adr];
       R2 <= R2Adr==00? 32'b0:Reg[R2Adr];
end
always @(negedge Clk) begin
   if(WE)
           Reg[WAdr] <= WAdr==0? 32'b0:Din;
end
endmodule
