module sequ_detect(				//检测序列11101000
	input clk,
	input reset_n,
	input data_in,
	output reg check_flag
);

	parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8;
	reg[8:0] ST;
	always@(posedge clk)
		begin
			check_flag<=0;
			if(!reset_n)
				ST=s0;
			else
				begin
				casex(ST )//为什么不加空格就会报错
						s0:if(data_in==1'b1) ST<=s1;else ST<=s0;
						s1:if(data_in==1'b1) ST<=s2;else ST<=s0;
						s2:if(data_in==1'b1) ST<=s3;else ST<=s0;
						s3:if(data_in==1'b0) ST<=s4;else ST<=s2;
						s4:if(data_in==1'b1) ST<=s5;else ST<=s0;
						s5:if(data_in==1'b0) ST<=s6;else ST<=s1;
						s6:if(data_in==1'b0) ST<=s7;else ST<=s0;
						s7:if(data_in==1'b0) ST<=s8;else ST<=s0;
						s8:begin check_flag<=1;
									if(data_in==1'b0) ST<=s0;else ST<=s1;
							end
						default:ST<=s0;
					endcase
				end
		end
endmodule
