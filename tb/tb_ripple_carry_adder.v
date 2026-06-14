`timescale 1ns/1ps

// Testbench : tb_ripple_carry_adder
// Project   : 4-bit Ripple Carry Adder

module tb_ripple_carry_adder;

    reg  [3:0] A, B;   // 4-bit inputs
    reg        Cin;    // Carry input
    wire [3:0] Sum;    // 4-bit Sum output
    wire       Cout;   // Carry output

    // Connect Ripple Carry Adder
    ripple_carry_adder DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("=== 4-bit Ripple Carry Adder Test ===");
        $display("A    | B    | Cin | Sum  | Cout");
        $display("----------------------------------");

        // Test 1: 0 + 0 = 0
        A=4'b0000; B=4'b0000; Cin=0; #10;
        $display("%b | %b |  %b  | %b |  %b", A, B, Cin, Sum, Cout);

        // Test 2: 5 + 3 = 8
        A=4'b0101; B=4'b0011; Cin=0; #10;
        $display("%b | %b |  %b  | %b |  %b", A, B, Cin, Sum, Cout);

        // Test 3: 10 + 5 = 15
        A=4'b1010; B=4'b0101; Cin=0; #10;
        $display("%b | %b |  %b  | %b |  %b", A, B, Cin, Sum, Cout);

        // Test 4: 15 + 1 = 16 (overflow — Cout=1)
        A=4'b1111; B=4'b0001; Cin=0; #10;
        $display("%b | %b |  %b  | %b |  %b", A, B, Cin, Sum, Cout);

        // Test 5: 7 + 8 + 1(Cin) = 16 (overflow)
        A=4'b0111; B=4'b1000; Cin=1; #10;
        $display("%b | %b |  %b  | %b |  %b", A, B, Cin, Sum, Cout);

        $display("=== Test Complete ===");
        $finish;
    end

endmodule