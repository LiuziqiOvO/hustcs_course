`timescale 1ns / 1ps



module tb_cpu();
    reg Clk,Rst,Go;
    wire [31:0] LedData;
    wire [31:0] PC,IR;
    reg IR1,IR2,IR3,IR4;
    wire w1,w2,w3,w4;
    initial begin
        Rst=1;
        Go=0;
        IR1=0;
        IR2=0;
        IR3=0;
        IR4=0;
        #5;
        Rst=0;
        #2000;
        IR1=1;
        #5;
        IR1=0;
//        #4000;
//        IR2=1;
//        #5;
//        IR2=0;
//        #4000;
//        IR3=1;
//        #5;
//        IR3=0;
       

    end
    
    always begin
        Clk=0;
        #10;
        Clk=1;
        #10;
    end
    
    wire [7:0] en,addr_x,addr_y,rgb;
    assign en=LedData[31:24];
    assign addr_x=LedData[23:16];
    assign addr_y=LedData[15:8];
    assign rgb=LedData[7:0];
    Single_Cycle_CPU_1_int tb_cpu( .Clk0(Clk),
                                 .Go(Go),
                                 .RST(Rst),
                                 .LedData(LedData),
                                 .PC(PC),
                                 .IR(IR),
                                 .IR1(IR1),
                                 .IR2(IR2),
                                 .IR3(IR3),
                                 .IR4(IR4),
                                 .w1(w1),
                                 .w2(w2),
                                 .w3(w3),
                                 .w4(w4),
                                 .s_rate_0(0),
                                 .s_rate_1(0)
                              );

endmodule