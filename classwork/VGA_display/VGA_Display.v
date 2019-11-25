module VGA_Display
(
	input clk25M,
	input reset_n,
	input [5:0] rgb,
	input push,
	
	output VGA_HSYNC,//行信号
	output VGA_VSYNC,//帧信号
	output [14:0] addr,
	
	output reg [11:0] VGA_D//输出RGB信号
);

reg [9:0] hcnt;
reg [9:0] vcnt;
reg count=128;
reg hs;
reg vs;

wire [10:0] x;
wire [10:0] y;
wire dis_en;

assign addr = {y[6:0], x[7:0]};
assign x = hcnt - (640-count)/2;//居中图像
assign y = vcnt - (480-128)/2;
assign VGA_VSYNC = vs;
assign VGA_HSYNC = hs;
assign dis_en = (x<256 && y<128);//显示范围		256*128



always@(negedge push)
begin
if(count<320)
count = count+4;
else
count = count-4;
end

always @(posedge clk25M or negedge reset_n)//水平扫描计数器,模800
begin
	if(!reset_n)
		hcnt <= 1'b0;
	else
	begin
		if(hcnt < 800)
			hcnt <= hcnt + 1'b1;
		else
			hcnt <= 1'b0;
	end
end

always @(posedge clk25M or negedge reset_n)//垂直扫描计数器,模525
begin
	if(!reset_n)
		vcnt <= 1'b0;
	else
	begin
		if(hcnt == 10'd640 + 10'd8)
		begin
			if(vcnt < 10'd525)
				vcnt <= vcnt + 1'b1;
			else 
				vcnt <= 1'b0;
		end
	end
end

always @(posedge clk25M or negedge reset_n)//场同步信号发生
begin
	if(!reset_n)
		hs <= 1'b1;
	else 
	begin
		if((hcnt >= 640+8+8) & (hcnt < 640+8+8+96))
			hs <= 1'b0;
		else 
			hs <= 1'b1;
	end
end

always @(vcnt or reset_n)//行同步信号发生
begin
	if(!reset_n)
		vs <= 1'b1;
	else
	begin
		if((vcnt >= 480+8+2) && (vcnt < 480+8+2+2))
			vs <= 1'b0;
		else
			vs <= 1'b1;
	end
end

always @(posedge clk25M or negedge reset_n)//输出RGB的值
begin
	if(!reset_n)
		VGA_D <= 1'b0;
	else
	begin
		if(hcnt < 10'd640 && vcnt < 10'd480 && dis_en)//扫描终止,设置显示范围
		begin
			VGA_D[11:8] <= {rgb[1],rgb[1],rgb[0],rgb[0]};
			VGA_D[ 7:4] <= {rgb[3],rgb[3],rgb[2],rgb[2]};
			VGA_D[ 3:0] <= {rgb[5],rgb[5],rgb[4],rgb[4]};
		end
		else
		begin 
			VGA_D <= 1'b0;
			if((hcnt>=0 && hcnt<2) || (vcnt>=0 && vcnt<2) || (hcnt<=639 && hcnt>637) || (vcnt>477 && vcnt<=479))//添加边框
				VGA_D <= 12'hf00;
		end
	end
end

endmodule
