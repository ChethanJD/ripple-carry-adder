`timescale 1ns/1ps

// Module  : full_adder
// Project : 4-bit Ripple Carry Adder

//
// Description:
//   1-bit Full Adder
//   Adds three 1-bit inputs: A, B, and Carry-in (Cin)
//   Produces Sum and Carry-out (Cout)
//
// Truth Table:
//   A | B | Cin | Sum | Cout
//   0 | 0 |  0  |  0  |  0
//   0 | 0 |  1  |  1  |  0
//   0 | 1 |  0  |  1  |  0
//   0 | 1 |  1  |  0  |  1
//   1 | 0 |  0  |  1  |  0
//   1 | 0 |  1  |  0  |  1
//   1 | 1 |  0  |  0  |  1
//   1 | 1 |  1  |  1  |  1

module full_adder (
    input  wire A,     // First input bit
    input  wire B,     // Second input bit
    input  wire Cin,   // Carry input
    output wire Sum,   // Sum output
    output wire Cout   // Carry output
);

    // Sum = A XOR B XOR Cin
    assign Sum  = A ^ B ^ Cin;

    // Carry = (A AND B) OR (Cin AND (A XOR B))
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule