module unpacked_3D;
  int array[4][3][2]='{'{'{1,2},'{3,4},'{5,6}},'{'{1,3},'{5,7},'{9,0}},'{'{2,4},'{6,8},'{5,3}},'{'{1,2},'{3,4},'{5,6}}};
  int i,j,k;
  initial begin 
    for(i=0;i<4;i++)
      begin
        for(j=0;j<3;j++)
          begin
            for(k=0;k<2;k++)
              begin
                $display("array[%0d][%0d]=%0d",i,j,array[i][j][k]);
              end
              end
  end 
  end
endmodule
