module packed_3D;
  bit [3:0][1:0][7:0]A;
  initial begin
    A[0]=16'hCDEF;
    A[1]=16'h89AB;
    A[2]=16'h4567;
    A[3]=16'h0123;
    $display("A=0x%0h",A);
    A=64'hfeac_cdef_abcd_8765;
    
    $display("A=0x%0h",A);
    
    foreach(A[i]) begin
      $display("A[%0d]=0x%h",i,A[i]);
    end
    foreach(A[i,j]) begin
      $display("A[%0d][%0d]=0x%h",i,j,A[i][j]);
    end
  end
endmodule
