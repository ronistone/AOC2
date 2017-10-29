module exercise21(input logic [3:0] a,  // extensor de bits, extende bit 3 para ter word de 8 bits
					output logic [7:0] y);
					
		assign y = { {4{a[3]}}, a};

endmodule
