
module decrement;
  
  int a=10;
  int b=10;
  
  initial begin
    //post decrement
    $display("a=%0d",a);
    $display("a--=%0d",a--);
    $display("a after decrement a-- =%0d\n",a);
    
    
    //pre decrement
    $display("b=%0d",b);
    $display("--b=%0d",--b);
    $display("b after decrement --b =%0d\n",b);
  end
endmodule
    
