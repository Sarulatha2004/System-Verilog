module queue;
  
  int q[$]='{3,4,5,6};
  
  initial begin
    
    $display("The initialized array=%p",q);
    q.insert(1,1);
    $display("After inserting 1 in 1pos ---> %p",q);
    q.delete(3);
    $display("After deleting 3rd pos ---> %p",q);
    q.push_back(9);
    $display("After insert 9 in last pos ---> %p",q);
    q.shuffle;
    $display("After shuffling ---> %p",q);
    q.reverse;
    $display("After reversing-->%p",q);
      
  end
endmodule
