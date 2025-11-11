module string_int;
  string Str;
  int res;
  initial begin
    Str="15674ccff";
    res=Str.atoi();
    $display("String to integer Result=",res);
    res=res+400;
    $display("Result=",res);
  end
endmodule

