module win_lose_tb();
reg [3:0] inc1, inc2, inc3;
wire [6:0] sign01, sign02, sign03;

win_lose UUT (inc1, inc2, inc3, sign01, sign02, sign03);
initial begin 
inc1 = 1; inc2 =2 ; inc3 = 3;
#10 inc1 = 3; inc2 =4 ; inc3 = 5;
#10 inc1 = 7; inc2 =7 ; inc3 = 7;
#10 inc1 = 8; inc2 =9 ; inc3 = 3;
#10 inc1 = 2; inc2 =6 ; inc3 = 4;
#10 inc1 = 5; inc2 =7 ; inc3 = 8;
#10 inc1 = 4; inc2 =9 ; inc3 = 9;
#10 inc1 = 8; inc2 =8 ; inc3 = 6;
#10 inc1 = 5; inc2 =5 ; inc3 = 5;
#10 inc1 = 4; inc2 =3 ; inc3 = 8;
#10 inc1 = 6; inc2 =7 ; inc3 = 8;
#10 inc1 = 9; inc2 =9 ; inc3 = 9;
#10 inc1 = 7; inc2 =1 ; inc3 = 2;
#10 inc1 = 8; inc2 =3 ; inc3 = 5;
#10 inc1 = 1; inc2 =6 ; inc3 = 8;
#10 inc1 = 3; inc2 =4 ; inc3 = 5;
#10 inc1 = 7; inc2 =7 ; inc3 = 7;
#10 inc1 = 4; inc2 =8 ; inc3 = 2;
#10 inc1 = 4; inc2 =8 ; inc3 = 2;
#10 inc1 = 3; inc2 =6 ; inc3 = 9;
end 
endmodule 