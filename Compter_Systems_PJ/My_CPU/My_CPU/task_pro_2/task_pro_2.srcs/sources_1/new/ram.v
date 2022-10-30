`timescale 1ns / 1ns
module ram
(
    input clock,
    input [8:0] addr,
    input wr,
    input [31:0] wdata,
    input rd,
    output reg [31:0] rdata
);

reg [31:0] memory [0:511];

always @(posedge clock) begin
if (wr == 1)
	memory[addr] <= wdata;
if (rd == 1)
	rdata <= memory[addr];
end

endmodule