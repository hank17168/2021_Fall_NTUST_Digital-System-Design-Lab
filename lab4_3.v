module lab4_3(D_in,D_out,clk,load,rst);
input [3:0]D_in;
input clk,rst,load;
output reg [3:0]D_out;

always@(posedge clk , posedge load , negedge rst)
begin 
	if(rst == 0) D_out=0;
	else if (load == 1) D_out=D_in;
	else D_out= D_in;
end	

endmodule
