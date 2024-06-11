// functions.dart
int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int difference = sub(a, b);
  return 'Add $a + $b = $sum\nSub $a - $b = $difference';
}

void main() {
  int a = 8;
  int b = 5;
  String result = showFunc(a, b);
  print(result);  // Output: Add 8 + 5 = 13
                  //         Sub 8 - 5 = 3
}
