`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2022/05/18 19:39:27
// Module Name: FSM

//////////////////////////////////////////////////////////////////////////////////

module FSM(clk, rst, start, next_zero, 
    ld_sum, ld_next, sum_sel, next_sel, a_sel, done);
    input  clk, rst, start, next_zero;
    output reg ld_sum, ld_next, sum_sel, next_sel, a_sel, done;

    parameter START=0, COMPUTE_SUM=1, GET_NEXT=2, DONE=3; //4¸ö×´Ì¬
    reg [1:0]  State, StateNext;
    //Logic ×´Ì¬×ªÒÆÂß¼­    
    always @(State,next_zero) begin
        case(State)
            START:begin
                ld_sum<=0;
                ld_next<=0;
                sum_sel<=0;
                next_sel<=0;
                a_sel<=0;
                done<=0;
                if(start==0)
                    StateNext<=START;
                else
                    StateNext<=COMPUTE_SUM;
            end
            COMPUTE_SUM:begin
                ld_sum<=1;
                ld_next<=0;
                sum_sel<=1;
                next_sel<=1;
                a_sel<=1;
                done<=0;
                StateNext<=GET_NEXT;
            end
            GET_NEXT:begin
                ld_sum<=0;
                ld_next<=1;
                sum_sel<=1;
                next_sel<=1;
                a_sel<=0;
                done<=0;
                if(next_zero==0)
                    StateNext<=COMPUTE_SUM;
                else
                    StateNext<=DONE;
            end
            DONE:begin
                ld_sum<=0;
                ld_next<=0;
                sum_sel<=0;
                next_sel<=0;
                a_sel<=0;
                done<=1;
                if(start==1)
                    StateNext<=DONE;
                else
                    StateNext<=START;
            end
            
        endcase
    end

    //State
    always @(posedge clk) begin
        if(rst==1)
            State<=START;
        else 
            State<=StateNext;
    end
    
endmodule
