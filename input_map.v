module input_map(LED, SEG, CA, DSW, p);
input [7:0] DSW;
output [0:7] LED, SEG;
output [0:3] CA;
output p;

assign p = 1'b0;

seg_7_hex S (DSW[3:0], SEG[0], SEG[1], SEG[2], SEG[3], SEG[4], SEG[5], SEG[6], CA);
assign LED[0:7] = DSW[7:0];

endmodule