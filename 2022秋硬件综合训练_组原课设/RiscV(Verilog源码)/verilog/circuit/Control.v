/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Controlor                                                    **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Control( Funct,
                  IR21,
                  OP,
                  ALU_OP,
                  ALU_SRC,
                  BLT,
                  Beq,
                  Bne,
                  //Csrci,
                  //Csrsi,
                  JAL,
                  Jalr,
                  LBU,
                  MemToReg,
                  MemWrite,
                  RegWrite,
                  S_type,
                  ecall,
                  uret);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  Funct;
   input  IR21;
   input[4:0]  OP;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output BLT;
   output Beq;
   output Bne;
   //output Csrci;
   //output Csrsi;
   output JAL;
   output Jalr;
   output LBU;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output S_type;
   output ecall;
   output uret;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_31;
   wire[4:0] s_LOGISIM_BUS_32;
   wire[4:0] s_LOGISIM_BUS_35;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_32[4:0]              = Funct;
   assign s_LOGISIM_BUS_35[4:0]              = OP;
   assign s_LOGISIM_NET_40                   = IR21;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Bne                                = s_LOGISIM_NET_19;
   assign ALU_SRC                            = s_LOGISIM_NET_20;
   assign JAL                                = s_LOGISIM_NET_43;
   assign Beq                                = s_LOGISIM_NET_41;
   assign BLT                                = s_LOGISIM_NET_15;
   //assign Csrsi                              = s_LOGISIM_NET_11;
   assign Jalr                               = s_LOGISIM_NET_33;
   assign MemWrite                           = s_LOGISIM_NET_18;
   assign MemToReg                           = s_LOGISIM_NET_42;
   assign LBU                                = s_LOGISIM_NET_10;
   assign S_type                             = s_LOGISIM_NET_12;
   //assign Csrci                              = s_LOGISIM_NET_39;
   assign ALU_OP                             = s_LOGISIM_BUS_31[3:0];
   assign RegWrite                           = s_LOGISIM_NET_34;
   assign uret                               = s_LOGISIM_NET_36;
   assign ecall                              = s_LOGISIM_NET_14;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_40),
              .Input_2(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_NET_36));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_NET_40),
              .Input_2(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_NET_14));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   Control_op     Control_op (.F12(s_LOGISIM_BUS_32[0]),
                                                 .F13(s_LOGISIM_BUS_32[1]),
                                                 .F14(s_LOGISIM_BUS_32[2]),
                                                 .F25(s_LOGISIM_BUS_32[3]),
                                                 .F30(s_LOGISIM_BUS_32[4]),
                                                 .OP2(s_LOGISIM_BUS_35[0]),
                                                 .OP3(s_LOGISIM_BUS_35[1]),
                                                 .OP4(s_LOGISIM_BUS_35[2]),
                                                 .OP5(s_LOGISIM_BUS_35[3]),
                                                 .OP6(s_LOGISIM_BUS_35[4]),
                                                 .S0(s_LOGISIM_BUS_31[0]),
                                                 .S1(s_LOGISIM_BUS_31[1]),
                                                 .S2(s_LOGISIM_BUS_31[2]),
                                                 .S3(s_LOGISIM_BUS_31[3]));

   Control_2      Control_2 (.ALU_SRC(s_LOGISIM_NET_20),
                                                 .BEQ(s_LOGISIM_NET_41),
                                                 .BLT(s_LOGISIM_NET_15),
                                                 .BNE(s_LOGISIM_NET_19),
                                                 .CSRCI(s_LOGISIM_NET_39),
                                                 .CSRSI(s_LOGISIM_NET_11),
                                                 .F12(s_LOGISIM_BUS_32[0]),
                                                 .F13(s_LOGISIM_BUS_32[1]),
                                                 .F14(s_LOGISIM_BUS_32[2]),
                                                 .F25(s_LOGISIM_BUS_32[3]),
                                                 .F30(s_LOGISIM_BUS_32[4]),
                                                 .JAL(s_LOGISIM_NET_43),
                                                 .JALR(s_LOGISIM_NET_33),
                                                 .LBU(s_LOGISIM_NET_10),
                                                 .MemToReg(s_LOGISIM_NET_42),
                                                 .MemWrite(s_LOGISIM_NET_18),
                                                 .OP2(s_LOGISIM_BUS_35[0]),
                                                 .OP3(s_LOGISIM_BUS_35[1]),
                                                 .OP4(s_LOGISIM_BUS_35[2]),
                                                 .OP5(s_LOGISIM_BUS_35[3]),
                                                 .OP6(s_LOGISIM_BUS_35[4]),
                                                 .RegWrite(s_LOGISIM_NET_34),
                                                 .S_Type(s_LOGISIM_NET_12),
                                                 .ecall(s_LOGISIM_NET_13));



endmodule
