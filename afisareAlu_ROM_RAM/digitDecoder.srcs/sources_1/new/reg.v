`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 12:38:14
// Design Name: 
// Module Name: reg
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


module reg_p(din, pl, dout);
    parameter width = 12;
    
    input [width-1:0] din;
    input pl;
    output reg [width-1:0] dout;
    
    always@(din) begin
        if(pl) dout = din;
    end
endmodule
