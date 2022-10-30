`timescale 1ns / 1ns
module regfile
(
    input [3:0] dstE,
    input [31:0] valE,
    input [3:0] dstM,
    input [31:0] valM,
    input reset,
    input clock,
    output [31:0] r0,
    output [31:0] r1,
    output [31:0] r2,
    output [31:0] r3,
    output [31:0] r4,
    output [31:0] r5,
    output [31:0] r6,
    output [31:0] r7
);

reg [31:0] reg0;
reg [31:0] reg1;
reg [31:0] reg2;
reg [31:0] reg3;
reg [31:0] reg4;
reg [31:0] reg5;
reg [31:0] reg6;
reg [31:0] reg7;

assign r0 = reg0;
assign r1 = reg1;
assign r2 = reg2;
assign r3 = reg3;
assign r4 = reg4;
assign r5 = reg5;
assign r6 = reg6;
assign r7 = reg7;

always @(posedge clock, negedge reset)begin
	if (~reset) begin
	   reg0 <= 32'b0;
	   reg1 <= 32'b0;
	   reg2 <= 32'b0;
	   reg3 <= 32'b0;
	   reg4 <= 32'b0;
	   reg5 <= 32'b0;
	   reg6 <= 32'b0;
	   reg7 <= 32'b0;
	end
	else begin
	   case (dstE)
	       4'b0000:  reg0 <= valE;
	       4'b0001:  reg1 <= valE;
	       4'b0010:  reg2 <= valE;
	       4'b0011:  reg3 <= valE;
	       4'b0100:  reg4 <= valE;
	       4'b0101:  reg5 <= valE;
	       4'b0110:  reg6 <= valE;
	       4'b0111:  reg7 <= valE;
	       default:  ;
	   endcase  
	   case (dstM)
	       4'b0000:  reg0 <= valM;
	       4'b0001:  reg1 <= valM;
	       4'b0010:  reg2 <= valM;
	       4'b0011:  reg3 <= valM;
	       4'b0100:  reg4 <= valM;
	       4'b0101:  reg5 <= valM;
	       4'b0110:  reg6 <= valM;
	       4'b0111:  reg7 <= valM;
	       default:  ;  
	   endcase
	end
end

endmodule