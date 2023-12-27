/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Single_Cycle_CPU_1_int                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Single_Cycle_CPU_1_int( Clk0,
                               Go,
                               IR1,
                               IR2,
                               IR3,
                               IR4,
                               RST,
                               LedData,
                               cnt,
                               s_rate_0,
                               s_rate_1,
                               PC,
                               w1,
                               w2,
                               w3,
                               w4);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clk0;
   input  Go;
   input  IR1;
   input  IR2;
   input  IR3;
   input  IR4;
   input  RST;
    input s_rate_0,s_rate_1;

    reg Clk;
    wire Clk1,Clk2,Clk3,Clk4;
    divider #(5000000) divider_cpu1(Clk0,Clk1);
    divider #(500000) divider_cpu2(Clk0,Clk2);
    divider #(50000) divider_cpu3(Clk0,Clk3);
    divider #(50) divider_cpu4(Clk0,Clk4);
    always@(*) begin
         case({s_rate_0,s_rate_1})
             2'b00: Clk=Clk1;
             2'b01: Clk=Clk2;
             2'b10: Clk=Clk3;
             2'b11: Clk=Clk4;
          endcase
    end
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] LedData,PC;
   output[31:0] cnt;
   output w1;
   output w2;
   output w3;
   output w4;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_100;
   wire[3:0] s_LOGISIM_BUS_109;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_122;
   wire[31:0] s_LOGISIM_BUS_131;
   wire[31:0] s_LOGISIM_BUS_134;
   wire[31:0] s_LOGISIM_BUS_137;
   wire[31:0] s_LOGISIM_BUS_139;
   wire[31:0] s_LOGISIM_BUS_144;
   wire[4:0] s_LOGISIM_BUS_145;
   wire[4:0] s_LOGISIM_BUS_150;
   wire[31:0] s_LOGISIM_BUS_151;
   wire[30:0] s_LOGISIM_BUS_159;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[2:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[3:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_53;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[4:0] s_LOGISIM_BUS_63;
   wire[31:0] s_LOGISIM_BUS_64;
   wire[4:0] s_LOGISIM_BUS_70;
   wire[31:0] s_LOGISIM_BUS_71;
   wire[4:0] s_LOGISIM_BUS_77;
   wire[31:0] s_LOGISIM_BUS_78;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[4:0] s_LOGISIM_BUS_81;
   wire[31:0] s_LOGISIM_BUS_82;
   wire[31:0] s_LOGISIM_BUS_85;
   wire[31:0] s_LOGISIM_BUS_89;
   wire[31:0] s_LOGISIM_BUS_94;
   wire[31:0] s_LOGISIM_BUS_97;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_107;
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
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_125;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_133;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_142;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_146;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_156;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_57;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_60;
   wire s_LOGISIM_NET_61;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_65;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_80;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_98;
   wire s_LOGISIM_NET_99;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_27[0]                = s_LOGISIM_BUS_32[12];
   assign s_LOGISIM_BUS_70[0]                = s_LOGISIM_BUS_27[0];
   assign s_LOGISIM_BUS_27[1]                = s_LOGISIM_BUS_32[13];
   assign s_LOGISIM_BUS_70[1]                = s_LOGISIM_BUS_27[1];
   assign s_LOGISIM_BUS_27[2]                = s_LOGISIM_BUS_32[14];
   assign s_LOGISIM_BUS_70[2]                = s_LOGISIM_BUS_27[2];
   assign s_LOGISIM_NET_83                   = s_LOGISIM_BUS_32[25];
   assign s_LOGISIM_BUS_70[3]                = s_LOGISIM_NET_83;
   assign s_LOGISIM_NET_120                  = s_LOGISIM_BUS_32[30];
   assign s_LOGISIM_BUS_70[4]                = s_LOGISIM_NET_120;
   assign s_LOGISIM_BUS_159[0]               = s_LOGISIM_BUS_59[1];
   assign s_LOGISIM_BUS_35[1]                = s_LOGISIM_BUS_159[0];
   assign s_LOGISIM_BUS_159[1]               = s_LOGISIM_BUS_59[2];
   assign s_LOGISIM_BUS_35[2]                = s_LOGISIM_BUS_159[1];
   assign s_LOGISIM_BUS_159[2]               = s_LOGISIM_BUS_59[3];
   assign s_LOGISIM_BUS_35[3]                = s_LOGISIM_BUS_159[2];
   assign s_LOGISIM_BUS_159[3]               = s_LOGISIM_BUS_59[4];
   assign s_LOGISIM_BUS_35[4]                = s_LOGISIM_BUS_159[3];
   assign s_LOGISIM_BUS_159[4]               = s_LOGISIM_BUS_59[5];
   assign s_LOGISIM_BUS_35[5]                = s_LOGISIM_BUS_159[4];
   assign s_LOGISIM_BUS_159[5]               = s_LOGISIM_BUS_59[6];
   assign s_LOGISIM_BUS_35[6]                = s_LOGISIM_BUS_159[5];
   assign s_LOGISIM_BUS_159[6]               = s_LOGISIM_BUS_59[7];
   assign s_LOGISIM_BUS_35[7]                = s_LOGISIM_BUS_159[6];
   assign s_LOGISIM_BUS_159[7]               = s_LOGISIM_BUS_59[8];
   assign s_LOGISIM_BUS_35[8]                = s_LOGISIM_BUS_159[7];
   assign s_LOGISIM_BUS_159[8]               = s_LOGISIM_BUS_59[9];
   assign s_LOGISIM_BUS_35[9]                = s_LOGISIM_BUS_159[8];
   assign s_LOGISIM_BUS_159[9]               = s_LOGISIM_BUS_59[10];
   assign s_LOGISIM_BUS_35[10]               = s_LOGISIM_BUS_159[9];
   assign s_LOGISIM_BUS_159[10]              = s_LOGISIM_BUS_59[11];
   assign s_LOGISIM_BUS_35[11]               = s_LOGISIM_BUS_159[10];
   assign s_LOGISIM_BUS_159[11]              = s_LOGISIM_BUS_59[12];
   assign s_LOGISIM_BUS_35[12]               = s_LOGISIM_BUS_159[11];
   assign s_LOGISIM_BUS_159[12]              = s_LOGISIM_BUS_59[13];
   assign s_LOGISIM_BUS_35[13]               = s_LOGISIM_BUS_159[12];
   assign s_LOGISIM_BUS_159[13]              = s_LOGISIM_BUS_59[14];
   assign s_LOGISIM_BUS_35[14]               = s_LOGISIM_BUS_159[13];
   assign s_LOGISIM_BUS_159[14]              = s_LOGISIM_BUS_59[15];
   assign s_LOGISIM_BUS_35[15]               = s_LOGISIM_BUS_159[14];
   assign s_LOGISIM_BUS_159[15]              = s_LOGISIM_BUS_59[16];
   assign s_LOGISIM_BUS_35[16]               = s_LOGISIM_BUS_159[15];
   assign s_LOGISIM_BUS_159[16]              = s_LOGISIM_BUS_59[17];
   assign s_LOGISIM_BUS_35[17]               = s_LOGISIM_BUS_159[16];
   assign s_LOGISIM_BUS_159[17]              = s_LOGISIM_BUS_59[18];
   assign s_LOGISIM_BUS_35[18]               = s_LOGISIM_BUS_159[17];
   assign s_LOGISIM_BUS_159[18]              = s_LOGISIM_BUS_59[19];
   assign s_LOGISIM_BUS_35[19]               = s_LOGISIM_BUS_159[18];
   assign s_LOGISIM_BUS_159[19]              = s_LOGISIM_BUS_59[20];
   assign s_LOGISIM_BUS_35[20]               = s_LOGISIM_BUS_159[19];
   assign s_LOGISIM_BUS_159[20]              = s_LOGISIM_BUS_59[21];
   assign s_LOGISIM_BUS_35[21]               = s_LOGISIM_BUS_159[20];
   assign s_LOGISIM_BUS_159[21]              = s_LOGISIM_BUS_59[22];
   assign s_LOGISIM_BUS_35[22]               = s_LOGISIM_BUS_159[21];
   assign s_LOGISIM_BUS_159[22]              = s_LOGISIM_BUS_59[23];
   assign s_LOGISIM_BUS_35[23]               = s_LOGISIM_BUS_159[22];
   assign s_LOGISIM_BUS_159[23]              = s_LOGISIM_BUS_59[24];
   assign s_LOGISIM_BUS_35[24]               = s_LOGISIM_BUS_159[23];
   assign s_LOGISIM_BUS_159[24]              = s_LOGISIM_BUS_59[25];
   assign s_LOGISIM_BUS_35[25]               = s_LOGISIM_BUS_159[24];
   assign s_LOGISIM_BUS_159[25]              = s_LOGISIM_BUS_59[26];
   assign s_LOGISIM_BUS_35[26]               = s_LOGISIM_BUS_159[25];
   assign s_LOGISIM_BUS_159[26]              = s_LOGISIM_BUS_59[27];
   assign s_LOGISIM_BUS_35[27]               = s_LOGISIM_BUS_159[26];
   assign s_LOGISIM_BUS_159[27]              = s_LOGISIM_BUS_59[28];
   assign s_LOGISIM_BUS_35[28]               = s_LOGISIM_BUS_159[27];
   assign s_LOGISIM_BUS_159[28]              = s_LOGISIM_BUS_59[29];
   assign s_LOGISIM_BUS_35[29]               = s_LOGISIM_BUS_159[28];
   assign s_LOGISIM_BUS_159[29]              = s_LOGISIM_BUS_59[30];
   assign s_LOGISIM_BUS_35[30]               = s_LOGISIM_BUS_159[29];
   assign s_LOGISIM_BUS_159[30]              = s_LOGISIM_BUS_59[31];
   assign s_LOGISIM_BUS_35[31]               = s_LOGISIM_BUS_159[30];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_117                  = IR2;
   assign s_LOGISIM_NET_147                  = Clk;
   assign s_LOGISIM_NET_126                  = Go;
   assign s_LOGISIM_NET_146                  = IR3;
   assign s_LOGISIM_NET_124                  = RST;
   assign s_LOGISIM_NET_102                  = IR4;
   assign s_LOGISIM_NET_135                  = IR1;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign w1                                 = s_LOGISIM_NET_111;
   assign w2                                 = s_LOGISIM_NET_115;
   assign w3                                 = s_LOGISIM_NET_143;
   assign w4                                 = s_LOGISIM_NET_68;
   assign LedData                            = s_LOGISIM_BUS_25[31:0];
   assign cnt                                = s_LOGISIM_BUS_97[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_88 = 1'd1;

   assign s_LOGISIM_BUS_78[31:0] = 32'd0;

   assign s_LOGISIM_NET_87 = 1'd0;

   assign s_LOGISIM_NET_101 = 1'd1;

   assign s_LOGISIM_NET_36 = 1'd0;

   assign s_LOGISIM_NET_90 = 1'd0;

   assign s_LOGISIM_BUS_82[31:0] = 32'd13832;

   assign s_LOGISIM_BUS_40[31:0] = 32'd13832;

   assign s_LOGISIM_NET_157 = 1'd0;

   assign s_LOGISIM_BUS_145[4:0] = 5'd10;

   assign s_LOGISIM_BUS_131[31:0] = 32'd13660;

   assign s_LOGISIM_NET_48 = 1'd0;

   assign s_LOGISIM_NET_123 = 1'd0;

   assign s_LOGISIM_NET_42 = 1'd0;

   assign s_LOGISIM_NET_46 = 1'd0;

   assign s_LOGISIM_NET_28 = 1'd0;

   assign s_LOGISIM_NET_127 = 1'd1;

   assign s_LOGISIM_BUS_12[31:0] = 32'd4;

   assign s_LOGISIM_NET_38 = 1'd0;

   assign s_LOGISIM_BUS_63[4:0] = 5'd1;

   assign s_LOGISIM_NET_154 = 1'd0;

   assign s_LOGISIM_NET_18 = 1'd0;

   assign s_LOGISIM_BUS_54[31:0] = 32'hd4c;

   assign s_LOGISIM_NET_105 = 1'd0;

   assign s_LOGISIM_NET_156 = 1'd1;

   assign s_LOGISIM_BUS_144[31:0] = 32'd34;

   assign s_LOGISIM_NET_118 = 1'd1;

   assign s_LOGISIM_NET_119 = 1'd0;

   assign s_LOGISIM_BUS_100[31:0] = 32'hd68;

   assign s_LOGISIM_NET_158 = 1'd0;

   assign s_LOGISIM_NET_96 = 1'd0;

   assign s_LOGISIM_NET_41 = 1'd0;

   assign s_LOGISIM_NET_69 = 1'd0;

   assign s_LOGISIM_NET_3 = 1'd0;

   assign s_LOGISIM_NET_114 = 1'd0;

   assign s_LOGISIM_NET_80 = 1'd0;

   assign s_LOGISIM_BUS_85[31:0] = 32'd13832;

   assign s_LOGISIM_NET_93 = 1'd1;

   assign s_LOGISIM_BUS_77[4:0] = 5'd17;

   assign s_LOGISIM_NET_160 = 1'd0;

   assign s_LOGISIM_NET_104 = 1'd0;

   assign s_LOGISIM_BUS_1[31:0] = 32'd0;

   assign s_LOGISIM_NET_23 = 1'd0;

   assign s_LOGISIM_NET_161 = 1'd0;

   assign s_LOGISIM_BUS_35[0] = 1'd0;

   assign s_LOGISIM_BUS_151[31:0] = 32'hd84;

   assign s_LOGISIM_BUS_47[31:0] = 32'hd4c;

   assign s_LOGISIM_NET_95 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_147),
                       .ClockEnable(s_LOGISIM_NET_86),
                       .D(s_LOGISIM_BUS_22[31:0]),//
                       .Q(s_LOGISIM_BUS_39[31:0]),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_46),
                       .pre(s_LOGISIM_NET_18));
   assign PC=s_LOGISIM_BUS_39;

   RAM_Data_RAM      RAM_1 (.addr(s_LOGISIM_BUS_17[17:2]),
                            .clk(s_LOGISIM_NET_147),
                            .d(s_LOGISIM_BUS_30[31:0]),
                            .q(s_LOGISIM_BUS_53[31:0]),
                            .we(s_LOGISIM_NET_76));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_104),
                             .MuxIn_1(s_LOGISIM_NET_101),
                             .MuxOut(s_LOGISIM_NET_57),
                             .Sel(s_LOGISIM_NET_34));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_BUS_109[0]),
              .Input_2(s_LOGISIM_BUS_109[1]),
              .Input_3(s_LOGISIM_BUS_109[2]),
              .Input_4(s_LOGISIM_BUS_109[3]),
              .Result(s_LOGISIM_NET_26));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_33[31:0]),
                 .Result(s_LOGISIM_BUS_24[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_63[4:0]));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_113),
                         .Result(s_LOGISIM_NET_86));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_147),
                       .ClockEnable(s_LOGISIM_NET_156),
                       .D(s_LOGISIM_NET_26),
                       .Q(s_LOGISIM_NET_15),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_161),
                       .pre(s_LOGISIM_NET_38));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_59[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_122[31:0]),
             .Sel(s_LOGISIM_NET_51));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_122[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_29[31:0]),
             .MuxOut(s_LOGISIM_BUS_134[31:0]),
             .Sel(s_LOGISIM_NET_142));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_154),
                       .ClockEnable(s_LOGISIM_NET_160),
                       .D(s_LOGISIM_NET_41),
                       .Q(s_LOGISIM_NET_153),
                       .Reset(s_LOGISIM_NET_110),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_90),
                       .pre(s_LOGISIM_NET_16));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_148),
              .Input_2(s_LOGISIM_NET_124),
              .Result(s_LOGISIM_NET_110));

   ROM_Instr_ROM      ROM_1 (.Address(s_LOGISIM_BUS_39[11:2]),
                             .Data(s_LOGISIM_BUS_32[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_26),
              .Input_2(s_LOGISIM_NET_50),
              .Result(s_LOGISIM_NET_148));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_129),
              .Input_2(s_LOGISIM_NET_74),
              .Result(s_LOGISIM_NET_58));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_10),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_64[31:0]),
                    .DataB(s_LOGISIM_BUS_144[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_147),
                       .ClockEnable(s_LOGISIM_NET_127),
                       .D(s_LOGISIM_NET_26),
                       .Q(s_LOGISIM_NET_106),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_36),
                       .pre(s_LOGISIM_NET_69));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_39[31:0]),
                 .DataB(s_LOGISIM_BUS_12[31:0]),
                 .Result(s_LOGISIM_BUS_5[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_125),
              .Input_2(s_LOGISIM_NET_75),
              .Result(s_LOGISIM_NET_51));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_30[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_33[31:0]),
             .MuxOut(s_LOGISIM_BUS_137[31:0]),
             .Sel(s_LOGISIM_NET_7));

   NOT_GATE      GATE_7 (.Input_1(s_LOGISIM_NET_10),
                         .Result(s_LOGISIM_NET_31));

   OR_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_153),
              .Input_2(s_LOGISIM_NET_141),
              .Result(s_LOGISIM_NET_43));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_32[19:15]),
             .MuxIn_1(s_LOGISIM_BUS_77[4:0]),
             .MuxOut(s_LOGISIM_BUS_81[4:0]),
             .Sel(s_LOGISIM_NET_121));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_14),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_39[31:0]),
                    .DataB(s_LOGISIM_BUS_54[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_133),
              .Input_2(s_LOGISIM_NET_107),
              .Result(s_LOGISIM_NET_16));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_NET_147),
                          .Result(s_LOGISIM_NET_6));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_99),
               .Input_2(s_LOGISIM_NET_61),
               .Result(s_LOGISIM_NET_79));

   OR_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_124),
               .Input_2(s_LOGISIM_NET_148),
               .Result(s_LOGISIM_NET_44));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_121),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_37));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_17[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_45[31:0]),
             .MuxOut(s_LOGISIM_BUS_59[31:0]),
             .Sel(s_LOGISIM_NET_56));

   AND_GATE #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_26),
               .Input_2(s_LOGISIM_NET_91),
               .Result(s_LOGISIM_NET_98));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_29[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_35[31:0]),
             .MuxOut(s_LOGISIM_BUS_94[31:0]),
             .Sel(s_LOGISIM_NET_75));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_14),
               .Input_2(s_LOGISIM_NET_62),
               .Input_3(s_LOGISIM_NET_92),
               .Input_4(s_LOGISIM_NET_72),
               .Result(s_LOGISIM_NET_50));

   OR_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_65),
               .Input_2(s_LOGISIM_NET_149),
               .Result(s_LOGISIM_NET_34));

   REGISTER_FLIP_FLOP_Int1_Request_Register #(.ActiveLevel(1),
                                              .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_96),
                       .ClockEnable(s_LOGISIM_NET_118),
                       .D(s_LOGISIM_NET_80),
                       .Q(s_LOGISIM_NET_107),
                       .Reset(s_LOGISIM_NET_44),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_23),
                       .pre(s_LOGISIM_NET_98));

   AND_GATE #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_26),
               .Input_2(s_LOGISIM_NET_149),
               .Result(s_LOGISIM_NET_138));

   REGISTER_FLIP_FLOP_IE #(.ActiveLevel(1),
                           .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_147),
                       .ClockEnable(s_LOGISIM_NET_73),
                       .D(s_LOGISIM_NET_52),
                       .Q(s_LOGISIM_NET_103),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_114),
                       .pre(s_LOGISIM_NET_48));

   NOT_GATE      GATE_18 (.Input_1(s_LOGISIM_NET_113),
                          .Result(s_LOGISIM_NET_60));

   Multiplexer_2      MUX_9 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_57),
                             .MuxIn_1(s_LOGISIM_NET_119),
                             .MuxOut(s_LOGISIM_NET_52),
                             .Sel(s_LOGISIM_NET_43));

   NOT_GATE      GATE_19 (.Input_1(s_LOGISIM_NET_19),
                          .Result(s_LOGISIM_NET_74));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_1(32'hd4c),
              .MuxIn_10(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_11(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_12(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_13(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_14(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_15(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_2(32'hd68),
              .MuxIn_3(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_4(32'hd84),
              .MuxIn_5(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_6(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_7(s_LOGISIM_BUS_1[31:0]),
              .MuxIn_8(32'hda0),
              .MuxIn_9(s_LOGISIM_BUS_1[31:0]),
              .MuxOut(s_LOGISIM_BUS_139[31:0]),
              .Sel(s_LOGISIM_BUS_109[3:0]));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_NET_126),
                          .Result(s_LOGISIM_NET_112));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_31),
               .Input_2(s_LOGISIM_NET_121),
               .Input_3(s_LOGISIM_NET_112),
               .Result(s_LOGISIM_NET_113));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(-1),
                    .mode(0),
                    .width(32))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_97[31:0]),
                 .Enable(s_LOGISIM_NET_60),
                 .GlobalClock(s_LOGISIM_NET_147),
                 .LoadData(s_LOGISIM_BUS_78[31:0]),
                 .Up_n_Down(s_LOGISIM_NET_28),
                 .clear(s_LOGISIM_NET_124),
                 .load(s_LOGISIM_NET_87),
                 .pre(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP_EPC #(.ActiveLevel(1),
                            .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_153),
                       .D(s_LOGISIM_BUS_89[31:0]),
                       .Q(s_LOGISIM_BUS_71[31:0]),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_157),
                       .pre(s_LOGISIM_NET_158));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_32[24:20]),
              .MuxIn_1(s_LOGISIM_BUS_145[4:0]),
              .MuxOut(s_LOGISIM_BUS_150[4:0]),
              .Sel(s_LOGISIM_NET_121));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_147),
                       .ClockEnable(s_LOGISIM_NET_37),
                       .D(s_LOGISIM_BUS_30[31:0]),
                       .Q(s_LOGISIM_BUS_25[31:0]),
                       .Reset(s_LOGISIM_NET_124),
                       .Tick(1'b1),
                       .cs(s_LOGISIM_NET_105),
                       .pre(s_LOGISIM_NET_42));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_134[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_24[31:0]),
              .MuxOut(s_LOGISIM_BUS_4[31:0]),
              .Sel(s_LOGISIM_NET_116));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_62),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_39[31:0]),
                    .DataB(s_LOGISIM_BUS_131[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_22 (.Input_1(s_LOGISIM_NET_128),
               .Input_2(s_LOGISIM_NET_19),
               .Result(s_LOGISIM_NET_130));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_72),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_39[31:0]),
                    .DataB(s_LOGISIM_BUS_151[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_92),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_39[31:0]),
                    .DataB(s_LOGISIM_BUS_82[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_34),
               .Input_2(s_LOGISIM_NET_43),
               .Result(s_LOGISIM_NET_73));

   Multiplexer_2      MUX_13 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_103),
                              .MuxIn_1(s_LOGISIM_NET_95),
                              .MuxOut(s_LOGISIM_NET_133),
                              .Sel(s_LOGISIM_NET_20));

   AND_GATE #(.BubblesMask(2))
      GATE_24 (.Input_1(s_LOGISIM_NET_26),
               .Input_2(s_LOGISIM_NET_15),
               .Result(s_LOGISIM_NET_20));

   NOT_GATE      GATE_25 (.Input_1(s_LOGISIM_NET_106),
                          .Result(s_LOGISIM_NET_91));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_5[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_94[31:0]),
              .MuxOut(s_LOGISIM_BUS_89[31:0]),
              .Sel(s_LOGISIM_NET_9));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_24[31:0]),
                 .DataB(s_LOGISIM_BUS_39[31:0]),
                 .Result(s_LOGISIM_BUS_29[31:0]));

   OR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_26 (.Input_1(s_LOGISIM_NET_130),
               .Input_2(s_LOGISIM_NET_58),
               .Input_3(s_LOGISIM_NET_125),
               .Input_4(s_LOGISIM_NET_75),
               .Input_5(s_LOGISIM_NET_79),
               .Result(s_LOGISIM_NET_9));

   wire [31:0] interrupt_response_addr;
   wire [31:0] next_addr;
   assign next_addr=s_LOGISIM_BUS_89;
   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_int_response (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_89[31:0]),
             .MuxIn_1(interrupt_response_addr),
             .MuxOut(s_LOGISIM_BUS_8[31:0]),//
             .Sel(IR1|IR2|IR3|IR4));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_uret (.Enable(1'b1),                       //中断的MUX
              .MuxIn_0(s_LOGISIM_BUS_8[31:0]),//原PC
              .MuxIn_1( interrupt_response_addr ),//inter_Process out中断地址
              .MuxOut(s_LOGISIM_BUS_22[31:0]),
              .Sel(s_LOGISIM_NET_149)); //uret
   //inter_Process
   interrupt_process interrupt_process_0(RST,Clk,IR1,IR2,IR3,IR4,next_addr,inter_addr,interrupt_response_addr,);
   //
   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   Single_Cycle_Controller      Single_Cycle_Controller_1 (.ALU_OP(s_LOGISIM_BUS_49[3:0]),
                                                           .ALU_SRC(s_LOGISIM_NET_7),
                                                           .BGUE(s_LOGISIM_NET_99),
                                                           .Beq(s_LOGISIM_NET_128),
                                                           .Bne(s_LOGISIM_NET_129),
                                                           .Funct(s_LOGISIM_BUS_70[4:0]),
                                                           .IR(s_LOGISIM_BUS_32[31:0]),
                                                           .IR21(s_LOGISIM_BUS_32[21]),
                                                           .JAL(s_LOGISIM_NET_125),
                                                           .Jalr(s_LOGISIM_NET_75),
                                                           .MemToReg(s_LOGISIM_NET_56),
                                                           .MemWrite(s_LOGISIM_NET_76),
                                                           .OP(s_LOGISIM_BUS_32[6:2]),
                                                           .RegWrite(s_LOGISIM_NET_140),
                                                           .S_type(s_LOGISIM_NET_66),
                                                           .auipc(s_LOGISIM_NET_142),
                                                           .csrrci(s_LOGISIM_NET_141),
                                                           .csrrsi(s_LOGISIM_NET_65),
                                                           .ecall(s_LOGISIM_NET_121),
                                                           .lb(s_LOGISIM_NET_136),
                                                           .lui(s_LOGISIM_NET_116),
                                                           .uret(s_LOGISIM_NET_149));

   Regifile      Regifile_1 (.Clk(s_LOGISIM_NET_147),
                             .Din(s_LOGISIM_BUS_4[31:0]),
                             .R1(s_LOGISIM_BUS_64[31:0]),
                             .R1Addr(s_LOGISIM_BUS_81[4:0]),
                             .R2(s_LOGISIM_BUS_30[31:0]),
                             .R2Addr(s_LOGISIM_BUS_150[4:0]),
                             .WAddr(s_LOGISIM_BUS_32[11:7]),
                             .WE(s_LOGISIM_NET_140));

   L_type_Write_Data_Generator      L_type_Write_Data_Generator_1 (.Imm32in(s_LOGISIM_BUS_53[31:0]),
                                                                   .Imm32out(s_LOGISIM_BUS_45[31:0]),
                                                                   .lb(s_LOGISIM_NET_136),
                                                                   .offset(s_LOGISIM_BUS_17[1:0]));

   ImmGenerator      ImmGen (.IR(s_LOGISIM_BUS_32[31:0]),
                             .Imm(s_LOGISIM_BUS_33[31:0]));

   Interrupt_Request_Register_1_int      Interrupt_Request_Register_1_int_1 (.CLK(s_LOGISIM_NET_147),
                                                                             .IR1(s_LOGISIM_NET_135),
                                                                             .IR1_Interrupt_Request(s_LOGISIM_BUS_109[0]),
                                                                             .IR2(s_LOGISIM_NET_117),
                                                                             .IR2_Interrupt_Request(s_LOGISIM_BUS_109[1]),
                                                                             .IR3(s_LOGISIM_NET_146),
                                                                             .IR3_Interrupt_Request(s_LOGISIM_BUS_109[2]),
                                                                             .IR4(s_LOGISIM_NET_102),
                                                                             .IR4_Interrupt_Request(s_LOGISIM_BUS_109[3]),
                                                                             .RST(s_LOGISIM_NET_124),
                                                                             .RST_IR(s_LOGISIM_NET_138),
                                                                             .W1(s_LOGISIM_NET_111),
                                                                             .W2(s_LOGISIM_NET_115),
                                                                             .W3(s_LOGISIM_NET_143),
                                                                             .W4(s_LOGISIM_NET_68));

   ALU      ALU_1 (.AluOP(s_LOGISIM_BUS_49[3:0]),
                   .Equal(s_LOGISIM_NET_19),
                   .Less(),
                   .MoreOrEqual(s_LOGISIM_NET_61),
                   .Result(s_LOGISIM_BUS_17[31:0]),
                   .Result_2(),
                   .X(s_LOGISIM_BUS_64[31:0]),
                   .Y(s_LOGISIM_BUS_137[31:0]));



endmodule
