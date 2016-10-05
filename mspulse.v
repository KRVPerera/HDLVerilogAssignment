`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:52 10/05/2016 
// Design Name: 
// Module Name:    mspulse 
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
module mspulse(clk, start, stop, msclock);
	 input clk, start, stop;
    output reg msclock = 0;
	 
	 integer started = 0;
	 integer count;
	
	
always @ (posedge clk)
	begin
		if (start)
			begin
				started <= 1;
			end
		
		else if (stop)
			begin
				started <= 0;		
			end
	
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
