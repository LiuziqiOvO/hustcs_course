`timescale 1ns / 1ps

module vga_sync_generator (
           input clk ,
           output reg [11: 0] x_counter ,
           output reg [10: 0] y_counter ,
           output reg h_sync, v_sync ,
           output reg in_display_area
        );

//localparam h_active_pixels = 1920 ;
//localparam h_front_porch = 88 ;
//localparam h_sync_width = 44 ;
//localparam h_back_porch = 148 ;
localparam h_active_pixels = 1024 ;
localparam h_front_porch = 24 ;
localparam h_sync_width = 136 ;
localparam h_back_porch = 160 ;
localparam h_total_piexls = (h_active_pixels + h_front_porch + h_back_porch + h_sync_width);

//localparam v_active_pixels = 1080 ;
//localparam v_front_porch = 4 ;
//localparam v_sync_width = 5 ;
//localparam v_back_porch = 36 ;
localparam v_active_pixels = 768 ;
localparam v_front_porch = 3 ;
localparam v_sync_width = 6 ;
localparam v_back_porch = 29 ;
localparam v_total_piexls = (v_active_pixels + v_front_porch + v_back_porch + v_sync_width);


initial begin
    x_counter=0;
    y_counter=0;
end

always @(posedge clk)

    if (x_counter == h_total_piexls-1)
        x_counter <= 0;
    else
        x_counter <= x_counter + 1;


always @(posedge clk)
    if (x_counter == h_total_piexls-1)
    begin
        if (y_counter == v_total_piexls-1)
            y_counter <= 0;
        else
            y_counter <= y_counter + 1;
    end

always @(posedge clk)
begin
    h_sync <= !(x_counter >= h_active_pixels + h_front_porch && x_counter < h_active_pixels + h_front_porch + h_sync_width);
    v_sync <= !(y_counter >= v_active_pixels + v_front_porch && y_counter < v_active_pixels + v_front_porch + v_sync_width);
end

always @(posedge clk)
begin
    in_display_area <= (x_counter < h_active_pixels) && (y_counter < v_active_pixels);
end

endmodule
