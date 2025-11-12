module array_reduction;
  int A[]='{5,3,6,7,8};
  int Res;
  initial begin
   
    Res=A.sum;
    $display(Res);
    Res=A.product;
    $display(Res);
    Res=A.and;
    $display(Res);
    Res=A.or;
    $display(Res);
    Res=A.xor;
    $display(Res);
    
  end
endmodule
  
