module unpacked_2D;
  int array[4][3]='{'{1,2,3},'{4,5,6},'{2,8,7},'{4,6,7}};
  int i,j;
  initial begin 
    for(i=0;i<4;i++)
      begin
        for(j=0;j<3;j++)
          begin
            $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
      end
  end 
  end
endmodule
