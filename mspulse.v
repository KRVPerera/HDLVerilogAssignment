`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Moratuwa - Integrated Computer Engineering
// Engineer: K.R.V. Perera
// 
// Create Date:    14:50:52 10/05/2016 
// Design Name: 
// Module Name:    mspulse 
// Project Name: 
// Target Devices: Nexsys2
// Tool versions: 
// Description: Generate milisecond pulses for a 50 MHz clock
//
// Dependencies: 
//
// Revision: 
// Revision 1.01 - Tested
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mspulse(clk, start, stop, msclock);
	 
	 parameter MAX_COUNT = 49999;
	 
	 input clk, start, stop;
    output reg msclock = 0;
	 reg started = 0;
	 integer count;
	
always @ (posedge start or posedge stop)
begin
	if(start)
		started <= 1'b1;
	else
		started <= 1'b0;
end
	
always @ (posedge clk)
	begin
		if(started)
			begin
				if (count == 49999)
					begin
						count <= 0;
						msclock <= 1;
					end
				else
					begin
						count <= count + 1;	
						msclock <= 0;
					end
			end		
	end	
endmodule
