import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {

  final String text, value;

  const PaymentItemInfo({
    super.key,
    required this.text,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        )
      ],
    );
  }
}
