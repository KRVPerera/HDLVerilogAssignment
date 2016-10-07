`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:51 10/05/2016
// Design Name:   mspulse
// Module Name:   D:/HDL/ISE/StopWatchAssignment/TestMilispulse.v
// Project Name:  StopWatchAssignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mspulse
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestMilispulse;

	// Inputs
	reg clk;
	reg start;
	reg stop;

	// Outputs
	wire msclock;

	// Instantiate the Unit Under Test (UUT)
	mspulse  #(
				.MAX_COUNT(20)
			  ) 
			   uut (
		.clk(clk), 
		.start(start), 
		.stop(stop), 
		.msclock(msclock)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		stop = 0;
		
//		$monitor("%d\t%d",clk,msclock); 
		// Wait 100 ns for global reset to finish
		#100;
      start = 1;
		#10
		start = 0;
		// Add stimulus here

	end
	
	always
	begin
		#5 clk = !clk;
//		#200 start = !start;
//		#150 stop = !stop;
	end
      
endmodule

