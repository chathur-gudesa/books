`timescale 1ns/1ps

module dec4_16_testbench; 
reg [3:0] test_in; 
wire[15:0] test_out, test_out2; 

wire en; 

assign en    = 1'b1;
assign no_en = 1'b0;

dec4_16 uut(.en(en), .a(test_in), .bcode(test_out));
dec4_16 uut2(.en(no_en), .a(test_in), .bcode(test_out2));

initial
begin
  $dumpfile("dump.vcd");
  $dumpvars(0, dec4_16_testbench);

  test_in = 4'b0000; 
  #200 

  test_in = 4'b1000; 
  #200 

  test_in = 4'b1010; 
  #200 

  test_in = 4'b0111; 
  #200 

  test_in = 4'b0001; 
  #200 

  test_in = 4'b1001; 
  #200 

  test_in = 4'b0110; 
  #200 

  test_in = 4'b0100; 
  #200 

  $stop;
end
endmodule