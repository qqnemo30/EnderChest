`timescale 1ns / 1ns
module vtf_processor;
	// Inputs
	reg clock;
    reg [8:0] addr;
    reg wr;
    reg [31:0] wdata;
    reg working;

	// Outputs
	wire [3:0] icode;
    wire [3:0] ifun;
    wire [3:0] rA;
    wire [3:0] rB;
    wire [15:0] valC;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.clock(clock), 		
		.addr(addr), 
		.wr(wr),
		.wdata(wdata),
		.working(working),
		.icode(icode),
		.ifun(ifun),
		.rA(rA),
		.rB(rB),
		.valC(valC)
	);

	initial begin
		clock = 0;
        wr = 1;		
        addr = 9'd0;
        wdata = 32'h10_f0_00_10;
        working = 0;
        #20
        addr = 9'd1;
        wdata = 32'h20_01_00_00;
        #20
        addr = 9'd2;
        wdata = 32'h21_23_00_00;
        #20
        addr = 9'd3;
        wdata = 32'h22_45_00_00;
        #20
        addr = 9'd4;
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
		#200;
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule