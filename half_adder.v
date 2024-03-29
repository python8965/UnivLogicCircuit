module half_adder(A, B, S, C, p);
input A,B;
output C, S, p;

and U1 (C, A, B);
xor U2 (S, A, B);

assign p = 1'b0;

endmodule