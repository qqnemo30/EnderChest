`timescale 1ns / 1ns
module vtf_regfile;
	// Inputs
    reg [3:0] dstE;
    reg [31:0] valE;
    reg [3:0] dstM;
    reg [31:0] valM;
    reg reset;
    reg clock;

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
	regfile uut (
	   .dstE(dstE),
	   .valE(valE),
	   .dstM(dstM),
	   .valM(valM),
	   .clock(clock),
	   .reset(reset),
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
		reset = 1;
        dstM = 4'b0;
        valM = 32'h00_00_00_80;
        #5
        reset = 0;
        #5
        reset = 1;
        #10
        dstM = 4'd1;
        valM = 32'h00_00_00_81;
        #20
        dstM = 4'd2;
        valM = 32'h00_00_00_82;
        #20
        dstM = 4'd3;
        valM = 32'h00_00_00_83;
        #20
        dstM = 4'd4;
        valM = 32'h00_00_00_84;
        #20
        dstM = 4'd5;
        valM = 32'h00_00_00_85;
        #20
        dstM = 4'd6;
        valM = 32'h00_00_00_86;
        #20
        dstM = 4'd7;
        valM = 32'h00_00_00_87;
        #20
        dstM = 4'd8;
        #200                
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule
