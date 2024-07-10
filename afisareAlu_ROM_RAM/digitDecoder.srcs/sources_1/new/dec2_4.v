`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:31:00
// Design Name: 
// Module Name: dec2_4
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


module dec2_4(Ain, Aout);
    input [1:0] Ain;
    output [3:0] Aout;
    
    assign Aout[0] = ~(~Ain[0] && ~Ain[1]);
    assign Aout[1] = ~(Ain[0] && ~Ain[1]);
    assign Aout[2] = ~(~Ain[0] && Ain[1]);
    assign Aout[3] = ~(Ain[0] && Ain[1]);
endmodule
