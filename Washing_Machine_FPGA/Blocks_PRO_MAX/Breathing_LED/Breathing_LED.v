
module  Breathing_LED(clk, rst, clr, led_en, led_out);

	input clk, rst, clr, led_en;
	reg [6:0] cnt_90posclk;
	reg [9:0] cnt_3ms;
	reg [8:0] cnt_1200ms;
	reg cnt_1200ms_en;
	reg led;
	
	assign led_out = led || led_en;
	output led_out;

	

	always@(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				cnt_90posclk <= 0;
			else if (!clr)
				cnt_90posclk <= 0;
			else if (cnt_90posclk == 90)		//90
				cnt_90posclk <= 0;
			else
				cnt_90posclk <= cnt_90posclk + 1;
		end
		
	always@(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				cnt_3ms <= 0;
			else if (!clr)
				cnt_3ms <= 0;
			else if (cnt_3ms == 800)			//800
				cnt_3ms <= 0;
			else if (cnt_90posclk == 90)		//90
				cnt_3ms <= cnt_3ms + 1;
		end
 
	always@(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				cnt_1200ms <= 0;
			else if (!clr)
				cnt_1200ms <= 0;
			else if (cnt_1200ms == 400)		//400
				cnt_1200ms <= 0;
			else if (cnt_3ms == 800)			//800
				cnt_1200ms <= cnt_1200ms + 1;
		end

	always@(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				cnt_1200ms_en <= 0;
			else if (!clr)
				cnt_1200ms_en <= 0;
			else if (cnt_1200ms == 400)		//400
				cnt_1200ms_en <= ~cnt_1200ms_en;
		end
				
	always@(posedge clk or negedge rst or negedge clr)
		begin
			if (!rst)
				led <= 1;
			else if (!clr)
				led <= 1;
			else if ((cnt_1200ms_en == 1 && cnt_3ms < cnt_1200ms) || (cnt_1200ms_en == 0 && cnt_3ms > cnt_1200ms))
				led <= 1;
			else
				led <= 0;
		end

 
endmodule
