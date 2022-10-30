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
		// 50 CMOVLE
		wr = 1;    working = 0;
        addr = 9'd0;    wdata = 32'h10_f0_00_80;    #20
        addr = 9'd1;    wdata = 32'h10_f1_00_81;    #20
        addr = 9'd2;    wdata = 32'h10_f2_00_82;    #20
        addr = 9'd3;    wdata = 32'h10_f3_00_83;    #20
        addr = 9'd4;    wdata = 32'h10_f4_00_84;    #20
        addr = 9'd5;    wdata = 32'h10_f5_00_85;    #20
        addr = 9'd6;    wdata = 32'h10_f6_00_86;    #20
        addr = 9'd7;    wdata = 32'h10_f7_00_87;    #20
        addr = 9'd8;    wdata = 32'h40_01_00_00;    #20
        addr = 9'd9;    wdata = 32'h21_32_00_00;    #20
        addr = 9'd10;   wdata = 32'h50_45_00_00;    #20
        addr = 9'd11;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd12;   wdata = 32'h50_45_00_00;    #20
        addr = 9'd13;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd14;   wdata = 32'h50_67_00_00;    #20

		working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd0;    #20
        addr = 9'd1;    #20
        addr = 9'd2;    #20
        addr = 9'd3;    #20
        addr = 9'd4;    #20
        addr = 9'd5;    #20
        addr = 9'd6;    #20
        addr = 9'd7;    #20
        addr = 9'd8;    #20
        addr = 9'd9;    #20
        addr = 9'd10;   #20
        addr = 9'd11;   #20
		addr = 9'd12;   #20
        addr = 9'd13;   #20
        addr = 9'd14;   #20
        working = 0;    #100
        
        // 51 CMOVL
        wr = 1;    working = 0;
        addr = 9'd15;   wdata = 32'h10_f0_00_88;    #20
        addr = 9'd16;   wdata = 32'h10_f1_00_89;    #20
        addr = 9'd17;   wdata = 32'h10_f2_00_8a;    #20
        addr = 9'd18;   wdata = 32'h10_f3_00_8b;    #20
        addr = 9'd19;   wdata = 32'h10_f4_00_8c;    #20
        addr = 9'd20;   wdata = 32'h10_f5_00_8d;    #20
        addr = 9'd21;   wdata = 32'h10_f6_00_8e;    #20
        addr = 9'd22;   wdata = 32'h10_f7_00_8f;    #20
        addr = 9'd23;   wdata = 32'h40_01_00_00;    #20
        addr = 9'd24;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd25;   wdata = 32'h51_45_00_00;    #20
        addr = 9'd26;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd27;   wdata = 32'h51_45_00_00;    #20
        addr = 9'd28;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd29;   wdata = 32'h51_67_00_00;    #20
                                      
        working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd15;   #20
        addr = 9'd16;   #20
        addr = 9'd17;   #20
        addr = 9'd18;   #20
        addr = 9'd19;   #20
        addr = 9'd20;   #20
        addr = 9'd21;   #20
        addr = 9'd22;   #20
        addr = 9'd23;   #20
        addr = 9'd24;   #20
        addr = 9'd25;   #20
        addr = 9'd26;   #20
        addr = 9'd27;   #20
        addr = 9'd28;   #20
        addr = 9'd29;   #20
        working = 0;    #100
        
        // 52 CMOVE
        wr = 1;    working = 0;
        addr = 9'd30;   wdata = 32'h10_f0_00_90;    #20
        addr = 9'd31;   wdata = 32'h10_f1_00_91;    #20
        addr = 9'd32;   wdata = 32'h10_f2_00_92;    #20
        addr = 9'd33;   wdata = 32'h10_f3_00_93;    #20
        addr = 9'd34;   wdata = 32'h10_f4_00_94;    #20
        addr = 9'd35;   wdata = 32'h10_f5_00_95;    #20
        addr = 9'd36;   wdata = 32'h10_f6_00_96;    #20
        addr = 9'd37;   wdata = 32'h10_f7_00_97;    #20
        addr = 9'd38;   wdata = 32'h40_01_00_00;    #20
        addr = 9'd39;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd40;   wdata = 32'h52_45_00_00;    #20
        addr = 9'd41;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd42;   wdata = 32'h52_45_00_00;    #20
        addr = 9'd43;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd44;   wdata = 32'h52_67_00_00;    #20
                                              
        working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd30;   #20
        addr = 9'd31;   #20
        addr = 9'd32;   #20
        addr = 9'd33;   #20
        addr = 9'd34;   #20
        addr = 9'd35;   #20
        addr = 9'd36;   #20
        addr = 9'd37;   #20
        addr = 9'd38;   #20
        addr = 9'd39;   #20
        addr = 9'd40;   #20
        addr = 9'd41;   #20
        addr = 9'd42;   #20
        addr = 9'd43;   #20
        addr = 9'd44;   #20
        working = 0;    #100
        
        // 53 CMOVNE
        wr = 1;    working = 0;
        addr = 9'd45;   wdata = 32'h10_f0_00_90;    #20
        addr = 9'd46;   wdata = 32'h10_f1_00_91;    #20
        addr = 9'd47;   wdata = 32'h10_f2_00_92;    #20
        addr = 9'd48;   wdata = 32'h10_f3_00_93;    #20
        addr = 9'd49;   wdata = 32'h10_f4_00_94;    #20
        addr = 9'd50;   wdata = 32'h10_f5_00_95;    #20
        addr = 9'd51;   wdata = 32'h10_f6_00_96;    #20
        addr = 9'd52;   wdata = 32'h10_f7_00_97;    #20
        addr = 9'd53;   wdata = 32'h40_01_00_00;    #20
        addr = 9'd54;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd55;   wdata = 32'h53_45_00_00;    #20
        addr = 9'd56;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd57;   wdata = 32'h53_45_00_00;    #20
        addr = 9'd58;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd59;   wdata = 32'h53_67_00_00;    #20
                                                      
        working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd45;   #20
        addr = 9'd46;   #20
        addr = 9'd47;   #20
        addr = 9'd48;   #20
        addr = 9'd49;   #20
        addr = 9'd50;   #20
        addr = 9'd51;   #20
        addr = 9'd52;   #20
        addr = 9'd53;   #20
        addr = 9'd54;   #20
        addr = 9'd55;   #20
        addr = 9'd56;   #20
        addr = 9'd57;   #20
        addr = 9'd58;   #20
        addr = 9'd59;   #20
        working = 0;    #100
        
        // 54 CMOVGE
        wr = 1;    working = 0;
        addr = 9'd60;   wdata = 32'h10_f0_00_90;    #20
        addr = 9'd61;   wdata = 32'h10_f1_00_91;    #20
        addr = 9'd62;   wdata = 32'h10_f2_00_92;    #20
        addr = 9'd63;   wdata = 32'h10_f3_00_93;    #20
        addr = 9'd64;   wdata = 32'h10_f4_00_94;    #20
        addr = 9'd65;   wdata = 32'h10_f5_00_95;    #20
        addr = 9'd66;   wdata = 32'h10_f6_00_96;    #20
        addr = 9'd67;   wdata = 32'h10_f7_00_97;    #20
        addr = 9'd68;   wdata = 32'h40_01_00_00;    #20
        addr = 9'd69;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd70;   wdata = 32'h54_45_00_00;    #20
        addr = 9'd71;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd72;   wdata = 32'h54_45_00_00;    #20
        addr = 9'd73;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd74;   wdata = 32'h54_67_00_00;    #20
                                                              
        working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd60;   #20
        addr = 9'd61;   #20
        addr = 9'd62;   #20
        addr = 9'd63;   #20
        addr = 9'd64;   #20
        addr = 9'd65;   #20
        addr = 9'd66;   #20
        addr = 9'd67;   #20
        addr = 9'd68;   #20
        addr = 9'd69;   #20
        addr = 9'd70;   #20
        addr = 9'd71;   #20
        addr = 9'd72;   #20
        addr = 9'd73;   #20
        addr = 9'd74;   #20
        working = 0;    #100
        
        // 55 CMOVG
        wr = 1;    working = 0;
        addr = 9'd75;   wdata = 32'h10_f0_00_90;    #20
        addr = 9'd76;   wdata = 32'h10_f1_00_91;    #20
        addr = 9'd77;   wdata = 32'h10_f2_00_92;    #20
        addr = 9'd78;   wdata = 32'h10_f3_00_93;    #20
        addr = 9'd79;   wdata = 32'h10_f4_00_94;    #20
        addr = 9'd80;   wdata = 32'h10_f5_00_95;    #20
        addr = 9'd81;   wdata = 32'h10_f6_00_96;    #20
        addr = 9'd82;   wdata = 32'h10_f7_00_97;    #20
        addr = 9'd83;   wdata = 32'h40_01_00_00;    #20
        addr = 9'd84;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd85;   wdata = 32'h55_45_00_00;    #20
        addr = 9'd86;   wdata = 32'h21_01_00_00;    #20
        addr = 9'd87;   wdata = 32'h55_45_00_00;    #20
        addr = 9'd88;   wdata = 32'h21_32_00_00;    #20
        addr = 9'd89;   wdata = 32'h55_67_00_00;    #20
                                                                                      
        working = 1;    wr = 0;    wdata = 32'h0;
        addr = 9'd75;   #20
        addr = 9'd76;   #20
        addr = 9'd77;   #20
        addr = 9'd78;   #20
        addr = 9'd79;   #20
        addr = 9'd80;   #20
        addr = 9'd81;   #20
        addr = 9'd82;   #20
        addr = 9'd83;   #20
        addr = 9'd84;   #20
        addr = 9'd85;   #20
        addr = 9'd86;   #20
        addr = 9'd87;   #20
        addr = 9'd88;   #20
        addr = 9'd89;   #20
        working = 0;    #100
        
		$stop;
	end
   
    always #10 clock = ~ clock;
   
endmodule