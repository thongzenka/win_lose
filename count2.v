module count2 (clk, in, count1, count2, count3);
	input clk, in;
	output reg [3:0] count1 = 4'b0, count2 = 4'b0, count3 = 4'b0;
	reg [31:0] cnt1 = 0, cnt2 = 0, cnt3 = 0;
	reg [31:0] c_cnt1 = 250000, c_cnt2 = 200000, c_cnt3 = 150000, m_out;
	
	always @ (posedge m_out or posedge in)
		begin
		if (in) begin
			if (count1 != 10) begin
				if (cnt1 == c_cnt1 - 1)
					begin
						count1 <= count1 + 1;
						cnt1 <= 0;
						c_cnt1 <= c_cnt1 + 1000;
					end
				else
					cnt1 <= cnt1 + 1;
			end
			else count1 <= 0;
		
			if (count2 != 10) begin
				if (cnt2 == c_cnt2 - 1)
					begin
						count2 <= count2 + 1;
						cnt2 <= 0;
						c_cnt2 <= c_cnt2 + 1000;
					end
				else
					cnt2 <= cnt2 + 1;
			end
			else count2 <= 0;
		
			if (count3 != 10) begin
				if (cnt3 == c_cnt3 - 1)
					begin
						count3 <= count3 + 1;
						cnt3 <= 0;
						c_cnt3 <= c_cnt3 + 1000;
					end
				else
					cnt3 <= cnt3 + 1;
			end
			else count3 <= 0;	
			end
		else begin
			if (count1 != 10) begin
				if (cnt1 == c_cnt1 - 1)
					begin
						count1 <= count1 + 1;
						cnt1 <= 0;
						c_cnt1 <= c_cnt1 - 1000;
					end
				else
					cnt1 <= cnt1 + 1;
			end
			else count1 <= 0;
		
			if (count2 != 10) begin
				if (cnt2 == c_cnt2 - 1)
					begin
						count2 <= count2 + 1;
						cnt2 <= 0;
						c_cnt2 <= c_cnt2 - 1000;
					end
				else
					cnt2 <= cnt2 + 1;
			end
			else count2 <= 0;
		
			if (count3 != 10) begin
				if (cnt3 == c_cnt3 - 1)
					begin
						count3 <= count3 + 1;
						cnt3 <= 0;
						c_cnt3 <= c_cnt3 - 1000;
					end
				else
					cnt3 <= cnt3 + 1;
			end
			else count3 <= 0;	
		end
		end
	always @ (c_cnt1 or c_cnt2 or c_cnt3)
		begin
		if ((c_cnt1 > 250000) && (c_cnt2 > 200000) && (c_cnt3 > 150000)) m_out = 0;
		else m_out = clk;
		end
endmodule