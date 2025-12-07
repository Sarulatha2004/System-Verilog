module casting;
  
  real r_a;
  real  i_a;
  
  initial begin
    
    r_a = (2.1 * 3.2);
    
    //real to integer conversion
    i_a = int'(2.1 * 3.2); //or i_a = int'(r_a);
    
    $display("real value is %f",r_a);
    $display("int  value is %f",i_a);
  end
endmodule
