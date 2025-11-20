module function_example;
  
  function void compare(input int a,b);
    if(a>b)
      $display("a is greater than b");
    else if (a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
  endfunction
  
  initial begin 
    compare(45,54);
    compare(54,45);
    compare(50,50);
  end
endmodule
    
