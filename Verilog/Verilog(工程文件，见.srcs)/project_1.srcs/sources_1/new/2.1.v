`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2.1
//////////////////////////////////////////////////////////////////////////////////

module _7Seg_Driver_Direct(SW,SEG, AN, LED);
	input [15:0] SW;   // 16λ��������
	output [15:0] SEG; // ѡ����������ĶΣ��͵�ƽ��Ч
	output [7:0] AN;// ѡ�����ڼ���7������ܣ��͵�ƽ��Ч
	output [15:0] LED;   // 16λLED��ʾ���ߵ�ƽ��Ч
	
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
