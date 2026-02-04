class generator;
  transaction trans;
  mailbox gentodri;
  
  function new (mailbox gentodri);
    this.gentodri=gentodri;
  endfunction
  
  task main();
    
    repeat(10) begin
      trans=new();
      assert(trans.randomize());
      
      trans.display("Generator");
      gentodri.put(trans);
      #3;
    end
  endtask
endclass
