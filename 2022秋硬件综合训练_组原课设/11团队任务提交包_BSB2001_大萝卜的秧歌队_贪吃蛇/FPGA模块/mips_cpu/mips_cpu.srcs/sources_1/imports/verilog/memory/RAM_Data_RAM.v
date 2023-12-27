/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_Data_RAM                                                 **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RAM_Data_RAM( addr,
                     clk,
                     d,
                     we,
                     q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[13:0]  addr;
   input  clk;
   input[31:0]  d;
   input  we;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] q;

	reg [31:0] mem[16383:0];
	 initial begin
              $readmemh("D:/lmq/yanshou/tw/c_snake/snake_data.txt",mem);
      end
	always @ (posedge clk) begin
		if (we)
			mem[addr] <= d;
	end
	assign q = mem[addr];

endmodule
