import 'package:flutter/material.dart';
import 'package:payment_getway/persentation/my_card_details/view/widgets/my_cart_view_appbar.dart';
import 'package:payment_getway/persentation/my_card/view/widgets/my_cart_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCartViewAppbar(
        text: 'My Cart',
      ),
      body: MyCartViewBody(),
    );
  }
}
