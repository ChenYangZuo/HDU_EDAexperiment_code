`timescale 10 ns/100 ps
module sequ_detect_tb();
reg clk;
reg data_in;
reg rst_n;
wire sout;

sequ_detect i_sequ_detect (
	.sout     (sout),
	.clk      (clk),
	.data_in  (data_in),
	.rst_n    (rst_n)
);

	initial
		begin
		clk <= 0;
		rst_n <= 0;
		#10 rst_n <= 1'b1;
		@(negedge clk)
		repeat(10)
			begin
				data_in <= $random;
				#10;
			end
			data_in <= 1;
			#10 data_in <= 1;
			#10 data_in <= 1;
			#10 data_in <= 1;
			#10 data_in <= 0;
			#10 data_in <= 1;
			#10 data_in <= 0;
			#10 data_in <= 0;
			#10 data_in <= 0;
		repeat(10)
			begin
				data_in <= $random;
				#10;
			end
		#100 $stop;
		end
		
	always	#5
		begin
			clk <= ~clk;
		end
endmodule

			