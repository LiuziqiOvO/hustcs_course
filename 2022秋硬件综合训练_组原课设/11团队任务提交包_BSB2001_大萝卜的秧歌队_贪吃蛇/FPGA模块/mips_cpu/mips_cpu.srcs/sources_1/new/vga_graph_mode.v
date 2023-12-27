`timescale 1ns / 1ps

module vga_graph_mode(
           input clk,
           // provider
           input [20: 0] vaddr,
           input [10: 0] vaddr_x,
           input [10: 0] vaddr_y,
           output [11: 0] vga_graph_mode_output,

           // modifier
           input pixel_modify_enable,
           input [20: 0] pixel_addr_to_change,
           input [10: 0] pixel_addr_x_to_change,
           input [10: 0] pixel_addr_y_to_change,
           input [11: 0] pixel_to_change_to
       );

assign vga_graph_mode_output = 12'b000011001111;

endmodule
