module example3 #(parameter N = 8)  // Comparator
							(input logic [N-1:0] a, b,
							output logic eq, neq, lt, lte, gt, gte);
	assign eq	= (a == b);
	assign neq	= (a != b);
	assign lt	= (a < b);
	assign lte	= (a <= b);
	assign gt	= (a > b);
	assign gte	= (a >= b);
endmodule