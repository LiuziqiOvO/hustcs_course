/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Shifter_12_bit                                               **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Shifter_12_bit( DataA,
                       ShiftAmount,
                       Result);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter ShifterMode = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[11:0]  DataA;
   input[3:0]  ShiftAmount;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   //output reg [11:0] Result;
    output [11:0] Result;
   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[11:0] s_stage_0_result;
   wire s_stage_0_shiftin;
   wire[11:0] s_stage_1_result;
   wire[1:0] s_stage_1_shiftin;
   wire[11:0] s_stage_2_result;
   wire[3:0] s_stage_2_shiftin;
   wire[11:0] s_stage_3_result;
   wire[7:0] s_stage_3_shiftin;

   /***************************************************************************
    ** ShifterMode represents when:                                          **
    ** 0 : Logical Shift Left                                                **
    ** 1 : Rotate Left                                                       **
    ** 2 : Logical Shift Right                                               **
    ** 3 : Arithmetic Shift Right                                            **
    ** 4 : Rotate Right                                                      **
    ***************************************************************************/


   /***************************************************************************
    ** Here stage 0 of the binairy shift tree is defined                     **
    ***************************************************************************/

   assign s_stage_0_shiftin = ((ShifterMode== 1)||(ShifterMode==3)) ?
                              DataA[11] :
                              (ShifterMode== 4) ? DataA[0] : 0;

   assign s_stage_0_result  = (ShiftAmount == 0) ? DataA :
                              ((ShifterMode== 0) || (ShifterMode== 1)) ?
                              {DataA[10:0],s_stage_0_shiftin} :
                              {s_stage_0_shiftin,DataA[11:1]};

   /***************************************************************************
    ** Here stage 1 of the binairy shift tree is defined                     **
    ***************************************************************************/

   assign s_stage_1_shiftin = (ShifterMode== 1) ?
                              s_stage_0_result[11:10] : 
                              (ShifterMode== 3) ?
                              {2{s_stage_0_result[11]}} :
                              (ShifterMode== 4) ?
                              s_stage_0_result[1:0] : 0;

   assign s_stage_1_result  = (ShiftAmount[1]==0) ?
                              s_stage_0_result : 
                              ((ShifterMode== 0)||(ShifterMode== 1)) ?
                              {s_stage_0_result[9:0],s_stage_1_shiftin} :
                              {s_stage_1_shiftin,s_stage_0_result[11:2]};

   /***************************************************************************
    ** Here stage 2 of the binairy shift tree is defined                     **
    ***************************************************************************/

   assign s_stage_2_shiftin = (ShifterMode== 1) ?
                              s_stage_1_result[11:8] : 
                              (ShifterMode== 3) ?
                              {4{s_stage_1_result[11]}} :
                              (ShifterMode== 4) ?
                              s_stage_1_result[3:0] : 0;

   assign s_stage_2_result  = (ShiftAmount[2]==0) ?
                              s_stage_1_result : 
                              ((ShifterMode== 0)||(ShifterMode== 1)) ?
                              {s_stage_1_result[7:0],s_stage_2_shiftin} :
                              {s_stage_2_shiftin,s_stage_1_result[11:4]};

   /***************************************************************************
    ** Here stage 3 of the binairy shift tree is defined                     **
    ***************************************************************************/

   assign s_stage_3_shiftin = (ShifterMode== 1) ?
                              s_stage_2_result[11:4] : 
                              (ShifterMode== 3) ?
                              {8{s_stage_2_result[11]}} :
                              (ShifterMode== 4) ?
                              s_stage_2_result[7:0] : 0;

   assign s_stage_3_result  = (ShiftAmount[3]==0) ?
                              s_stage_2_result : 
                              ((ShifterMode== 0)||(ShifterMode== 1)) ?
                              {s_stage_2_result[3:0],s_stage_3_shiftin} :
                              {s_stage_3_shiftin,s_stage_2_result[11:8]};

   /***************************************************************************
    ** Here we assign the result                                             **
    ***************************************************************************/

   assign Result = s_stage_3_result;


endmodule
