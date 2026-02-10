`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment;
  
  transaction trans;
  generator gen;
  driver drive;
  monitor mon;
  scoreboard score;
  
  mailbox gentodri;
  mailbox montosco;
  virtual fifo_inf inf;
  
  function new(virtual fifo_inf inf);
    this.inf=inf;
    gentodri =new();
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
