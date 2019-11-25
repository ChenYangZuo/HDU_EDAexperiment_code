module Multiplier(a,b,result);

parameter s = 4;

input [s:1]a;
input [s:1]b;
output reg [2*s:1]result;

integer i;

always @(a or b)
begin
	result = 0;
	for(i=1; i<=s; i=i+1)
		if(b[i])
			result = result + (a<<i-1);
end

endmodule
