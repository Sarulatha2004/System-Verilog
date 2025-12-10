class scoreboard;
  transaction trans;
  mailbox montosco;
  
  function new(mailbox montosco);
    this.montosco=montosco;
  endfunction
  
  task main();
    repeat(6) begin
      montosco.get(trans);
      trans.display("Scoreboard");
      
      if(((trans.a^trans.b)==trans.sum)&& ((trans.a&trans.b==trans.carry)))
        $display("PASS");
      else
        $display("FAIL");
    end
  endtask
endclass
