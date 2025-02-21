`timescale 1ns / 1ps

module freq_divider(clk,reset,f1,f2,f3,f4);
	input clk,reset;
	output f1,f2,f3,f4;
	tff tf1(1,clk,reset,f1);
	tff tf2(1,~f1,reset,f2);
	tff tf3(1,~f2,reset,f3);
	tff tf4(1,~f3,reset,f4);
endmodule