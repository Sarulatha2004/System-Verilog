module rev_string;
  string str;
  string rev_str;
  integer i;
  initial begin
    str="Hello";
    $display("Before rev the string=",str);
    
    rev_str = ""; 
    for (i = str.len()-1; i >= 0; i--) begin
      rev_str = {rev_str, str[i]};  
    end
    $display("After rev the string=",rev_str);
  end 
endmodule
  
