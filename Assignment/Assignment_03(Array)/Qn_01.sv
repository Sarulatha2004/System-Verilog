module dynamic_array;
  int arr[];
  initial begin
    arr=new[10];
    arr='{23,65,78,14,54,78,97,12,80,60};
    $display("Original Array=%p",arr);
    arr.sort();
    $display("After sorting Array=%p",arr);
  end
endmodule
