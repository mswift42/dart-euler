// Summation of primes
// Problem 10

// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

// Find the sum of all the primes below two million.


List<int> sieve() {
  int limit = 2000000;
  List<int> primes = new List.filled(limit,0);
    int len = primes.length;
    for (var i = 2; i < len; i++) {
      primes[i] = i;
    }
    for (var i = 2; i < len; i++) {
      for (var j = i+i; j < len; j += i) {
        primes[j] = 0;
      }
    }
  return primes;
}

int euler10() {
  return sieve().fold(0, (a,b) => a + b);
}

void main() {
  print(euler10());

}
