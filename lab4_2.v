module lab4_2(J,K,Q,clk,reset,set); //JK flip flop
input J,K,clk,reset,set;
output Q;
reg Q;

always@(negedge clk)
begin 
	if (set == 1) Q=1;
	else if(reset == 1) Q=0;
	else
	begin
		case({J,K})
			2'b00: Q=Q;
			2'b01: Q=0;
			2'b10: Q=1;
			2'b11: Q=~Q;
		endcase
	end		
end


endmodule