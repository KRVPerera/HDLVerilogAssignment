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
// Dependencies: Convert 0-9 digits to seven segment output
//
// Revision: 
// Revision 1.01 - Tested
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BCDtoSevenseg(bcd, segment);
	 input [3:0] bcd;
    output reg [6:0] segment;
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
