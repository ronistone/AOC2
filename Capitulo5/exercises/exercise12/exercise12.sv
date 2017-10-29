module exercise12;   //test_alu32_v

	// Inputs
	logic [31:0] A;
	logic [31:0] B;
	logic [2:0] F;
	
	// Outputs
	logic [31:0] Y;
	logic Zero, Overflow;
	
	// Internal signals
	reg clk;
	
	// Simulation variables
	logic [31:0]  vectornum, errors;
	logic [100:0] testvectors[10000:0];
	logic [31:0]  ExpectedY;
	logic	ExpectedZero;
	logic	ExpectedOverflow;
	
	// Instantiate the Unit Under Test (UUT)
	alu32 uut (A, B, F, Y, Zero, Overflow);
	
	// generate clock
	always
		begin
			clk = 1; #5; clk = 0; #5;
		end
		
	// at start of test, load vectors
	initial
		begin
			$readmemh("test_alu32.tv", testvectors);
			vectornum = 0; errors = 0;
		end
		
	// apply test vectors on rising edge of clk
	always @(posedge clk)
		begin
			#1; {ExpectedOverflow, ExpectedZero, F, A, B,
			ExpectedY} = testvectors[vectornum];
		end
	// check results on falling edge of clk
	always @(negedge clk)
		begin
			if ({Y, Zero, Overflow} !==
				{ExpectedY, ExpectedZero, ExpectedOverflow})
			begin
				$display("Error: inputs: F = %h, A = %h, B = %h", F, A, B);
				$display(" Y = %h, Zero = %b Overflow = %b\n (Expected Y = %h, Expected Zero = %b, Expected Overflow = %b)", Y, Zero, Overflow,
				ExpectedY, ExpectedZero,
				ExpectedOverflow);
				errors = errors + 1;
			end
		vectornum = vectornum + 1;
		if (testvectors[vectornum] === 101'hx)
			begin
				$display("%d tests completed with %d errors", vectornum, errors);
				$finish;
			end
		end
endmodule
