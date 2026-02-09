class scoreboard#(parameter DATA_WIDTH=8);
  
  transaction trans;
  mailbox montosco;
  
  bit[DATA_WIDTH-1:0]exp_data_out;
  bit[DATA_WIDTH-1:0]queue[$];
  
  
  function new(mailbox montosco);
    this.montosco=montosco;
    this.trans=trans;
  endfunction
  
  
  task main();
    trans=new();
    
    repeat(50) begin
      
      montosco.get(trans);
      
      
      if(!trans.rstn) begin
        queue.delete();
        exp_data_out=0;
        $display("Reset active-Ignored");
      end
      
      else begin
        if(trans.wr_en && !trans.full)
          queue.push_back(trans.data_in);
        if(trans.rd_en && !trans.empty)
          exp_data_out=queue.pop_front();
      end
      
      if(trans.wr_en)begin
        $display("Write occur-----> input=%0d",trans.data_in);
      end
      
      if(trans.rd_en)begin
        if(trans.data_out == exp_data_out)
          $display("Test case PASS ----> Read data: Actual Output=%0d  Expected Output=%0d",trans.data_out,exp_data_out );
        else
          $display("Test case FAIL");
      end
    end
  endtask
endclass
      
      
  
