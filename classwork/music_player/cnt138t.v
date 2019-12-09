module cnt138t(
	input clk,
	input rst_n,
	output [7:0]cnt8
);
reg [7:0] CNT;
wire LD;

always@(posedge clk or posedge LD or negedge rst_n)
begin
if(!rst_n)
CNT<=8'b00000000;
else if(LD)
CNT<=8'b00000000;
else
CNT<=CNT+1;
end

assign cnt8=CNT;
assign LD=(CNT==138);

endmodule
