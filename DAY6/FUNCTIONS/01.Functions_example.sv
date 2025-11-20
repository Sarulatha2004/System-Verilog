module function_example;
  function compare(input int a,b);
    
    $display("a=%0d | b=%0d",a,b);
    if(a>b)
      $display("a is greater than b");
    else if (a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
    
    return 1; 
  endfunction
  
  initial begin
    repeat(5) begin
    compare($urandom_range(5,20),$urandom_range(5,20));
    end
    
    compare(10,10);
  end
endmodule
