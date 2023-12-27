module divider (clk, clk_N);
    input           clk;
    output reg      clk_N;
    parameter       N = 50_000_000;
    reg [31:0]      counter;
	
always @(posedge clk) begin
    counter++;
    if(counter>N/2-1)
        clk_N=~clk_N;
end
	
endmodule


