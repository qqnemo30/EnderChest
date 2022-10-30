`timescale 1ns / 1ns
module vtf_processor;
	// Inputs
	reg clock;
    reg [8:0] addr;
    reg wr;
    reg [31:0] wdata;
    reg working;

	// Outputs
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	processor uut1 (
		.clock(clock), 		
		.addr(PC), 
		.wr(wr),
		.wdata(wdata),
		.working(working),
		.PC(PC)
	);
	
	initial begin
		clock = 0;
		// 50 CMOVLE
		wr = 1;    working = 0;     #20
        wdata = 32'h10_f0_00_01;    #20    // A 0
        wdata = 32'h10_f1_00_02;    #20    // 1
        wdata = 32'h10_f2_00_03;    #20    // 2
        wdata = 32'h10_f3_00_04;    #20    // 3
        wdata = 32'h10_f4_00_05;    #20    // 4
        wdata = 32'h10_f5_00_06;    #20    // 5
        wdata = 32'h10_f6_00_07;    #20    // 6
        wdata = 32'h10_f7_00_08;    #20    // 7
        wdata = 32'h66_00_00_0a;    #20    // 8
        wdata = 32'h21_76_00_00;    #20    // B 9
        wdata = 32'h20_76_00_00;    #20    // C 10
        wdata = 32'h20_10_00_00;    #20    // D
        wdata = 32'h21_70_00_00;    #20    // E
        wdata = 32'h64_00_00_0b;    #20    // F
        wdata = 32'h20_76_00_00;    #20    // G
        wdata = 32'h20_20_00_00;    #20    // H
        wdata = 32'h21_70_00_00;    #20    // I
        wdata = 32'h65_00_00_0f;    #20    // J
        wdata = 32'h20_75_00_00;    #20    // K
        wdata = 32'h20_30_00_00;    #20    // L
        wdata = 32'h21_70_00_00;    #20    // M
        wdata = 32'h62_00_00_13;    #20    // N
        wdata = 32'h20_75_00_00;    #20    // O
        wdata = 32'h20_30_00_00;    #20    // P
        wdata = 32'h21_70_00_00;    #20    // Q
        wdata = 32'h63_00_00_17;    #20    // R
        wdata = 32'h21_60_00_00;    #20    // S
        wdata = 32'h21_67_00_00;    #20    // T
        wdata = 32'h60_00_00_1a;    #20    // U
        wdata = 32'h21_50_00_00;    #20    // V
        wdata = 32'h21_57_00_00;    #20    // W
        wdata = 32'h61_00_00_1d;    #10    // X
        working = 1;    wr = 0;
        wdata = 32'h61_00_00_1d;    #10   
        wdata = 32'h0; 
        #3500


        $stop;
    end


    always @(*) begin
        if (PC == 32'h20) begin
            working = 0;
        end   
    end
   
    always #10 clock = ~ clock;
   
endmodule