module top (
  input [13:0]sw,
  output [9:0]led
);

  half_sub inst(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
  );
