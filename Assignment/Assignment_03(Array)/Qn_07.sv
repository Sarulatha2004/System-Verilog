module datatype;
  string s1="System Verilog";
  string s2;
  string s3;
  int x;
  int n;
  
  initial begin
    x=s1.getc(0);
    $display("ASCII value of 1st character of s1:%d",x);
    s2=s1.toupper();
    $display("Uppercase for s1:%s",s2);
    s3={"3.1a",s1};
    $display("concatenate 3.1a with s1:%s",s3);
    n=s1.len();
    s1[n-1]="b";
    $display("s1=%s",s1);
    $display("Substring from 2 to 5=%s",s1.substr(2,5));
    
    
  end
endmodule
