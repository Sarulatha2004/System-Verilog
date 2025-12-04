module string_int;
  string Str;
  int res;
  initial begin
    Str="12345";
    res=Str.atoi();
    $display("String to integer Result=",res);
    res=res+100;
    $display("Result=",res);
  end
endmodule
