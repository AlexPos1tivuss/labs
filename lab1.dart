bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

int countPrimes(List<int> numbers) {
  int primeCount = 0;
  for (var num in numbers) {
    if (isPrime(num)) primeCount++;
  }
  return primeCount;
}

void main() {
  List<int> array = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  int primeCount = countPrimes(array);
  print("Количество простых чисел в массиве: $primeCount");
}
