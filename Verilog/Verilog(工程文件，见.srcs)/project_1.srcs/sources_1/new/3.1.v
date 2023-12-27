`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/04 19:44:55 lzq
// clk -> clk_N
//分频 : 原频率除以N倍。
//////////////////////////////////////////////////////////////////////////////////
module divider(clk, clk_N);    
input clk;                      // 系统时钟
output reg clk_N;                   // 分频后的时钟
parameter N = 100_000_000;      // 1Hz的时钟,N=fclk/fclk_N
reg [31:0] cnt;             /* 计数器变量，通过计数实现分频。
                                   当计数器从0计数到(N/2-1)时，
                                   输出时钟翻转，计数器清零 */
                                   
always @(posedge clk)  begin    // 时钟上升沿
    if(cnt==N/2-1)
        begin
            clk_N<=~clk_N;
            cnt<=0;
        end
    else cnt<=cnt+1;
end
endmodule

