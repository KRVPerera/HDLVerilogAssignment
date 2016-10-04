`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:12 10/03/2016 
// Design Name: 
// Module Name:    top 
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
module top(clk, bcdl, ssego, an0);
	 input clk;
	 input [7:0] bcdl;
	 output reg [6:0] ssego;
	 output reg [3:0] an0;
		
	 
	
	reg [16:0]count;
	 
	reg [6:0] sseg0; 
	reg [6:0] sseg1; 
	wire [6:0] sseg2; 
	wire [6:0] sseg3;
	
	assign sseg0 = sseg2;
	assign sseg1 = sseg3;

	 
	always @ (posedge clk)
	begin
	if (count >= 49999)
		count <= 0;
	else
		count <= count + 1;
	end
	
	always @ (*)
	begin
	case(count[16:15]) //using only the 2 MSB's of the counter 
    
   2'b00 :  //When the 2 MSB's are 00 enable the fourth display
    begin
	  ssego = sseg0;
     an0 = 4'b1110;
    end
    
   2'b01:  //When the 2 MSB's are 01 enable the third display
    begin
	 ssego = sseg1;
     an0 = 4'b1101;
    end
    
   2'b10:  //When the 2 MSB's are 10 enable the second display
    begin
	  ssego = sseg0;
     an0 = 4'b1011;
    end
     
   2'b11:  //When the 2 MSB's are 11 enable the first display
    begin
	  ssego = sseg1;
     an0 = 4'b0111;
    end
		endcase
	end
	
	
	BCDtoSevenseg bcds0 (
		.bcd(bcdl[3:0]),
		.seg(sseg2)
	);
	
	BCDtoSevenseg bcds1 (
		.bcd(bcdl[7:4]),
		.seg(sseg3)
	);
	
//		BCDtoSevenseg bcds2(
//		.bcd(bcdl[3:0]),
//		.segment(sseg3)
//	);
//
//
//
//	BCDtoSevenseg bcds3 (
//		.bcd(bcdl[7:4]),
//		.segment(sseg4)
//	);


endmodule
