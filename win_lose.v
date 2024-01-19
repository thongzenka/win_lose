module win_lose (inc1, inc2, inc3, sign01, sign02, sign03);
	input [3:0] inc1, inc2, inc3;
	output reg [6:0] sign01, sign02, sign03;
	
	always @ (inc1, inc2, inc3) begin
		if ((inc1 == inc2) && (inc2 == inc3) && (inc3 == inc1)) begin
			sign01 = 7'b0000001;
			sign02 = 7'b0011100;
			sign03 = 7'b0000001;
			end
		else begin
			sign01 = 7'b0000001;
			sign02 = 7'b1010100;
			sign03 = 7'b0000001;
			end
	end
endmodule