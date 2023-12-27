module register(clk, rst_n, en, d, q);
  parameter WIDTH = 8;
  input clk, rst_n, en;
  input [WIDTH-1:0] d;
  output reg [WIDTH-1:0] q;
  
  always @(posedge clk) begin
    if (rst_n) q <=0;  //����һ��,PPT�ϵĺ����� ���߼�
    else if (en) q <= d;
  end    
endmodule
