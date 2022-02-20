module lab5_1(clk,clear,count,load,in,out);
input clk,clear,count,load;
input [3:0]in;
output reg [3:0]out;

always@(posedge clk)
begin
	if(clear==1)
		out=0;
	else if (load==1)
		out=in;
	else if (count==1)
		out<=out+4'b0001;

end

endmodule
