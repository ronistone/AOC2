module pgblock(input logic [14:0] a, b,
					output logic [14:0] p, g);
					
	assign p = a | b;
	assign g = a & b;
endmodule

