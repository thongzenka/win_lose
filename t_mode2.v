module t_mode2 ();
	reg in;
	wire [3:0] out1, out2, out3;
	
	mode2 UUT(in, out1, out2, out3);
	initial begin
	in =0;
	forever 
		#5 in = ~in;
	end
	
endmodule 