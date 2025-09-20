import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatelessWidget {

  final Function(int index)? onSelected;
  final int? selectedIndex;
  final List<String>? paymentMethodItems;

  const PaymentMethodListView({
    super.key,
    this.onSelected,
    this.selectedIndex,
    this.paymentMethodItems,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.builder(
        itemCount: paymentMethodItems!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => onSelected?.call(index),
              child: PaymentMethodItem(
                isActive: selectedIndex == index,
                image: paymentMethodItems![index],
              ),
            ),
          );
        },
      ),
    );
  }
}