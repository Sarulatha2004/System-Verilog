module casting;
  
  real r_a;
  real  i_a;
  
  initial begin
    
    r_a = (2.1 * 3.2);
    
  
    i_a = int'(2.1 * 3.2); 
    
    $display("real value is %f",r_a);
    $display("int  value is %f",i_a);
  end
endmodule
