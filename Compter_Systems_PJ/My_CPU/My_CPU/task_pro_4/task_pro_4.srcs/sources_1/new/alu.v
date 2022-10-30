`timescale 1ns / 1ns
module alu
(
    input [31:0] aluA,
    input [31:0] aluB,
    input [3:0] alufun,
    output [31:0] valE,
    output [2:0] cc
);

reg [31:0] regvalE;
assign valE = regvalE;

reg ZF;
reg SF;
reg OF;

assign cc[2] = ZF;
assign cc[1] = SF;
assign cc[0] = OF;

always @(*) begin
    case (alufun)
        4'h0:   regvalE <= aluA + aluB; 
        4'h1:   regvalE <= aluA - aluB;
        4'h2:   regvalE <= aluA & aluB;
        4'h3:   regvalE <= aluA ^ aluB;
    endcase
    if (regvalE  == 0) begin
        ZF <= 1;
    end
    else begin
        ZF <= 0;
    end
    if (regvalE[31] == 1) begin
        SF <= 1;
    end
    else begin
        SF <= 0;
    end
    if (alufun == 0) begin
        if (aluA[31] ^ aluB[31] == 0) begin
            if (aluA[31] ^ regvalE[31] == 1) begin
                OF <= 1;
            end
            else begin
                OF <= 0;
            end
        end
        else begin
            OF <= 0;
        end
    end
    else if (alufun == 1) begin
        if (aluA[31] ^ aluB[31] == 1) begin
            if (aluA[31] ^ regvalE[31] == 1) begin
                OF <= 1;
            end
            else begin
                OF <= 0;
            end
        end
        else begin
            OF <= 0;
        end
    end
    else begin
        OF <= 0;
    end    
end

endmodule