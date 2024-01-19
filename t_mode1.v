module t_mode1 () ;
	reg in, clk;
	wire [3:0] out1, out2, out3;
	
	mode1 UUT (in, clk, out1, out2, out3);
	
	initial begin 
		in = 1;
		forever #5 in = ~in;
	end
	
	initial begin 
		clk = 0;
		forever #1 clk = ~clk;
	end

	
endmodule 