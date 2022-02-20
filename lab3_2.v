module lab3_2(in,sel,out,en);
input [3:0]in;
input [1:0]sel;
input en;
output out;
reg out;


always @ (*)
begin
	if(en == 0) out = 1'bz;
	else out = in[sel];
end


endmodule




