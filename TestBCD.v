`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:11 10/03/2016
// Design Name:   BCDtoSevenseg
// Module Name:   D:/HDL/ISE/StopWatchAssignment/TestBCD.v
// Project Name:  StopWatchAssignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDtoSevenseg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBCD;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [6:0] segment;

	// Instantiate the Unit Under Test (UUT)
	BCDtoSevenseg uut (
		.bcd(bcd), 
		.segment(segment)
	);

	initial begin
		// Initialize Inputs
		bcd = 0;

		// Wait 100 ns for global reset to finish
		#10;
      bcd = 0;
		#10;
      bcd = 1; 
		#10;
      bcd = 2;
		#10;
      bcd = 3;
		#10;
      bcd = 4; 
		#10;
      bcd = 5; 
		#10;
      bcd = 6;
		#10;
      bcd = 7; 
		#10;
      bcd = 8;
		#10;
      bcd = 9; 
		// Add stimulus here

	end
      
endmodule

