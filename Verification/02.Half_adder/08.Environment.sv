`include "Transaction.sv"
`include "Generator.sv"
`include "Driver.sv"
`include "Monitor.sv"
`include "Scoreboard.sv"



class environment;
  transaction trans;
  generator gen;
  driver drive;
  monitor mon;
  scoreboard score;
  
  mailbox gentodri;
  mailbox montosco;
  virtual interf inf;
  
  function new(virtual interf inf);
    this.inf=inf;
    gentodri=new();
    montosco=new();
    gen=new(gentodri);
    drive=new(inf,gentodri);
    mon=new(inf,montosco);
    score=new(montosco);
    
  endfunction
  
  task test();
    fork
      gen.main();
      drive.main();
      mon.main();
      score.main();
    join
    
  endtask
endclass

