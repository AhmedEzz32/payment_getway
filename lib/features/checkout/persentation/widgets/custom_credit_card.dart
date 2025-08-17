import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  
  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          formKey: widget.formKey,
          cardNumber: cardNumber,
          cvvCode: cvvCode,
          cardHolderName: cardHolderName,
          expiryDate: expiryDate,
          autovalidateMode: widget.autovalidateMode,
          onCreditCardModelChange: (CreditCardModel data) {
            cardNumber = data.cardNumber;
            expiryDate = data.expiryDate;
            cardHolderName = data.cardHolderName;
            cvvCode = data.cvvCode;
            showBackView = data.isCvvFocused;
            setState(() {});
          },
        ),
      ],
    );
  }
}
