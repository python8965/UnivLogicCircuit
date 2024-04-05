module example0405(W, X, Y, Z, O1, O2, p);

input W, X, Y, Z;
output O1, O2, p;

assign p = 1'b0;

wire NW, NX, NY, NZ, A1OUT, A2OUT, A3OUT, A4OUT, A5OUT, A6OUT, OR1OUT, OR2OUT, OR3OUT, OR4OUT, OR5OUT;

not N1 (NW, W);
not N2 (NX, X);
not N3 (NY, Y);
not N4 (NZ, Z);

and A1 (A1OUT, W, X, NY);
and A2 (A2OUT, NW, NX, Z);
and A3 (A3OUT, W, NY, Z);
and A4 (A4OUT, NW, Y, NZ);

or L (O1, A1OUT, A2OUT, A3OUT, A4OUT);

or OR1 (OR1OUT, NW, NY);
or OR2 (OR2OUT, W, Y, Z);
or OR3 (OR3OUT, X, Y, Z);
or OR4 (OR4OUT, W, NW, NZ);

and R (O2,OR1OUT, OR2OUT, OR3OUT, OR4OUT);

endmodule