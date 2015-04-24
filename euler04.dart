// Largest palindrome product Problem 4 A palindromic number reads the same both
// ways. The largest palindrome made from the product of two 2-digit numbers is
// 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

bool isPalindrome(int i) {
  int rev = int.parse(i.toString().split('').reversed.join(''));
  return (i == rev);
}

void main() {
  print(euler04());
}

int euler04() {
  int max = 0;
  int prod;
  for (int i = 100;i<1000;i++) {
    for (int j = 100;j<1000;j++) {
      prod = i * j;
      if (isPalindrome(prod)) {
        if (prod > max) {
          max = prod;
        }
      }
    }
  }
  return max;
}