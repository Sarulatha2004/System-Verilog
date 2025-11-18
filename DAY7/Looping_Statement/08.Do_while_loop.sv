module do_while_example;
  int cnt;
  initial begin
    do begin
      $display("Value of count =%0d",cnt);
      cnt++;
    end
    while(cnt <10);
  end
endmodule
