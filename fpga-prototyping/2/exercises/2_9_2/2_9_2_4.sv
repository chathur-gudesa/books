module dec38 (
  input wire en, 
  input wire[2:0] a, 
  inout wire[7:0] bcode
);

wire p1, p2; 
wire[1:0] a_lsb;
wire[3:0] bcode_lsb, bcode_msb; 

assign p1 = en & ~a[1];
assign p2 = en &  a[1];
assign a_lsb = a[1:0];
assign bcode_lsb = bcode[3:0];
assign bcode_msb = bcode[7:4];

dec24 d1(.en(p1), .a(a_lsb), .bcode(bcode_lsb));
dec24 d2(.en(p2), .a(a_lsb), .bcode(bcode_msb));

endmodule