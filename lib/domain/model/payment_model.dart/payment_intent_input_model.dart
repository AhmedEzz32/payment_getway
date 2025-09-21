class PaymentIntentInputModel {
  final String amount, currency;
  final String? customerId;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
    this.customerId,
  });


  toJson() {
    return {
      'amount': (double.parse(amount) * 100).ceil(),
      'currency': currency,
      'customer': customerId,
    };
  }
}