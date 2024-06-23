`timescale 1 ns/10 ps

module gt2_testbench; 
reg [1:0] test_in0, test_in1; 
wire test_out; 

gt2 uut(.a(test_in0), .b(test_in1), .a_gt_b(test_out));

initial 
begin
  $dumpfile("dump.vcd");
  $dumpvars(0, gt2_testbench);

  test_in0 = 2'b00; 
  test_in1 = 2'b00; 
  #200 

  test_in0 = 2'b10;   
  test_in1 = 2'b01; 
  #200

  test_in0 = 2'b10; 
  test_in1 = 2'b11; 
  #200

  test_in0 = 2'b11; 
  test_in1 = 2'b10; 
  #200

  test_in0 = 2'b10; 
  test_in1 = 2'b10; 
  #200

  test_in0 = 2'b11; 
  test_in1 = 2'b11; 
  #200

  test_in0 = 2'b11; 
  test_in1 = 2'b00; 
  #200

  $stop;
end
endmodule