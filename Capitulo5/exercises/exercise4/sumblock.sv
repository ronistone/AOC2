module sumblock(input logic [15:0] a, b, g,
					 output logic [15:0] s);
	assign s = a ^ b ^ g;

endmodule