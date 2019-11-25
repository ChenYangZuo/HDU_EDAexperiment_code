module freq_div

#(

	parameter N = 17 

)

(			

	input clk,

	input reset_n,

	input [N-1:0] period_param,

	input [N-1:0] duty_param,

	output reg div_out

);

reg [N-1:0]count;

always@(posedge clk or negedge reset_n)
	begin
		if(!reset_n)
			begin
				count=0;
				div_out=1;
			end
		else if(count==duty_param-1)
			begin
				div_out=~div_out;
				count=count+1;
			end
		else if(count==period_param-1)
			begin
				div_out=~div_out;
				count=0;
			end
		else
			begin
				count=count+1;
			end
	end
endmodule
