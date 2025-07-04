import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {

  final String title;
  final String value;
  final TextStyle? valueStyle;

  const OrderInfoItem({
    super.key,
    required this.title,
    required this.value,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          value,
          style: valueStyle ?? Styles.style18,
        ),
      ],
    );  
  }
}
