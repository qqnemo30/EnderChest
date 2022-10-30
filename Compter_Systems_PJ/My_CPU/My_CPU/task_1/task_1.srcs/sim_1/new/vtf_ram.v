`timescale 1ns / 1ns
module vtf_ram_test;
	// Inputs
	reg clock;
    reg [8:0] addr;
    reg wr;
    reg [31:0] wdata;
    reg rd;

	// Outputs
	wire [31:0] ram [511:0];
	wire [31:0] rdata;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.clock(clock), 		
		.addr(addr), 
		.wr(wr),
		.wdata(wdata),
		.rd(rd),
		.rdata(rdata)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
        addr = 9'd0;
        wr = 0;
        wdata = 32'd0;
        rd = 0;

		// Wait 100 ns for global reset to finish
		#50;       
		// Add stimulus here
		addr = 9'd0; 
		wdata = 32'h0;
		wr = 1;
		#20;
		addr = 9'd1; 
        wdata = 32'h1;
        #20;
        addr = 9'd2; 
        wdata = 32'h2;
        #20;
        addr = 9'd3; 
        wdata = 32'h3;
        #20;
        addr = 9'd4; 
        wdata = 32'h4;
        #20; 
		rd = 1;  wr = 0;
		addr = 9'd0; 
		#20;
		addr = 9'd1;
		#20;
        addr = 9'd2;
        #20;
        addr = 9'd3;
        #20;
        addr = 9'd4;
		#200;
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule