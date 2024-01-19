module led7_tb();
reg [3:0] in;
wire [6:0] out;

led7 UUT(in, out);

initial begin 
for( in = 1; in<10; in = in+1) begin
    #10;
	 end
end
endmodule 