pragma circom 2.1.4;

// Input : 'a',array of length 2 .
// Output : 'c 
// Using a forLoop , add a[0] and a[1] , 4 times in a row .

template ForLoop() {

// Your Code here..
  signal input a[2];
  signal output c;

  var z = 0;
  var sum = 0;
  while(z<4){
   sum += a[0] + a[1];
    z++;
  }

    c <-- sum;
}  

component main = ForLoop();
