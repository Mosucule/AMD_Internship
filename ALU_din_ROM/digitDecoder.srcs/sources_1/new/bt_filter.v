`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 12:31:32
// Design Name: 
// Module Name: bt_filter
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


module bt_filter(clk, bt, bt_out);
    input clk, bt;
    output reg bt_out;
    
    reg [31:0] cnt = 32'b0;
    reg bt_lag = 0;
    
    always@(posedge clk) begin
        cnt = cnt + 1;
    end
    
    always@(posedge cnt[16])begin
        if(bt==1 & bt_lag==0)begin
            bt_out = 1;
            bt_lag = 1;
        end
        if(bt==0 & bt_lag==1)begin
            bt_out=0;
            bt_lag=0;
        end
    end 
endmodule
