class scoreboard #(parameter DATA_WIDTH=8);
  
  transaction trans;
  mailbox montosco;
  bit [DATA_WIDTH-1:0] prev_exp;
  
  bit [DATA_WIDTH-1:0]exp_data_out;
  bit [DATA_WIDTH-1:0]queue[$];
  
  function new(mailbox montosco);
    this.montosco=montosco;
    this.trans=trans;
  endfunction
  
  task main();
    
    trans=new();
    
    repeat(50)begin
      
      montosco.get(trans);
      
      if(!trans.wrstn || !trans.rrstn)
        begin
          
          queue.delete();
          exp_data_out=0;
          $display("Reset active ignored");
        end
      else begin
        
        
        if(trans.w_en && !trans.full) begin
          queue.push_back(trans.data_in);
          $display("WRITE occur------>input=%0d",trans.data_in);
        end
        if(trans.r_en && !trans.empty)
          begin
            prev_exp = exp_data_out;
            exp_data_out = queue.pop_front();
      
            if(trans.data_out == prev_exp)
                 $display("Test case PASS--------> Read data: Actual data=%0d  | Expected data=%0d",trans.data_out,prev_exp);
            else
                 $display("Test case FAIL");
      end
    end
    end
  endtask
endclass
