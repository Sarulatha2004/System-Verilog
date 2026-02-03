class driver;
  virtual interf inf;
  transaction trans;
  mailbox gentodri;
  


  
  function new(virtual interf inf,mailbox gentodri);
    this.inf=inf;
    this.gentodri=gentodri;
  endfunction
  
  task main();
    repeat(10)begin
      gentodri.get(trans);
     
      //inf.rst=trans.rst;
      inf.en=trans.en;
       @(posedge inf.clk);
      trans.display("Driver");
    end
  endtask
  
  

endclass
    
