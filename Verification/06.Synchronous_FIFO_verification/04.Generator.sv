class generator;
  transaction trans;
  mailbox gentodri;
  
  function new (mailbox gentodri);
    this.gentodri=gentodri;
  endfunction
  
  task main();
    
    repeat(50) begin
      trans=new();
      
      assert(trans.randomize());
    
      gentodri.put(trans);
      #3;
    end
  endtask
endclass
