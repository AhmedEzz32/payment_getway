import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway/core/utils/api_keys.dart';
import 'package:payment_getway/core/utils/services/api_service.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

  Future<void> initPaymentSheet({required paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        merchantDisplayName: 'Ahmed Ezz',
        paymentIntentClientSecret: paymentIntentClientSecret,
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntent = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntent.clientSecret);
    await displayPaymentSheet();
  }
}
