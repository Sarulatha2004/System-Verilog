class scoreboard;

  transaction trans;
  mailbox montosco;

  bit [3:0] exp_count;
  bit prev_en;

  function new(mailbox montosco);
    this.montosco = montosco;
    exp_count = 0;
    prev_en = 0;
  endfunction

  task main();

    repeat(10) begin

      montosco.get(trans);
      trans.display("Scoreboard");

      if(trans.rst) begin
        exp_count=0;
        prev_en=0;
      end
      else if(prev_en) begin
        exp_count = exp_count + 1;
      end
      #1;

      if(exp_count === trans.count)
        $display("PASS -> rst=%0b en=%0b | DUT_count=%0d EXP_count=%0d",trans.rst, trans.en, trans.count, exp_count);
      else
        $display("FAIL -> rst=%0b en=%0b | DUT_count=%0d EXP_count=%0d",trans.rst, trans.en, trans.count, exp_count);

      prev_en = trans.en;

    end
  endtask

endclass
