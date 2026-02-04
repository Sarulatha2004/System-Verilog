class monitor;
  
  virtual interf inf;
  transaction trans;
  mailbox montosco;
  
  function new(virtual interf inf,mailbox montosco);
    this.inf=inf;
    this.montosco=montosco;
  endfunction
  
  task main();
    repeat(10) begin
      @(posedge inf.clk);
      #1;
      
      trans=new();
      trans.r_w=inf.r_w;
      trans.addr=inf.addr;
      trans.wdata=inf.wdata;
      trans.rdata=inf.rdata;
      
      montosco.put(trans);
      trans.display("Monitor");
    end
  endtask
  
endclass
  
