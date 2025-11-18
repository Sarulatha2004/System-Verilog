module while_example;
  int cnt;
  initial begin
    while(cnt <10)
      begin
        $display("Value of count = %0d",cnt);
        cnt++;
      end
  end
endmodule
