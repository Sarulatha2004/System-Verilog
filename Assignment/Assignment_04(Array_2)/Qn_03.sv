module dynamic_array;
  int arr[];
  initial begin
    arr=new[5];
    foreach(arr[i])
      begin
        arr[i]=i+1;
        $display("arr[%0d]=%0d",i,arr[i]);
      end
    $display("Size of the array=%0d",arr.size());
    arr.shuffle();
    $display("After shuffling arr=%p",arr);
  end
endmodule
