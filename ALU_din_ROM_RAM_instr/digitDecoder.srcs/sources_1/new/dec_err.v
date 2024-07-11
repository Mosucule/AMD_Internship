`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 12:41:44
// Design Name: 
// Module Name: dec_err
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


module dec_err(Z, OF, E, derr);
    input Z, OF, E;
    output reg [4:0] derr;
    
    always@(Z or OF or E) begin
        if(Z) derr=4'b0010;
        else if(OF) derr=4'b1000;
        else if(E) derr=4'b1110;
        else derr=4'b0000;
    end
endmodule
