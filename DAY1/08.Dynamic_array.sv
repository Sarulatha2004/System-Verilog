module dynamic_array;
  int d1[];
  int d[]='{3,5,6,8,3,4};
  initial begin
    d1=new[6];
    
    foreach (d1[i])
      begin
        d1[i]=i;
      end
    $display(d1,",",d1.size());
    d.reverse();
    $display(d);
    d.sort();
    $display(d);
    d.rsort();
    $display(d);
    d.shuffle();
    $display(d);
    d1.delete();
    $display("size of d1 after deleting =%0d",d1.size());
  end
endmodule
