module function_example;
  int a, b;
  int result,out;
  
  function automatic int multiply(const ref int a, b);
    result = a*b; 
    return result;
  endfunction

  initial begin
    a = 5;
    b = 6;
    out = multiply(a,b);
    $display("out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule
