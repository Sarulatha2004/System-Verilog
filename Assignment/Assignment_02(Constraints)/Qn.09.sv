class packet;
  rand int arr[10];
  
  constraint mul3{
    foreach (arr[i])
      arr[i]%3 == 0;
    
      unique {arr};
    
     foreach (arr[i])
       arr[i] inside {[0:50]};
  }  
endclass

module tb;
  packet pkt;
  initial begin
    
    pkt=new();
    
    pkt.randomize();
    $display("Generated unique multiples of 3:");
    foreach(pkt.arr[i])
      $display("arr[%0d]=%0d",i,pkt.arr[i]);
  end
endmodule
