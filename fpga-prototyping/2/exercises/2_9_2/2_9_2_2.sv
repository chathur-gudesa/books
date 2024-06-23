`timescale 1ns/1ps

module dec24_testbench; 
reg [1:0] test_in; 
wire[3:0] test_out; 
wire en; 

assign en = 1'b1;

dec24 uut(.en(en), .a(test_in), .bcode(test_out));

initial 
begin
  test_in = 2'b00; 
  #200 

  test_in = 2'b01; 
  #200 

  test_in = 2'b10; 
  #200 

  test_in = 2'b11; 
  #200 

  $stop;
end
endmodule