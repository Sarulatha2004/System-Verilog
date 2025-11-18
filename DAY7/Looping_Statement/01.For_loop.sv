module for_loop;
  int i;
  int mem[0:3];
  initial begin
      #10;
      for(i=0;i<4;i++)
        begin
          mem[i]=i+1;
          $display($time,,, "mem[%0d]=%0d",i,mem[i]);
        end
    
  end
endmodule
