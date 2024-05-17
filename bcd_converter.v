module bcd_converter(IN, TEN, ONE);
input [4:0] IN;
output [3:0] TEN, ONE;

wire a, b, c, d, e, na, nb, nc, nd, ne;

assign a = IN[4];
assign b = IN[3];
assign c = IN[2];
assign d = IN[1];
assign e = IN[0];
not n1 (na, a);
not n2 (nb, b);
not n3 (nc, c);
not n4 (nd, d);
not n5 (ne, e);
assign TEN[3:2] = 2'b00; 
assign TEN[1] = (a&b)|(a&c);
assign TEN[0] = (a&nb&nc)|(na&b&c)|(na&b&d)|(b&c&d);
assign ONE[3] = (a&nb&nc&d)|(a&b&c&nd)|(na&b&nc&nd);
assign ONE[2] = (na&nb&c) |(a&nc&nd)|(na&c&d)|(a&b&nc);
assign ONE[1] = (a&nb&nc&nd)|(na&b&c&nd)|(na&nb&d)|(nb&c&d)|(a&b&nc&d);
assign ONE[0] = e;

endmodule