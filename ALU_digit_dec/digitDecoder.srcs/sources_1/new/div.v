`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 11:44:12
// Design Name: 
// Module Name: div_t
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


module div_t(clk, Din, EN, clk_out);
    input clk, EN;
    input [15:0] Din;
    output reg clk_out=0;
    
    reg [15:0] data;
    reg [15:0] cnt = 0;
    
    always@(posedge clk)
    begin
        if(EN)begin
            data = Din;
            if(cnt<=data)begin
                cnt = cnt+1;
            end
            else begin
                clk_out=~clk_out;
                cnt=0;
            end
        end
        else
            clk_out=0;
    end
endmodule