class AmountDetailsModel {
  final Map<String, dynamic> tip;

  AmountDetailsModel({required this.tip});

  factory AmountDetailsModel.fromJson(Map<String, dynamic> json) {
    return AmountDetailsModel(
      tip: Map<String, dynamic>.from(json['tip']),
    );
  }
}