module rev_string;
  string str;
  string rev_str;
  integer i;
  initial begin
    str="madam";
    $display("Before rev the string=",str);
    
    rev_str = ""; 
    for (i = str.len()-1; i >= 0; i--) begin
      rev_str = {rev_str, str[i]};  
    end
    $display("After rev the string=",rev_str);
    
    if(str==rev_str)begin
      $display("Given string is palindrome"); 
    end
    else begin    
      $display("Given string is not a palindrome"); 
                 end
                 
  end 
endmodule
  
