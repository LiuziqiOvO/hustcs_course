`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/04 19:44:55 lzq
// clk -> clk_N
//��Ƶ : ԭƵ�ʳ���N����
//////////////////////////////////////////////////////////////////////////////////
module divider(clk, clk_N);    
input clk;                      // ϵͳʱ��
output reg clk_N;                   // ��Ƶ���ʱ��
parameter N = 100_000_000;      // 1Hz��ʱ��,N=fclk/fclk_N
reg [31:0] cnt;             /* ������������ͨ������ʵ�ַ�Ƶ��
                                   ����������0������(N/2-1)ʱ��
                                   ���ʱ�ӷ�ת������������ */
                                   
always @(posedge clk)  begin    // ʱ��������
    if(cnt==N/2-1)
        begin
            clk_N<=~clk_N;
            cnt<=0;
        end
    else cnt<=cnt+1;
end
endmodule

