module lab5_2(clk,rst,out,fout);
input clk,rst;
output reg fout;
output reg [3:0]out;


always@(posedge clk ,negedge rst)
begin
	if(rst==0)
	begin
		fout=0;
		out=4'b1010;
	end	
	else if(out==4'b0001)
	begin
		fout=~fout;
		out=4'b1010;
	end
	else if(rst==1)	
		out=out-4'b0001;
	
end

endmodule
