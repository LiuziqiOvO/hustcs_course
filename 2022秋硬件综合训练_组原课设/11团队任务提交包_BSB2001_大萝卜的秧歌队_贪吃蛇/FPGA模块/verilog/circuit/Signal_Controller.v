/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Signal_Controller                                            **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Signal_Controller( F12,
                          F13,
                          F14,
                          F25,
                          F30,
                          OP2,
                          OP3,
                          OP4,
                          OP5,
                          OP6,
                          ALU_SRC,
                          BEQ,
                          BGEU,
                          BNE,
                          JAL,
                          JALR,
                          MemToReg,
                          MemWrite,
                          RegWrite,
                          S_Type,
                          ecall);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  F12;
   input  F13;
   input  F14;
   input  F25;
   input  F30;
   input  OP2;
   input  OP3;
   input  OP4;
   input  OP5;
   input  OP6;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output ALU_SRC;
   output BEQ;
   output BGEU;
   output BNE;
   output JAL;
   output JALR;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output S_Type;
   output ecall;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_125;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_131;
   wire s_LOGISIM_NET_132;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_137;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_139;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_142;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_145;
   wire s_LOGISIM_NET_146;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_152;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_156;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_162;
   wire s_LOGISIM_NET_163;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_167;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_169;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_170;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_172;
   wire s_LOGISIM_NET_173;
   wire s_LOGISIM_NET_174;
   wire s_LOGISIM_NET_175;
   wire s_LOGISIM_NET_176;
   wire s_LOGISIM_NET_177;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_179;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_181;
   wire s_LOGISIM_NET_182;
   wire s_LOGISIM_NET_183;
   wire s_LOGISIM_NET_184;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_84;
   wire s_LOGISIM_NET_85;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_89;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_19                   = F14;
   assign s_LOGISIM_NET_38                   = F30;
   assign s_LOGISIM_NET_18                   = F25;
   assign s_LOGISIM_NET_4                    = F13;
   assign s_LOGISIM_NET_0                    = OP3;
   assign s_LOGISIM_NET_5                    = F12;
   assign s_LOGISIM_NET_21                   = OP5;
   assign s_LOGISIM_NET_22                   = OP6;
   assign s_LOGISIM_NET_1                    = OP2;
   assign s_LOGISIM_NET_39                   = OP4;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign S_Type                             = s_LOGISIM_NET_142;
   assign BNE                                = s_LOGISIM_NET_173;
   assign MemToReg                           = s_LOGISIM_NET_118;
   assign BGEU                               = s_LOGISIM_NET_175;
   assign JALR                               = s_LOGISIM_NET_150;
   assign ALU_SRC                            = s_LOGISIM_NET_104;
   assign RegWrite                           = s_LOGISIM_NET_137;
   assign MemWrite                           = s_LOGISIM_NET_181;
   assign ecall                              = s_LOGISIM_NET_81;
   assign BEQ                                = s_LOGISIM_NET_158;
   assign JAL                                = s_LOGISIM_NET_110;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_18),
                         .Result(s_LOGISIM_NET_116));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_0),
                         .Result(s_LOGISIM_NET_131));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_NET_0),
                         .Result(s_LOGISIM_NET_29));

   NOT_GATE      GATE_4 (.Input_1(s_LOGISIM_NET_22),
                         .Result(s_LOGISIM_NET_93));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_21),
                         .Result(s_LOGISIM_NET_25));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_100),
              .Input_2(s_LOGISIM_NET_47),
              .Input_3(s_LOGISIM_NET_95),
              .Input_4(s_LOGISIM_NET_21),
              .Input_5(s_LOGISIM_NET_22),
              .Input_6(s_LOGISIM_NET_5),
              .Input_7(s_LOGISIM_NET_103),
              .Input_8(s_LOGISIM_NET_102),
              .Result(s_LOGISIM_NET_173));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_39),
                         .Result(s_LOGISIM_NET_68));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_63),
              .Input_2(s_LOGISIM_NET_99),
              .Input_3(s_LOGISIM_NET_172),
              .Input_4(s_LOGISIM_NET_176),
              .Input_5(s_LOGISIM_NET_159),
              .Input_6(s_LOGISIM_NET_74),
              .Input_7(s_LOGISIM_NET_96),
              .Input_8(s_LOGISIM_NET_54),
              .Result(s_LOGISIM_NET_139));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_21),
                         .Result(s_LOGISIM_NET_182));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_67));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_165));

   NOT_GATE      GATE_12 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_157));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_33),
               .Input_2(s_LOGISIM_NET_83),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_147),
               .Input_5(s_LOGISIM_NET_113),
               .Input_6(s_LOGISIM_NET_4),
               .Input_7(s_LOGISIM_NET_19),
               .Result(s_LOGISIM_NET_106));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_53),
               .Input_2(s_LOGISIM_NET_4),
               .Input_3(s_LOGISIM_NET_6),
               .Input_4(s_LOGISIM_NET_57),
               .Input_5(s_LOGISIM_NET_25),
               .Input_6(s_LOGISIM_NET_27),
               .Input_7(s_LOGISIM_NET_29),
               .Input_8(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_122));

   OR_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_108),
               .Input_2(s_LOGISIM_NET_130),
               .Input_3(s_LOGISIM_NET_75),
               .Input_4(s_LOGISIM_NET_184),
               .Input_5(s_LOGISIM_NET_123),
               .Input_6(s_LOGISIM_NET_55),
               .Input_7(s_LOGISIM_NET_69),
               .Result(s_LOGISIM_NET_104));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_78),
               .Input_2(s_LOGISIM_NET_58),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_80),
               .Input_5(s_LOGISIM_NET_64),
               .Input_6(s_LOGISIM_NET_65),
               .Input_7(s_LOGISIM_NET_66),
               .Input_8(s_LOGISIM_NET_70),
               .Result(s_LOGISIM_NET_15));

   NOT_GATE      GATE_17 (.Input_1(s_LOGISIM_NET_18),
                          .Result(s_LOGISIM_NET_121));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_NET_21),
                          .Result(s_LOGISIM_NET_180));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_176));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_20 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_166),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_180),
               .Input_5(s_LOGISIM_NET_148),
               .Input_6(s_LOGISIM_NET_112),
               .Input_7(s_LOGISIM_NET_8),
               .Result(s_LOGISIM_NET_10));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_115),
               .Input_2(s_LOGISIM_NET_174),
               .Input_3(s_LOGISIM_NET_68),
               .Input_4(s_LOGISIM_NET_90),
               .Input_5(s_LOGISIM_NET_52),
               .Input_6(s_LOGISIM_NET_4),
               .Input_7(s_LOGISIM_NET_7),
               .Result(s_LOGISIM_NET_130));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_166));

   NOT_GATE      GATE_23 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_49));

   OR_GATE_11_INPUTS #(.BubblesMask(0))
      GATE_24 (.Input_1(s_LOGISIM_NET_91),
               .Input_10(s_LOGISIM_NET_24),
               .Input_11(s_LOGISIM_NET_156),
               .Input_2(s_LOGISIM_NET_56),
               .Input_3(s_LOGISIM_NET_94),
               .Input_4(s_LOGISIM_NET_10),
               .Input_5(s_LOGISIM_NET_15),
               .Input_6(s_LOGISIM_NET_77),
               .Input_7(s_LOGISIM_NET_106),
               .Input_8(s_LOGISIM_NET_48),
               .Input_9(s_LOGISIM_NET_79),
               .Result(s_LOGISIM_NET_137));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_25 (.Input_1(s_LOGISIM_NET_163),
               .Input_2(s_LOGISIM_NET_51),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_117),
               .Input_5(s_LOGISIM_NET_76),
               .Input_6(s_LOGISIM_NET_4),
               .Input_7(s_LOGISIM_NET_19),
               .Result(s_LOGISIM_NET_55));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_89));

   NOT_GATE      GATE_27 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_87));

   NOT_GATE      GATE_28 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_37));

   NOT_GATE      GATE_29 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_17));

   NOT_GATE      GATE_30 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_74));

   NOT_GATE      GATE_31 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_41));

   NOT_GATE      GATE_32 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_78));

   NOT_GATE      GATE_33 (.Input_1(s_LOGISIM_NET_4),
                          .Result(s_LOGISIM_NET_103));

   NOT_GATE      GATE_34 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_170));

   NOT_GATE      GATE_35 (.Input_1(s_LOGISIM_NET_21),
                          .Result(s_LOGISIM_NET_147));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_168));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_37 (.Input_1(s_LOGISIM_NET_127),
               .Input_2(s_LOGISIM_NET_131),
               .Input_3(s_LOGISIM_NET_43),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_89),
               .Input_6(s_LOGISIM_NET_50),
               .Input_7(s_LOGISIM_NET_4),
               .Input_8(s_LOGISIM_NET_2),
               .Result(s_LOGISIM_NET_142));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_0),
               .Input_3(s_LOGISIM_NET_3),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_22),
               .Result(s_LOGISIM_NET_110));

   NOT_GATE      GATE_39 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_47));

   NOT_GATE      GATE_40 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_83));

   NOT_GATE      GATE_41 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_60));

   NOT_GATE      GATE_42 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_86));

   NOT_GATE      GATE_43 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_100));

   NOT_GATE      GATE_44 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_152));

   NOT_GATE      GATE_45 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_102));

   NOT_GATE      GATE_46 (.Input_1(s_LOGISIM_NET_21),
                          .Result(s_LOGISIM_NET_178));

   NOT_GATE      GATE_47 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_43));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_48 (.Input_1(s_LOGISIM_NET_71),
               .Input_2(s_LOGISIM_NET_9),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_101),
               .Input_6(s_LOGISIM_NET_5),
               .Input_7(s_LOGISIM_NET_121),
               .Input_8(s_LOGISIM_NET_23),
               .Result(s_LOGISIM_NET_48));

   NOT_GATE      GATE_49 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_129));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_160));

   NOT_GATE      GATE_51 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_84));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_52 (.Input_1(s_LOGISIM_NET_167),
               .Input_2(s_LOGISIM_NET_67),
               .Input_3(s_LOGISIM_NET_39),
               .Input_4(s_LOGISIM_NET_134),
               .Input_5(s_LOGISIM_NET_97),
               .Input_6(s_LOGISIM_NET_124),
               .Input_7(s_LOGISIM_NET_125),
               .Result(s_LOGISIM_NET_184));

   NOT_GATE      GATE_53 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_171));

   NOT_GATE      GATE_54 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_80));

   NOT_GATE      GATE_55 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_101));

   NOT_GATE      GATE_56 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_163));

   NOT_GATE      GATE_57 (.Input_1(s_LOGISIM_NET_4),
                          .Result(s_LOGISIM_NET_132));

   NOT_GATE      GATE_58 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_63));

   NOT_GATE      GATE_59 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_164));

   NOT_GATE      GATE_60 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_57));

   NOT_GATE      GATE_61 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_66));

   NOT_GATE      GATE_62 (.Input_1(s_LOGISIM_NET_4),
                          .Result(s_LOGISIM_NET_85));

   AND_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_63 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_0),
               .Input_3(s_LOGISIM_NET_177),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_22),
               .Result(s_LOGISIM_NET_24));

   NOT_GATE      GATE_64 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_97));

   NOT_GATE      GATE_65 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_66 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_59));

   NOT_GATE      GATE_67 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_54));

   NOT_GATE      GATE_68 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_9));

   NOT_GATE      GATE_69 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_53));

   NOT_GATE      GATE_70 (.Input_1(s_LOGISIM_NET_4),
                          .Result(s_LOGISIM_NET_114));

   NOT_GATE      GATE_71 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_62));

   NOT_GATE      GATE_72 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_96));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_73 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_84),
               .Input_3(s_LOGISIM_NET_21),
               .Input_4(s_LOGISIM_NET_22),
               .Input_5(s_LOGISIM_NET_42),
               .Input_6(s_LOGISIM_NET_44),
               .Input_7(s_LOGISIM_NET_46),
               .Result(s_LOGISIM_NET_79));

   NOT_GATE      GATE_74 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_128));

   NOT_GATE      GATE_75 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_155));

   NOT_GATE      GATE_76 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_109));

   NOT_GATE      GATE_77 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_174));

   OR_GATE #(.BubblesMask(0))
      GATE_78 (.Input_1(s_LOGISIM_NET_122),
               .Input_2(s_LOGISIM_NET_139),
               .Result(s_LOGISIM_NET_118));

   NOT_GATE      GATE_79 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_95));

   NOT_GATE      GATE_80 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_32));

   NOT_GATE      GATE_81 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_115));

   NOT_GATE      GATE_82 (.Input_1(s_LOGISIM_NET_21),
                          .Result(s_LOGISIM_NET_159));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_83 (.Input_1(s_LOGISIM_NET_1),
               .Input_2(s_LOGISIM_NET_107),
               .Input_3(s_LOGISIM_NET_170),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_22),
               .Input_6(s_LOGISIM_NET_129),
               .Input_7(s_LOGISIM_NET_85),
               .Input_8(s_LOGISIM_NET_37),
               .Result(s_LOGISIM_NET_69));

   NOT_GATE      GATE_84 (.Input_1(s_LOGISIM_NET_18),
                          .Result(s_LOGISIM_NET_11));

   NOT_GATE      GATE_85 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_169));

   NOT_GATE      GATE_86 (.Input_1(s_LOGISIM_NET_38),
                          .Result(s_LOGISIM_NET_20));

   NOT_GATE      GATE_87 (.Input_1(s_LOGISIM_NET_0),
                          .Result(s_LOGISIM_NET_107));

   NOT_GATE      GATE_88 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_161));

   NOT_GATE      GATE_89 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_149));

   NOT_GATE      GATE_90 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_7));

   NOT_GATE      GATE_91 (.Input_1(s_LOGISIM_NET_39),
                          .Result(s_LOGISIM_NET_105));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_92 (.Input_1(s_LOGISIM_NET_133),
               .Input_2(s_LOGISIM_NET_82),
               .Input_3(s_LOGISIM_NET_128),
               .Input_4(s_LOGISIM_NET_21),
               .Input_5(s_LOGISIM_NET_171),
               .Input_6(s_LOGISIM_NET_135),
               .Input_7(s_LOGISIM_NET_4),
               .Input_8(s_LOGISIM_NET_141),
               .Result(s_LOGISIM_NET_181));

   NOT_GATE      GATE_93 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_6));

   NOT_GATE      GATE_94 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_28));

   NOT_GATE      GATE_95 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_42));

   NOT_GATE      GATE_96 (.Input_1(s_LOGISIM_NET_22),
                          .Result(s_LOGISIM_NET_113));

   NOT_GATE      GATE_97 (.Input_1(s_LOGISIM_NET_1),
                          .Result(s_LOGISIM_NET_98));

   NOT_GATE      GATE_98 (.Input_1(s_LOGISIM_NET_21),
                          .Result(s_LOGISIM_NET_151));

   NOT_GATE      GATE_99 (.Input_1(s_LOGISIM_NET_5),
                          .Result(s_LOGISIM_NET_52));

   NOT_GATE      GATE_100 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_72));

   AND_GATE_10_INPUTS #(.BubblesMask(0))
      GATE_101 (.Input_1(s_LOGISIM_NET_168),
                .Input_10(s_LOGISIM_NET_20),
                .Input_2(s_LOGISIM_NET_41),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_21),
                .Input_5(s_LOGISIM_NET_22),
                .Input_6(s_LOGISIM_NET_149),
                .Input_7(s_LOGISIM_NET_73),
                .Input_8(s_LOGISIM_NET_160),
                .Input_9(s_LOGISIM_NET_136),
                .Result(s_LOGISIM_NET_81));

   NOT_GATE      GATE_102 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_14));

   NOT_GATE      GATE_103 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_44));

   NOT_GATE      GATE_104 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_111));

   NOT_GATE      GATE_105 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_172));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_106 (.Input_1(s_LOGISIM_NET_17),
                .Input_2(s_LOGISIM_NET_138),
                .Input_3(s_LOGISIM_NET_151),
                .Input_4(s_LOGISIM_NET_72),
                .Input_5(s_LOGISIM_NET_13),
                .Input_6(s_LOGISIM_NET_161),
                .Result(s_LOGISIM_NET_91));

   NOT_GATE      GATE_107 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_82));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_108 (.Input_1(s_LOGISIM_NET_31),
                .Input_2(s_LOGISIM_NET_36),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_146),
                .Input_5(s_LOGISIM_NET_93),
                .Input_6(s_LOGISIM_NET_45),
                .Result(s_LOGISIM_NET_56));

   NOT_GATE      GATE_109 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_125));

   NOT_GATE      GATE_110 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_50));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_111 (.Input_1(s_LOGISIM_NET_165),
                .Input_2(s_LOGISIM_NET_62),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_126),
                .Input_5(s_LOGISIM_NET_86),
                .Input_6(s_LOGISIM_NET_114),
                .Input_7(s_LOGISIM_NET_116),
                .Result(s_LOGISIM_NET_123));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_112 (.Input_1(s_LOGISIM_NET_1),
                .Input_2(s_LOGISIM_NET_145),
                .Input_3(s_LOGISIM_NET_35),
                .Input_4(s_LOGISIM_NET_21),
                .Input_5(s_LOGISIM_NET_22),
                .Input_6(s_LOGISIM_NET_157),
                .Input_7(s_LOGISIM_NET_132),
                .Input_8(s_LOGISIM_NET_88),
                .Result(s_LOGISIM_NET_150));

   NOT_GATE      GATE_113 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_58));

   NOT_GATE      GATE_114 (.Input_1(s_LOGISIM_NET_18),
                           .Result(s_LOGISIM_NET_8));

   NOT_GATE      GATE_115 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_135));

   NOT_GATE      GATE_116 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_90));

   NOT_GATE      GATE_117 (.Input_1(s_LOGISIM_NET_38),
                           .Result(s_LOGISIM_NET_23));

   NOT_GATE      GATE_118 (.Input_1(s_LOGISIM_NET_21),
                           .Result(s_LOGISIM_NET_134));

   NOT_GATE      GATE_119 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_124));

   NOT_GATE      GATE_120 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_145));

   NOT_GATE      GATE_121 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_140));

   NOT_GATE      GATE_122 (.Input_1(s_LOGISIM_NET_18),
                           .Result(s_LOGISIM_NET_70));

   NOT_GATE      GATE_123 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_99));

   NOT_GATE      GATE_124 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_92));

   NOT_GATE      GATE_125 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_46));

   NOT_GATE      GATE_126 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_179));

   NOT_GATE      GATE_127 (.Input_1(s_LOGISIM_NET_38),
                           .Result(s_LOGISIM_NET_162));

   NOT_GATE      GATE_128 (.Input_1(s_LOGISIM_NET_39),
                           .Result(s_LOGISIM_NET_35));

   NOT_GATE      GATE_129 (.Input_1(s_LOGISIM_NET_21),
                           .Result(s_LOGISIM_NET_117));

   NOT_GATE      GATE_130 (.Input_1(s_LOGISIM_NET_21),
                           .Result(s_LOGISIM_NET_183));

   NOT_GATE      GATE_131 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_36));

   NOT_GATE      GATE_132 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_154));

   NOT_GATE      GATE_133 (.Input_1(s_LOGISIM_NET_21),
                           .Result(s_LOGISIM_NET_126));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_134 (.Input_1(s_LOGISIM_NET_111),
                .Input_2(s_LOGISIM_NET_59),
                .Input_3(s_LOGISIM_NET_105),
                .Input_4(s_LOGISIM_NET_21),
                .Input_5(s_LOGISIM_NET_22),
                .Input_6(s_LOGISIM_NET_5),
                .Input_7(s_LOGISIM_NET_4),
                .Input_8(s_LOGISIM_NET_19),
                .Result(s_LOGISIM_NET_175));

   NOT_GATE      GATE_135 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_2));

   NOT_GATE      GATE_136 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_34));

   NOT_GATE      GATE_137 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_88));

   NOT_GATE      GATE_138 (.Input_1(s_LOGISIM_NET_21),
                           .Result(s_LOGISIM_NET_146));

   AND_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_139 (.Input_1(s_LOGISIM_NET_1),
                .Input_2(s_LOGISIM_NET_143),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_179),
                .Result(s_LOGISIM_NET_156));

   NOT_GATE      GATE_140 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_73));

   NOT_GATE      GATE_141 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_143));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_142 (.Input_1(s_LOGISIM_NET_16),
                .Input_2(s_LOGISIM_NET_153),
                .Input_3(s_LOGISIM_NET_60),
                .Input_4(s_LOGISIM_NET_21),
                .Input_5(s_LOGISIM_NET_22),
                .Input_6(s_LOGISIM_NET_34),
                .Input_7(s_LOGISIM_NET_144),
                .Input_8(s_LOGISIM_NET_109),
                .Result(s_LOGISIM_NET_158));

   NOT_GATE      GATE_143 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_144));

   NOT_GATE      GATE_144 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_45));

   NOT_GATE      GATE_145 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_71));

   NOT_GATE      GATE_146 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_148));

   NOT_GATE      GATE_147 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_76));

   NOT_GATE      GATE_148 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_33));

   NOT_GATE      GATE_149 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_138));

   NOT_GATE      GATE_150 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_151 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_153));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_152 (.Input_1(s_LOGISIM_NET_140),
                .Input_2(s_LOGISIM_NET_12),
                .Input_3(s_LOGISIM_NET_182),
                .Input_4(s_LOGISIM_NET_26),
                .Input_5(s_LOGISIM_NET_28),
                .Input_6(s_LOGISIM_NET_30),
                .Result(s_LOGISIM_NET_108));

   NOT_GATE      GATE_153 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_30));

   NOT_GATE      GATE_154 (.Input_1(s_LOGISIM_NET_19),
                           .Result(s_LOGISIM_NET_141));

   NOT_GATE      GATE_155 (.Input_1(s_LOGISIM_NET_39),
                           .Result(s_LOGISIM_NET_177));

   AND_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_156 (.Input_1(s_LOGISIM_NET_14),
                .Input_2(s_LOGISIM_NET_154),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_178),
                .Input_5(s_LOGISIM_NET_61),
                .Input_6(s_LOGISIM_NET_155),
                .Result(s_LOGISIM_NET_75));

   NOT_GATE      GATE_157 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_65));

   NOT_GATE      GATE_158 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_40));

   NOT_GATE      GATE_159 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_120));

   NOT_GATE      GATE_160 (.Input_1(s_LOGISIM_NET_18),
                           .Result(s_LOGISIM_NET_136));

   NOT_GATE      GATE_161 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_51));

   AND_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_162 (.Input_1(s_LOGISIM_NET_92),
                .Input_2(s_LOGISIM_NET_49),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_164),
                .Input_5(s_LOGISIM_NET_119),
                .Input_6(s_LOGISIM_NET_4),
                .Input_7(s_LOGISIM_NET_11),
                .Input_8(s_LOGISIM_NET_162),
                .Result(s_LOGISIM_NET_77));

   AND_GATE_7_INPUTS #(.BubblesMask(0))
      GATE_163 (.Input_1(s_LOGISIM_NET_98),
                .Input_2(s_LOGISIM_NET_169),
                .Input_3(s_LOGISIM_NET_39),
                .Input_4(s_LOGISIM_NET_183),
                .Input_5(s_LOGISIM_NET_152),
                .Input_6(s_LOGISIM_NET_120),
                .Input_7(s_LOGISIM_NET_32),
                .Result(s_LOGISIM_NET_94));

   NOT_GATE      GATE_164 (.Input_1(s_LOGISIM_NET_4),
                           .Result(s_LOGISIM_NET_112));

   NOT_GATE      GATE_165 (.Input_1(s_LOGISIM_NET_0),
                           .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_166 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_133));

   NOT_GATE      GATE_167 (.Input_1(s_LOGISIM_NET_39),
                           .Result(s_LOGISIM_NET_3));

   NOT_GATE      GATE_168 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_167));

   NOT_GATE      GATE_169 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_119));

   NOT_GATE      GATE_170 (.Input_1(s_LOGISIM_NET_5),
                           .Result(s_LOGISIM_NET_64));

   NOT_GATE      GATE_171 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_61));

   NOT_GATE      GATE_172 (.Input_1(s_LOGISIM_NET_39),
                           .Result(s_LOGISIM_NET_27));

   NOT_GATE      GATE_173 (.Input_1(s_LOGISIM_NET_22),
                           .Result(s_LOGISIM_NET_26));

   NOT_GATE      GATE_174 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_127));

   NOT_GATE      GATE_175 (.Input_1(s_LOGISIM_NET_1),
                           .Result(s_LOGISIM_NET_16));



endmodule
