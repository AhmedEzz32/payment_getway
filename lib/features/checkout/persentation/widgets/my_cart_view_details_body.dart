import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/payment_method_list_view.dart';

class MyCartViewDetailsBody extends StatelessWidget {
  const MyCartViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodListView(),
      ],
    );
  }
}
