import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_check_icon.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_dashed_line.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/thank_you_card.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 5,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          )
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 10
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ThankYouCard(),
              Positioned(
                right: 20 + 8,
                left: 20 + 8,
                bottom: MediaQuery.sizeOf(context).height * .2 + 20,
                child: CustomDashedLine()
              ),
              Positioned(
                left: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ),
              Positioned(
                right: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ),
              Positioned(
                top: -50,
                right: 0,
                left: 0,
                child: CustomCheckIcon()
              ),
            ],
          ),
        ),
      ],
    );
  }
}
