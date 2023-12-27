module mips_ram
(
	Addr_i,
	D_in  ,
	W_en  ,
	Mode  ,
	
	D_out ,
   	
	clk	
);
    input clk;
    input [11:0] Addr_i;
    input [31:0] D_in;
    input W_en;
    input [1:0] Mode;
    output reg [31:0] D_out;

    reg addr [11:0];
    reg data [31:0]; 
    reg [31:0] RAM [1023:0];

    always @(negedge clk) begin
    if(~W_en)
    case(Mode)
        2'b00:  D_out <= RAM[Addr_i[11:2]];
        2'b01:  begin
            case(Addr_i[1:0])
            2'b00:  D_out <= { 24'h000000,RAM[Addr_i[11:2]][7:0] };
            2'b01:  D_out <= { 24'h000000,RAM[Addr_i[11:2]][15:8] };
            2'b10:  D_out <= { 24'h000000,RAM[Addr_i[11:2]][23:16] };
            2'b11:  D_out <= { 24'h000000,RAM[Addr_i[11:2]][31:24] };
            endcase
        end
        2'b10: begin
            if(~Addr_i[1])
                D_out <= { 16'h0000,RAM[Addr_i[11:2]][15:0] };
            else
                D_out <= { 16'h0000,RAM[Addr_i[11:2]][31:16] };
        end
    endcase
    else
    case(Mode)
        2'b00:  RAM[Addr_i[11:2]] <= D_in;
        2'b01:  begin
            case(Addr_i[1:0])
            2'b00:  RAM[Addr_i[11:2]][7:0] <= D_in[7:0];
            2'b01:  RAM[Addr_i[11:2]][15:8] <= D_in[7:0];
            2'b10:  RAM[Addr_i[11:2]][23:16] <= D_in[7:0];
            2'b11:  RAM[Addr_i[11:2]][31:24] <= D_in[7:0];
            endcase
        end
        2'b10: begin
            if(~Addr_i[1])
                RAM[Addr_i[11:2]][15:0] <= D_in[15:0];
            else
                RAM[Addr_i[11:2]][31:16]  <= D_in[15:0];
        end
    endcase
    end
	
endmodule	 
