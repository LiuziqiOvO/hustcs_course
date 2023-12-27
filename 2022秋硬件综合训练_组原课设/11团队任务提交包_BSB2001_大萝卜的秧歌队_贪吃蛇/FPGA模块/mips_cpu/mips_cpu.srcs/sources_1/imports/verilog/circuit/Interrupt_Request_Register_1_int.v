`timescale 1ns/1ps

module Interrupt_Request_Register_1_int( CLK,
                                   IR1,
                                   IR2,
                                   IR3,
                                   IR4,
                                   RST,
                                   RST_IR,
                                   IR1_Interrupt_Request,
                                   IR2_Interrupt_Request,
                                   IR3_Interrupt_Request,
                                   IR4_Interrupt_Request,
                                   W1,
                                   W2,
                                   W3,
                                   W4);
   input  CLK;
   input  IR1;
   input  IR2;
   input  IR3;
   input  IR4;
   input  RST;
   input  RST_IR;

   output IR1_Interrupt_Request;
   output IR2_Interrupt_Request;
   output IR3_Interrupt_Request;
   output IR4_Interrupt_Request;
   output W1;
   output W2;
   output W3;
   output W4;

   
   wire D_Flip_1_Q_0;
   wire D_Flip_1_Q_1;
   wire D_Flip_1_D_1;
   wire D_Flip_2_Q_0;
   wire D_Flip_2_Q_1;
   wire D_Flip_2_D_1;
   wire D_Flip_3_Q_0;
   wire D_Flip_3_Q_1;
    wire D_Flip_3_D_1;
   wire D_Flip_4_Q_0;
    wire D_Flip_4_Q_1;
    wire D_Flip_4_D_1;
    
   D_Flip_Flop D_Flip_4_0(//×ó±ßµÄD´¥·¢Æ÷
         .Clock(IR4),
         .Preset(0),
         .Reset(RST||D_Flip_4_Q_1),
         .Q(D_Flip_4_Q_0),
         .D(1)
    );
    D_Flip_Flop D_Flip_4_1(//ÓÒ±ßµÄD´¥·¢Æ÷
         .Clock(CLK),
         .D((D_Flip_4_Q_0 || D_Flip_4_Q_1) && (~RST_IR)),
         .Q(D_Flip_4_Q_1),
         .Reset(RST),
         .Preset(0)  
    );

   D_Flip_Flop D_Flip_1_0(//×ó±ßµÄD´¥·¢Æ÷
        .Clock(IR1),
        .Preset(0),
        .Reset(RST||D_Flip_1_Q_1),
        .Q(D_Flip_1_Q_0),
        .D(1)
   );
   D_Flip_Flop D_Flip_1_1(//ÓÒ±ßµÄD´¥·¢Æ÷
        .Clock(CLK),
        .D((D_Flip_1_Q_0 || D_Flip_1_Q_1) && (~RST_IR)),
        .Q(D_Flip_1_Q_1),
        .Reset(RST),
        .Preset(0)  
   );
   
   
   D_Flip_Flop D_Flip_2_0(//×ó±ßµÄD´¥·¢Æ÷
           .Clock(IR2),
           .Preset(0),
           .Reset(RST||D_Flip_2_Q_1),
           .Q(D_Flip_2_Q_0),
           .D(1)
      );
      D_Flip_Flop D_Flip_2_1(//ÓÒ±ßµÄD´¥·¢Æ÷
           .Clock(CLK),
           .D((D_Flip_2_Q_0 || D_Flip_2_Q_1) && (~RST_IR)),
           .Q(D_Flip_2_Q_1),
           .Reset(RST),
           .Preset(0)  
      );
      
      D_Flip_Flop D_Flip_3_0(//×ó±ßµÄD´¥·¢Æ÷
          .Clock(IR3),
          .Preset(0),
          .Reset(RST||D_Flip_3_Q_1),
          .Q(D_Flip_3_Q_0),
          .D(1)
     );
     D_Flip_Flop D_Flip_3_1(//ÓÒ±ßµÄD´¥·¢Æ÷
          .Clock(CLK),
          .D((D_Flip_3_Q_0 || D_Flip_3_Q_1) && (~RST_IR)),
          .Q(D_Flip_3_Q_1),
          .Reset(RST),
          .Preset(0)  
     );
   assign W1=D_Flip_1_Q_0 || D_Flip_1_Q_1;
   assign W2=D_Flip_2_Q_0 || D_Flip_2_Q_1;
   assign W3=D_Flip_3_Q_0 || D_Flip_3_Q_1;
   assign W4=D_Flip_4_Q_0 || D_Flip_4_Q_1;

   
   assign IR1_Interrupt_Request=D_Flip_1_Q_1;
   assign IR2_Interrupt_Request=D_Flip_2_Q_1;
   assign IR3_Interrupt_Request=D_Flip_3_Q_1;
  assign IR4_Interrupt_Request=D_Flip_4_Q_1;

   

endmodule