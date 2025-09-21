import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) => Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            color: const Color(0xffb8b8b8),
            height: 2,
          ),
        )
      ),
    );
  }
}
