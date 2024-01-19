module game (in, sel, clk, num1, num2, num3, sign1, sign2, sign3);
	input in, clk;
	input [1:0] sel;
	output reg [6:0] num1, num2, num3, sign1, sign2, sign3;
	wire [3:0] out01, out02, out03, out11, out12, out13, out21, out22, out23, sign01, sign02, sign03, sign11, sign12, sign13, sign21, sign22, sign23;
	
mode1 A1 (in, clk, out01, out02, out03);
led7 B1 (out01, num01);
led7 B2 (out02, num02);
led7 B3 (out03, num03);
win_lose C1 (out01, out02, out03, sign01, sign02, sign03);

mode2 A2 (in, out11, out12, out13);
led7 B4 (out11, num11);
led7 B5 (out12, num12);
led7 B6 (out13, num13);
win_lose C2 (out11, out12, out13, sign11, sign12, sign13); 

mode3 A3 (in, clk, out21, out22, out23);
led7 B7 (out21, num21);
led7 B8 (out22, num22);
led7 B9 (out23, num23);
win_lose C3 (out21, out22, out23, sign21, sign22, sign23);
	
	always @ (in, sel)
		begin
			case(sel)
				0: begin num1 = 0; num2 = 0; num3 = 0; sign1 = 0; sign2 = 0; sign3 = 0; end
				1: begin
				num1 = num01; num2 = num02; num3 = num03; sign1 = sign01; sign2 = sign02; sign3 = sign03;
				end
				2: begin
				num1 = num11; num2 = num12; num3 = num13; sign1 = sign11; sign2 = sign12; sign3 = sign13;
				end
				3: begin
				num1 = num21; num2 = num22; num3 = num23; sign1 = sign21; sign2 = sign22; sign3 = sign23;
				end
				default: begin num1 = 0; num2 = 0; num3 = 0; sign1 = 0; sign2 = 0; sign3 = 0; end
			endcase
		end
endmodule 