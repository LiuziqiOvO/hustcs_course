module mux21(a,b,s,y);
	input a,b,s;
	output y;	
	
    // 请在下面添加代码
	
    assign y= s==1? a:b;
	
endmodule