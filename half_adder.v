module half_adder(A, B, S, C);
input A,B;
output C, S;

and U1 (C, A, B);
xor U2 (S, A, B);

endmodule