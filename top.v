module top (
  input [13:0]sw,
  output [9:0]led
);

  // full adder
  full_adder inst(
      .A(sw[0]),
      .B(sw[1]),
      .Cin(1'b0),
      .Y(led[0]),
      .Cout(led[1])
  );
  
  // half subtractor
  half_sub inst(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
  );

  // ones complement 
  ones_complement inst(
    .A(sw[5:2]),
    .B(sw[9:6]),
    .Y(led[5:2])
  );
  
endmodule
