class scoreboard;

  transaction trans;
  mailbox montosco;

  bit prev_d;
  bit exp_q;

  function new(mailbox montosco);
    this.montosco = montosco;
    prev_d = 0;
  endfunction

  task main();

    repeat(5) begin

      montosco.get(trans);
      trans.display("Scoreboard");

      if(trans.rst) begin
        exp_q = 0;
      end
      else begin
        exp_q = prev_d;
      end

      if(exp_q === trans.q)
        $display("PASS -> rst=%0b d=%0b | DUT_q=%0b EXP_q=%0b",
                  trans.rst, trans.d, trans.q, exp_q);
      else
        $display("FAIL -> rst=%0b d=%0b | DUT_q=%0b EXP_q=%0b",
                  trans.rst, trans.d, trans.q, exp_q);


      prev_d = trans.d;

    end
  endtask

endclass
