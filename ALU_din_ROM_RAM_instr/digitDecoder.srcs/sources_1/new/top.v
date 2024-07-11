`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:04:17
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(clk, bt1, bt2, bt3, clkR,  A1, A2, A3, A4, a, b, c, d, e, f, g);
    input clk, bt1, bt2, bt3, clkR;
    output A1, A2, A3, A4, a, b, c, d, e, f, g;
    
    wire [31:0] din;
    
    wire OF_out, ERR_out, Z_out;
    
    wire [11:0] regA_out, regB_out, ALU_out, B;
    wire [3:0] regOp_out, Op;
    
    wire [15:0] dig_in;
    
    wire [1:0] sel_num;
    
    wire clkR_f;
    
    wire rw, r_alu, n_ram;
    wire [11:0] out_ram, out_r_alu;
    
    bt_filter filter1(.clk(clk), .bt(clkR), .bt_out(clkR_f));
    
    ROM ROM1(.clk(clkR_f), .EN(1), .OUT(din));
    RAM RAM1(.clk(clk), .DIN(din[23:12]), .ADDR(din[11:0]), .rw(rw), .OUT(out_ram));
    
    control_unit control_unit1(.cmd(din[27:24]), .rw(rw), .dec_alu(Op), .r_alu(r_alu), .n_ram(n_ram));
    
    mux2 mux2_1(.I0(din[23:12]), .I1(out_ram), .sel(n_ram), .out(B));
    mux2 mux2_2(.I0(ALU_out), .I1(out_ram), .sel(r_alu), .out(out_r_alu));
    
    reg_p reg1(.din(din[11:0]), .pl(1), .dout(regA_out));
    reg_p reg2(.din(B), .pl(1), .dout(regB_out));
    reg_p reg3(.din(Op), .pl(1), .dout(regOp_out));
    
    ALU #(12) ALU1(.A(regA_out), .B(regB_out), .Op(regOp_out), .O(ALU_out), .OF_UND(OF_out), .ERR(ERR_out), .ZERO(Z_out));
    
    dec_err dec_err1(.Z(Z_out), .OF(OF_out), .E(ERR_out), .derr(dig_in[15:12]));
    
    dec_sel dec_sel1(.bt0(bt1), .bt1(bt2), .bt2(bt3), .out(sel_num));
    
    mux12_4 mux2(.sel(sel_num), .I0(out_r_alu), .I1(regA_out), .I2(regB_out), .I3({8'b0, regOp_out}), .dout(dig_in[11:0]));
    
    digit digit1(.clk(clk), .din(dig_in), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
endmodule