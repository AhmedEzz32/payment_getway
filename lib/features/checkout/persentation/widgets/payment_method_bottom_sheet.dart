import 'package:flutter/material.dart';
import 'package:payment_getway/core/assets.dart/assets.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'payment_method_list_view.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  final bool isLoading;
  final Function(int index)? onContinue;

  const PaymentMethodBottomSheet({
    super.key,
    required this.isLoading,
    this.onContinue,
  });

  @override
  State<PaymentMethodBottomSheet> createState() => _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {

  int selectedIndex = 0;

  List<String> paymentMethodItems = const [
    Assets.assetsImagesCard,
    Assets.assetsImagesPaypal,
    Assets.assetsImagesMasterCard,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 32),
          PaymentMethodListView(
            onSelected: (index) {
              selectedIndex = index;
              setState(() {});
            },
            selectedIndex: selectedIndex,
            paymentMethodItems: paymentMethodItems,
          ),
          SizedBox(height: 16),
          CustomButton(
            isLoading: widget.isLoading,
            onTap: () => widget.onContinue?.call(selectedIndex),
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}