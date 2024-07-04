`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 08:45:25 AM
// Design Name: 
// Module Name: bistabil
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


module bistabil(clk, reset, pl, D, Q);
    input clk, reset, pl, D;
    output reg Q;
    
    always@(posedge clk) begin
        if(reset)
            Q = 0;
        else
            if(pl)
                Q <= D;
    end
endmodule
