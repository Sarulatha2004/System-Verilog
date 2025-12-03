class scoreboard;
  transaction trans;
  mailbox montosco;
  
  function new(mailbox montosco);
    this.montosco=montosco;
  endfunction
  
  task main();
 
    repeat(2)begin
      montosco.get(trans);
        trans.display("Scoreboard");
      
      if(((trans.a^trans.b^trans.c)==trans.sum) && ((trans.a & trans.b )|(trans.b & trans.c)|(trans.c & trans.a)) == trans.carry)
      $display("Pass");
      else
        $display("Fail");
    
    end
  endtask
endclass
