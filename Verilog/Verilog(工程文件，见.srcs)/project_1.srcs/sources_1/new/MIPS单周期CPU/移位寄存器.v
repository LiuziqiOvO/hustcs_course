module shifter(din,s,srsi,slsi,clk,clr,dout);
	input  [7:0] 	din;
	input  [1:0] 	s;
	input 			srsi,slsi,clk,clr;//srsi=dsr slsi=dsl
	output reg [7:0] 	dout;
	// 请在下面添加代码，完成 8 位双向移位寄存器功能
    
	always @(posedge clk,clr,s) begin
        if(clr==0)
            dout<=0;
        else begin
        case(s)
            2'b01:  dout<={srsi,dout[7:1]};
            2'b10:  dout<={dout[6:0],slsi};
            2'b11:  dout<=din;
        endcase
        end
    end

endmodule
