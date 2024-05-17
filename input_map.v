module input_map(LED, SEG, CA, DSW, CLOCK, p);
input [0:7] DSW;
input CLOCK;
output [7:0] LED, SEG;
output [3:0] CA;
output p;

assign p = 1'b0;

final FIN (DSW[4:7], DSW[0:3], SEG, CA, CLOCK);

endmodule