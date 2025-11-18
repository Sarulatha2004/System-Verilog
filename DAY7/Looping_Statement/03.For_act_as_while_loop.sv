module for_as_while;
int cnt;
  
  initial begin
    for(;;)begin
      $display("cnt=%0d",cnt);
      if(cnt==10)break;
      cnt++;
    end
  end
endmodule
