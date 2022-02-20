module lab5_3(s1,s2,reset,clk,count_out,f_out);
output [7:0]count_out;
input s1,s2,reset,clk;
output f_out;

wire[7:0] count_out12,count_out60,count_out128;
wire f_out12,f_out60,f_out128;
counter C12(.clk(clk),.rst(reset),.data(6),.out(count_out12),.fout(f_out12));
counter C60(.clk(clk),.rst(reset),.data(30),.out(count_out60),.fout(f_out60));
counter C128(.clk(clk),.rst(reset),.data(64),.out(count_out128),.fout(f_out128));

assign count_out = (({s2,s1}==2'b00)?0:({s2,s1}==2'b01)?count_out12:({s2,s1}==2'b10)?count_out60:count_out128);
assign f_out = (({s2,s1}==2'b00)?0:({s2,s1}==2'b01)?f_out12:({s2,s1}==2'b10)?f_out60:f_out128);

endmodule

//module mux_4x1(s2,s1,out);


//endmodule



module counter(clk,rst,data,out,fout);//(clk¥¿½tÄ²µo,rst­t½tÄ²µo)
input clk,rst;
input [7:0] data;
output reg fout;
output reg [7:0]out;

always@(posedge clk ,negedge rst)
begin
	if(rst==0)
	begin
		fout=0;
		out=data;
	end	
	else if(out==1)
	begin
		fout=~fout;
		out=data;
	end
	else if(rst==1)	
		out=out-1;
end

endmodule