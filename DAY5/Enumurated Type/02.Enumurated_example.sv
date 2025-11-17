module enum_method;
  typedef enum{red,blue,green}colour;
  colour c,d;
  int i;
  initial begin
    $display("%s",c.name());
    d=c;
    $display("%s",d.name());
    d=colour'(c+1);
    $display("%s",d.name());
    i=d;
    $display("%0d",i);
    c=colour'(i);
    $display("%s",c.name());
  end
endmodule
