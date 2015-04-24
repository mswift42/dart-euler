// Largest prime factor
// Problem 3
// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

import 'dart:math';

bool isPrime(int i) {
  if (i == 2) {
    return false;
  }
  for (int n = 3; n < sqrt(i).round(); n += 2) {
    if (i % n == 0) {
      return false;
    }
  }
  return true;
}

int euler03() {
  int limit = sqrt(600851475143).round();
  for (int i = limit; i > 3; i--) {
    if (600851475143 % i == 0 && isPrime(i)) {
      return i;
    }
  }
  return -1;
}

void main() {
  print(euler03());
}
