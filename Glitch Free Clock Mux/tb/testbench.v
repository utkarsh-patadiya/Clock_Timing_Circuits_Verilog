`timescale 1ns / 1ps

module testbench();
	reg clk1,clk2,reset; 
	
	reg sel; // selector for 2 clocks
	wire out; // output for glitch free clock mux

	wire out_DS; // output for glitch free clock mux with double synchronizer
	
	always #5
		clk1=~clk1;
	always #14
		clk2=~clk2;
		
	glitch_free_clock_mux dut(sel,clk1,clk2,reset,out);
	glitch_free_clock_mux_ds dutds(sel,clk1,clk2,reset,out_DS);
	
	initial begin 
		reset=1;
		clk1=1;
		clk2=1;
		sel=0;
		
		#10 reset=0;
		
		#150 sel=1;
		
		#150 sel=0;
		
		#190 $finish;
	end
endmodule
