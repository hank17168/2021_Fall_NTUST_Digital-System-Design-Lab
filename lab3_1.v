module lab3_1(A,B,A_gt_B,A_eq_B,A_lt_B);
input [3:0]A,B;
output A_gt_B,A_eq_B,A_lt_B;
wire w1,w2,w3,w4,w5,w6;

Comparator comp1(.A({A[3],A[2]}),.B({B[3],B[2]}),.A_gt_B(w6),.A_eq_B(w4),.A_lt_B(w5));
Comparator comp0(.A({A[1],A[0]}),.B({B[1],B[0]}),.A_gt_B(w3),.A_eq_B(w1),.A_lt_B(w2));
assign A_gt_B=(w6|(w4&w3));
assign A_lt_B=(w5|(w4&w2));
assign A_eq_B=w4&w1;



endmodule

module Comparator(A,B,A_gt_B,A_eq_B,A_lt_B);
input [1:0]A,B;
output A_gt_B,A_eq_B,A_lt_B;

assign A_gt_B=((A[1]&~B[1])|(A[0]&(~B[1])&(~B[0]))|(A[0]&(A[1])&(~B[0])));
assign A_eq_B=(A[0]~^B[0])&(A[1]~^B[1]);
assign A_lt_B=(~A[1]&B[1])|(~A[0]&B[1]&B[0])|(~A[0]&~A[1]&B[0]);
endmodule