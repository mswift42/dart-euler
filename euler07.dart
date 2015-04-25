// 10001st prime Problem 7 By listing the first six prime numbers: 2, 3, 5, 7, 11,
// and 13, we can see that the 6th prime is 13.

// What is the 10 001st prime number?
import 'dart:math';

bool isPrime(int i) {
  if (i < 2) {
    return false;
  }
  if (i == 2) {
    return true;
  }
  if (i % 2 == 0) {
    return false;
  }
  for (int n=3; n < sqrt(i).round()+1; n += 2) {
    if (i % n == 0) {
      return false;
    }
  }
  return true;
}

int euler07() {
  int count = 0;
  for (var i = 2;i>0; i++) {
    if (isPrime(i)) {
      count++;
    }
    if (count == 10001) {
      return i;
    }
  }
  return -1;
}

void main() {
  print(euler07());
  
}