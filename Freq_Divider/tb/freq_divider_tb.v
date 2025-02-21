`timescale 1ns / 1ps

module freq_divider_tb();

	reg clk,reset;
	wire f1,f2,f3,f4;
	always begin
		#5 clk=~clk;
	end
	freq_divider uut(clk,reset,f1,f2,f3,f4);
	initial begin
		clk=0;
		reset=1;
		#10 reset=0;
		#200 $finish;
	end
	
endmodule