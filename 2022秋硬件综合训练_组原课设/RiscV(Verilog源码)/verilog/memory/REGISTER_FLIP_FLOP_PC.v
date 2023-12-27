/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : REGISTER_FLIP_FLOP_PC                                        **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module REGISTER_FLIP_FLOP_PC( Clock,
                              ClockEnable,
                              D,
                              Reset,
                              Q);


   parameter ActiveLevel = 1;
   parameter NrOfBits = 32;



   input  Clock;
   input  ClockEnable;
   input[NrOfBits-1:0]  D;
   input  Reset;


   output[NrOfBits-1:0] Q;


   reg[NrOfBits-1:0] s_state_reg;
   reg[NrOfBits-1:0] s_state_reg_neg_edge;

   assign Q = (ActiveLevel) ? s_state_reg : s_state_reg_neg_edge;

   always @(posedge Clock or posedge Reset)
   begin
      if (Reset) s_state_reg <= 0;
      else if (ClockEnable) s_state_reg <= D;
   end
endmodule
