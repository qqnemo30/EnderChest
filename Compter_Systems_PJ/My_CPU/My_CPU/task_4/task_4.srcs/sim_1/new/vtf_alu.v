`timescale 1ns / 1ns
module vtf_alu;
	// Inputs
    reg [31:0] aluA;
    reg [31:0] aluB;
    reg [3:0] alufun;

	// Outputs
    wire [31:0] valE;

	// Instantiate the Unit Under Test (UUT)	
	alu uut (
	   .aluA(aluA),
	   .aluB(aluB),
	   .alufun(alufun),
	   .valE(valE)
	);
	
	initial begin
		aluA = 32'hf0;
		aluB = 32'hf;
		alufun = 4'd0;
        #20
        alufun = 4'd1;
        #20
        alufun = 4'd2;
        #20
        alufun = 4'd3;
        #20
        alufun = 4'h2;
        aluA = 32'hf;
        aluB = 32'hffff;
        #20
        aluA = 32'hf0;
        #20
        aluA = 32'hf00;
        #20
        aluA = 32'hf000;
        #20
        aluA = 32'h0;
        aluB = 32'h0;
        alufun = 0;
        #100     
		$stop;
	end
   
endmodule