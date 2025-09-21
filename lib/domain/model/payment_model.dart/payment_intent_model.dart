import 'package:payment_getway/domain/model/payment_model.dart/amount_details_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/automatic_payment_method_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/payment_method_options_model.dart';

class PaymentIntentModel {
  final String id;
  final String object;
  final int amount;
  final int amountCapturable;
  final AmountDetailsModel? amountDetails;
  final int amountReceived;
  final String? application;
  final int? applicationFeeAmount;
  final AutomaticPaymentMethodsModel? automaticPaymentMethods;
  final int? canceledAt;
  final String? cancellationReason;
  final String captureMethod;
  final String clientSecret;
  final String confirmationMethod;
  final int created;
  final String currency;
  final String? customer;
  final String? description;
  final dynamic lastPaymentError;
  final dynamic latestCharge;
  final bool livemode;
  final Map<String, dynamic>? metadata;
  final dynamic nextAction;
  final dynamic onBehalfOf;
  final dynamic paymentMethod;
  final PaymentMethodOptionsModel? paymentMethodOptions;
  final List<dynamic>? paymentMethodTypes;
  final dynamic processing;
  final dynamic receiptEmail;
  final dynamic review;
  final dynamic setupFutureUsage;
  final dynamic shipping;
  final dynamic source;
  final dynamic statementDescriptor;
  final dynamic statementDescriptorSuffix;
  final String status;
  final dynamic transferData;
  final dynamic transferGroup;

  PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    this.amountDetails,
    required this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    this.customer,
    this.description,
    this.lastPaymentError,
    this.latestCharge,
    required this.livemode,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    required this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      amountCapturable: json['amount_capturable'],
      amountReceived: json['amount_received'],
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],
      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'],
      clientSecret: json['client_secret'],
      confirmationMethod: json['confirmation_method'],
      created: json['created'],
      currency: json['currency'],
      customer: json['customer'],
      description: json['description'],
      lastPaymentError: json['last_payment_error'],
      latestCharge: json['latest_charge'],
      livemode: json['livemode'],
      nextAction: json['next_action'],
      paymentMethodTypes: json['payment_method_types'] as List<dynamic>?,
      onBehalfOf: json['on_behalf_of'],
      paymentMethod: json['payment_method'],
      processing: json['processing'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'],
      transferData: json['transfer_data'],
      transferGroup: json['transfer_group'],
    );
  }
}
