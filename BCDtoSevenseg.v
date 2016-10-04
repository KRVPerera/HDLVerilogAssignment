`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:35 10/03/2016 
// Design Name: 
// Module Name:    BCDtoSevenseg 
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
module BCDtoSevenseg(bcd, segment);
	 input [3:0] bcd;
    output  [6:0] segment;
	 reg [6:0] segment;
//	 output [3:0] an0;
//	 reg [3:0] an0;
	 
//	 always @(bcd)
//	 begin
//		an0 = 4'b1110;
//	 end
	 
	 
	 always @(bcd)
    begin
        case (bcd) //case statement
            0 : segment = 7'b0000001;
            1 : segment = 7'b1001111;
            2 : segment = 7'b0010010;
            3 : segment = 7'b0000110;
            4 : segment = 7'b1001100;
            5 : segment = 7'b0100100;
            6 : segment = 7'b0100000;
            7 : segment = 7'b0001111;
            8 : segment = 7'b0000000;
            9 : segment = 7'b0000100; 
            default : segment = 7'b1111111; 
        endcase
    end
endmodule
