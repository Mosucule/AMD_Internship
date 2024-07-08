`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:21:50
// Design Name: 
// Module Name: tb_dec
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


module tb_dec;
    reg [3:0] din;
    wire a, b, c, d, e, f, g;
    
    dig_dec dig_dec_t(din, a, b, c, d, e, f, g);
    
    initial begin
        #0 din = 0;
        #10 din = 1;
        #10 din = 2;
        #10 din = 3;
        #10 din = 4;
        #10 din = 5;
        #10 din = 6;
        #10 din = 7;
        #10 din = 8;
        #10 din = 9;
        #10 din = 10;
        #10 din = 11;
        #10 din = 12;
        #10 din = 13;
        #10 din = 14;
        #10 din = 15;
        #20 $finish;
    end
endmodule
