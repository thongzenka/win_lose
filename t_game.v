module t_game ();

	reg in, clk;
	reg [1:0] sel;
	wire [6:0] num1, num2, num3, sign1, sign2, sign3;
	
	game UUT (in, sel, clk, num1, num2, num3, sign1, sign2, sign3);
	
	initial begin
		clk = 0;
		forever #1 clk = ~clk;
	end
	initial begin
		in = 1;
		forever #5 in = ~in;
	
	end
	
	initial begin
		sel = 0;
		#50 sel = 1; 
		#500 sel = 2;
		#5000 sel = 3;
	end

endmodule 