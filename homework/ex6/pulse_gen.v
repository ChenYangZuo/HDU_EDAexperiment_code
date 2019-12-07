//Design a pulse generator. The system clock is known to be 50MHz, the pulse width is 1ms, 
//the pulse interval is adjustable, and the maximum interval is 1s.

//设计一个脉冲发生器。已知系统时钟为50MHz，脉冲宽度为1ms，脉冲间隔可调，最大间隔为1s。
module pulse_gen	
#(
parameter N = 26,																		  //分频器
parameter DUTY = 1000*50,                                        //脉冲宽度
parameter PERIOD_MAX = 50*1000*1000	                 //50MHz
)

(
	input clk,
	input reset_n,
	input [N-1:0] period_param,								  				//脉冲间隔  Hz
	output reg div_out
);

reg [N-1:0] count;

always@(posedge clk or negedge reset_n)
	begin
		if(!reset_n)
			begin
				div_out<=1'b0;
				count<=0;
			end
		else
			begin
				if(count==period_param)
					begin
						div_out=~div_out;
						count=count+1;
					end
				else if(count==period_param+DUTY && count<PERIOD_MAX)
					begin
						div_out=~div_out;
						count=0;
					end
				else
					count=count+1;
			end
	end
endmodule
