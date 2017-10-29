module pgblackblock(input logic [7:0] pik, gik, pkj, gkj,
							output logic [7:0] pij, gij);

	assign pij = pik & pkj;
	assign gij = gik | (pik & gkj);

endmodule