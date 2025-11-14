// Code your testbench here
// or browse Examples
module union_example;
  logic [31:0]x;
  typedef union{
    int a;
    byte b;
    bit [15:0]c;
  }data;
  data d1;
  
  initial begin
    
    d1.a =32'h FFFF_FFFF;
    x=d1.b;
    $display("x=%h",x);
    
    d1.b=8'h01;
    x=d1.a;
    $display("x=%h",x);
    
    d1.c=16'h 1010;
    x=d1.a;
    $display("x=%h",x);
    
  end
endmodule
    
    
    
    
    
