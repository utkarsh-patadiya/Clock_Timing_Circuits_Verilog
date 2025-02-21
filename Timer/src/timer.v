`timescale 1ns / 1ps

module timer(
	input start,
	input clk,
	input reset,
	output [7:0] timer_time
	);

	tff tf1(start,clk,reset,timer_time[0]);
	tff tf2(start,~timer_time[0],reset,timer_time[1]);
	tff tf3(start,~timer_time[1],reset,timer_time[2]);
	tff tf4(start,~timer_time[2],reset,timer_time[3]);
	tff tf5(start,~timer_time[3],reset,timer_time[4]);
	tff tf6(start,~timer_time[4],reset,timer_time[5]);
	tff tf7(start,~timer_time[5],reset,timer_time[6]);
	tff tf8(start,~timer_time[6],reset,timer_time[7]);
	
endmodule