module packed_1D;
  logic [31:0]array[7:0];
  initial begin 
    array[7]='hFF_FF_FF_FF;
    
    array[6][31:0]='h11_11_11_11;
   
    array[5][15:0]='haa_aa;
    
    array[4][3:0]=1'b0;
    
    
    foreach(array[i]) begin
      $display(" array[%0d]=%0h",i,array[i]);
    end
    
  end
endmodule
