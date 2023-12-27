`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2022/05/11 20:13:50
// Design Name: ´æ´¢Æ÷

//////////////////////////////////////////////////////////////////////////////////


module ram(addr, clk, data);
  parameter DATA_WIDTH = 8;
  parameter ADDR_WIDTH = 3;

  input clk;
  input [ADDR_WIDTH-1:0] addr;
  output [DATA_WIDTH-1:0] data;

  // ÉêÃ÷´æ´¢Æ÷Êý×é
  reg [DATA_WIDTH-1:0] ram[2** ADDR_WIDTH-1:0];

  initial begin                              //¶Ô´æ´¢Æ÷³õÊ¼»¯
    $readmemh("ram_init.txt", ram);
  end
   
  assign data = ram[addr];

endmodule
