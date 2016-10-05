`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:58 10/05/2016
// Design Name:   StopWatch
// Module Name:   D:/HDL/ISE/StopWatchAssignment/TestStopWatch.v
// Project Name:  StopWatchAssignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StopWatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestStopWatch;

	// Inputs
	reg start;
	reg stop;
	reg reset;
	reg clk;

	// Outputs
	wire [6:0] segment;
	wire [3:0] an;
	wire dp;

	// Instantiate the Unit Under Test (UUT)
	StopWatch uut (
		.start(start), 
		.stop(stop), 
		.reset(reset), 
		.clk(clk), 
		.segment(segment), 
		.an(an), 
		.dp(dp)
	);

	initial begin
		// Initialize Inputs
		start = 0;
		stop = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		$monitor("%d",clk); 
		#100;
		start = 1;
		
        
		// Add stimulus here

	end
      
		always 
		begin
		#5 clk = !clk;
		end
endmodule

