import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway/core/utils/api_keys.dart';
import 'package:payment_getway/features/checkout/persentation/views/my_card_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(
    MaterialApp(
      home: const MyCardView(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

// paymetnIntentObject create payment intent (amount, currency)
// initPaymentSheet (paymentIntentClientSecret)
// presentPaymentSheet
