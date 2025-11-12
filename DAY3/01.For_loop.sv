module forloop;
  
  int i;
  int mem[0:3];
  initial begin
    
    for(int j=0;j<5;j++)
      begin
        #10;
        for(i=0;i<3;i++)
          begin
            mem[i]=i*2;
            $display($time,,,"mem[%0d]=%0d",i,mem[i]);
          end
      end
  end
    endmodule
