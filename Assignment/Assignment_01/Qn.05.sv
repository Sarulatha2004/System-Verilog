module test_sum_N_numbers;
  int data[]='{28,16,87,34,87,56};
  int result;
  
  function int sum_N_Numbers(int ip[]);
    int sum=0;
    foreach(ip[i])
      sum=sum+ip[i];
    return sum;
  endfunction
  
  initial begin
    result=sum_N_Numbers(data);
    $display("Sum of N numbers is %0d",result);
  end
endmodule
