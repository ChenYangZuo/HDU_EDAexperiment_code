module vga_bmp
(
	input clk,
	input reset_n,
	
	output VGA_HSYNC,
	output VGA_VSYNC,
	
	output [11:0] VGA_D
);

reg clk25M;

wire [5:0] rgb;
wire [14:0] addr;

always @(posedge clk or negedge reset_n)//将50M时钟分频得到25M时钟,作为VGA显示与ROM读取时钟
begin
	if(!reset_n)
		clk25M <= 1'b0;
	else
		clk25M <= ~clk25M;
end

rom_bmp rom_bmp_inst//例化ROM
(
	.address(addr),
	.clock(clk25M),
	.q(rgb)
);

VGA_Display u_VGA_Display//例化显示
(
	.clk25M(clk25M),
	.reset_n(reset_n),
	.rgb(rgb),
	.VGA_HSYNC(VGA_HSYNC),
	.VGA_VSYNC(VGA_VSYNC),
	.addr(addr),
	.VGA_D(VGA_D)
);

endmodule

