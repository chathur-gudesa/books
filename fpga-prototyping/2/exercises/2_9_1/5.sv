`timescale 1ns/1ps

module gt4_testbench; 
reg [3:0] test_in0, test_in1; 
wire test_out; 

gt4 uut(.a(test_in0), .b(test_in1), .a_gt_b(test_out));

initial 
begin
  $dumpfile("dump.vcd");
  $dumpvars(0, gt4_testbench);

  test_in0 = 4'b0000; 
  test_in1 = 4'b0000; 
  #200 

  test_in0 = 4'b1001; 
  test_in1 = 4'b0001; 
  #200

  test_in0 = 4'b1110; 
  test_in1 = 4'b1111; 
  #200

  test_in0 = 4'b1011; 
  test_in1 = 4'b1010; 
  #200

  test_in0 = 4'b0101; 
  test_in1 = 4'b0101; 
  #200

  test_in0 = 4'b1111; 
  test_in1 = 4'b1110; 
  #200

  test_in0 = 4'b1001; 
  test_in1 = 4'b0110; 
  #200

  $stop;
end
endmodule