import 'dart:async';

Future<int> fibonacci(int n) async {
  if (n <= 1) return n;
  return await fibonacci(n - 1) + await fibonacci(n - 2);
}

void main() async {
  int n = 10;
  int result = await fibonacci(n);
  print("Число Фибоначчи для $n: $result");
}
