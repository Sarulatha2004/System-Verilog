module wait_order_;
  event e1;
  event e2;
  event e3;
  
  initial begin
    fork 
      begin
        #10;
        $display($time,"\t Triggering the event e3");
        ->e3;
      end
      
      begin
        #2;
        $display($time,"\tTriggering the event e1");
        ->e1;
      end
      
      begin
        #8;
        $display($time,"\t Triggering the event e2");
        ->e2;
      end
      
      begin
        $display($time,"\t Waiting for event's to trigger");
        wait_order(e1,e2,e3)
        $display($time,"\t Event's triggered Inorder");
        else
          $display($time,"\t Event's triggered out-of-order");
      end
    join
  end
endmodule
