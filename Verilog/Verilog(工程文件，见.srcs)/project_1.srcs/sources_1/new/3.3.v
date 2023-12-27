`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/04 21:06:33
//分频器 + 3位计数器  
// 约束文件 out[2:0]分配给LED2~LED0。
//////////////////////////////////////////////////////////////////////////////////


module f_divider_count(clk, out);
    parameter N = 100_000_000;
    input clk;
    output [2:0] out;
    wire clk_N;
    divider #(N) (clk, clk_N);
    counter(clk_N, out);
endmodule
