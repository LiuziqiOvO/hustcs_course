`timescale 1ns / 1ps



module tb_test_clk(

    );
    
    
    reg clk_10hz;
    wire clk_50hz;
    reg reset;
    
    initial begin
        reset=1;
        #200;
        reset=0;
    end
    
    always begin
        clk_10hz=1;
        #10;
        clk_10hz=0;
        #10;
    end
    
    clk_wiz_0 clk_wiz_0(
        .clk_in1(clk_10hz),
        .clk_out1(clk_50hz),
        .reset(reset)
    );
  
    
endmodule
