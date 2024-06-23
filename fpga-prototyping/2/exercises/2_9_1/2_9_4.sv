module gt4 (
  input wire[3:0] a, b, 
  output wire a_gt_b
);

wire g_msb, g_lsb, e;
eq2 eq(.a(a[3:2]), .b(b[3:2]), .eq(e));
gt2 gt_msb(.a(a[3:2]), .b(b[3:2]), .a_gt_b(g_msb));
gt2 gt_lsb(.a(a[1:0]), .b(b[1:0]), .a_gt_b(g_lsb));

assign a_gt_b = g_msb + (e & g_lsb);
endmodule