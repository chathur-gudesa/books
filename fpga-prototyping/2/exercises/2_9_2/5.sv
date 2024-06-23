`timescale 1ns/1ps

module dec38_testbench; 
reg [2:0] test_in; 
wire[7:0] test_out, test_out2; 

wire en; 

assign en    = 1'b1;
assign no_en = 1'b0;

dec38 uut(.en(en), .a(test_in), .bcode(test_out));
dec38 uut2(.en(no_en), .a(test_in), .bcode(test_out2));

initial
begin
  $dumpfile("dump.vcd");
  $dumpvars(0, dec38_testbench);

  test_in = 3'b000; 
  #200 

  test_in = 3'b100; 
  #200 

  test_in = 3'b111; 
  #200 

  test_in = 3'b011; 
  #200 

  test_in = 3'b001; 
  #200 

  test_in = 3'b010; 
  #200 

  $stop;
end
endmodule