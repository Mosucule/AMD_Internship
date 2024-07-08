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


module top(clk, pl, din, A1, A2, A3, A4, a, b, c, d, e, f, g);
    input clk, pl;
    input [7:0] din;
    output A1, A2, A3, A4, a, b, c, d, e, f, g;
    
    wire [3:0] mux_o;
    wire [1:0] cnt_o;
    wire clk_d;
    
    div div_1(clk, 24, pl, 1, clk_d);
    mux mux_1(cnt_o, {0, 0, din[7], din[6], 0, 0, din[5], din[4], 0, 0, din[3], din[2], 0, 0, din[1], din[0]}, mux_o);
    cnt cnt_1(clk_d, cnt_o);
    dig_dec dig_dec_1(mux_o, a, b, c, d, e, f, g);
    dec2_4 dec2_4_1(cnt_o, {A1, A2, A3, A4});
endmodule
