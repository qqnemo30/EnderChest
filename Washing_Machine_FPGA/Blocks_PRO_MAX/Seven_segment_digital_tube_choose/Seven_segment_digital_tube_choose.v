
// 七段数码管选通控制描述

module Seven_segment_digital_tube_choose (clk, rst,
													   low_min, low_ten_sec, low_sec, low_one_tenth_sec);
	input clk, rst;
	
	output reg low_min, low_ten_sec, low_sec, low_one_tenth_sec;	
	
	reg [14:0] clk_cnt;
	reg clk_div;
	
	reg [1:0] state;
	localparam min = 2'b00;
	localparam ten_sec = 2'b01;
	localparam sec = 2'b10;
	localparam one_tenth_sec = 2'b11;

	
	always @(posedge clk or negedge rst)	// 0.001s分频; 24MHz = '24000' *1000
		begin
			if (!rst)
				begin
					clk_cnt <= 0;
					clk_div <= 0;
				end
			else if (clk_cnt == 24000)		//24000
				begin
					clk_cnt <= 0;
					clk_div <= 1;
				end
			else
				begin
					clk_cnt <= clk_cnt + 1;
					clk_div <= 0;
				end
		end
	
	
	always @(posedge clk_div or negedge rst)		//选通
		begin 
			if (!rst)
				begin
					state <= min;
					low_min <= 1;
					low_ten_sec <= 1;
					low_sec <= 1;
					low_one_tenth_sec <= 1;
				end
			else
				begin
					case(state)
						min:
							begin 
								state <= ten_sec;
								low_min <= 0;
								low_ten_sec <= 1;
								low_sec <= 1;
								low_one_tenth_sec <= 1;
							end
						ten_sec:
							begin 
								state <= sec;
								low_min <= 1;
								low_ten_sec <= 0;
								low_sec <= 1;
								low_one_tenth_sec <= 1;
							end
						sec:
							begin 
								state <= one_tenth_sec;
								low_min <= 1;
								low_ten_sec <= 1;
								low_sec <= 0;
								low_one_tenth_sec <= 1;
							end
						one_tenth_sec:
							begin 
								state <= min;
								low_min <= 1;
								low_ten_sec <= 1;
								low_sec <= 1;
								low_one_tenth_sec <= 0;
							end
					endcase
				end
		end

endmodule
	