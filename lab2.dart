class CurrencyConverter {
  final Map<String, double> exchangeRates;

  CurrencyConverter(this.exchangeRates);

  double convert(double amount, String fromCurrency, String toCurrency) {
    if (!exchangeRates.containsKey(fromCurrency) ||
        !exchangeRates.containsKey(toCurrency)) {
      throw Exception("Нет такой валюты");
    }
    double fromRate = exchangeRates[fromCurrency]!;
    double toRate = exchangeRates[toCurrency]!;
    return amount * (toRate / fromRate);
  }
}

void main() {
  var converter = CurrencyConverter({
    'USD': 1.0,
    'EUR': 0.85,
    'RUB': 73.0,
  });

  double amountInUSD = 100;
  double amountInEUR = converter.convert(amountInUSD, 'USD', 'EUR');
  print("100 USD в EUR: $amountInEUR");

  double amountInRUB = converter.convert(amountInUSD, 'USD', 'RUB');
  print("100 USD в RUB: $amountInRUB");
}
