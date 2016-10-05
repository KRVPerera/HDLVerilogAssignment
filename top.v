`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Moratuwa - Integrated Computer Engineering
// Engineer: K.R.V. Perera
// 
// Create Date:    18:02:05 10/04/2016 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: Nexsys2
// Tool versions: 
// Description: 
//
// Dependencies: 4 - 4 buttons to map four seven segment displays
//
// Revision: 
// Revision 1.01 - Tested
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(clk, bcdl, segment, an0, dp);
	 input clk;
	 input wire [7:0] bcdl;
	 output reg [6:0] segment;
	 output reg [3:0] an0;
	 output reg dp;

	 reg [16:0]count;
	 
	 wire [6:0] sseg2; 
	 wire [6:0] sseg3;
	
	initial begin
	 dp = 1'b1;
	end
	
	always @ (posedge clk)
	begin
		if (count >= 49999)
			count <= 0;
		else
			count <= count + 1;
	end
	
	always @ (*)
	begin
		dp <= 1'b1;
		case(count[13:12]) 		 
		2'b00:  
		 begin
		 segment = sseg2;
		 an0 = 4'b1110;
		 end
		 
		2'b01:  
		 begin
		  segment = sseg3;
		  an0 = 4'b1101;
		 end
		 
		2'b10:  
		 begin
		  segment = sseg2;
		  an0 = 4'b1011;
		 end

		2'b11:  
		 begin
		  segment = sseg3;
		  an0 = 4'b0111;
		end
		
		endcase
	end
	
	BCDtoSevenseg bcds0 (
		.bcd(bcdl[3:0]),
		.segment(sseg2)
	);
	
	BCDtoSevenseg bcds1 (
		.bcd(bcdl[7:4]),
		.segment(sseg3)
	);
	
endmodule
