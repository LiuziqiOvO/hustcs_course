`timescale 1ns/1ps
module Regifile( Clk,
                 Din,
                 R1Addr,
                 R2Addr,
                 WAddr,
                 WE,
                 R1,
                 R2);


    input [4:0] R1Addr;
    input [4:0] R2Addr;
    output [31:0] R1;
    output [31:0] R2;
    input [4:0] WAddr;
    input WE;
    input [31:0] Din;
    input Clk;

    reg [31:0] registers[31:0];
     integer i;
    initial begin
        for (i=0;i<32;i=i+1) begin
            registers[i]=32'h0;
        end
        registers[2]=32'hea60;
    end
    assign R1=registers[R1Addr];
    assign R2=registers[R2Addr];

    always@(posedge Clk) begin
        
        if(WE && WAddr!=32'd0)
            registers[WAddr]=Din;
    end
endmodule