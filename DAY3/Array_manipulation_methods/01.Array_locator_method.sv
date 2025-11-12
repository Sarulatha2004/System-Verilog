module array_locators;
  int q[$]='{1,3,5,7};
  int tq[$];
  int d[]='{9,1,8,3,4,4};
  int f[6]='{1,6,2,6,8,6};
  int count;
  
  initial begin
    $display("sum=",q.sum());
    $display("product=",q.product());
    $display("Maximum=",q.max());
    $display("Minimum=",q.min());
    
    tq=(f.unique());
    $display(tq);
    
    tq=d.find with (item>3);
    $display(tq);
    
    tq=d.find_index with (item>3);
    $display(tq);
    
    tq=d.find_index with (item>99);
    $display(tq);
    
    tq=d.find_first_index with (item==8);
    $display(tq);
    
    tq=d.find_last with (item==4);
    $display(tq);
    
    tq=d.find_last_index with (item==4);
    $display(tq);
    
    count=d.sum with ((item>7)*32'd1);
    $display(count);
    
    count=d.sum with ((item>7)*item);
    $display(count);
    
    count=d.sum with (item<8);
    $display(count);
    
    count=d.sum with ((item<8)?item:0);
    $display(count);
  end
endmodule
