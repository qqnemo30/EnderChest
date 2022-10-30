`timescale 1ns / 1ns
module processor
(
    input clock,
    input [8:0] addr,
    input wr,
    input [31:0] wdata,
    input working,
    output [3:0] icode,
    output [3:0] ifun,
    output [3:0] rA,
    output [3:0] rB,
    output [15:0] valC
);

wire [31:0] rdata;

ram u1 (
    .clock(clock), 		
	.addr(addr), 
	.wr(wr),
	.wdata(wdata),
	.rd(working),
	.rdata(rdata[31:0])
);

assign icode = rdata[31:28];
assign ifun = rdata[27:24];
assign rA = rdata[23:20];
assign rB = rdata[19:16];
assign valC = rdata[15:0];

endmodule