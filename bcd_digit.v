`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:05 10/04/2016 
// Design Name: 
// Module Name:    bcd_digit 
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
module bcd_digit(clk, c_in, reset, digit, c_out);
	
	input clk;
   input c_in;
   input reset;
   output reg [3:0] digit;
   output c_out;

	initial digit = 0;
	
	assign c_out = c_in && digit == 9;
	
	always @(posedge clk)
	begin
    if (reset)
		begin
			digit <= 0;
		end
    else if (c_in)
		begin
			if (c_out)
				digit <= 0;
		end
	 else
		digit <= digit+1;
	end
endmodule
