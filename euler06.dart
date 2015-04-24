// Sum square difference Problem 6 The sum of the squares of the first ten natural
// numbers is,

// 12 + 22 + ... + 102 = 385 The square of the sum of the first ten natural numbers
// is,

// (1 + 2 + ... + 10)2 = 552 = 3025 Hence the difference between the sum of the
// squares of the first ten natural numbers and the square of the sum is 3025 − 385
// = 2640.

// Find the difference between the sum of the squares of the first one hundred
// natural numbers and the square of the sum.

int sumSquares() {
  return new List.generate(100, (i) => i+1).map((i) => i * i).fold(0, (a,b)=> a + b);
}

int squaredSum() {
  int sum = new List.generate(100, (i) => i+1).fold(0, (a,b) => a + b);
  return sum * sum;
}

int euler06() {
  return squaredSum() - sumSquares();
}

void main() {
  print(euler06());
}

