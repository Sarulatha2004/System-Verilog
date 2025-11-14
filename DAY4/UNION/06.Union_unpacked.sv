
module unpacked_union_example;

  
  typedef union {
    int   a;        
    byte  b;       
    shortint c;       
  } u_t;

  u_t u;

  initial begin
 
    u.a = 32'hABCD_EF01;
    u.b = 8'h22;
    u.c = 16'h1234;

    $display("u.a = %h", u.a);
    $display("u.b = %h", u.b);
    $display("u.c = %h", u.c);

    
    u.b = 8'h55;

    $display("u.a = %h", u.a);
    $display("u.b = %h", u.b);
    $display("u.c = %h", u.c);
  end

endmodule
