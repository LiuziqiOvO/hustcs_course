

`timescale 1ns/1ps
module FPGADigit( clkx,
                  dig,
                  AN,
                  SEG);

   input  clkx;
   input[31:0]  dig;

   output[7:0] AN;
   output[7:0] SEG;

   wire clk_N;
   wire[3:0] data;
   wire[2:0] num;

    divider #(5000) u_divider(.clk(clkx), .clk_N(clk_N));
    Counter u_counter(.clk(clk_N), .out(num));
    decoder3_8 u_d38(.num(num), .sel(AN));
    display_sel u_ds(.num(num), .dig(dig), .code(data));
    sevenseg_dec u_sd(.data(data), .segments(SEG));

endmodule
