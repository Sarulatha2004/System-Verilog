module arr_loc;
  int q[$]='{1,3,5,7};
  int tq;
  int d[]='{9,1,8,3,4,4};
  int f[6]='{1,6,2,6,8,6};
  
  int cnt;
  
  initial begin
    $display("1)sum of q=",q.sum());
    $display("2)Product of q=",q.product());
    $display("3)min of q=",q.min());
    $display("4)max of q=",q.max());
    $display("5)unique of f=",f.unique());
    $display("6)item>3 of d=",d.find with(item>3));
    $display("7)item>99 of d=",d.find with(item>99));
    $display("8)First index(item==8) of d=",d.find_first_index with(item ==8));
    $display("9)Last element (item==4) of d=",d.find_last with(item ==4));
    $display("10)Last index (item==4) of d=",d.find_last_index with(item ==4));
    $display("11)Sum of elements with (item>7) of d=",d.sum with((item >7)*32'd1));
    $display("12)Sum of elements with (item>7)*item of d=",d.sum with((item >7)*item));
    $display("13)Sum of elements with (item<8) of d=",d.sum with(item <8));
    
    $display("14)Sum of elements with (item<8)?item:0 of d=",d.sum with((item <8)?item:0));

  end
endmodule
             
