//nλȫ����
module full_adder(a, b, c_in, sum, c_out);
    // ѧϰ parameter ��������ʹ��
    parameter WIDTH = 8;
    input [WIDTH-1:0] a, b;
    input c_in;
    output [WIDTH-1:0] sum;
    output c_out;
    
    assign c_in=0;
    assign { c_out, sum } = a + b + c_in;
endmodule
