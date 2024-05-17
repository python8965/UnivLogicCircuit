module final(A, B, SEG, CA ,CLK);
input [3:0] A, B;
input CLK;
output [7:0] SEG;
output [3:0] CA;

wire [4:0] binary;
wire [3:0] ten, one;
wire overflow;

four_bit_padder ADDER (A, B, binary[3:0], binary[4], overflow);

bcd_converter BCD (binary, ten, one);

seg_7_2 TDSEG (one, ten, CLK, CA, SEG);
endmodule