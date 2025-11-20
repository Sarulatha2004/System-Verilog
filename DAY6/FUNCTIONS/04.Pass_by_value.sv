module function_example;
  int a, b;
  int out;
  
  function int multiply(int a, b);
    a = a*b;
    return a;
  endfunction
  
  initial begin
    a =12;
    b = 6;
    out = multiply(a,b);
    $display(" out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule
