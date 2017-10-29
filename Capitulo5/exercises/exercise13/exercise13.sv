module exercise13(input logic [31:0] a,    // left shift 2-bits, 32bits word
						output logic [31:0] y);

	assign y = {a[29:0], 2'b0};

endmodule
