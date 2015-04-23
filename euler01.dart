// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 
// 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

void main() {
  Iterable<int> filtered = new List.generate(1000, (int index) => index).
    where((int i) => multipleOf3Or5(i));  
  print( filtered.fold(0, (a,b) => a + b));
}

bool multipleOf3Or5(int n) {
  return (n % 3 == 0 || n % 5 == 0);
}