/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : L_type_Write_Data_Generator                                  **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module L_type_Write_Data_Generator( Imm32in,
                                    lb,
                                    offset,
                                    Imm32out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  Imm32in;
   input  lb;
   input[1:0]  offset;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Imm32out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_6;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_NET_3                    = s_LOGISIM_BUS_9[7];
   assign s_LOGISIM_BUS_9[8]                 = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[9]                 = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[10]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[11]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[12]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[13]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[14]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[15]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[16]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[17]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[18]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[19]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[20]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[21]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[22]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[23]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[24]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[25]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[26]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[27]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[28]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[29]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[30]                = s_LOGISIM_NET_3;
   assign s_LOGISIM_BUS_9[31]                = s_LOGISIM_NET_3;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_6                    = lb;
   assign s_LOGISIM_BUS_4[31:0]              = Imm32in;
   assign s_LOGISIM_BUS_0[1:0]               = offset;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Imm32out                           = s_LOGISIM_BUS_10[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_9[31:0]),
             .MuxOut(s_LOGISIM_BUS_10[31:0]),
             .Sel(s_LOGISIM_NET_6));

   Multiplexer_bus_4 #(.NrOfBits(8))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[7:0]),
             .MuxIn_1(s_LOGISIM_BUS_4[15:8]),
             .MuxIn_2(s_LOGISIM_BUS_4[23:16]),
             .MuxIn_3(s_LOGISIM_BUS_4[31:24]),
             .MuxOut(s_LOGISIM_BUS_9[7:0]),
             .Sel(s_LOGISIM_BUS_0[1:0]));



endmodule
