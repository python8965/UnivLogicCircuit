module univexample03291(A, B, C, D, O1, O2,p);

input A,B,C,D;
output O1, O2, p;

wire h0, h1,h2,h3,h4,h5,h6, na, nb, nc, nd;

not N0 (na, A);
not N1 (nb, B);
not N2 (nc, C);
not N3 (nd, D);

and A0 (h0, na, B, nd);
and A1 (h1, B, C, D);
and A2 (h2, A, B, nc);
and A3 (h3, A, nb, D);

and A4 (h4, B, nc, nd);
and A5 (h5, A, D);
and A6 (h6, na, B ,C);

or LOR (O1, h0,h1,h2,h3);
or ROR (O2, h4,h5,h6);

assign p = 1'b0;

endmodule