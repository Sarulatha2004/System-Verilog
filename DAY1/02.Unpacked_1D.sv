module unpacked_1D;
  int array[5]='{2,4,5,7,8};
  int i;
  initial begin 
    for(i=0;i<5;i++)
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
  end
endmodule
