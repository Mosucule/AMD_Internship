`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 13:07:10
// Design Name: 
// Module Name: control_unit
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


module control_unit(cmd, rw, dec_alu, r_alu, n_ram);
    input [3:0] cmd;
    output reg rw, r_alu, n_ram;
    output reg [3:0] dec_alu;
    
    always@(cmd)begin
        case(cmd)
            4'd0, 4'd1, 4'd2, 4'd3, 4'd4, 4'd5, 4'd6: begin
                dec_alu = cmd;
                rw = 1;
                r_alu = 0;
                n_ram = 0;
            end
            
            4'd8: begin
                dec_alu = 4'd4;
                rw = 0;
                r_alu = 1;
                n_ram = 0;
            end
            4'd9: begin
                dec_alu = 4'd4;
                rw = 1;
                r_alu = 1;
                n_ram = 0;
            end
            4'd11: begin
                dec_alu = 4'd0;
                rw = 1;
                r_alu = 0;
                n_ram = 1;
            end
        endcase
    end
endmodule
