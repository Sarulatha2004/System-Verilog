
module increment;
  
  int a=10;
  int b=10;
  
  initial begin
    //post increment
    $display("a=%0d",a);
    $display("a++=%0d",a++);
    $display("a after increment a++ =%0d\n",a);
    
    
    //pre increment
    $display("b=%0d",b);
    $display("++b=%0d",++b);
    $display("b after increment ++b =%0d\n",b);
  end
endmodule
    
