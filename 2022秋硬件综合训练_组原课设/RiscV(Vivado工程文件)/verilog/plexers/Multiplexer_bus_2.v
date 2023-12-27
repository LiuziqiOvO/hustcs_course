/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Multiplexer_bus_2                                            **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Mux( Enable,
                          MuxIn_0,
                          MuxIn_1,
                          Sel,
                          MuxOut);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input[NrOfBits-1:0]  MuxIn_0;
   input[NrOfBits-1:0]  MuxIn_1;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output reg [NrOfBits-1:0] MuxOut;

   /***************************************************************************
    ** Here the internal registers are defined                               **
    ***************************************************************************/
   always @(*)
   begin
      if (~Enable) MuxOut <= 0;
      else case (Sel)
         1'b0:
            MuxOut <= MuxIn_0;
         default:
            MuxOut <= MuxIn_1;
      endcase
   end
endmodule
