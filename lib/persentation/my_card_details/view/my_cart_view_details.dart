import 'package:flutter/material.dart';
import 'package:payment_getway/persentation/my_card_details/view/widgets/my_cart_view_appbar.dart';
import 'package:payment_getway/persentation/my_card_details/view/widgets/my_cart_view_details_body.dart';

class MyCartViewDetails extends StatelessWidget {
  const MyCartViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCartViewAppbar(
        text: 'Payment Details',
      ),
      body: MyCartViewDetailsBody(),
    );
  }
}
