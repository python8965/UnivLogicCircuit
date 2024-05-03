module seg_7(A, a, b, c, d, e, f, g, com);
input [3:0] A;
output a, b, c, d, e, f, g;
output [3:0] com;

assign a = A[3]|A[1]|(A[2]& A[0])|(~A[2]&~A[0]);
assign b = ~A[2]|(A[1]& A[0])|(~A[1]&~A[0]);
assign c = A[2]|~A[1]|A[0];
assign d = A[3]|(A[1]&~A[0])|(~A[2]&A[1])|(~A[2]&~A[0])|(A[2]&~A[1]&A[0]);
assign e = (~A[2]&~A[0])|(A[1]&~A[0]);
assign f = A[3]|(~A[1]&~A[0])|(A[2] &~A[1])|(A[2]&~A[0]);
assign g = A[3]|(A[2]&~A[1])|(~A[2]&A[1])|(A[1]&~A[0]);
assign com=4'b0001;

endmodule