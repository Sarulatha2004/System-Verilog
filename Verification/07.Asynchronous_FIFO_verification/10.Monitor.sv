class monitor;
  
  virtual fifo_inf inf;
  transaction trans;
  mailbox montosco;
  
  function new(virtual fifo_inf inf,mailbox montosco);
    this.inf=inf;
    this.montosco=montosco;
  endfunction
  
  task main();
    repeat(50) begin
     @(posedge inf.wclk);
      @(posedge inf.rclk);
      #1;
      
      trans=new();
      trans.wrstn    = inf.wrstn;
      trans.rrstn    = inf.rrstn;
      trans.w_en     = inf.w_en;
      trans.r_en     = inf.r_en;
      trans.data_in  = inf.data_in;
      trans.data_out = inf.data_out;
      trans.full     = inf.full;
      trans.empty    = inf.empty;
      
      montosco.put(trans);
      
    end
  endtask
endclass
