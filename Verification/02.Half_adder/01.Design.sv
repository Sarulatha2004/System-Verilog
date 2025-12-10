module half_adder(
  interf ha
);
  assign ha.sum=ha.a^ha.b;
  assign ha.carry=ha.a&ha.b;
endmodule
