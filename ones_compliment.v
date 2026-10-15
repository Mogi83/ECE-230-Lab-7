module ones_compliment(
  input [3:0] A, // Four bits of A: 3, 2, 1, 0
  input [3:0] B, // Same for B
  output [3:0] Y // and for Y
);

wire zero;             // declaring wire 'zero'
assign zero = 0;       // connect that wire to 0

wire [3:0] S;           // sum bits from chain 1
wire c1, c2, c3;        // carries inside chain 1
wire cout1;             // final carry out of chain 1
wire d1, d2, d3;        // carries inside chain 2
wire unused;            // chain 2's final carry, not needed

  // full_ adder faX(bit, bit, carry in, sum (Y), carry out)
  
  // chain 1
  full_adder fa0(A[0], B[0], zero, S[0], c1);
  full_adder fa1(A[1], B[1], c1, S[1], c2);
  full_adder fa2(A[2], B[2], c2, S[2], c3);
  full_adder fa3(A[3], B[3], c3, S[3], cout1);

  // chain 2
  full_adder fa4(S[0], zero, cout1, Y[0], d1);
  full_adder fa5(S[1], zero, d1, Y[1], d2);
  full_adder fa6(S[2], zero, d2, Y[2], d3);
  full_adder fa7(S[3], zero, d3, Y[3], unused);
  
endmodule
