`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:32 10/05/2016 
// Design Name: 
// Module Name:    MiliPulseTop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MiliPulseTop(clk, start, stop, led);
	 input clk, start, stop;
    output led;
	 
	 mspulse mspulse0 (
		.clk(clk),
		.start(start),
		.stop(stop),
		.msclock(led)
	 );

endmodule
