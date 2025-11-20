module function_example;
  int a, b;
  int out;
  
  function automatic int multiply(ref int a, b);
    a = a*b; 
    return a;
  endfunction
  
  initial begin
    a = 9;
    b = 12;
    out = multiply(a,b);
    $display(" out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule
