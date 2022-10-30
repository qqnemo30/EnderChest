`timescale 1ns / 1ns
module vtf_processor;
	// Inputs
	reg clock;
    reg [8:0] addr;
    reg wr;
    reg [31:0] wdata;
    reg working;

	// Outputs
	wire [31:0] r0;
    wire [31:0] r1;
    wire [31:0] r2;
    wire [31:0] r3;
    wire [31:0] r4;
    wire [31:0] r5;
    wire [31:0] r6;
    wire [31:0] r7;

	// Instantiate the Unit Under Test (UUT)
	processor uut1 (
		.clock(clock), 		
		.addr(addr), 
		.wr(wr),
		.wdata(wdata),
		.working(working),
		.r0(r0),
		.r1(r1),
		.r2(r2),
		.r3(r3),
		.r4(r4),
		.r5(r5),
		.r6(r6),
		.r7(r7)
	);
	
	initial begin
		clock = 0;
        wr = 1;
        working = 0;
        addr = 9'd0;
        wdata = 32'h10_f0_00_80;
        #20
        addr = 9'd1;
        wdata = 32'h10_f1_00_81;
        #20
        addr = 9'd2;
        wdata = 32'h10_f2_00_82;
        #20
        addr = 9'd3;
        wdata = 32'h10_f3_00_83;
        #20
        addr = 9'd4;
        wdata = 32'h10_f4_00_84;
        #20
        addr = 9'd5;
        wdata = 32'h10_f5_00_85;
        #20
        addr = 9'd6;
        wdata = 32'h10_f6_00_86;
        #20
        addr = 9'd7;
        wdata = 32'h10_f7_00_87;
        #20                
                
		// Add stimulus here
		working = 1;
		wr = 0;
        addr = 9'd0;
        wdata = 32'h0;
		#20
        addr = 9'd1;
        #20
        addr = 9'd2;
        #20
        addr = 9'd3;
        #20
        addr = 9'd4;
        #20
        addr = 9'd5;
        #20
        addr = 9'd6;
        #20
        addr = 9'd7;
		#300
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule