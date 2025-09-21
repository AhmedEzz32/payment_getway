class AmountDetails {
  final String subtotal;
  final String shipping;
  final int shippingDiscount;

  AmountDetails({
    required this.subtotal,
    required this.shipping,
    required this.shippingDiscount,
  });

  factory AmountDetails.fromJson(Map<String, dynamic> json) {
    return AmountDetails(
      subtotal: json['subtotal'] as String,
      shipping: json['shipping'] as String,
      shippingDiscount: json['shipping_discount'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    'subtotal': subtotal,
    'shipping': shipping,
    'shipping_discount': shippingDiscount,
  };
}

class AmountModel {
  final String total;
  final String currency;
  final AmountDetails details;

  AmountModel({
    required this.total,
    required this.currency,
    required this.details,
  });

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      total: json['total'] as String,
      currency: json['currency'] as String,
      details: AmountDetails.fromJson(json['details']),
    );
  }

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details.toJson(),
  };
}