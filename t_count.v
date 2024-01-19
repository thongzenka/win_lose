module t_count ();
	reg clk;
	wire [3:0] count1 , count2 , count3 ;
	
	count UUT(in, out1, out2, out3);
	initial begin
		clk = 0;	
		forever #10000000 clk = ~clk;
	end
	
endmodule 