module exercise7(input logic [7:0] a,		// priorityckt
					  output logic [2:0] z);
	logic [7:0] y;
	logic x7, x76, x75, x74, x73, x72, x71;
	logic x32, x54, x31;
	logic [7:0] abar;

	// row of inverters
	assign abar = ~a;

	// first row of AND gates
	assign x7 = abar[7];
	assign x76 = abar[6] & x7;
	assign x54 = abar[4] & abar[5];
	assign x32 = abar[2] & abar[3];
	
	// second row of AND gates
	assign x75 = abar[5] & x76;
	assign x74 = x54 & x76;
	assign x31 = abar[1] & x32;
	
	// third row
	assign x73 = abar[3] & x74;
	assign x72 = x32 & x74;
	assign x71 = x31 & x74;
	
	// fourth row of AND gates
	assign y = {a[7],	a[6] & x7, a[5] & x76,
					a[4] & x75, a[3] & x74, a[2] & x73,
					a[1] & x72, a[0] & x71};

	// row of OR gates
	assign z = { |{y[7:4]},
					 |{y[7:6], y[3:2]},
					 |{y[1], y[3], y[5], y[7]} };
endmodule
