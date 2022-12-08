class Currency {
  final String currency;
  final String symbol;
  Currency({required this.currency, required this.symbol});
  static List<Currency> get currencies {
    final List<Map<String, dynamic>> json = [
      {"currency": "USD", "symbol": "\$"},
      {"currency": "CDF", "symbol": "CDF"},
   
    ];

    return json
        .map((c) => Currency(currency: c['currency'], symbol: c['symbol']))
        .toList();
  }
}
