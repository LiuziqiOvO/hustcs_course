
module sevenseg_dec(
    input [3:0]         data,
    output reg [6:0]    segments
);
    
always @(*) begin
       case (data[3:0])
            4'b0000: segments[6:0]=7'b000_0001;
            4'b0001: segments[6:0]=7'b100_1111;
            4'b0010: segments[6:0]=7'b001_0010;
            4'b0011: segments[6:0]=7'b000_0110;

            4'b0100: segments[6:0]=7'b100_1100;
            4'b0101: segments[6:0]=7'b010_0100;
            4'b0110: segments[6:0]=7'b010_0000;
            4'b0111: segments[6:0]=7'b000_1111;

            4'b1000: segments[6:0]=7'b000_0000;
            4'b1001: segments[6:0]=7'b000_1100;
            4'b1010: segments[6:0]=7'b000_1000;
            4'b1011: segments[6:0]=7'b110_0000;

            4'b1100: segments[6:0]=7'b111_0010;
            4'b1101: segments[6:0]=7'b100_0010;
            4'b1110: segments[6:0]=7'b011_0000;
            4'b1111: segments[6:0]=7'b011_1000;
        endcase
    end
    
endmodule
