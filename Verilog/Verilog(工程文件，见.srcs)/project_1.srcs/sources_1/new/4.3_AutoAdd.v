`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2022/05/18 20:58:41
// Design Name: auto adder
// lzq 
//////////////////////////////////////////////////////////////////////////////////

module auto_add(clk,rst,start,DONE,sum_out);
    input clk,rst,start;
    output DONE;
    output [31:0] sum_out;

    wire next_zero,ld_sum, ld_next, sum_sel, next_sel, a_sel, done;
    datapath #(32) adder(
        .clk(clk),
        .rst(rst), 
        .SUM_SEL(sum_sel), 
        .NEXT_SEL(next_sel),
        .A_SEL(a_sel),
        .LD_SUM(ld_sum),
        .LD_NEXT(ld_next),
        .NEXT_ZERO(next_zero),
        .sum_out(sum_out));

    FSM fsm(clk, rst, start, next_zero, ld_sum, ld_next, sum_sel, next_sel, a_sel, done);

endmodule