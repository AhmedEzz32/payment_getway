import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/styles.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback? onTap;
  final String text;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height * 0.11,
        decoration: BoxDecoration(
          color: Color(0xff34A853),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: isLoading ? CircularProgressIndicator()
          : Text(
            text,
            style: Styles.style20,
          ),
        ),
      ),
    );
  }
}
