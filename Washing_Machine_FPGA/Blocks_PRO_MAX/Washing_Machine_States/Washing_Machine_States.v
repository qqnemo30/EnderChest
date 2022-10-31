

//洗衣机状态描述

module Washing_Machine_States(clk, rst, clr, Start, End, Water_level, state,
							  Led_free, Led_water_supply, Led_rinsing, Led_water_draining, Led_dehydrating, Led_warning,
							  Rinsing_timer, Draining_timer, Dehydrating_timer, Warning_timer);
	input clk, rst, Start, End, Water_level, Rinsing_timer, Draining_timer, Dehydrating_timer, Warning_timer;
	output reg Led_free, Led_water_supply, Led_rinsing, Led_water_draining, Led_dehydrating, Led_warning;

	output reg [2:0] state;
	localparam Free = 3'b000;
	localparam Water_supply = 3'b001;
	localparam Rinsing = 3'b011;
	localparam Water_draining = 3'b010;
	localparam Dehydrating = 3'b110;
	localparam Warning = 3'b100;
	
	reg q1, q2, q3, q4, q5, q6, q7, q8;	
	assign temp_1 = ~q1 & q2;
	assign temp_2 = ~q3 & q4;
	assign temp_3 = ~q5 & q6;
	assign temp_4 = ~q7 & q8;
	assign clr = ~(temp_1 | temp_2 | temp_3 | temp_4);
	output clr;
	
	always @(posedge clk or negedge rst)
		begin
			if (!rst)
				begin
					state <= Free;
					Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
				end	
			else
				begin
					case(state)
						Free:
							begin
								if (Start == 1) 
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else
									begin
										state <= Water_supply;
										Led_free <= 1; Led_water_supply <= 0; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
							end	
						Water_supply:
							begin
								if (End == 0)
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else if (Water_level == 1)
									begin
										state <= Water_supply;
										Led_free <= 1; Led_water_supply <= 0; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else
									begin
										state <= Rinsing;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 0; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
							end
						Rinsing:
							begin
								if (End == 0)
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else if (Rinsing_timer == 1)
									begin
										state <= Rinsing;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 0; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else
									begin
										state <= Water_draining;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 0; Led_dehydrating <= 1; Led_warning <= 1;
									end
							end	
						Water_draining:
							begin
								if (End == 0)
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else if (Draining_timer == 1)
									begin
										state <= Water_draining;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 0; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else
									begin
										state <= Dehydrating;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 0; Led_warning <= 1;
									end
							end
						Dehydrating:
							begin
								if (End == 0)
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else if (Dehydrating_timer == 1)
									begin
										state <= Dehydrating;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 0; Led_warning <= 1;
									end
								else
									begin
										state <= Warning;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 0;
									end
							end
						Warning:
							begin
								if (End == 0)
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
								else if (Warning_timer == 1)
									begin
										state <= Warning;
										Led_free <= 1; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 0;
									end
								else
									begin
										state <= Free;
										Led_free <= 0; Led_water_supply <= 1; Led_rinsing <= 1; Led_water_draining <= 1; Led_dehydrating <= 1; Led_warning <= 1;
									end
							end
					endcase
				end
		end
		
		
	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					q1 <= 0;
					q2 <= 0;
				end
			else
				begin
					q1 <= Led_rinsing;
					q2 <= q1;
			end
		end
	
	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					q3 <= 0;
					q4 <= 0;
				end
			else
				begin
					q3 <= Led_water_draining;
					q4 <= q3;
			end
		end
	
	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					q5 <= 0;
					q6 <= 0;
				end
			else
				begin
					q5 <= Led_dehydrating;
					q6 <= q5;
			end
		end
	
	always @(posedge clk or negedge rst)
		begin
			if(!rst)
				begin
					q7 <= 0;
					q8 <= 0;
				end
			else
				begin
					q7 <= Led_warning;
					q8 <= q7;
			end
		end
	
	
endmodule