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
   output reg c_out = 0;

	initial digit = 0;
	
	always @(posedge clk)
	begin
	 c_out <= (c_in && digit == 4'b1000) || (digit == 4'b1001);

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
