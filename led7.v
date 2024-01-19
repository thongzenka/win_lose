module led7 (in, out);
	input [3:0] in;
	output reg [6:0] out;
	
	always @ (in) begin
		case(in)
			1: out = 7'b0000110;
			2: out = 7'b1011011;
			3: out = 7'b1001111;
			4: out = 7'b1100110;
			5: out = 7'b1101101;
			6: out = 7'b1111101;
			7: out = 7'b0000111;
			8: out = 7'b1111111;
			9: out = 7'b1101111;
			default: out = 7'b0111111;
		endcase
	end 
endmodule
