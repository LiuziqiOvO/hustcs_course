`timescale 1ns/1ps
module ALU( AluOP,
            X,
            Y,
            Equal,
            Less,
            MoreOrEqual,
            Result,
            Result_2);


   input[3:0]  AluOP;
   input[31:0]  X;
   input[31:0]  Y;

   output reg Equal;
   output reg Less;
   output reg MoreOrEqual;
   output reg [31:0] Result;
   output reg [31:0] Result_2;
   initial begin
        Equal=1'b0;
        Less=1'b0;
        MoreOrEqual=1'b0;
        Result=32'h0;
        Result_2=32'h0;
   end
   always@(X or Y or AluOP) begin
        case(AluOP)
            4'b0000:Result=X<<Y[4:0];
            4'b0001:Result=($signed(X))>>>Y[4:0];
            4'b0010:Result=X>>Y[4:0];
            4'b0101:Result=X+Y;
            4'b0110:Result=X-Y;
            4'b0111:Result=X&Y;
            4'b1000:Result=X|Y;
            4'b1001:Result=X^Y;
            4'b1010:Result=~(X|Y);
            4'b1011:Result=($signed(X)<$signed(Y))?1:0;
            4'b1100:Result=(X<Y)?1:0;
            default:Result=32'h0;
        endcase
        Equal=(X==Y)?1:0;
        MoreOrEqual=(X>=Y)?1:0;
   end
endmodule