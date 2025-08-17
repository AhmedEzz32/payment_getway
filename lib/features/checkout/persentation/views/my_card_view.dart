import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/my_cart_view_appbar.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/my_cart_view_body.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/payment_method_list_view.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCartViewAppbar(
        text: 'My Cart',
      ),
      body: MyCartViewBody(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (context) => const MyCartViewDetails(),
          // ));
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return const PaymentMethodBottomSheet();
            },
          );
        },
      ),
    );
  }
}

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 32),
          PaymentMethodListView(),
          SizedBox(height: 16),
          CustomButton(
            onTap: () {},
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}
