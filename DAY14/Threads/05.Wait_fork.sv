module work_join;
  initial begin
    $display("-----------------------------------");
    fork
      begin
        $display($time,"\t Process-1 started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      
      begin
        $display($time,"\t Process-2 started");
        #20;
        $display($time,"\t Process-2 Finshed");
      end
    join_any
    $display("-----------------------------------");
    $finish;
  end
endmodule

///////////////////Output////////////////////
# KERNEL: -----------------------------------
# KERNEL:                    0	 Process-1 started
# KERNEL:                    0	 Process-2 started
# KERNEL:                    5	Process-1 Finished
# KERNEL: -----------------------------------



module work_join;
  initial begin
    $display("-----------------------------------");
    fork
      begin
        $display($time,"\t Process-1 started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      
      begin
        $display($time,"\t Process-2 started");
        #20;
        $display($time,"\t Process-2 Finshed");
      end
    join_any
    wait fork;
    $display("-----------------------------------");
    $finish;
  end
endmodule


///////////////////Output////////////////////
# KERNEL: -----------------------------------
# KERNEL:                    0	 Process-1 started
# KERNEL:                    0	 Process-2 started
# KERNEL:                    5	Process-1 Finished
# KERNEL:                   20	 Process-2 Finshed
# KERNEL: -----------------------------------
