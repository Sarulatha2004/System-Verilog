class scoreboard;
  
  transaction trans;
  mailbox montosco;
  
  bit [7:0]exp_mem[15:0];
  bit [7:0]exp_rdata;
  
  function new(mailbox montosco);
    this.montosco=montosco;
    this.trans=trans;
  endfunction
  
  task main();
    trans=new();
    repeat(10) begin 
      
      montosco.get(trans);
      trans.display("scoreboard");
      
      if(trans.r_w) begin
        exp_mem[trans.addr]=trans.wdata;
        $display("WRITE DATA---->r_w=%0b | address=%0b | wdata=%0b",trans.r_w,trans.addr,trans.wdata);
      end
      
      else begin
        exp_rdata=exp_mem[trans.addr];
        
        $display("READ DATA------>r_w=%0b | address =%0b | rdata=%0b",trans.r_w,trans.addr,exp_rdata);
         
      
        if(exp_rdata===trans.rdata)
          $display("Test case PASS---->addr=%0b Actual rdata=%0b || Exp rdata=%0b",trans.addr,trans.rdata,exp_rdata);
        else
          $display("Test case FAIL---->addr=%0b Actual rdata=%0b || Exp rdata=%0b",trans.addr,trans.rdata,exp_rdata);
           
      end 
    end
  endtask
endclass


