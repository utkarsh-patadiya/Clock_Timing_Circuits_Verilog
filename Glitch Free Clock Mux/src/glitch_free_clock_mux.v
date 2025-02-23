`timescale 1ns / 1ps

module glitch_free_clock_mux(
	input sel, // clock selector
	input clk_1, // input clock 1
	input clk_2, // input clock 2
	input reset, // reset signal
	output out // output clock
    );

    wire out_1,out_2; // wire for output of dffs
    dff dff_1(~sel&~out_2,clk_1,reset,out_1);
    dff dff_2(~out_1&sel,clk_2,reset,out_2);
    
    wire out_and_1=out_1&clk_1; 
    wire out_and_2=out_2&clk_2;
    
    assign out=out_and_1|out_and_2;
endmodule