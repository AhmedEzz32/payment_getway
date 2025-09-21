import 'package:payment_getway/domain/model/payment_model.dart/class_options_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/link_option_model.dart';

class PaymentMethodOptionsModel {
  final CardOptionsModel card;
  final LinkOptionsModel link;

  PaymentMethodOptionsModel({required this.card, required this.link});

  factory PaymentMethodOptionsModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodOptionsModel(
      card: CardOptionsModel.fromJson(json['card']),
      link: LinkOptionsModel.fromJson(json['link']),
    );
  }
}