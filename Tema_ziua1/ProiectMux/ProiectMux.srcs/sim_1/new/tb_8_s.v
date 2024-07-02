`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 08:26:53 AM
// Design Name: 
// Module Name: tb_8_s
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


module tb_8_s;
    reg [7:0] I0t, I1t;
    reg SELt;
    wire [7:0] Ot;
    
    mux_8_s mux_t(I0t, I1t, SELt, Ot);
    
    initial begin
        #0 I0t = 0; I1t = 10; SELt = 1;
        #10 I0t = 6; I1t = 10; SELt = 1;
        #10 I0t = 6; I1t = 22; SELt = 0;
        #10 I0t = 6; I1t = 22; SELt = 1;
        #20 $finish;
    end
endmodule
