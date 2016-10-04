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
module top(clk, bcdl, segment, an0);
	 input clk;
	 input wire [7:0] bcdl;
	 output reg [6:0] segment;
	 output reg [3:0] an0;
		
	 reg [16:0]count;
	 
	 wire [6:0] sseg2; 
	 wire [6:0] sseg3;
	
	always @ (posedge clk)
	begin
	if (count >= 49999)
		count <= 0;
	else
		count <= count + 1;
	end
	
	always @ (*)
	begin
	case(count[15]) 
    
   1'b0 :  
    begin
	  segment = sseg2;
     an0 = 4'b1110;
    end
    
   1'b1:  
    begin
	 segment = sseg3;
     an0 = 4'b1101;
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
