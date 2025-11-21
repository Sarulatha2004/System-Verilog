module queue_example;
  int a[$];
  task push_data;
    begin
      a.push_front(45);
      a.push_back(34);
    end
  endtask
  task remove_data;
    begin
      a.pop_front();
      a.pop_back();
    end
  endtask
  
  initial begin
    a='{12,43,23,45,65};
    $display("A is :%0p",a);
    push_data;
    $display("A is :%0p",a);
    remove_data;
    $display("A is :%0p",a);
  end
endmodule
    
