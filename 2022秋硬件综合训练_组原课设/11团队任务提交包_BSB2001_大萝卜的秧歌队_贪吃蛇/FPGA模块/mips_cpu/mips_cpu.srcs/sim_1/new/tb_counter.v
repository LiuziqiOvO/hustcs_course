`timescale 1ns / 1ps



module tb_counter(

    );
    reg Clk,Rst;
    wire count;
    
    
    initial begin
        Rst=1;
        #5;
        Rst=0;
    end
    
    always begin
        Clk=0;
        #50;
        Clk=1;
        #50;
    end
    divider#(50) tb_divider(Clk,count);
endmodule
