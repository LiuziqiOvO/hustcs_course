`timescale 1ns/1ps
module Counter(clk, out);
    input                   clk;
    output reg [32:0]        out;
        initial begin
            out <= 32'b000;
        end;
    always @(posedge clk)  begin
        out <= out + 1;
    end
endmodule
