import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_getway/core/themes/assets.dart/assets.dart';
import 'package:payment_getway/core/themes/utils/styles.dart';
import 'package:payment_getway/core/widgets/order_info_item.dart';
import 'package:payment_getway/core/widgets/payment_info_item.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(height: 16);
    return Container(
      height: 652,
      width: 350,
      padding: EdgeInsets.only(top: 40, left: 16, right: 16),
      decoration: ShapeDecoration(
        color: Color(0xffededed),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        )
      ),
      child: Column(
        children: [
          Text(
            'Thank You!',
            style: Styles.style25,
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Transaction was Successful',
            style: Styles.style20,
            textAlign: TextAlign.center,
          ),
          sizedBox,
          PaymentItemInfo(
            text: 'Date',
            value: '17/8/2025',
          ),
          sizedBox,
          PaymentItemInfo(
            text: 'Time',
            value: '10:15 PM',
          ),
          sizedBox,
          PaymentItemInfo(
            text: 'To',
            value: 'Ahmed Ezz',
          ),
          const Divider(
            height: 50,
            thickness: 2,
          ),
          OrderInfoItem(  
            title: 'Total',
            value: '\$ 50.97',
            valueStyle: Styles.style24,
          ),
          Container(
            width: 305,
            height: 73,
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
            margin: EdgeInsets.symmetric(vertical: 13),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            child: Row(
              children: [
                SvgPicture.asset(Assets.assetsImagesMasterCard),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Credit Card',
                      style: Styles.style18,
                    ),
                    const Text(
                      'Mastercard **78',
                      style: Styles.style16,
                    )
                  ]
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 64,
              ),
              Container(
                width: 113,
                height: 58,
                decoration:  ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff34a853),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                child: Center(
                  child: Text(
                    'Paid',
                    style: Styles.style24.copyWith(
                      color: Color(0xff34a853),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
          ),
        ],
      ),
    );
  }
}
