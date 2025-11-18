
module uniqueif_example;
  initial begin
    int a,b;
    repeat(5) begin
      a=$urandom_range(1,30);
      b=$urandom_range(1,30);
      
      $display("a=%0d | b=%0d",a,b);
    
    unique if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
  end 
  end
endmodule
