module PIPO(clk, reset, pl, D, Q);
    parameter width = 8;
    
    input clk, reset, pl;
    input [width-1:0] D;
    output [width-1:0] Q;
    
    wire [width-1:0] r;
    
    genvar i;
    
    generate
        for(i=0; i < width; i = i + 1)begin
            bistabil inst(clk, reset, 1, r[i], Q[i]);
        end
    endgenerate
    
    assign r = (pl)? D : {0, Q[width-1:1]};
endmodule