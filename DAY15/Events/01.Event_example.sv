module wait_example;
  event e;
  
  initial begin
    $display($time,"\t triggering the event");
    #15;
    ->e;
  end
  
  initial begin
    $display($time,"\t waiting for the event using wait");
    #15;
    wait(e.triggered);
    $display($time,"\t event is triggered using wait");
  end
   
  initial begin
    $display($time,"\t wai ting for the event using @");
   #15 @(e.triggered);
    $display($time,"\t event is triggered using @");
  end
endmodule
