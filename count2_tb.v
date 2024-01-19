module count2_tb();
reg clk,in;
wire [3:0] count1, count2, count3;

count2 UUT( clk, in, count1, count2, count3) ;

initial begin 
clk = 0;
forever #1000 clk = ~clk;
end

initial begin
in = 1;
forever #10 in =~in;
end

endmodule 