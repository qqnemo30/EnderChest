`timescale 1ns / 1ns
module alu
(
    input [31:0] aluA,
    input [31:0] aluB,
    input [3:0] alufun,
    output [31:0] valE
);

reg [31:0] regvalE;
assign valE = regvalE;

always @(*) begin
    case (alufun)
        4'h0:   regvalE <= aluA + aluB; 
        4'h1:   regvalE <= aluA - aluB;
        4'h2:   regvalE <= aluA & aluB;
        4'h3:   regvalE <= aluA ^ aluB;
    endcase
end

endmodule