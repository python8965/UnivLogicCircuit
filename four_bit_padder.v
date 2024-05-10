module four_bit_padder(A, B, S, Cout, V, p);

input [3:0] A;
input [3:0] B;
output [3:0] S;
output Cout, V, p;

wire c1, c2, c3;

full_adder F1 (A[0], B[0], 0, S[0], c1);
full_adder F2 (A[1], B[1], c1, S[1], c2);
full_adder F3 (A[2], B[2], c2, S[2], c3);
full_adder F4 (A[3], B[3], c3, S[3], Cout);

wire na3, nb3, ns3;

not (na3, A[3]);
not (nb3, B[3]);
not (ns3, S[3]);
wire v1, v2;


and Vand1 (v1, na3, nb3, S[3]);
and Vand2 (v2, A[3], B[3], ns3);

or Vor (V, v1, v2);

assign p = 1'b0;
endmodule