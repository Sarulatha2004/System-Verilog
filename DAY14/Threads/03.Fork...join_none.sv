module fork_join_none;
  initial begin
    $display("---------------------------");
   fork 
     begin
       #2
     $display($time,"\tProcess-1 Started");
    #5;
    $display($time,"\t Process-1 Finished");
     end
     
     begin
       #2
       $display($time,"\tProcess-2 Started");
    #20;
       $display($time,"\t Process-2 Finished");
     end
     
   join_none
    $display($time,"\tOutside Fork-Join_none");
   #25
    $display($time,"-------------------------");
  end
endmodule
 
