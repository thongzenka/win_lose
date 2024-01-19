module mode1 (in, clk, out1, out2, out3);
	input in, clk;
	output [3:0] out1, out2, out3;
	reg m_out;
	
	always @ (in) begin
	if (!in) m_out <= clk;
	else m_out <= 0;
	end
	
	count AAA (m_out, out1, out2, out3);
endmodule 