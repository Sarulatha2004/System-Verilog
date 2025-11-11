module dynamic_array;
  int array[];
  initial begin 
    array =new[5];
    array='{0,2,4,6,8};
    foreach (array[i])
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
    $display("size of array=%0d", array.size());
    array.shuffle();
    $display("After shuffling=%p",array);
  end
endmodule
    
