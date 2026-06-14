`timescale 1ns/1ps

// Module  : ripple_carry_adder
// Project : 4-bit Ripple Carry Adder

//
// Description:
//   4-bit Ripple Carry Adder using 4 Full Adder modules
//   Carry output of each Full Adder feeds into next one
//
//   FA0 → FA1 → FA2 → FA3
//    ↑     ↑     ↑     ↑
//   A0B0  A1B1  A2B2  A3B3

module ripple_carry_adder (
    input  wire [3:0] A,    // 4-bit input A
    input  wire [3:0] B,    // 4-bit input B
    input  wire       Cin,  // Initial carry input
    output wire [3:0] Sum,  // 4-bit Sum output
    output wire       Cout  // Final carry output
);

    // Internal carry wires between Full Adders
    wire C1, C2, C3;   // C1 = carry from FA0, C2 = carry from FA1, C3 = carry from FA2

    // FA0 — Least Significant Bit
    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(C1));

    // FA1
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(C1),  .Sum(Sum[1]), .Cout(C2));

    // FA2
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(C2),  .Sum(Sum[2]), .Cout(C3));

    // FA3 — Most Significant Bit
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(C3),  .Sum(Sum[3]), .Cout(Cout));

endmodule