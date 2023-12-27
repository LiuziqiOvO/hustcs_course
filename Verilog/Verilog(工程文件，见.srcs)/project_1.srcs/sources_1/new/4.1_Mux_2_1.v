module Mux_2_1(a, b, sel, out);
    parameter WIDTH=8;
    
    input [WIDTH-1:0] a,b;
    input sel;
    output [WIDTH-1:0] out;

    assign out = sel==0? a:b;
    
endmodule 