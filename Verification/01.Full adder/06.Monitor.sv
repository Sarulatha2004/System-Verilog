class monitor;
  virtual interf inf;
   transaction trans;
  mailbox montosco;
  
  function new(virtual interf inf,mailbox montosco);
    this.inf=inf;
    this.montosco=montosco;
  endfunction
  
  task main();
   
    
    repeat(6)begin
      #1;
      trans=new();
  
      trans.a=inf.a;
      trans.b=inf.b;
      trans.c=inf.c;
      trans.sum=inf.sum;
      trans.carry=inf.carry;
      montosco.put(trans);
      trans.display("Monitor");
      #2;
    end
  endtask
endclass
    
