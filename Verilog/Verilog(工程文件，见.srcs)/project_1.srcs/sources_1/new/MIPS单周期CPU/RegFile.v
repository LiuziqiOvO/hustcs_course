module mips_regfile
(
	read_reg1_addr	,
    read_reg2_addr	,
    write_reg_addr	,
    data_in			,
    write_read_ena	,
    clk				,
                    
    read_reg1_data	,
    read_reg2_data	
);
    input [4:0] read_reg1_addr;
    input [4:0] read_reg2_addr;
    input [4:0] write_reg_addr;
    input [31:0]data_in;
    input clk;
    input write_read_ena;
    output reg [31:0]   read_reg1_data;
    output reg [31:0]   read_reg2_data;
    reg [31:0] Reg [31:0] ;
    
    
always @(negedge clk) begin
    read_reg1_data <= read_reg1_addr==0? 0:Reg[read_reg1_addr];
    read_reg2_data <= read_reg2_addr==0? 0:Reg[read_reg2_addr];
    if(write_read_ena)
        Reg[write_reg_addr] <= data_in;

end

endmodule
