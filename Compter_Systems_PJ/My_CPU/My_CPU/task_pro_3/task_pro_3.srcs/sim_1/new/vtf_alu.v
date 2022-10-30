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
		alufun = 4'd0;          // ADD
		aluA = 32'h2;           // pos + pos without overflow
        aluB = 32'h1;
        #20
		aluA = 32'h2;           // pos + neg without overflow 
		aluB = 32'hffff_ffff;
		#20
		aluA = 32'h1;           // pos + neg without overflow 
        aluB = 32'hffff_fffe;
        #20
		aluA = 32'hffff_ffff;   // neg + neg without overflow
		aluB = 32'hffff_ffff;
		#20
		aluA = 32'h1;           // pos + neg with a 0 result 
        aluB = 32'hffff_ffff;
        #20
        aluA = 32'h7fff_ffff;   // pos + pos with overflow
        aluB = 32'h7fff_ffff;
        #20
        aluA = 32'h8000_0000;   // neg + neg with overflow
        aluB = 32'h8000_0000;
        #20
        
        alufun = 4'd1;          // SUB
        aluA = 32'h7fff_ffff;   // pos - pos without overflow
        aluB = 32'h1;
        #20
        aluA = 32'h1;           // pos - pos without overflow
        aluB = 32'h2;
        #20
        aluA = 32'h1;           // pos - pos with a 0 result
        aluB = 32'h1;
        #20
        aluA = 32'h1;           // pos - neg without overflow
        aluB = 32'hffff_ffff;
        #20
        aluA = 32'hffff_fffe;   // neg - neg without overflow
        aluB = 32'hffff_ffff;
        #20
        aluA = 32'hffff_ffff;   // neg - neg without overflow
        aluB = 32'hffff_fffe;
        #20
        aluA = 32'hffff_ffff;   // neg - neg with a 0 result
        aluB = 32'hffff_ffff;
        #20
        aluA = 32'hffff_ffff;   // neg - pos without overflow
        aluB = 32'h1;
        #20
        aluA = 32'h7fff_ffff;   // pos - neg with overflow
        aluB = 32'hffff_ffff;
        #20
        aluA = 32'h8000_0000;   // neg - pos with overflow
        aluB = 32'h7fff_ffff;
        #20
        
        alufun = 4'd2;
        aluA = 32'h0000_ffff;
        aluB = 32'hffff_0000;
        #20
        alufun = 4'd3;
        #20     
		$stop;
	end
   
endmodule