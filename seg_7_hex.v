module seg_7_hex(IN, a, b, c, d, e, f, g, com);
input [3:0] IN;
output a, b, c, d, e, f, g;
output [3:0] com;

wire A, B, C, D;
assign A = IN[0];
assign B = IN[1];
assign C = IN[2];
assign D = IN[3];

assign a = (~A&C)|(~B&~D)|(A&~B&~C)|(~A&B&D)|(A&B&C);
assign b = (~A&~C&~D)|(~A&C&D)|(~A&~B)|(~B&~D)|(A&~C&D);
assign c = (~A&~C)|(~A&D)|(~A&B)|(~C&D)|(A&~B);
assign d = (~A&~B&~D)|(B&~C&D)|(B&C&~D)|(A&~C)|(~B&C&D);
assign e = (A&B)|(~B&~D)|(A&C)|(C&~D);
assign f = (~A&B&~C)|(~A&~C&~D)|(A&C)|(A&~B)|(B&C&~D);
assign g = (~A&B&~C)|A|(~B&C)|(C&~D);
assign com=4'b0001;

endmodule