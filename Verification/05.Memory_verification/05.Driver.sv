class driver;
  virtual interf inf;
  transaction trans;
  mailbox gentodri;
  
  
  function new (virtual interf inf,mailbox gentodri);
    this.inf=inf;
    this.gentodri=gentodri;
  endfunction
  
  task main();
    repeat(10) begin
      gentodri.get(trans);
      @(negedge inf.clk);
      inf.r_w=trans.r_w;
      inf.addr=trans.addr;
      inf.wdata=trans.wdata;
      
//       @(posedge inf.clk);
      
      trans.display("Driver");
    end
  endtask
endclass
