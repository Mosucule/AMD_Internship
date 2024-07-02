`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 08:39:29 AM
// Design Name: 
// Module Name: tb_p_s
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
    reg [31:0] I0t, I1t;
    reg SELt;
    wire [31:0] Ot;
    
    mux_p_s #(32) mux_t(I0t, I1t, SELt, Ot);
    
    initial begin
        #0 I0t = 0; I1t = 10; SELt = 1;
        #10 I0t = 50; I1t = 110; SELt = 1;
        #10 I0t = 6108; I1t = 2332; SELt = 0;
        #10 I0t = 64; I1t = 212; SELt = 1;
        #20 $finish;
    end
endmodule
