`timescale 1ns / 1ns
module vtf_processor;
	// Inputs
	reg clock;
    reg [8:0] addr;
    reg wr;
    reg [31:0] wdata;
    reg working;

	// Outputs
	wire [31:0] valA;
    wire [31:0] valB;

	// Instantiate the Unit Under Test (UUT)
	processor uut1 (
		.clock(clock), 		
		.addr(addr), 
		.wr(wr),
		.wdata(wdata),
		.working(working),
		.valA(valA),
		.valB(valB)
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
        addr = 9'd8;
        wdata = 32'h20_01_00_00;
        #20
        addr = 9'd9;
        wdata = 32'h21_23_00_00;
        #20
        addr = 9'd10;
        wdata = 32'h22_45_00_00;
        #20
        addr = 9'd11;
        wdata = 32'h23_67_00_00;
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
        #20
        addr = 9'd8;
        #20
        addr = 9'd9;
        #20
        addr = 9'd10;
        #20
        addr = 9'd11;                                                      
		#300
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule