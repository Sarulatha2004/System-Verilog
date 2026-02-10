class driver;
  virtual fifo_inf inf;
  transaction trans;
  mailbox gentodri;
  
  function new(virtual fifo_inf inf,mailbox gentodri);
    this.inf=inf;
    this.gentodri=gentodri;
  endfunction
  
  task main();
    
    repeat(50) begin
      gentodri.get(trans);
      @(negedge inf.wclk);
      @(negedge inf.rclk);
      
      inf.w_en <= trans.w_en;
      inf.r_en <= trans.r_en;
      inf.data_in <= trans.data_in;
      
      #10;
      
      inf.w_en<=0;
      inf.r_en<=0;
    end
  endtask
endclass


 
      
