import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onTap;

  const PaymentMethodBottomSheet({
    super.key,
    required this.isLoading,
    this.onTap,
  });

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
            isLoading: isLoading,
            onTap: onTap,
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}