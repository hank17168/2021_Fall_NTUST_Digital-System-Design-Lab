module Lab2_3(A,B,C);
input [1:0]A,B;
output [3:0]C;

HalfAdder HA1(.A(a1),.B(b1),.S(s1),.C(c1));
HalfAdder HA2(.A(a2),.B(b2),.S(s2),.C(c2));

assign a1=(A[1]&B[1]);
assign b1=c2;

assign a2=(A[1]&B[0]);
assign b2=(A[0]&B[1]);

assign C[0]=(A[0]&B[0]);
assign C[1]=s2;
assign C[2]=s1;
assign C[3]=c1;


endmodule 

module HalfAdder(A,B,S,C);
input A,B;
output S,C;
 
assign S=(A^B);
assign C=(A&B);

endmodule