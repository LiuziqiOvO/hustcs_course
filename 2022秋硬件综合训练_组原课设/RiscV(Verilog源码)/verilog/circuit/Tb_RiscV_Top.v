`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/08 15:03:39
// Design Name: 
// Module Name: Tb_RiscV_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tb_RiscV_Top(
    );
    reg go,rst;
    wire [7:0] AN,SEG;
    reg clk;
    RiscV_Top RickV_Top(clk,go,rst,AN,SEG);
    always begin
            clk<=0;
            #10;
            clk<=1;
            #10;
        end
        
    initial begin
                @(posedge clk);
                rst<=1; //¸´Î»Æô¶¯;
                go<=0;
                @(posedge clk);
                rst<=0;
                #380_000_000;
                go<=1;
            end
           
endmodule
