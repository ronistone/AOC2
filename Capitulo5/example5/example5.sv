module example5 #(parameter N = 8)
(input logic clk,
input logic reset,
output logic [N-1:0] LEDR);

always_ff @(posedge clk, posedge reset)
if (reset) LEDR <= 0;
else
LEDR <= LEDR + 1;
endmodule