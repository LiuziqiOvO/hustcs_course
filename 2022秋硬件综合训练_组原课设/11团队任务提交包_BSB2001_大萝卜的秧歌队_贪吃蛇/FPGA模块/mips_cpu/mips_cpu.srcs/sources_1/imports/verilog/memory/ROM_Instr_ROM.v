module ROM_Instr_ROM( Address,
                      Data);

   input[9:0]  Address;

   output[31:0] Data;
   
   
   
   reg[31:0] ROM[2047:0];
   initial begin
//           $readmemh("D:/lmq/yanshou/tw/c_snake/snake_instr.txt",ROM);
           $readmemh("D:/lmq/yanshou/cpu_for_tw/ccab_test.txt",ROM);
   end
   
   assign Data=ROM[Address];
   
endmodule