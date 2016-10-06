`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Moratuwa - Integrated Computer Engineering
// Engineer: K.R.V. Perera
// 
// Create Date:    18:02:05 10/04/2016 
// Design Name: 
// Module Name:    bcd_digit 
// Project Name: 
// Target Devices: Nexsys2
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 2.00 - Reset removed
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_digit(clk, reset, digit, c_out);
	
	input clk;
   input reset;
   output reg [3:0] digit;
   output reg c_out = 0;

	initial digit = 0;
	
	always @(negedge clk or posedge reset)
	begin
		c_out <= (digit == 4'b1000);

    if (reset)
		begin
			digit <= 0;
			c_out <= 0;
		end
	 else if (c_out)
		begin
			digit <= 0;
			c_out <= 0;
		end
	 else
		begin
			digit <= digit+1;
		end
	end
endmodule
