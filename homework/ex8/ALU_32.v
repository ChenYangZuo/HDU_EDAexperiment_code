//Design a 32-bit ALU to support six operations including addition, subtraction, and, or, xor, not.



module ALU_32(

input [31:0] data_a_in,

input [31:0] data_b_in,

input carry_in,

input [3:0] op_code,

output reg carry_out,

output reg [31:0] result_out

);