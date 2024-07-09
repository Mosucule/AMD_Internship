`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:37:57
// Design Name: 
// Module Name: tb_dec2_4
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


module tb_dec2_4;
    reg [1:0] ain;
    wire [3:0] aout;
    
    dec2_4 dec2_4_tb(ain, aout);
    
    initial begin
        #0 ain = 0;
        #10 ain = 1;
        #10 ain = 2;
        #10 ain = 3;
        #10 $finish;
    end
endmodule
