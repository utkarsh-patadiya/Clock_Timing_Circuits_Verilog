`timescale 1ns / 1ps

module timer_tb();

	reg start,clk,reset;
	wire [7:0] timer_time;
	always begin
		#5 clk=~clk;
	end
	timer uut(start,clk,reset,timer_time);
	initial begin
		clk=0;
		reset=1;
		#10 reset=0; // reset
		start=1; // turn on timer
        #100 start=0; // pause
        #30 reset=1;
        #10 reset=0; // reset again
        start=1; // start again
		#165 $finish;
	end
	
endmodule