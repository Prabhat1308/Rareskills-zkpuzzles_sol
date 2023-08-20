pragma circom 2.1.4;

// In this exercise , we will learn how to check the range of a private variable and prove that 
// it is within the range . 

// For example we can prove that a certain person's income is within the range
// Declare 3 input signals `a`, `lowerbound` and `upperbound`.
// If 'a' is within the range, output 1 , else output 0 using 'out'


template Range() {
    // your code here
    signal input a;
    signal input lowerbound;
    signal input upperbound;
    
    var x = a>=lowerbound ? 1:0;
    var y = a<=upperbound ? 1:0;
    signal tmp <-- x*y;
    
    signal output out <== tmp;
}

component main  = Range();


