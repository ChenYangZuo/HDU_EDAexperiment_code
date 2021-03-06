//Design a 32-bit ALU to support six operations including addition(加), subtraction(减), and(与), or(或), xor(异或), not(非).
module ALU_32(
	input [31:0] data_a_in,
	input [31:0] data_b_in,
	//进位
	input carry_in,
	input [3:0] op_code,
	output reg carry_out,
	output reg [31:0] result_out
);
	parameter addition=0,subtraction=1,opand=2,opor=3,opxor=4,opnot=5;
	always@(data_a_in or data_b_in or carry_in or op_code)
		begin
			case(op_code)
				addition:        {carry_out,result_out} <= data_a_in + data_b_in + carry_in;
				subtraction:     {carry_out,result_out} <= {(~data_a_in) & data_b_in , data_a_in ^ data_b_in};
				opand:           result_out <= data_a_in & data_b_in;
				opor:            result_out <= data_a_in | data_b_in;
				opxor:           result_out <= data_a_in ^ data_b_in;
				opnot:           result_out <= ~data_a_in;
				default:         result_out <= 0;
			endcase
		end
endmodule
