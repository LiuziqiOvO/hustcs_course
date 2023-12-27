module mips_alu
(
		a_i					,
        b_i					,
        alu_op				,
                        
        result_1			,
        result_2			,
                        
        over_flow			,
        unsig_over_flow		,
        equal				
);
input [31:0] a_i,b_i;
input [3:0] alu_op;
output  reg [31:0] result_1,result_2;
output  reg over_flow,unsig_over_flow,equal;
reg [63:0] temp;
wire signed  [31:0] a;
wire signed  [31:0] b;

always @(*) begin
    case(alu_op)
        4'd0:begin
            //逻辑左移
            result_1<=a_i<<b_i[4:0];
            result_2<=0;
        end
        4'd1:begin
            //算数右移
            result_2<=0;
            if(a_i[31]==1)
                result_1<=(a_i>>b_i[4:0])|(32'hffff_ffff<<32-b_i[4:0]);
            else
                result_1<=a_i>>b_i[4:0];
        end
        4'd2:begin
            //逻辑右移
            result_1<=a_i>>b_i[4:0];
            result_2<=0;
        end 
        4'd3:begin
            temp=a_i*b_i;
            result_1=temp[31:0];
            result_2=temp[63:32];
        end
        4'd4:begin
            result_1=a_i/b_i;
            result_2=a_i%b_i;
        end
        4'd5:begin
            result_1=a_i+b_i;
            if((~result_1[31] && a_i[31] && b_i[31] )|| (result_1[31] && ~a_i[31] && ~b_i[31] ) )
                over_flow<=1;
            else 
                over_flow<=0;
        end
        4'd6:begin
            result_1=a_i-b_i;
            if((~result_1[31] && a_i[31] && ~b_i[31] )|| (result_1[31] && ~a_i[31] && b_i[31] ) )
                over_flow<=1;
            else 
                over_flow<=0;
        end
        4'd7:result_1=a_i&b_i;
        4'd8:result_1=a_i|b_i;
        4'd9:result_1=a_i^b_i;
        4'd10:result_1=~(a_i|b_i);
        4'd11:result_1=a<b?1:0;
        4'd12:result_1=a_i<b_i?1:0;
    endcase
end
endmodule
