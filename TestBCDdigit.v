`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:22 10/05/2016
// Design Name:   bcd_digit
// Module Name:   D:/HDL/ISE/StopWatchAssignment/TestBCDdigit.v
// Project Name:  StopWatchAssignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_digit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBCDdigit;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] digit;
	wire [3:0] digit2;
	wire c_out;
	wire c_out2;

	// Instantiate the Unit Under Test (UUT)
	bcd_digit uut (
		.clk(clk), 
		.reset(reset), 
		.digit(digit), 
		.c_out(c_out)
	);

	bcd_digit uut2 (
		.clk(c_out), 
		.reset(reset), 
		.digit(digit2), 
		.c_out(c_out2)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
	
	always
	begin
			#10 clk = !clk;
	end
      
endmodule

