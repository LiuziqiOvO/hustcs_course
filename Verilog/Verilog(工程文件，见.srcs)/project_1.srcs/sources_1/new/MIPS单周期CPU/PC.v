module mips_pc_reg
(
		clk				,
        rstn			,
        pc_address_in	,
        pc_address_o	
);

    parameter WIDTH = 32;
    input   clk;
    input   rstn;        
    input [WIDTH-1:0]  pc_address_in ;
    output reg  [WIDTH-1:0] pc_address_o;    
    
always @(posedge clk,rstn) begin
    if (~rstn) 
        pc_address_o <=0;  
    else 
        pc_address_o <= pc_address_in;
end    

endmodule
