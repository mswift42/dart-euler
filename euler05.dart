// 2520 is the smallest number that can be divided by each of the numbers from 1 to
// 10 without any remainder.

// What is the smallest positive number that is evenly divisible by all of the
// numbers from 1 to 20?

int gcd(int a, b) {
  if (b == 0) {
    return a;
  }
  return gcd(b, a % b);
}

int lcm(int a, b) {
  if (b == 0) {
    return 0;
  }
  return (a * b / gcd(a, b)).round();
}

int euler05() {
  List nums = new List.generate(20, (i) => i+1);
  return nums.fold(1, (a,b) => lcm(a,b));
}

void main() {
  print(lcm(21, 6));
  print(euler05());
}
