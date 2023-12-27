`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2.1
//////////////////////////////////////////////////////////////////////////////////

module _7Seg_Driver_Direct(SW,SEG, AN, LED);
	input [15:0] SW;   // 16位拨动开关
	output [15:0] SEG; // 选数码管驱动哪段，低电平有效
	output [7:0] AN;// 选启动第几个7段数码管，低电平有效
	output [15:0] LED;   // 16位LED显示，高电平有效
	
    assign LED[15:0] = SW[15:0];
    
    assign SEG[0] = ~SW[7];
	assign SEG[1] = ~SW[6];
    assign SEG[2] = ~SW[5];
    assign SEG[3] = ~SW[4];
    assign SEG[4] = ~SW[3];
    assign SEG[5] = ~SW[2];
    assign SEG[6] = ~SW[1];
    assign SEG[7] = ~SW[0];
    
    assign AN[7:0] = ~SW[15:8];
endmodule
