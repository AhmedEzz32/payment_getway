import 'package:flutter/material.dart';
import 'package:payment_getway/core/assets.dart/assets.dart';
import 'package:payment_getway/core/utils/styles.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  final VoidCallback? onTap;
  const MyCartViewBody({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              Assets.assetsImagesMyCart,
              height: 277,
            ),
          ),
          SizedBox(height: 8),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$ 42.97',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: OrderInfoItem(
              title: 'Dicount',
              value: '\$ 0',
            ),
          ),
          OrderInfoItem(
            title: 'shipping',
            value: '\$ 8',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Divider(color: Color(0xffC7C7C7)),
          ),
          OrderInfoItem(  
            title: 'Total',
            value: '\$ 50.97',
            valueStyle: Styles.style24,
          ),
          Spacer(),
          CustomButton(
            onTap: onTap,
            text: 'Complete Payment',
          ),
        ],  
      ),
    );
  }
}
