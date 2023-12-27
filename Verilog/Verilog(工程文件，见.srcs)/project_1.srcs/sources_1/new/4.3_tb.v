`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2022/05/18 21:17:59
// Design Name: 自动累加器的测试
//////////////////////////////////////////////////////////////////////////////////

module auto_add_tb();
    reg clk, rst, start;
    wire DONE;
    wire [31:0] sum_out;
    
    auto_add Auto_Add(
    .clk(clk),
    .rst(rst),
    .start(start),
    .DONE(DONE),
    .sum_out(sum_out)
    );

    always begin
        clk<=0;
        #10;
        clk<=1;
        #10;
    end
    

    initial begin
        @(posedge clk);
        rst<=1; //复位启动;
        @(posedge clk);
        rst<=0;
        start<=1;
        #5;
    end

    always @(posedge clk) begin
        #5;
        $display("%h\n",sum_out);
    end 

endmodule
