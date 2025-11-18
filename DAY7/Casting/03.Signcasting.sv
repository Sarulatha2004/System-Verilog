module signcasting_example;
  logic signed [7:0]  s_val;
  logic        [7:0]  u_val;
  int signed_int, unsigned_int;

  initial begin
    s_val = -5;
    u_val = 8'd250;

    unsigned_int = unsigned'(s_val);   
    signed_int   = signed'(u_val);     

    $display("signed s_val        = %0d", s_val);
    $display("unsigned (s_val)    = %0d", unsigned_int);

    $display("unsigned u_val      = %0d", u_val);
    $display("signed (u_val)      = %0d", signed_int);
  end
endmodule
