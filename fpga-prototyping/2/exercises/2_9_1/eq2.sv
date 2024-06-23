module eq2
(
  input wire[1:0] a, b, 
  output wire eq
);

wire bit0_eq, bit1_eq;
eq1 bit0(.i0(a[0]), .i1(b[0]), .eq(bit0_eq));
eq1 bit1(.i0(a[1]), .i1 (b[1]), .eq (bit1_eq));

assign eq = bit0_eq & bit1_eq;
endmodule