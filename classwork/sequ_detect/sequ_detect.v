module sequ_detect(				//检测序列11101000
	input clk,
	input rst_n,
	input data_in,
	output wire sout
);

	parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8;
//	reg[8:0] ST;
	reg[3:0] current_state;
	reg[3:0] next_state;
	
	always@(posedge clk or negedge rst_n)
		begin
			if(!rst_n)
				current_state<= s0;
			else
				current_state <= next_state;
		end
		
	always@(*)
		begin
			case(current_state)
					s0:if(data_in==1'b1) next_state<=s1;else next_state<=s0;
					s1:if(data_in==1'b1) next_state<=s2;else next_state<=s0;
					s2:if(data_in==1'b1) next_state<=s3;else next_state<=s0;
					s3:if(data_in==1'b0) next_state<=s4;else next_state<=s3;
					s4:if(data_in==1'b1) next_state<=s5;else next_state<=s0;
					s5:if(data_in==1'b0) next_state<=s6;else next_state<=s2;
					s6:if(data_in==1'b0) next_state<=s7;else next_state<=s1;
					s7:if(data_in==1'b0) next_state<=s8;else next_state<=s1;
					s8:if(data_in==1'b0) next_state<=s0;else next_state<=s1;
					default:next_state<=s0;
			endcase
		end
	
	assign sout = (current_state == s8);
endmodule


//force data_in 1 0,0 300ns,1 400ns,0 500ns -repeat 800ns