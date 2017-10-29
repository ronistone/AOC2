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