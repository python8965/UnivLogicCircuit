module input_map(LED, SEG, CA, DSW, p);
input [0:7] DSW;
output [0:7] LED, SEG;
output [0:3] CA;
output p;

assign p = 1'b0;

seg_7 S (DSW[4:7], SEG[0], SEG[1], SEG[2], SEG[3], SEG[4], SEG[5], SEG[6]);
assign LED[0:7] = DSW[0:7];
assign CA[0] = 1'b1;

endmodule