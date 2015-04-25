// Special Pythagorean triplet
// Problem 9

// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
// a2 + b2 = c2

// For example, 32 + 42 = 9 + 16 = 25 = 52.

// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

int euler09() {
  for (var c = 1; c < 1000; c++) {
    for (var b = 1; b < c; b++) {
      for (var a = 1; a < b; a++) {
        if ((a*a + b * b == c * c) && a + b + c == 1000 ) {
          return a * b * c;
        }
      }
    }
  }
  return -1;
}

void main() {
  print(euler09());
}