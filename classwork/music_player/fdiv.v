module fdiv(
	input clk,
	output pm
);
//2kHz>>4Hz
reg [8:0] Q1;
reg FULL;
wire RST;

always@(posedge clk or posedge RST)
begin
if(RST) begin
Q1<=0;
FULL<=1;
end
else begin
Q1<=Q1+1;
FULL<=0;
end
end

assign RST =(Q1==499);
assign pm=FULL;
assign DOUT=Q1;
endmodule
