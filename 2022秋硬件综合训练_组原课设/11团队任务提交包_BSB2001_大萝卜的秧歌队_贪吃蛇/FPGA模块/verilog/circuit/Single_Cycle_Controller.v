/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Single_Cycle_Controller                                      **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Single_Cycle_Controller( Funct,
                                IR,
                                IR21,
                                OP,
                                ALU_OP,
                                ALU_SRC,
                                BGUE,
                                Beq,
                                Bne,
                                JAL,
                                Jalr,
                                MemToReg,
                                MemWrite,
                                RegWrite,
                                S_type,
                                auipc,
                                csrrci,
                                csrrsi,
                                ecall,
                                lb,
                                lui,
                                uret);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  Funct;
   input[31:0]  IR;
   input  IR21;
   input[4:0]  OP;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output BGUE;
   output Beq;
   output Bne;
   output JAL;
   output Jalr;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output S_type;
   output auipc;
   output csrrci;
   output csrrsi;
   output ecall;
   output lb;
   output lui;
   output uret;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_11;
   wire[4:0] s_LOGISIM_BUS_13;
   wire[4:0] s_LOGISIM_BUS_14;
   wire[4:0] s_LOGISIM_BUS_15;
   wire[4:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[4:0] s_LOGISIM_BUS_32;
   wire[4:0] s_LOGISIM_BUS_37;
   wire[3:0] s_LOGISIM_BUS_38;
   wire[3:0] s_LOGISIM_BUS_41;
   wire[2:0] s_LOGISIM_BUS_54;
   wire[2:0] s_LOGISIM_BUS_57;
   wire[2:0] s_LOGISIM_BUS_58;
   wire[4:0] s_LOGISIM_BUS_72;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_74                   = IR21;
   assign s_LOGISIM_BUS_32[4:0]              = OP;
   assign s_LOGISIM_BUS_9[31:0]              = IR;
   assign s_LOGISIM_BUS_30[4:0]              = Funct;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MemToReg                           = s_LOGISIM_NET_36;
   assign uret                               = s_LOGISIM_NET_52;
   assign Beq                                = s_LOGISIM_NET_19;
   assign ALU_OP                             = s_LOGISIM_BUS_41[3:0];
   assign S_type                             = s_LOGISIM_NET_12;
   assign Bne                                = s_LOGISIM_NET_29;
   assign MemWrite                           = s_LOGISIM_NET_55;
   assign csrrsi                             = s_LOGISIM_NET_26;
   assign ALU_SRC                            = s_LOGISIM_NET_71;
   assign auipc                              = s_LOGISIM_NET_69;
   assign lui                                = s_LOGISIM_NET_28;
   assign Jalr                               = s_LOGISIM_NET_42;
   assign RegWrite                           = s_LOGISIM_NET_7;
   assign csrrci                             = s_LOGISIM_NET_27;
   assign JAL                                = s_LOGISIM_NET_45;
   assign lb                                 = s_LOGISIM_NET_44;
   assign BGUE                               = s_LOGISIM_NET_53;
   assign ecall                              = s_LOGISIM_NET_70;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_60 = 1'd0;

   assign s_LOGISIM_NET_18 = 1'd0;

   assign s_LOGISIM_BUS_15[4:0] = 5'd0;

   assign s_LOGISIM_BUS_13[4:0] = 5'd28;

   assign s_LOGISIM_BUS_58[2:0] = 3'd0;

   assign s_LOGISIM_BUS_57[2:0] = 3'd6;

   assign s_LOGISIM_NET_8 = 1'd0;

   assign s_LOGISIM_BUS_14[4:0] = 5'd28;

   assign s_LOGISIM_BUS_11[31:0] = 32'd0;

   assign s_LOGISIM_BUS_72[4:0] = 5'd5;

   assign s_LOGISIM_BUS_54[2:0] = 3'd7;

   assign s_LOGISIM_NET_75 = 1'd0;

   assign s_LOGISIM_BUS_38[3:0] = 4'd0;

   assign s_LOGISIM_BUS_37[4:0] = 5'd13;

   assign s_LOGISIM_NET_43 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_51),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_9[31:0]),
                    .DataB(s_LOGISIM_BUS_11[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_33),
              .Input_2(s_LOGISIM_NET_61),
              .Result(s_LOGISIM_NET_26));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_69),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_32[4:0]),
                    .DataB(s_LOGISIM_BUS_72[4:0]));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_NET_74),
              .Input_2(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_70));

   Comparator #(.NrOfBits(3),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_62),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_30[2:0]),
                    .DataB(s_LOGISIM_BUS_54[2:0]));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_17),
                             .MuxIn_1(s_LOGISIM_NET_60),
                             .MuxOut(s_LOGISIM_NET_55),
                             .Sel(s_LOGISIM_NET_51));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_35),
              .Input_2(s_LOGISIM_NET_63),
              .Result(s_LOGISIM_NET_16));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_33),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_32[4:0]),
                    .DataB(s_LOGISIM_BUS_13[4:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_74),
              .Input_2(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_52));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_40),
                             .MuxIn_1(s_LOGISIM_NET_75),
                             .MuxOut(s_LOGISIM_NET_71),
                             .Sel(s_LOGISIM_NET_51));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_34),
              .Input_2(s_LOGISIM_NET_62),
              .Result(s_LOGISIM_NET_27));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_31[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_38[3:0]),
             .MuxOut(s_LOGISIM_BUS_41[3:0]),
             .Sel(s_LOGISIM_NET_51));

   Multiplexer_2      MUX_4 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_59),
                             .MuxIn_1(s_LOGISIM_NET_43),
                             .MuxOut(s_LOGISIM_NET_36),
                             .Sel(s_LOGISIM_NET_51));

   Comparator #(.NrOfBits(3),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_63),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_30[2:0]),
                    .DataB(s_LOGISIM_BUS_58[2:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_34),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_32[4:0]),
                    .DataB(s_LOGISIM_BUS_14[4:0]));

   Multiplexer_2      MUX_5 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_25),
                             .MuxIn_1(s_LOGISIM_NET_18),
                             .MuxOut(s_LOGISIM_NET_7),
                             .Sel(s_LOGISIM_NET_51));

   Multiplexer_2      MUX_6 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_16),
                             .MuxIn_1(s_LOGISIM_NET_8),
                             .MuxOut(s_LOGISIM_NET_44),
                             .Sel(s_LOGISIM_NET_51));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_35),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_32[4:0]),
                    .DataB(s_LOGISIM_BUS_15[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_28),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_32[4:0]),
                    .DataB(s_LOGISIM_BUS_37[4:0]));

   Comparator #(.NrOfBits(3),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_61),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_30[2:0]),
                    .DataB(s_LOGISIM_BUS_57[2:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   Alu_Controller      Alu_Controller_1 (.F12(s_LOGISIM_BUS_30[0]),
                                         .F13(s_LOGISIM_BUS_30[1]),
                                         .F14(s_LOGISIM_BUS_30[2]),
                                         .F25(s_LOGISIM_BUS_30[3]),
                                         .F30(s_LOGISIM_BUS_30[4]),
                                         .OP2(s_LOGISIM_BUS_32[0]),
                                         .OP3(s_LOGISIM_BUS_32[1]),
                                         .OP4(s_LOGISIM_BUS_32[2]),
                                         .OP5(s_LOGISIM_BUS_32[3]),
                                         .OP6(s_LOGISIM_BUS_32[4]),
                                         .S0(s_LOGISIM_BUS_31[0]),
                                         .S1(s_LOGISIM_BUS_31[1]),
                                         .S2(s_LOGISIM_BUS_31[2]),
                                         .S3(s_LOGISIM_BUS_31[3]));

   Signal_Controller      Signal_Controller_1 (.ALU_SRC(s_LOGISIM_NET_40),
                                               .BEQ(s_LOGISIM_NET_19),
                                               .BGEU(s_LOGISIM_NET_53),
                                               .BNE(s_LOGISIM_NET_29),
                                               .F12(s_LOGISIM_BUS_30[0]),
                                               .F13(s_LOGISIM_BUS_30[1]),
                                               .F14(s_LOGISIM_BUS_30[2]),
                                               .F25(s_LOGISIM_BUS_30[3]),
                                               .F30(s_LOGISIM_BUS_30[4]),
                                               .JAL(s_LOGISIM_NET_45),
                                               .JALR(s_LOGISIM_NET_42),
                                               .MemToReg(s_LOGISIM_NET_59),
                                               .MemWrite(s_LOGISIM_NET_17),
                                               .OP2(s_LOGISIM_BUS_32[0]),
                                               .OP3(s_LOGISIM_BUS_32[1]),
                                               .OP4(s_LOGISIM_BUS_32[2]),
                                               .OP5(s_LOGISIM_BUS_32[3]),
                                               .OP6(s_LOGISIM_BUS_32[4]),
                                               .RegWrite(s_LOGISIM_NET_25),
                                               .S_Type(s_LOGISIM_NET_12),
                                               .ecall(s_LOGISIM_NET_6));



endmodule
