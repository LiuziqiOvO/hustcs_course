`timescale 1ns/1ps
module LogisimToplevelShell(
   Clk,
   Rst,
   Go,
   s_rate_0,
   s_rate_1,
   IR1,
   IR2,
   IR3,
   IR4,
   w1,
   w2,
   w3,
   w4,
   AN,
   SEG,
   s_PC,
   s_cnt
);
   input Clk;
   input Rst;
   input Go;
   input IR1,IR2,IR3,IR4;
   input s_rate_0,s_rate_1;
   input s_cnt,s_PC;

   output w1,w2,w3,w4;
   output [7:0] AN,SEG; 
   
   
   /*********************************************************************/
 
    
    reg [15:0] Second_Count;
    wire Clk_for_Second ;
    wire [31:0] LedData,cnt,dig,PC;
    reg [31:0] seg_for_display;
    divider #(500_000) divider_count(Clk,Clk_for_Second);
    always@(posedge Clk_for_Second or posedge Rst) begin
        if(Rst)
            Second_Count<=16'h0;
         else begin
            Second_Count<=Second_Count+1;
         end
    end
    always@(posedge Clk) begin
        seg_for_display[31:16]=Second_Count;
        if(LedData[25])
            seg_for_display[15:0]=LedData[15:0];
    end
   
/***************************************************************************/






  assign dig=s_PC ? {20'h00000,PC[11:2]} : (s_cnt?cnt:seg_for_display) ;
  Single_Cycle_CPU_1_int      Single_Cycle_CPU_1_int_0 (.Clk0(Clk),
                                                        .Go(Go),
                                                        .IR1(IR1),
                                                        .IR2(IR2),
                                                        .IR3(IR3),
                                                        .IR4(IR4),
                                                        .LedData(LedData),
                                                        .RST(Rst),
                                                        .cnt(cnt),
                                                        .s_rate_0(s_rate_0),
                                                        .s_rate_1(s_rate_1),
                                                        .w1(w1),
                                                        .w2(w2),
                                                        .w3(w3),
                                                        .w4(w4),
                                                        .PC(PC));
  FPGADigit FPGADigit_0(
       .clkx(Clk),
       .dig(dig),
       .AN(AN),
       .SEG(SEG)
  );

  
  wire clk_for_1080p;
  wire clk_for_change;
  clk_wiz_0 clk_for_display(
          .clk_in1(Clk),
          .clk_out1(clk_for_1080p)
      );
   divider #(10_000_000) div(Clk,clk_for_change);
      
   wire [10:0] vaddr_x;//Ҫ��ʾ�����ص��������
   wire [10:0] vaddr_y;//Ҫ��ʾ�����ص��������
   wire [11:0] vdata;//Ҫ��ʾ�����ص��rgb
   
   
   
     reg [10:0] graph_addr_x_to_change;//Ҫ�޸ĵ����ؿ��������
     reg [10:0] graph_addr_y_to_change;//Ҫ�޸ĵ����ؿ��������
     reg [11:0] graph_to_change_to;//Ҫ�޸ĵ����ؿ��rgb
     reg  graph_modify_enable;
     
     
     always @(Clk)begin
         graph_modify_enable=LedData[24];//1���޸�ͼ��
         graph_addr_y_to_change={3'b000,LedData[23:16]};//������
         graph_addr_x_to_change={3'b000,LedData[15:8]};//������
         case(LedData[7:0]) //���ص����ɫ
             8'h20:graph_to_change_to=12'h000;////��ɫ ���� asm��Ϊ ' '
             8'h7c:graph_to_change_to=12'hfff;//��ɫ ǽ  asm��Ϊ '|'��'-'
             8'h2d:graph_to_change_to=12'hfff;//��ɫ ǽ
             8'h6f:graph_to_change_to=12'h0f7;//��ɫ ��ͷ asm��Ϊ'o'
             8'h2a:graph_to_change_to=12'h0f7;//��ɫ ���� asm��Ϊ'*'
             8'h23:graph_to_change_to=12'h00f;//��ɫ �� asm��Ϊ'#'
             default:graph_to_change_to=12'h000;
         endcase
     end
 /*
     //135�� 240�� 68*240=16320���ַ�
     //ÿ���ַ� 8�� 8�� 
     //������Ļ���ص�Ϊ1080�� 1920��
         
         
     //�洢��Ļ ���ַ���ʽ  68�к�240�� �ṩ�޸Ķ˿�
     //����Ҫ��ʾ�����ص������ vaddr_x vaddr_y ����ַ����� ���������ַ�vga_text_mode_output
     vga_graph_mode vga_graph_mode(//(x,y)->RGB
         .clk(Clk),//ram_change
         .rst(Rst),
         .vaddr_x(vaddr_x),//input Ҫ��ʾ�����ص��������
         .vaddr_y(vaddr_y),//input Ҫ��ʾ�����ص��������
         .pixel_modify_enable(graph_modify_enable),
         .pixel_addr_x_to_change(graph_addr_x_to_change),
         .pixel_addr_y_to_change(graph_addr_y_to_change),
         .pixel_newRGB(graph_to_change_to),
//          .pixel_addr_x_to_change(100),
//          .pixel_addr_y_to_change(100),
//          .pixel_newRGB(12'h000), ȫ����ɫ��Ҳ���������Ļ�ɫ��
         
         
         .vga_graph_mode_output(vdata)//output Ҫ��ʾ�����ص��rgb
     );
    
    
    //��ʾ����Ļ �洢���ص�ram
    //����Ҫ��ʾ���ַ� ��Ҫ��ʾ�����ص��������� ���vga��ʾҪ�� vga h_sync v_sync
    vga_display vga_display(
            .clk(clk_for_1080p),
            .rst(Rst),
            .vdata(vdata),//Ҫ��ʾ�����ص��rgb
            
            .vaddr_x(vaddr_x),//output Ҫ��ʾ�����ص�������
            .vaddr_y(vaddr_y),//output Ҫ��ʾ�����ص�������
            .h_sync(h_sync),
            .v_sync(v_sync),
            .vga(vga)
        );

*/

  

   


endmodule
