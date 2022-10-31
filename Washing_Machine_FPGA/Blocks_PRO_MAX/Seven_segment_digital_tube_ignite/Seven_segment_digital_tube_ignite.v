

// 七段数码管点亮控制描述

module Seven_segment_digital_tube_ignite (clk, rst, clr, Led_free, Led_water_supply, 
													   a, b, c, d, e, f, g,
												      low_min, low_ten_sec, low_sec, low_one_tenth_sec,
														cnt_one_tenth_sec, cnt_sec, cnt_ten_sec, cnt_min);
	
	input clk, rst, clr;
	input Led_free, Led_water_supply;
	input low_min, low_ten_sec, low_sec, low_one_tenth_sec;	
	input [3:0] cnt_one_tenth_sec, cnt_sec, cnt_ten_sec, cnt_min;
	
	output reg a, b, c, d, e, f, g;
	
	
	always @(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end
			else if (!clr)
				begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end
			else if (!Led_free)
				begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end
			else if (!Led_water_supply)
				begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end
			else if (low_one_tenth_sec == 0)
				begin
					if (cnt_one_tenth_sec == 0)
						begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end //0
					else if (cnt_one_tenth_sec == 1)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//1
					else if (cnt_one_tenth_sec == 2)
						begin	a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0; end	//2
					else if (cnt_one_tenth_sec == 3)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0; end	//3
					else if (cnt_one_tenth_sec == 4)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0; end	//4
					else if (cnt_one_tenth_sec == 5)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//5
					else if (cnt_one_tenth_sec == 6)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//6
					else if (cnt_one_tenth_sec == 7)
						begin	a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//7
					else if (cnt_one_tenth_sec == 8)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//8
					else if (cnt_one_tenth_sec == 9)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//9
				end
			else if (low_sec == 0)
				begin
					if (cnt_sec == 0)
						begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end //0
					else if (cnt_sec == 1)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//1
					else if (cnt_sec == 2)
						begin	a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0; end	//2
					else if (cnt_sec == 3)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0; end	//3
					else if (cnt_sec == 4)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0; end	//4
					else if (cnt_sec == 5)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//5
					else if (cnt_sec == 6)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//6
					else if (cnt_sec == 7)
						begin	a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//7
					else if (cnt_sec == 8)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//8
					else if (cnt_sec == 9)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//9
				end
			else if (low_ten_sec == 0)
				begin
					if (cnt_ten_sec == 0)
						begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end //0
					else if (cnt_ten_sec == 1)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//1
					else if (cnt_ten_sec == 2)
						begin	a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0; end	//2
					else if (cnt_ten_sec == 3)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0; end	//3
					else if (cnt_ten_sec == 4)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0; end	//4
					else if (cnt_ten_sec == 5)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//5
					else if (cnt_ten_sec == 6)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//6
					else if (cnt_ten_sec == 7)
						begin	a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//7
					else if (cnt_ten_sec == 8)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//8
					else if (cnt_ten_sec == 9)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//9
				end
			else if (low_min == 0)
				begin
					if (cnt_min == 0)
						begin a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 1; end //0
					else if (cnt_min == 1)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//1
					else if (cnt_min == 2)
						begin	a <= 0; b <= 0; c <= 1; d <= 0; e <= 0; f <= 1; g <= 0; end	//2
					else if (cnt_min == 3)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 1; g <= 0; end	//3
					else if (cnt_min == 4)
						begin	a <= 1; b <= 0; c <= 0; d <= 1; e <= 1; f <= 0; g <= 0; end	//4
					else if (cnt_min == 5)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//5
					else if (cnt_min == 6)
						begin	a <= 0; b <= 1; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//6
					else if (cnt_min == 7)
						begin	a <= 0; b <= 0; c <= 0; d <= 1; e <= 1; f <= 1; g <= 1; end	//7
					else if (cnt_min == 8)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 0; f <= 0; g <= 0; end	//8
					else if (cnt_min == 9)
						begin	a <= 0; b <= 0; c <= 0; d <= 0; e <= 1; f <= 0; g <= 0; end	//9
				end
		end
	
endmodule
