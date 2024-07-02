

module mux_8_s(I0, I1, SEL, O);
	input [7:0] I0, I1;
	input SEL;
	output [7:0] O;
	
	wire [7:0] w1, w2, not_sel;
	
	genvar i;
	generate
		for(i = 0; i < 8; i = i + 1) begin
			not(not_sel[i], SEL);
			and(w1[i], I1[i], SEL);
			and(w2[i], I0[i], not_sel[i]);
			or(O[i], w1[i], w2[i]);
		end
	endgenerate
endmodule

module mux_8_b(I0, I1, SEL, O);
	input [7:0] I0, I1;
	input SEL;
	output [7:0] O;
	
	assign O = (SEL) ? I1 : I0;
	
endmodule

module mux_p_s(I0, I1, SEL, O);
	parameter WIDTH = 8;
	
	input [WIDTH-1:0] I0, I1;
	input SEL;
	output [WIDTH-1:0] O;
	
	wire [WIDTH-1:0] w1, w2, not_sel;
	
	genvar i;
	generate
		for(i = 0; i < WIDTH; i = i + 1) begin
			not(not_sel[i], SEL);
			and(w1[i], I1[i], SEL);
			and(w2[i], I0[i], not_sel[i]);
			or(O[i], w1[i], w2[i]);
		end
	endgenerate
	
endmodule

module mux_p_b(I0, I1, SEL, O);
	parameter WIDTH = 8;

	input [WIDTH-1:0] I0, I1;
	input SEL;
	output [WIDTH-1:0] O;
	
	assign O = (SEL) ? I1 : I0;
	
endmodule
