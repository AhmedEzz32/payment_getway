class PaymentIntentInputModel {
  final String amount, currency;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency
  });


  toJson() {
    return {
      'amount': (double.parse(amount) * 100).ceil(),
      'currency': currency,
    };
  }
}