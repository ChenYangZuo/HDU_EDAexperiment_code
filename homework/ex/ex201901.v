module bcd_4d_cnt(input clk,input reset_n,input en,input load,input [15:0] d,output reg [15:0] bcd);
always@(posedge clk, negedge reset_n)
	if(!reset_n)
		bcd = 16'b0;
	else if(en)
		begin
			if(!load)
				bcd = d;
			else if(bcd[3:0] == 4'b1001)
				begin
					bcd[3:0] = 4'b0000;
					if(bcd[7:4] == 4'b1001)
						begin
							bcd[7:4] = 4'b0000;
							if(bcd[11:8] == 4'b1001)
								begin
									bcd[11:8] = 4'b0000;
									if(bcd[15:12] == 4'b1001)
										begin
										bcd[15:12] = 4'b0000;
										end
									else
										bcd[15:12] = bcd[15:12] + 1;
								end
							else
								bcd[11:8] = bcd[11:8] + 1;
						end
					else
						bcd[7:4] = bcd[7:4] + 1;
				end
		end
endmodule