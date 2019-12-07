
//Design a 16-bit serial-in-parallel-out shift register.


module shifter_s1p16(

	input clk,

	input reset_n,

	input serial_in,

	output reg [15:0] parallel_out

);

	always@(posedge clk or negedge reset_n)
		begin
			if(!reset_n)
				parallel_out <= 16'b0;
			else
				begin
					parallel_out <= (parallel_out>>1);
					parallel_out[15] <= serial_in;
				end
		end
endmodule
