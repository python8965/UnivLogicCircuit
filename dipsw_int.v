/*
module dip_sw_int(D0, D1, D2, D3,D4,D5,D6,D7,O);

input D0, D1, D2, D3,D4,D5,D6,D7;
integer output O;
assign O = D7 | D6 << 1 | D5 <<2 | D4<<3 | D3 << 4 | D2 << 5 | D1<<6| D0<<7;
endmodule*/