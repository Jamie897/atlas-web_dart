int add(int a, int b) {
  return a+b;
}   

int sub(int a, int b) {
  retunr a-b;
  }  

  String showFunc(int a, int b) {
    int sum = add(a, b);
    int difference = sub(a, b);
    return 'Sum: $sum, Difference: $difference';
  }

  void main() {
    int a = 10;
    int b = 5;
    String result = showFunc(a, b);
    print(result);
  }