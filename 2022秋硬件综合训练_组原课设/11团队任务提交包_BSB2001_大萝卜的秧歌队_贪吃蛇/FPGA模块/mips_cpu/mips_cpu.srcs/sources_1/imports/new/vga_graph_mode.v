`timescale 1ns / 1ps

module vga_graph_mode(
           input clk,
           // provider
           
           input [10: 0] vaddr_x,
           input [10: 0] vaddr_y,
           input rst,
           output [11: 0] vga_graph_mode_output,

           // modifier
           input pixel_modify_enable,
           input [20: 0] pixel_addr_to_change,
           input [10: 0] pixel_addr_x_to_change,
           input [10: 0] pixel_addr_y_to_change,
           input [11: 0] pixel_newRGB
       );

reg [11:0] ram [12288-1:0];
//always @(clk) begin
//    if(rst)
//        $readmemh("D:/MyFile/code/Vivado/Team/Test_VGA/graph3.txt",ram);
//end
wire [20: 0] vaddr;
wire [7: 0] mem_x=vaddr_x/8;
wire [7: 0] mem_y=vaddr_y/8;

assign vaddr=mem_y*128 + mem_x;
assign vga_graph_mode_output = ram[vaddr]; 

assign pixel_addr_to_change = pixel_addr_y_to_change*128 + pixel_addr_x_to_change;
  
always @(posedge clk) begin 
    if(pixel_modify_enable)
        ram[pixel_addr_to_change]<=pixel_newRGB;
end

endmodule
