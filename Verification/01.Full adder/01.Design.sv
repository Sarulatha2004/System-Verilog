module full_adder(
   interf fu
);
 assign fu.sum=fu.a^fu.b^fu.c;
  assign fu.carry=(fu.a&fu.b) | (fu.b&fu.c) | (fu.a&fu.c);
endmodule
