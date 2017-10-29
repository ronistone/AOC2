<<<<<<< HEAD
module exercise9(input logic [31:0] A, B,   // alu32
					  input logic [2:0] F,
					  output logic [31:0] Y);
				 
	logic [31:0] S, Bout;
	assign Bout = F[2] ? ~B : B;
	assign S = A + Bout + F[2];
	
	always_comb
		case (F[1:0])
			2'b00: Y <= A & Bout;
			2'b01: Y <= A | Bout;
			2'b10: Y <= S;
			2'b11: Y <= S[31];
		endcase
endmodule
=======
module exercise9 (input logic [31:0] A, B,
input logic [2:0] C,
output logic [31:0] D); 

logic [31:0] S,Y;
assign Y = C[2] ? ~B : B;
assign S = A + Y + C[2];

always_comb
case (C[1:0])
2'b00: D <= A & Y;
2'b01: D <= A | Y;
2'b10: D <= S;
2'b11: D <= S[31];
endcase

endmodule
>>>>>>> d67c3384006479cac0a60286377fb647bb4aff30
