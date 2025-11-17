module datatype1;
  
  string s1 ="hello world";
  string s2 ="hello\0world";
  string s3,s4;
  string s5="compare";
  string s6="compare";
  string s7;
  integer s1len,s2len;
  
  initial  begin
    #10;$display("s1=%s s2=%s",s1,s2);
    #100;$finish;
  end
  
  initial begin
    #15;
    
    s1len = s1.len();
    $display("String Length s1 =%0d",s1len);
    
    s2len=s2.len();
    $display("String length S2 =%0d",s2len);
    
    if(s1 == s2)
      $display("s1=s2");
    else
      $display("s1!=s2");
    
    if(s5 == s6)
      $display("s5=s6");
    else
      $display("s5!=s6");
      
    
    s3 = s1.substr(1,6);
    $display("s3=%s",s3);
    
    s4="later";
    s7={3{s4}};
    
    $display("s7=%s",s7);
  end
endmodule
