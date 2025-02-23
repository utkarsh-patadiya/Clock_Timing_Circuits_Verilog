`timescale 1ns / 1ps

module glitch_free_clock_mux_ds(
	input sel, // clock selector
	input clk_1, // input clock 1
	input clk_2, // input clock 2
	input reset, // reset signal
	output out // output clock
    );
    
    wire dff1,dff2; // output for first dffs
    wire out_1,out_2; // outout for second dffs
    
    dff dff_1_1(~sel&~out_2,~clk_1,reset,dff1); // first set of dffs
    dff dff_2_1(~out_1&sel,~clk_2,reset,dff2);
    
    dff dff_1_2(dff1,clk_1,reset,out_1); // second set of dffs
    dff dff_2_2(dff2,clk_2,reset,out_2);

    assign out=(out_1&clk_1)|(out_2&clk_2);
endmodule
