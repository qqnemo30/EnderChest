`timescale 1ns / 1ns
module processor
(
    input clock,
    input [8:0] addr,
    input wr,
    input [31:0] wdata,
    input working,
    input [3:0] rID,
    output [31:0] rdata
);


reg working_temp;
reg working_delay;

wire [31:0] read_data;
reg [31:0] read_data_temp_1;
reg [31:0] read_data_temp_2;
reg [31:0] read_data_delay;
reg [3:0] reg_rA;
reg [3:0] reg_rB;
reg [3:0] reg_rA_delay;
reg [3:0] reg_rB_delay;
reg [15:0] reg_valC;
reg [3:0] reg_alufun;
reg [3:0] reg_alufun_delay;

wire [31:0] valE;
reg [3:0] reg_dstE;
reg [3:0] reg_dstE_delay;
reg [31:0] reg_valE;
reg [31:0] reg_valE_delay;
reg [3:0] reg_dstM;
reg [3:0] reg_dstM_temp;
reg [3:0] reg_dstM_delay;
reg [31:0] reg_valM;
reg [31:0] reg_valM_temp;
reg [31:0] reg_valM_delay;
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

reg [3:0] temp_rID_1;
reg [3:0] temp_rID_2;
reg [3:0] temp_rID_3;
reg [3:0] rID_delay;
reg [31:0] output_rdata;
assign rdata = output_rdata;

wire [2:0] cc;
reg [2:0] reg_cc;

ram u1 (
    .clock(clock), 		
	.addr(addr), 
	.wr(wr),
	.wdata(wdata),
	.rd(working),
	.rdata(read_data[31:0])
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
    .valE(valE),
    .cc(cc)
);

always @(*) begin
    if ((working || working_delay) == 0) begin
        reg_rA = 4'hf;
        reg_rB = 4'hf;
    end
    else begin
        reg_valA = valA;
        reg_valB = valB;
        if (read_data_delay[31:28] == 4'h1) begin
            ;
        end
        else begin   
            if (reg_dstE_delay == reg_rA_delay) begin
                reg_valA = reg_valE_delay;
            end
            else if (reg_dstE_delay == reg_rB_delay) begin
                reg_valB = reg_valE_delay;
            end  
        end
        if (read_data_temp_2[31:28] == 4'h1) begin
            if (reg_dstM_temp == reg_rB_delay) begin
                reg_valB = reg_valM_temp;
            end
            if (reg_dstM_temp == reg_rA_delay) begin
                reg_valA = reg_valM_temp;
            end                    
        end
        else begin   
            if (reg_dstE == reg_rA_delay) begin
                reg_valA = reg_valE;
            end
            else if (reg_dstE == reg_rB_delay) begin
                reg_valB = reg_valE;
            end  
        end        
        if (read_data[31:28] == 4'h1) begin
            reg_rA = read_data[23:20];
            reg_rB = read_data[19:16];
            reg_valC = read_data[15:0];
        end
        else if (read_data[31:28] == 4'h2) begin
            reg_rA = read_data[23:20];
            reg_rB = read_data[19:16];
            reg_alufun = read_data[27:24];
        end
        else if (read_data[31:28] == 4'h3) begin
            if (read_data[27:24] == 4'h0) begin
                reg_rA = 4'hf;
                reg_rB = 4'hf;
            end
            else if (read_data[27:24] == 4'h1) begin
                ;
            end             
        end
    end
    case (rID_delay)
        4'd0:   output_rdata = reg0;
        4'd1:   output_rdata = reg1;
        4'd2:   output_rdata = reg2;
        4'd3:   output_rdata = reg3;
        4'd4:   output_rdata = reg4;
        4'd5:   output_rdata = reg5;
        4'd6:   output_rdata = reg6;
        4'd7:   output_rdata = reg7;
        default:  ;
    endcase
end

always @(posedge clock) begin
    working_temp <= working;
    working_delay <= working_temp;
    read_data_temp_1 <= read_data;
    read_data_temp_2 <= read_data_temp_1;
    read_data_delay <= read_data_temp_2;
    reg_rA_delay <= reg_rA;
    reg_rB_delay <= reg_rB;
    reg_dstM_temp <= reg_dstM;
    reg_dstM_delay <= reg_dstM_temp;
    reg_valM_temp <= reg_valM;
    reg_valM_delay <= reg_valM_temp;
    reg_dstE_delay <= reg_dstE;
    reg_valE_delay <= reg_valE;
    reg_dstE <= reg_rA_delay;
    reg_valE <= valE;
    reg_cc <= cc;
    if (read_data[31:28] == 4'h1) begin
        reg_dstM <= reg_rB;
        reg_valM <= reg_valC;
    end
    else if (read_data[31:28] == 4'h2) begin
        reg_dstM <= 4'hf;    
        reg_alufun_delay <= reg_alufun;
    end
    temp_rID_1 <= rID;
    temp_rID_2 <= temp_rID_1;
    temp_rID_3 <= temp_rID_2;
    rID_delay <= temp_rID_3;
end

endmodule