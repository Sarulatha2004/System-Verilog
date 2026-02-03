class transaction;
  bit clk;
  rand bit rst;
  rand bit d;
  bit q;
  
  function void display(string name);
    $display("-----%s-----",name);
    $display("clk=%0b  |  rst=%0b | d=%0b| q=%0b ",clk,rst,d,q);
  endfunction
  endclass

  
