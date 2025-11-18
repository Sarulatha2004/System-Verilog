module break_continue_example;
  
  int array[10];
  
  initial begin
    for(int i=0;i<$size(array);i++)
      begin
        array[i]=i*i;
      end
    
    for(int i=0;i<$size(array);i++)
      begin
        if(i==6)
          break;
        $display("array[%0d]=%0d",i,array[i]);
      end
    $display("---------------------------------");
    
    
    for (int i = 0; i < $size(array); i++) begin
      if(i == 6) continue;
      $display("array[%0d] = %0d", i, array[i]);
    end
    $display("--------------------------------");
  end
endmodule
