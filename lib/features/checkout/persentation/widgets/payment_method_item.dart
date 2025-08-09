import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {

  final bool isActive;
  final String image;

  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 600),
      width: 83,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.5, color: isActive ?  Color(0xff34a853) : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xff34a853) : Color(0xff000080),
            blurRadius: 0,
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
            image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
