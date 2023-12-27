`timescale 1ns/1ps
module ImmGenerator( IR,
                     Imm);



    input[31:0]  IR;

   output [31:0] Imm;
   wire [4:0] opcode;
   assign opcode=IR[6:2];
   reg [31:0] ans;
   always@(IR) begin
        case(opcode)
            5'h8:begin
                ans=(IR[31]==1'b1)?{20'b11111111111111111111,IR[31:25],IR[11:7]}:{20'b0,IR[31:25],IR[11:7]}; 
            end
            5'h18:begin
                ans=(IR[31]==1'b1)?{20'b11111111111111111111,IR[31],IR[7],IR[30:25],IR[11:8]}:{20'b0,IR[31],IR[7],IR[30:25],IR[11:8]}; 
            end
            5'h1b:begin
                 ans=(IR[31]==1'b1)?{20'b11111111111111111111,IR[31],IR[19:12],IR[20],IR[30:21]}:{20'b0,IR[31],IR[19:12],IR[20],IR[30:21]}; 
            end
            5'h5:begin
                 ans={1'b0,IR[31:12],11'b0};
            end
            5'hd:begin
                 ans={1'b0,IR[31:12],11'b0};
            end
            default:begin
                ans=(IR[31]==1'b1)?{20'b11111111111111111111,IR[31:20]}:{20'b0,IR[31:20]}; 
            end       
        endcase
   end
   
   assign Imm=ans;

endmodule