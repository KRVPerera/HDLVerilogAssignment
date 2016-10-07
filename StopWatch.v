`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Moratuwa - Integrated Computer Engineering
// Engineer: K.R.V. Perera
// 
// Create Date:    17:04:56 10/04/2016 
// Design Name: 
// Module Name:    StopWatch 
// Project Name: 
// Target Devices: Nexsys2
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
	 
	 wire ms_pulse;
	 
	 reg [14:0]count;
	 reg [3:0] bcdmain;
	 
	 wire [6:0] sseg0;
	 
	 wire [3:0] digi0w;
	 wire [3:0] digi1w;
	 wire [3:0] digi2w;
	 wire [3:0] digi3w;

	 wire digit0_cout;
 	 wire digit1_cout;
	 wire digit2_cout;
	 wire digit3_cout;
		

	mspulse #(
				.MAX_COUNT(49999)
			  ) 
		milispulse(
		.clk(clk),
		.start(start),
		.stop(stop),
		.msclock(ms_pulse)
		);
	
	always @ (posedge clk)
	begin
		count <= count + 1;
	end

	always @ (*)
	begin
		dp <= 1'b1;
		case(count[14:13]) 		 
			2'b00:  
			 begin
				 bcdmain <= digi0w;
				 segment = sseg0;
				 an = 4'b1110;
			 end
			 
			2'b01:  
			 begin
				 bcdmain <= digi1w;
				 segment = sseg0;
				 an = 4'b1101;
			 end
			 
			2'b10:  
			 begin
				 bcdmain <= digi2w;
				 segment = sseg0;
				 an = 4'b1011;
			 end

			2'b11:  
			 begin
				 bcdmain <= digi3w;
				 segment = sseg0;
				 an = 4'b0111;
			 end
		endcase
	end
	
	BCDtoSevenseg bcds0 (
		.bcd(bcdmain),
		.segment(sseg0)
	);
	

	bcd_digit digi_module_0 (
	 .clk(ms_pulse),
	 .reset(reset), 
	 .digit(digi0w), 
	 .c_out(digit0_cout)
	);
		
	bcd_digit digi_module_1 (
	 .clk(digit0_cout),
	 .reset(reset), 
	 .digit(digi1w), 
	 .c_out(digit1_cout)
	);
	
	bcd_digit digi_module_2 (
	 .clk(digit1_cout),
	 .reset(reset), 
	 .digit(digi2w), 
	 .c_out(digit2_cout)
	);
	
	bcd_digit digi_module_3 (
	 .clk(digit2_cout),
	 .reset(reset), 
	 .digit(digi3w), 
	 .c_out(digit3_cout)
	);
		
endmodule
