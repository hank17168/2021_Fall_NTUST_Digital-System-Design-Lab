module Lab2_1(X1, X2, X3, X4,g,f,h);
input X1, X2, X3, X4;
output g,f,h;
//
assign g=((X1&X2)|(X1&X2));
assign h=((X3|X4)&(X3|X4));
assign f=g&h;

endmodule