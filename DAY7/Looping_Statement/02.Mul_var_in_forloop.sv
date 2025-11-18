
module mul_var_in_forloop;
  int array[10];
  
  initial begin
    for(int i=0,cnt=0;i<$size(array);i++,cnt++)
      begin
        array[i]=i*i;
        $display("cnt=%0d",cnt);
      end
    
    for(int i=0;i < $size(array);i++)
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
  end
    endmodule


