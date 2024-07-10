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


module top(clk, din, bt1, bt2, bt3, bt4, A1, A2, A3, A4, a, b, c, d, e, f, g);
    input clk, bt1, bt2, bt3, bt4;
    input [11:0] din;
    output A1, A2, A3, A4, a, b, c, d, e, f, g;
    
    wire reg1_sel, reg2_sel, reg3_sel;
    wire OF_out, ERR_out, Z_out;
    
    wire [11:0] regA_out, regB_out, ALU_out;
    wire [3:0] regOp_out;
    
    wire [15:0] dig_in;
    
    wire [1:0] sel_num;
    
    and a1(reg1_sel, bt1, bt4);
    and a2(reg2_sel, bt2, bt4);
    and a3(reg3_sel, bt3, bt4);
    
    reg_p reg1(.din(din), .pl(reg1_sel), .dout(regA_out));
    reg_p reg2(.din(din), .pl(reg2_sel), .dout(regB_out));
    reg_p reg3(.din(din), .pl(reg3_sel), .dout(regOp_out));
    
    ALU #(12) ALU1(.A(regA_out), .B(regB_out), .Op(regOp_out), .O(ALU_out), .OF_UND(OF_out), .ERR(ERR_out), .ZERO(Z_out));
    
    dec_err dec_err1(.Z(Z_out), .OF(OF_out), .E(ERR_out), .derr(dig_in[15:12]));
    
    dec_sel dec_sel1(.bt0(bt1), .bt1(bt2), .bt2(bt3), .out(sel_num));
    
    mux12_4 mux2(.sel(sel_num), .I0(ALU_out), .I1(regA_out), .I2(regB_out), .I3({8'b0, regOp_out}), .dout(dig_in[11:0]));
    
    digit digit1(.clk(clk), .din(dig_in), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
endmodule
