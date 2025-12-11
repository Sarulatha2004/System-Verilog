module fork_join;
  initial begin
    $display("------------------------");
   fork 
     begin
     $display($time,"\tProcess-1 Started");
    #5;
    $display($time,"\t Process-1 Finished");
     end
     
     begin
       $display($time,"\tProcess-2 Started");
    #20;
       $display($time,"\t Process-2 Finished");
     end
     
   join
    #5;
    $display($time,"\tOutside Fork-Join");
    $display("-------------------------");
    $finish;
  end
endmodule
 
