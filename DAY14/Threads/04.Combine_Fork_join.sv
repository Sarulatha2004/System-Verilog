module fork_join;
  initial begin
    
    //fork_join
    $display($time," Starts fork....join");
  #10;
    $display($time," Sequential after #10");
  
  fork
    $display($time," Parallel start");
    #50
    $display($time," Parallel #50");
    #10
    $display($time," Parallel after #10");
    
    begin
      #30
      $display($time," Sequential after #30");
      #10
      $display($time," Sequential after #10");
    end
  join
    $display($time," After join");
  #80
    $display($time," final after #80");
    $display($time," Starts fork....join_any");
  #10
    $display($time," Sequential after #10");
   
    
    //fork...join_any
  fork
    $display($time," Parallel start");
    #50
    $display($time," Parallel #50");
    #10
    $display($time," Parallel after #10");
    
    begin
      #30
      $display($time," Sequential after #30");
      #10
      $display($time," Sequential after #10");
    end
  join_any
    $display($time," After join_any");
  #80
    $display($time," final after #80");
    $display($time," Starts fork....join_none");
  #10
    $display($time," Sequential after #10");
  
    
    //fork_join_none
  fork
    $display($time," Parallel start");
    #50
    $display($time," Parallel #50");
    #10
    $display($time," Parallel after #10");
    
    begin
      #30
      $display($time," Sequential after #30");
      #10
      $display($time," Sequential after #10");
    end
  join_none
    $display($time," After join_none");
  #80
    $display($time," final after #80");
  end
endmodule
