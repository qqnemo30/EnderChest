`timescale 1ns / 1ns
module processor
(
    input clock,
    input [8:0] addr,
    input wr,
    input [31:0] wdata,
    input working,
    output [31:0] valE
);

wire [31:0] rdata;
reg [3:0] reg_rA;
reg [3:0] reg_rA_delay;
reg [3:0] reg_rB;
reg [3:0] reg_rB_delay;
reg [15:0] reg_valC;
reg [3:0] reg_alufun;
reg [3:0] reg_alufun_delay;

reg [3:0] reg_dstE;
reg [31:0] reg_valE;
reg [3:0] reg_dstM;
reg [31:0] reg_valM;
reg [31:0] reg_valA;
reg [31:0] reg_valB;

wire [31:0] reg0;
wire [31:0] reg1;
wire [31:0] reg2;
wire [31:0] reg3;
wire [31:0] reg4;
wire [31:0] reg5;
wire [31:0] reg6;
wire [31:0] reg7;

wire [31:0] valA;
wire [31:0] valB;

ram u1 (
    .clock(clock), 		
	.addr(addr), 
	.wr(wr),
	.wdata(wdata),
	.rd(working),
	.rdata(rdata[31:0])
);

regfile u2 (
    .dstE(reg_dstE),
    .valE(reg_valE),
    .dstM(reg_dstM),
    .valM(reg_valM),
    .clock(clock),
    .rA(reg_rA),
    .rB(reg_rB),
    .valA(valA),
    .valB(valB),
    .r0(reg0),
    .r1(reg1),
    .r2(reg2),
    .r3(reg3),
    .r4(reg4),
    .r5(reg5),
    .r6(reg6),
    .r7(reg7),
    .reset(~wr)
);

alu u3 (
    .aluA(reg_valA),
    .aluB(reg_valB),
    .alufun(reg_alufun_delay),
    .valE(valE)
);

always @(*) begin
    reg_rA = rdata[23:20];
    reg_rB = rdata[19:16];
    reg_valA = valA;
    reg_valB = valB;
    if (rdata[31:28] == 4'h1) begin
        reg_valC = rdata[15:0];
    end
    else if (rdata[31:28] == 4'h2) begin
        reg_alufun = rdata[27:24];
    end
end

always @(posedge clock) begin
    reg_rA_delay <= reg_rA;
    reg_rB_delay <= reg_rB;
    reg_valE <= valE;
    if (rdata[31:28] == 4'h1) begin
        reg_dstM <= reg_rB;
        reg_valM <= reg_valC;
    end
    else if (rdata[31:28] == 4'h2) begin
        reg_dstM <= 4'hf;    
        reg_alufun_delay <= reg_alufun;
        reg_dstE <= reg_rA_delay;
    end
        
end

endmodule