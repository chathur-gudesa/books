module dec4_16 (
  input wire en, 
  input wire[3:0] a, 
  inout wire[15:0] bcode
);

wire p1, p2, p3, p4;
wire[1:0] a_lsb;
wire[3:0] bcode_lsb0, bcode_lsb1, bcode_lsb2, bcode_msb; 

assign p1 = en & ~a[3] & ~a[2];
assign p2 = en & ~a[3] & a[2];
assign p3 = en & a[3] & ~a[2];
assign p4 = en & a[3] & a[2];

assign a_lsb = a[1:0];

assign bcode_lsb0 = bcode[3:0];
assign bcode_lsb1 = bcode[7:4];
assign bcode_lsb2 = bcode[11:8];
assign bcode_msb  = bcode[15:12];

dec24 d1(.en(p1), .a(a_lsb), .bcode(bcode_lsb0));
dec24 d2(.en(p2), .a(a_lsb), .bcode(bcode_lsb1));
dec24 d3(.en(p3), .a(a_lsb), .bcode(bcode_lsb2));
dec24 d4(.en(p4), .a(a_lsb), .bcode(bcode_msb));

endmodule