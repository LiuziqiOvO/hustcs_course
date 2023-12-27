`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/04 21:42:49
// Design Name: Á÷¶¯ÏÔÊ¾
//////////////////////////////////////////////////////////////////////////////////
module dynamic_scan(clk,  SEG, AN);
input clk;             
output [7:0] SEG;  		
output [7:0] AN;        

wire [2:0] num;
wire [4:0] code;

f_divider_count #(100_000_000) (
    .clk(clk),
    .out(num)
);

_7Seg_Driver_Selector(
    .SW(num),
    .AN(AN)
);

rom8x4(
    .addr(num),
    .data(code)//4??  
);

_7Seg_Driver_Decoder(
    .SW(code),
    .SEG(SEG)
);


endmodule

