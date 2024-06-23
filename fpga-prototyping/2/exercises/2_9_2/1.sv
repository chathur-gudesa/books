/*
bcode[0] = en . ~a[1] . ~a[0]; 
bcode[1] = en . ~a[1] .  a[0]; 
bcode[2] = en .  a[1] . ~a[0];
bcode[3] = en .  a[1] .  a[0];
*/

module dec24 (
  input wire en, 
  input wire[1:0] a, 
  output wire[3:0] bcode
);

assign bcode[0] = en & ~a[1] & ~a[0];
assign bcode[1] = en & ~a[1] &  a[0];
assign bcode[2] = en &  a[1] & ~a[0];
assign bcode[3] = en &  a[1] &  a[0];

endmodule