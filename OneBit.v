`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:03 10/04/2016 
// Design Name: 
// Module Name:    OneBit 
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
module OneBit(bcd, segment);

	 input [3:0] bcd;
    output reg [6:0] segment;
	 wire [6:0] sseg;
	 
	always @(*) begin
		segment = sseg;
	end
	 
BCDtoSevenseg bcd7(
	.bcd(bcd),
	.segment(sseg)
);

endmodule
