import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway/core/api_keys.dart';
import 'package:payment_getway/core/services/service_interface_widget.dart';
import 'package:payment_getway/data/network/services/api_service.dart';
import 'package:payment_getway/domain/model/ephemeral_keys/ephemeral_key_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/init_payment_sheet_input_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/payment_intent_model.dart';

class StripeService implements ServiceInterface {
  final ApiService apiService = ApiService();
  var baseUrl = 'https://api.stripe.com/v1/';

  @override
  Future<void> init() async {
    Stripe.publishableKey = ApiKeys.publishableKey;
    await Stripe.instance.applySettings();
    debugPrint("StripeService initialized successfully!");
  }

  @override
  Future<void> dispose() async {
    debugPrint("StripeService disposed successfully!");
  }

  Future<PaymentIntentModel> createPaymentIntent(PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url: '${baseUrl}payment_intents',
      token: ApiKeys.secretKey,
    );
    return PaymentIntentModel.fromJson(response.data);
  }

  Future<void> initPaymentSheet({required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Ahmed Ezz',
        paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
        customerId: initPaymentSheetInputModel.customerId,
        customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKeySecret,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemralKeyModel = await createEphemeralKey(customerId: paymentIntentInputModel.customerId!);

    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
      clientSecret: paymentIntentModel.clientSecret,
      customerId: paymentIntentInputModel.customerId!,
      ephemeralKeySecret: ephemralKeyModel.secret!,
    );  

    await initPaymentSheet(initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey({required String customerId}) async {
    var response = await apiService.post(
      body: {'customer': customerId},
      contentType: Headers.formUrlEncodedContentType,
      url: '${baseUrl}ephemeral_keys',
      token: ApiKeys.secretKey,
      headers: {
        'Authorization': 'Bearer ${ApiKeys.secretKey}',
        'Stripe-Version': '2023-08-16',
      },
    );
    return EphemeralKeyModel.fromJson(response.data);
  }
}

