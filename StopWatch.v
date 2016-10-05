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
	 
	 reg [16:0]count;
	 
	 wire [6:0] sseg0;
	 wire [6:0] sseg1;
	 wire [6:0] sseg2; 
	 wire [6:0] sseg3;
	 
	 wire [3:0] digi0w;
	 wire [3:0] digi1w;
	 wire [3:0] digi2w;
	 wire [3:0] digi3w;

	 wire digit0_cout;
 	 wire digit1_cout;
	 wire digit2_cout;
	 wire digit3_cout;
		
	reg fc_in = 0;

	mspulse milispulse(
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
		fc_in <= 0;
		case(count[13:12]) 		 
			2'b00:  
			 begin
				 segment = sseg0;
				 an = 4'b1110;
			 end
			 
			2'b01:  
			 begin
				 segment = sseg1;
				 an = 4'b1101;
			 end
			 
			2'b10:  
			 begin
				 segment = sseg2;
				 an = 4'b1011;
			 end

			2'b11:  
			 begin
				 segment = sseg3;
				 an = 4'b0111;
			 end
		endcase
	end
	
	
	bcd_digit digi_module_0 (
	 .clk(ms_pulse),
	 .c_in(fc_in), 
	 .reset(reset), 
	 .digit(digi0w), 
	 .c_out(digit0_cout)
	);
	
	BCDtoSevenseg bcds0 (
		.bcd(digi0w),
		.segment(sseg0)
	);
		
	bcd_digit digi_module_1 (
	 .clk(digit0_cout),
	 .c_in(digit0_cout), 
	 .reset(reset), 
	 .digit(digi1w), 
	 .c_out(digit1_cout)
	);
	
	
	bcd_digit digi_module_2 (
	 .clk(digit1_cout),
	 .c_in(digit1_cout), 
	 .reset(reset), 
	 .digit(digi2w), 
	 .c_out(digit2_cout)
	);
	
	bcd_digit digi_module_3 (
	 .clk(digit2_cout),
	 .c_in(digit2_cout), 
	 .reset(reset), 
	 .digit(digi3w), 
	 .c_out(digit3_cout)
	);
	

	
	BCDtoSevenseg bcds1 (
		.bcd(digi1w),
		.segment(sseg1)
	);
	
	BCDtoSevenseg bcds2 (
		.bcd(digi2w),
		.segment(sseg2)
	);
	
	BCDtoSevenseg bcds3 (
		.bcd(digi3w),
		.segment(sseg3)
	);

endmodule
