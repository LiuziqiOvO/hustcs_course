`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/04 20:48:21
// Design Name:  3λ������
//////////////////////////////////////////////////////////////////////////////////

module counter(clk, out);
input clk;                    // ����ʱ��
output reg [2:0] out;             // ����ֵ

always @(posedge clk)  begin  // ��ʱ�������ؼ�������1
    out <= out + 1;
end                       
endmodule

