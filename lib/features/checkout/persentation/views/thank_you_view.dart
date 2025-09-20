import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ThankYouBody()),
    );
  }
}
