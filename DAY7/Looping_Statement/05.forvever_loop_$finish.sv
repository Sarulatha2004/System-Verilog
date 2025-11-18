module forever_exmaple;
  int cnt;
  initial begin
    forever begin
      $display("Value of count=%0d",cnt);
      cnt++;
      #5;
    end
  end
  
  
  initial begin
    #30;
    $finish;
  end
endmodule
