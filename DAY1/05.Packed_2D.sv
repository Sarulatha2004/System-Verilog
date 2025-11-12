module packed_2D;
  logic [2:0][15:0]array[7:0];
  initial begin 
    array[7]='hFF_FF_FF_FF_11_11;
    
    array[6][2][15:0]='h11_11;
   
    array[5][1][7:0]='haa;
    
    array[4][1][3:0]=1'b0;
    
    
    foreach(array[i,j]) begin
      $display(" array[%0d][%0d]=%0h",i,j,array[i][j]);
    end
    
  end
endmodule
