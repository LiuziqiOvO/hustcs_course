module mips_signal_extend
(
    inmediate_data,
    extend_data   
);
input [15:0] inmediate_data;
output  reg [31:0] extend_data;
always @(*) begin 
    if(inmediate_data[15]==1)
        extend_data = 32'hffff0000 + inmediate_data;
    else
        extend_data = 32'h00000000 + inmediate_data;
    end
endmodule
