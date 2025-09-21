import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway/core/api_keys.dart';
import 'package:payment_getway/persentation/my_card/view/my_card_view.dart';
import 'package:payment_getway/core/di/service_locators.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize dependency injection
  await di.setupServiceLocator();
  
  // Initialize Stripe
  Stripe.publishableKey = ApiKeys.publishableKey;
  
  runApp(const PaymentGatewayApp());
}

class PaymentGatewayApp extends StatelessWidget {
  const PaymentGatewayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Gateway E-commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyCardView(),
    );
  }
}
