class monitor;
  virtual interf inf;
   transaction trans;
  mailbox montosco;


  
  function new(virtual interf inf,mailbox montosco);
    this.inf=inf;
    this.montosco=montosco;
  endfunction
  
 task main();
  repeat(5) begin
    @(posedge inf.clk);
    #1;

    trans = new();
    trans.rst = inf.rst;
    trans.d   = inf.d;
    trans.q   = inf.q;

    montosco.put(trans);
    trans.display("Monitor");
  end
endtask

endclass
    
