`timescale 1ns / 1ps


module tb_block_ip(

    );
    reg [31:0] addr;
    wire [31:0] data;
    blk_mem_gen_0 tb_block_ip(
        .addra(addr),
        .douta(data)
    
    );
    reg clk;
    always begin
        clk=0;
        #10;
        clk=1;
        #10;
    end
    initial begin
        addr=0;
    end
    always @(posedge clk) begin
        addr<=addr+1;
    end
endmodule
