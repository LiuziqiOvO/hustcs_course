`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2.2
//////////////////////////////////////////////////////////////////////////////////


module _7segments_Driver_Decode(SW, segments, AN, LED);
	input [15:0] SW;    // 16λ��������
	output reg [7:0] segments;    // 7��������������͵�ƽ��Ч
	output [7:0] AN;    // ѡ�����ڼ���7������ܣ��͵�ƽ��Ч
	output [15:0] LED;  // 16λLED��ʾ

    assign LED[15:0] = SW[15:0];
    assign AN[7:0] = ~SW[15:8];
    //2������ -> 7����
    always @(*) begin
       case (SW[3:0])
            4'b0000: segments[7:0]=8'b11000000;
            4'b0001: segments[7:0]=8'b11111001;
            4'b0010: segments[7:0]=8'b10100100;
            4'b0011: segments[7:0]=8'b10110000;
            4'b0100: segments[7:0]=8'b10011001;
            4'b0100: segments[7:0]=8'b10011001;
            4'b0101: segments[7:0]=8'b10010010;
            4'b0110: segments[7:0]=8'b10000010;
            4'b0111: segments[7:0]=8'b11111000;
            4'b1000: segments[7:0]=8'b10000000;
            4'b1001: segments[7:0]=8'b10011000;
            4'b1010: segments[7:0]=8'b10001000;
            4'b1011: segments[7:0]=8'b10000011;
            4'b1100: segments[7:0]=8'b11000110;
            4'b1101: segments[7:0]=8'b10100001;
            4'b1110: segments[7:0]=8'b10000110;
            4'b1111: segments[7:0]=8'b10001110;
        endcase
    end
endmodule

