`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:56 10/04/2016 
// Design Name: 
// Module Name:    StopWatch 
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
module StopWatch(start, stop, reset, clk, segment, an, dp);

	 input start;
    input stop;
    input reset;
    input clk;
	 output reg [6:0] segment;
	 output reg [3:0] an;
	 output reg dp;
	 wire mspulse;
	 
	 reg [16:0]count;
	 
	 wire [6:0] sseg0;
	 wire [6:0] sseg1;
	 wire [6:0] sseg2; 
	 wire [6:0] sseg3;
	 
	always @ (posedge clk)
	begin
		if (count >= 49999)
			count <= 0;
		else
			count <= count + 1;
	end
	
	assign ms_pulse = (count == 50000)? 1'b1 : 1'b0;
	
	
	always @ (*)
	begin
		dp <= 1'b1;
		case(count[13:12]) 		 
		2'b00:  
		 begin
		 segment = sseg0;
		 an0 = 4'b1110;
		 end
		 
		2'b01:  
		 begin
		  segment = sseg1;
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
		.segment(sseg0)
	);
	
	BCDtoSevenseg bcds1 (
		.bcd(bcdl[7:4]),
		.segment(sseg1)
	);
	
	BCDtoSevenseg bcds2 (
		.bcd(bcdl[3:0]),
		.segment(sseg2)
	);
	
	BCDtoSevenseg bcds3 (
		.bcd(bcdl[3:0]),
		.segment(sseg3)
	);

endmodule
