`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: lab2.3
//////////////////////////////////////////////////////////////////////////////////

module _7Seg_Driver_Choice(SW, SEG, AN, LED);
input [15:0] SW;   // 16位拨动开关
output [7:0] SEG;  // 7段数码管驱动，低电平有效
output [7:0] AN;// 7段数码管片选信号，低电平有效
output [15:0] LED;   // 16位LED显示
    assign LED[15:0] = SW[15:0];
    _7Seg_Driver_Selector(
        .SW(SW[15:13]),//SW15~13 3->8译码 选管
        .AN(AN) 
        );
    _7Seg_Driver_Decoder(
        .SW(SW),      //SW2~0 3->8译码 显示数(16进制)
        .SEG(SEG));
endmodule

module _7Seg_Driver_Selector(SW,AN);//3-8译码器
    input [2:0]   SW; //二进制数
    output reg [8:0]  AN;
    always @(SW)
    begin
        case(SW)
        3'd0: AN = 8'b1111_1110;
        3'd1: AN = 8'b1111_1101;
        3'd2: AN = 8'b1111_1011;
        3'd3: AN = 8'b1111_0111;
        3'd4: AN = 8'b1110_1111;
        3'd5: AN = 8'b1101_1111;
        3'd6: AN = 8'b1011_1111;
        3'd7: AN = 8'b0111_1111;
        endcase
    end

endmodule


module _7Seg_Driver_Decoder(SW, SEG);
	input [15:0] SW;    // 16位拨动开关
	output reg [7:0] SEG;    // 7段数码管驱动，低电平有效
    //2进制数 -> 7段码
    always @(*) begin
       case (SW[3:0])
            4'b0000: SEG=8'b11000000;
            4'b0001: SEG=8'b11111001;
            4'b0010: SEG=8'b10100100;
            4'b0011: SEG=8'b10110000;
            4'b0100: SEG=8'b10011001;
            4'b0100: SEG=8'b10011001;
            4'b0101: SEG=8'b10010010;
            4'b0110: SEG=8'b10000010;
            4'b0111: SEG=8'b11111000;
            4'b1000: SEG=8'b10000000;
            4'b1001: SEG=8'b10011000;
            4'b1010: SEG=8'b10001000;
            4'b1011: SEG=8'b10000011;
            4'b1100: SEG=8'b11000110;
            4'b1101: SEG=8'b10100001;
            4'b1110: SEG=8'b10000110;
            4'b1111: SEG=8'b10001110;
        endcase
    end
endmodule

