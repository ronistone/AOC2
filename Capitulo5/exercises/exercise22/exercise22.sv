module exercise22(input logic [3:0] a,			// extensor de 4 para 8 bits preenchendo com zeros a esquerda
						output logic [7:0] y);

	assign y = {4'b0, a};
	
endmodule
