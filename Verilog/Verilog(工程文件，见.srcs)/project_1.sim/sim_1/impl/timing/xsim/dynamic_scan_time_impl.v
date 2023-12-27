// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May 18 21:58:13 2022
// Host        : LAPTOP-F424RLVC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/MyFile/code/Vivado/project_1/project_1.sim/sim_1/impl/timing/xsim/dynamic_scan_time_impl.v
// Design      : auto_add_tb
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "68a4c09e" *) 
(* NotValidForBitStream *)
module auto_add_tb
   (sum_out);
  output [31:0]sum_out;

  wire [31:0]sum_out;

initial begin
 $sdf_annotate("dynamic_scan_time_impl.sdf",,,,"tool_control");
end
  OBUF \sum_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(sum_out[0]));
  OBUF \sum_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(sum_out[10]));
  OBUF \sum_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(sum_out[11]));
  OBUF \sum_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(sum_out[12]));
  OBUF \sum_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(sum_out[13]));
  OBUF \sum_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(sum_out[14]));
  OBUF \sum_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(sum_out[15]));
  OBUF \sum_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(sum_out[16]));
  OBUF \sum_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(sum_out[17]));
  OBUF \sum_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(sum_out[18]));
  OBUF \sum_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(sum_out[19]));
  OBUF \sum_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(sum_out[1]));
  OBUF \sum_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(sum_out[20]));
  OBUF \sum_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(sum_out[21]));
  OBUF \sum_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(sum_out[22]));
  OBUF \sum_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(sum_out[23]));
  OBUF \sum_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(sum_out[24]));
  OBUF \sum_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(sum_out[25]));
  OBUF \sum_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(sum_out[26]));
  OBUF \sum_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(sum_out[27]));
  OBUF \sum_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(sum_out[28]));
  OBUF \sum_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(sum_out[29]));
  OBUF \sum_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(sum_out[2]));
  OBUF \sum_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(sum_out[30]));
  OBUF \sum_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(sum_out[31]));
  OBUF \sum_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(sum_out[3]));
  OBUF \sum_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(sum_out[4]));
  OBUF \sum_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(sum_out[5]));
  OBUF \sum_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(sum_out[6]));
  OBUF \sum_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(sum_out[7]));
  OBUF \sum_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(sum_out[8]));
  OBUF \sum_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(sum_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
