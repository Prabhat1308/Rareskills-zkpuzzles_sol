pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Create a Quadratic Equation( ax^2 + bx + c ) verifier using the below data.
// Use comparators.circom lib to compare results if equal

template QuadraticEquation() {
    signal input x;     // x value
    signal input a;     // coeffecient of x^2
    signal input b;     // coeffecient of x 
    signal input c;     // constant c in equation
    signal input res;   // Expected result of the equation
    signal output out;  // If res is correct , then return 1 , else 0 . 
    
    signal tmp1 <== x*x;   // x^2
    signal tmp2 <== a*tmp1; // a*x^2

    signal tmp3 <== b*x;  // b*x

    signal tmp4 <== tmp2 + tmp3;  // a*x^2 + b*x
    signal tmp5 <== tmp4 + c; // a*x^2 + b*x + c

    component eq = IsEqual();
    eq.in[1] <== tmp5;
    eq.in[0] <== res;
    out <== eq.out;
    // your code here
}

component main  = QuadraticEquation();



