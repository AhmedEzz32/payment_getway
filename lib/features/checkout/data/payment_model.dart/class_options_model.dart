class CardOptionsModel {
  final dynamic installments;
  final dynamic mandateOptions;
  final dynamic network;
  final String requestThreeDSecure;

  CardOptionsModel({
    this.installments,
    this.mandateOptions,
    this.network,
    required this.requestThreeDSecure,
  });

  factory CardOptionsModel.fromJson(Map<String, dynamic> json) {
    return CardOptionsModel(
      installments: json['installments'],
      mandateOptions: json['mandate_options'],
      network: json['network'],
      requestThreeDSecure: json['request_three_d_secure'],
    );
  }
}
