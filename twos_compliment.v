module twos_compliment(
  input [7:0] A, // Eight bits of A: 7, 6, 5, 4, 3, 2, 1, 0
  output [7:0] Y // and for Y
);

// wire zero;                         // declaring wire 'zero'
// assign zero = 0;                   // connect that wire to 0
// wire one;                          // declaring wire 'one'
// assign one = 1;                    // connect that wire to 1

// wire c1, c2, c3, c4, c5, c6, c7;    // carries inside chain 1
// wire unused;                        // final carry, not needed

//   // full_ adder faX(bit, bit, carry in, sum (Y), carry out)
  
//   // chain 
//   full_adder fa0(~A[0], zero, one, Y[0], c1);
//   full_adder fa1(~A[1], zero, c1, Y[1], c2);
//   full_adder fa2(~A[2], zero, c2, Y[2], c3);
//   full_adder fa3(~A[3], zero, c3, Y[3], c4);
//   full_adder fa4(~A[4], zero, c4, Y[4], c5);
//   full_adder fa5(~A[5], zero, c5, Y[5], c6);
//   full_adder fa6(~A[6], zero, c6, Y[6], c7);
//   full_adder fa7(~A[7], zero, c7, Y[7], unused);

  wire [7:0] carry;
  genvar i;
  generate
      full_adder lsb (
        .A(~A[0]),
        .B(1'b1),
        .Y(Y[0]),
        .Cin(1'b0),
        .Cout(carry[0])
      );

      for(i=1; i<8; i=i+1)
      begin
        full_adder add(
          .A(~A[i]),
          .B(1'b0),
          .Y(Y[i]),
          .Cin(carry[i-1]),
          .Cout(carry[i])
      );
      end
endgenerate
endmodule 
