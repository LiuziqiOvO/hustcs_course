`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2022/05/04 21:13:22
// Design Name: 只读寄存器 ROM  8个4位
//修改约束文件:用3个开关输入地址，输出的4位数据控制4个LED。
//////////////////////////////////////////////////////////////////////////////////

module rom8x4(addr, data);
input [2:0] addr;           // 地址      
output  reg [3:0] data;          // 地址addr处存储的数据 

reg [3: 0] mem [7: 0];      //  8个4位的存储器


initial   begin             // 初始化存储器
    mem[0] = 4'b0000;
	mem[1] = 4'b0001;
	mem[2] = 4'b0010;
	mem[3] = 4'b0011;
	mem[4] = 4'b0100;
	mem[5] = 4'b0101;
	mem[6] = 4'b0110;
	mem[7] = 4'b0111;
end                   

always @(*) begin
   data = mem[addr];
end
endmodule

