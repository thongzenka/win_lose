module t_mode3 () ;
	reg in, clk;
	wire [3:0] out1, out2, out3;
	
	mode3 UUT (in, clk, out1, out2, out3);
	
	initial begin 
		in = 1;
		forever #25 in = ~in;
	end
	
	initial begin 
		clk = 0;
		forever #5 clk = ~clk;
	end

endmodule 