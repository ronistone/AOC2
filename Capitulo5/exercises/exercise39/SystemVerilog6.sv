module exercise39(input logic alessb,
input logic [23:0] manta, mantb,
input logic [7:0] shamt,
output logic [23:0] shmant);

logic [23:0] shiftedval;

assign shiftedval = alessb ?
(manta >> shamt) : (mantb >> shamt);

always_comb
if (shamt[7] | shamt[6] | shamt[5] |
(shamt[4] & shamt[3]))
shmant = 24'b0;
else
shmant = shiftedval;

endmodule

module addmant(input logic alessb,
input logic [23:0] manta, mantb, shmant,
input logic [7:0] exp_pre,
output logic [22:0] fract,
output logic [7:0] exp);

logic [24:0] addresult;
logic [23:0] addval;

assign addval= alessb ? mantb : manta;
assign addresult = shmant + addval;
assign fract= addresult[24] ?
              addresult[23:1] :
              addresult[22:0];

assign exp  = addresult[24] ?
              (exp_pre + 1) :
              exp_pre;
endmodule
