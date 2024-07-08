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


module div_t(clk, Din, PL, EN, clk_out);
    input clk, PL, EN;
    input [15:0] Din;
    output reg clk_out;
    
    reg [15:0] data;
    reg [15:0] cnt;
    
    always@(posedge clk)
    begin
        if(EN)begin
            if(PL)begin
                data = Din;
                cnt = 0;
                clk_out = 1;
            end
        end
    end
    always@(posedge clk or negedge clk)
    begin
        if(EN)begin
            if(!PL)
                cnt = cnt+1;
            if(cnt>=data)begin
                clk_out=~clk_out;
                cnt=0;
            end
        end
        else
            clk_out=0;
    end
endmodule