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
      @(negedge inf.clk);
      inf.wr_en <= trans.wr_en;
      inf.rd_en <= trans.rd_en;
      inf.data_in <= trans.data_in;
      
      @(posedge inf.clk);
      #10;
      
      inf.wr_en <=0;
      inf.rd_en<=0;
    
    end
  endtask
endclass
