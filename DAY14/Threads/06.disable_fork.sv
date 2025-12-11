
//////////WITHOUT disable fork////////////////

module disable_fork;
  
  initial begin
    $display("----------------------------------");
    
    fork
      begin
        $display($time,"\tProcess-1 Started");
        #5
        $display($time,"\tProcess-1 Finished");
      end
      
      begin
        $display($time,"\tProcess-2 Started");
        #20
        $display($time,"\tProcess-2 Finished");
      end
    join_any
    
    fork
      begin
        $display($time,"\tProcess-11 Started");
        #5
        $display($time,"\tProcess-11 Finished");
      end
      
      begin
        $display($time,"\tProcess-22 Started");
        #20
        $display($time,"\tProcess-22 Finished");
      end
    join_none
    $display("-----------------------------------");
    $display("------After disable fork---------");
    $display("-----------------------------------");
  end
endmodule



/////////////////output//////////////////////////////////

# KERNEL: ----------------------------------
# KERNEL:                    0	Process-1 Started
# KERNEL:                    0	Process-2 Started
# KERNEL:                    5	Process-1 Finished
# KERNEL: -----------------------------------
# KERNEL: ------After disable fork---------
# KERNEL: -----------------------------------
# KERNEL:                    5	Process-11 Started
# KERNEL:                    5	Process-22 Started
# KERNEL:                   10	Process-11 Finished
# KERNEL:                   20	Process-2 Finished
# KERNEL:                   25	Process-22 Finished



  //////////WITH disable fork////////////////
  module disable_fork;
  
  initial begin
    $display("----------------------------------");
    
    fork
      begin
        $display($time,"\tProcess-1 Started");
        #5
        $display($time,"\tProcess-1 Finished");
      end
      
      begin
        $display($time,"\tProcess-2 Started");
        #20
        $display($time,"\tProcess-2 Finished");
      end
    join_any
    
    fork
      begin
        $display($time,"\tProcess-11 Started");
        #5
        $display($time,"\tProcess-11 Finished");
      end
      
      begin
        $display($time,"\tProcess-22 Started");
        #20
        $display($time,"\tProcess-22 Finished");
      end
    join_none
    disable fork;
    $display("-----------------------------------");
    $display("------After disable fork---------");
    $display("-----------------------------------");
  end
endmodule

/////////////////output//////////////////////////////////
# KERNEL: ----------------------------------
# KERNEL:                    0	Process-1 Started
# KERNEL:                    0	Process-2 Started
# KERNEL:                    5	Process-1 Finished
# KERNEL: -----------------------------------
# KERNEL: ------After disable fork---------
# KERNEL: -----------------------------------
