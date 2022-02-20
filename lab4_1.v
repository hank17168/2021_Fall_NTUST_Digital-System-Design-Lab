module lab4_1(A,B,C0,S,C4);
input [3:0]A,B;
input C0;
output [3:0]S;
output C4;

wire [3:0] P, G, C;
assign P[3]=A[3]^B[3];
assign P[2]=A[2]^B[2];
assign P[1]=A[1]^B[1];
assign P[0]=A[0]^B[0];
assign G[3]=A[3]&B[3];
assign G[2]=A[2]&B[2];
assign G[1]=A[1]&B[1];
assign G[0]=A[0]&B[0];


CLG adder(.p(P),.g(G),.c(C),.cin(C0));

assign C4=C[3];
assign S[3]=C[2]^P[3];
assign S[2]=C[1]^P[2];
assign S[1]=C[0]^P[1];
assign S[0]=C0^P[0];

endmodule



module CLG(p,g,c,cin); //carry look ahead generator
input [3:0]p,g;
input cin;
output [3:0]c;
assign c[0] = g[0] | (p[0] & cin);
assign c[1] = g[1] | (p[1] & g[0]) | (cin & p[0]&p[1]);
assign c[2] = g[2] | (p[2] & g[1]) | (g[0]& p[1]&p[2]) | (cin&p[0]&p[1]&p[2]);
assign c[3] = g[3] | (p[3] & g[2]) | (g[1]& p[2]&p[3]) | (g[0]&p[1]&p[2]&p[3])|(cin&p[0]&p[1]&p[2]&p[3]);


endmodule