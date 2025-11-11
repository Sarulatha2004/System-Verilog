module queue_1;
  int  q[$]='{13,45,65,23,54,67,65,23,11,12};
  initial begin
    $display("The initialized array=%p",q);
    $display("The size of the array=%d",q.size());
    q.insert((((q.size)/2)-1),15);
    $display("The after (n/2 pos) insertion array=%p",q);
    q.insert((q.size-1),34);
    $display("The after (n pos) insertion array=%p",q);
    q.delete((q.size-1)-1);
    $display("The after deletion array=%p",q);
    q.pop_front();
    $display("The after pop front array=%p",q);
    q.pop_back();
    $display("The after pop back array=%p",q);
    q.push_front(15);
    $display("The after push front array=%p",q);
    q.push_back(2);
    $display("The after push back array=%p",q);
  end
endmodule
