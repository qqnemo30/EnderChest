

//分频定时计数描述

module Timer(clk, rst, clr, pause,
				 Rinsing_timer, Draining_timer, Dehydrating_timer, Warning_timer,
				 second, cnt_one_tenth_sec, cnt_sec, cnt_ten_sec, cnt_min);

	input clk, rst, clr;
	input pause;			//暂停键使用拨盘开关控制，低电平时暂停，高电平时重新启动；
	output reg Rinsing_timer, Draining_timer, Dehydrating_timer, Warning_timer;
	reg [13:0] posclk_cnt;
	reg [8:0] pos_9375clk_cnt;		//8:0
	reg [12:0] one_tenth_second_cnt;
	output reg [3:0] cnt_one_tenth_sec, cnt_sec, cnt_ten_sec, cnt_min;
	output reg second;
	reg ten_second, minute, clk_9375;
	
	reg q0, q1;
	assign double_edge_detect = q0 ^ q1;
		
	always @(posedge clk or negedge rst or negedge clr)	// 分频; 24MHz = '9375' * 2^8 *10
		begin
			if (!rst)
				begin
					posclk_cnt <= 0;
					clk_9375 <= 1;
				end
			else if (!clr)
				begin
					posclk_cnt <= 0;
					clk_9375 <= 1;
				end
			else if (!pause)
				begin
					posclk_cnt <= posclk_cnt;
					clk_9375 <= clk_9375;
				end
			else if (posclk_cnt == 9375)	//9375
				begin
					posclk_cnt <= 0;
					clk_9375 <= 0;
				end
			else
				begin
					posclk_cnt <= posclk_cnt + 1;
					clk_9375 <= 1;
				end
		end			

	
	always @(negedge rst or negedge clr or negedge clk_9375)	// 0.1s分频; 24MHz = 9375 * '2^8' *10
		begin
			if (!rst)
				pos_9375clk_cnt <= 0;
			else if (!clr)
				pos_9375clk_cnt <= 0;
			else if (!pause)
				pos_9375clk_cnt <= pos_9375clk_cnt;
			else if (clk_9375 == 0)
				pos_9375clk_cnt <= pos_9375clk_cnt + 1;
		end


	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					q0 <= 0;
					q1 <= 0;
				end
			else
				begin
					q0 <= pos_9375clk_cnt[8];		//[8]
					q1 <= q0;
			end
		end
 	
	
	always @(negedge rst or negedge clr or posedge double_edge_detect)
		begin
			if (!rst)
				one_tenth_second_cnt <= 0;
			else if (!clr)
				one_tenth_second_cnt <= 0;
			else if (!pause)
				one_tenth_second_cnt <= one_tenth_second_cnt;
			else
				one_tenth_second_cnt <= one_tenth_second_cnt + 1;
		end

	always @(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 1;
					Dehydrating_timer <= 1;
					Warning_timer <= 1;
				end
			else if (!clr)
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 1;
					Dehydrating_timer <= 1;
					Warning_timer <= 1;
				end
			else if (one_tenth_second_cnt == 100)	//100
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 1;
					Dehydrating_timer <= 1;
					Warning_timer <= 0;
				end
			else if (one_tenth_second_cnt == 300)	//300
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 0;
					Dehydrating_timer <= 1;
					Warning_timer <= 1;
				end
			else if (one_tenth_second_cnt == 3000)	//3000
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 1;
					Dehydrating_timer <= 0;
					Warning_timer <= 1;
				end
			else if (one_tenth_second_cnt == 6000)	//6000
				begin
					Rinsing_timer <= 0;
					Draining_timer <= 1;
					Dehydrating_timer <= 1;
					Warning_timer <= 1;
				end
			else 
				begin
					Rinsing_timer <= 1;
					Draining_timer <= 1;
					Dehydrating_timer <= 1;
					Warning_timer <= 1;
				end
		end

		
	always @(negedge rst or negedge clr or posedge double_edge_detect)
		begin
			if (!rst)
				begin
					cnt_one_tenth_sec <= 0;
					second <= 1;
				end
			else if (!clr)
				begin
					cnt_one_tenth_sec <= 0;
					second <= 1;
				end
			else if (!pause)
				begin
					cnt_one_tenth_sec <= cnt_one_tenth_sec;
					second <= second;
				end
			else if (cnt_one_tenth_sec == 9)
				begin
					cnt_one_tenth_sec <= 0;
					second <= 0;
				end
			else
				begin
					cnt_one_tenth_sec <= cnt_one_tenth_sec + 1;
					second <= 1;
				end
		end
	
	always @(negedge rst or negedge clr or negedge second)
		begin
			if (!rst)
				begin
					cnt_sec <= 0;
					ten_second <= 1;
				end
			else if (!clr)
				begin
					cnt_sec <= 0;
					ten_second <= 1;
				end
			else if (!pause)
				begin
					cnt_sec <= cnt_sec;
					ten_second <= ten_second;
				end
			else if (cnt_sec == 9)
				begin
					cnt_sec <= 0;
					ten_second <= 0;
				end
			else
				begin
					cnt_sec <= cnt_sec + 1;
					ten_second <= 1;
				end
		end
		
	always @(negedge rst or negedge clr or negedge ten_second)
		begin
			if (!rst)
				begin
					cnt_ten_sec <= 0;
					minute <= 1;
				end
			else if (!clr)
				begin
					cnt_ten_sec <= 0;
					minute <= 1;
				end
			else if (!pause)
				begin
					cnt_ten_sec <= cnt_ten_sec;
					minute <= minute;
				end
			else if (cnt_ten_sec == 5)
				begin
					cnt_ten_sec <= 0;
					minute <= 0;
				end
			else
				begin
					cnt_ten_sec <= cnt_ten_sec + 1;
					minute <= 1;
				end
		end
		
	always @(negedge rst or negedge clr or negedge minute)
		begin
			if (!rst)
				cnt_min <= 0;
			else if (!clr)
				cnt_min <= 0;
			else if (!pause)
				cnt_min <= cnt_min;
			else if (cnt_ten_sec == 9)
				cnt_min <= 0;
			else
				cnt_min <= cnt_min + 1;
		end
	
	
endmodule

