`timescale 10ns/100ps

module shifter_s1p16_tb();

reg clk;
reg reset_n;
reg serial_in;

wire [15:0] parallel_out;


shifter_s1p16 u_shifter_s1p16(
	.clk					(clk),
	.reset_n				(reset_n),
	.serial_in			(serial_in),
	.parallel_out		(parallel_out)
);


initial
begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial
begin
	reset_n<=0;
	#20 reset_n<=1'b1;
	repeat(10)
		begin
			#10 serial_in <=1;
			#10 serial_in <=1;
			#10 serial_in <=1;
			#10 serial_in <=0;
			#10 serial_in <=1;
			#10 serial_in <=0;
			#10 serial_in <=0;
			#10 serial_in <=0;
			#10 serial_in <=1;
			#10 serial_in <=0;
			#10 serial_in <=1;
			#10 serial_in <=1;
			#10 serial_in <=0;
			#10 serial_in <=0;
			#10 serial_in <=1;
			#10 serial_in <=0;
		end
	#50 $stop;
end
endmodule

	