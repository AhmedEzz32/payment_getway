import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_getway/core/assets.dart/assets.dart';

class PaymentMethodItem extends StatelessWidget {

  final bool isActive;

  const PaymentMethodItem({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.5, color: isActive?  Color(0xff34a853) : Color(0xff000080)),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xff34a853) : Color(0xff000080),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            Assets.assetsImagesCard,
            height: 24,
          ),
        ),
      ),
    );
  }
}
