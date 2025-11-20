module function_example;
  int a,b;
  int out;
  function int fn_cube(int a);
    a=a*a*a;
    return a;
  endfunction
  
  function int fn_square(int b);
    b=b*b;
    return b;
  endfunction
  
  initial begin
    
    a=6;
    b=6;
    out=fn_cube(a);
    $display("Cube_out=%0d for a =%0d",out,a);
    
    out=fn_square(b);
    $display("Square_out=%0d for b =%0d",out,b);
  end
endmodule
