class driver;
  virtual interf inf;
  transaction trans;
  mailbox gentodri;
  
  function new(virtual interf inf,mailbox gentodri);
    this.inf=inf;
    this.gentodri=gentodri;
  endfunction
  
  task main();
    repeat(5)begin
      gentodri.get(trans);
      inf.a=trans.a;
      inf.b=trans.b;
      inf.c=trans.c;
      trans.display("Driver");
    end
  endtask
endclass
    
