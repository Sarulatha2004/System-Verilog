module dynamic_array_example;
  int array[];
  initial begin array =new[5];
    array='{10,20,30,40,50};
    foreach (array[i])
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
    $display("size of array=%0d", array.size());
    array=new[8](array);
    $display("size of an array after resizing=%0d",array.size());
    foreach(array[i])
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
    array=new[6](array);
    $display("size of array after overriding =%0d",array.size());
    
    array=new[9];
    $display("size of array after overriding =%0d",array.size());
    foreach(array[i])
      begin
        $display("array[%0d]=[%0d]",i,array[i]);
      end
    array.delete();
    $display("size of array after deleting=%0d",array.size());
  end
endmodule
    
        
    

    
  
