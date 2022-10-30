`timescale 1ns / 1ns
module processor
(
    input clock,
    input [8:0] addr,
    input wr,
    input [31:0] wdata,
    input working,
    output [31:0] r0,
    output [31:0] r1,
    output [31:0] r2,
    output [31:0] r3,
    output [31:0] r4,
    output [31:0] r5,
    output [31:0] r6,
    output [31:0] r7
);

wire [31:0] rdata;
reg [3:0] reg_rB;
reg [15:0] reg_valC;

reg [3:0] reg_dstM;
reg [31:0] reg_valM;

ram u1 (
    .clock(clock), 		
	.addr(addr), 
	.wr(wr),
	.wdata(wdata),
	.rd(working),
	.rdata(rdata[31:0])
);

regfile u2 (
    .dstE(),
    .valE(),
    .dstM(reg_dstM),
    .valM(reg_valM),
    .clock(clock),
    .r0(r0),
    .r1(r1),
    .r2(r2),
    .r3(r3),
    .r4(r4),
    .r5(r5),
    .r6(r6),
    .r7(r7),
    .reset(~wr)
);

always @(*) begin
    if ((rdata[31:28] == 4'b1) && (rdata[27:24] == 4'b0)) begin
        reg_rB = rdata[19:16];
        reg_valC = rdata[15:0];
    end
end

always @(posedge clock) begin
    reg_dstM <= reg_rB;
    reg_valM <= reg_valC;
end

endmodule