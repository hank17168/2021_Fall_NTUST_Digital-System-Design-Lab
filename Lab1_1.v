module Lab1_1(A, B, C0, C1, S);
input A, B, C0;
output S, C1;
wire w1, w2, w3;
xor g1(w1, A, B);
xor g2(S, w1, C0);
and g3(w2, A, B);
and g4(w3, w1, C0);
or g5(C1, w3, w2);
endmodule