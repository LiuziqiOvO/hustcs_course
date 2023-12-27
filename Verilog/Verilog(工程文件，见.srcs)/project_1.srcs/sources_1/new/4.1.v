//约束文件: NEXT_SEL, A_SEL, LD_SUM, LD_NEXT = SW[]
//2022年5月11日21:10:04
module datapath(clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO, sum_out);
  parameter w=32;//8?
  
  input clk,rst;
  input SUM_SEL,NEXT_SEL,A_SEL;//3个MUX的select
  input LD_SUM, LD_NEXT;//sum,next为寄存器 ld为加载信号(使能端)
  output NEXT_ZERO;

  wire [w-1:0] Mem_out,Mem_in;
  output [w-1:0] sum_out;

  ram #(.DATA_WIDTH(w),.ADDR_WIDTH(w)) Memory(
    .addr(Mem_in), 
    .clk(clk),
    .data(Mem_out)
    );  

  wire [w-1:0] Adder1_out;
  full_adder #(.WIDTH(w)) Adder1(
    .a(sum_out),
    .b(Mem_out),
    .sum(Adder1_out)
   );
   
  wire [w-1:0] SumSel_SUM;
  Mux_2_1 #(.WIDTH(w)) SUM_sel( 
    .a(0),
    .b(Adder1_out),
    .sel(SUM_SEL),
    .out(SumSel_SUM)
  );
  
  register #(.WIDTH(w)) SUM (
    .clk(clk),
    .rst_n(rst),
    .en(LD_SUM),
    .d(SumSel_SUM),
    .q(sum_out)
  );

  wire [w-1:0] NextSel_out;
  Mux_2_1 #(.WIDTH(w)) Next_Sel (
    .a(0),
    .b(Mem_out),
    .sel(NEXT_SEL),
    .out(NextSel_out)
  );

  wire [w-1:0] NEXT_Adder2;
  register #(.WIDTH(w)) NEXT (
    .clk(clk),
    .rst_n(rst),
    .en(LD_NEXT),
    .d(NextSel_out),
    .q(NEXT_Adder2)
  );

  comparator #(.WIDTH(w)) COMP (
    .a(0),
    .b(NextSel_out),
    .is_equal(NEXT_ZERO)
  );

  wire [w-1:0] Adder2_out;
  full_adder #(.WIDTH(w)) Adder2 (
    .a(1),
    .b(NEXT_Adder2),
    .sum(Adder2_out)
  );

  Mux_2_1 #(.WIDTH(w)) A_Sel (
    .a(NEXT_Adder2),
    .b(Adder2_out),
    .sel(A_SEL),
    .out(Mem_in)
  );
  
endmodule
