
module counter( 
    input clk,
	input rst,
	input start,
    input up,
    output reg [3:0] counter_out
);
	
	// 请完成模块的设计
    always @(posedge clk) begin
        if(rst)
            counter_out <= 0;
        else if(start & up)
            counter_out <= counter_out+1;
        else if(start & up==0)
            counter_out <= counter_out-1;
    end
	
endmodule

