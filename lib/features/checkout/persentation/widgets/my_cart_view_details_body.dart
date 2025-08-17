import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/views/thank_you_view.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_credit_card.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/payment_method_list_view.dart';

class MyCartViewDetailsBody extends StatefulWidget {
  const MyCartViewDetailsBody({super.key});

  @override
  State<MyCartViewDetailsBody> createState() => _MyCartViewDetailsBodyState();
}

class _MyCartViewDetailsBodyState extends State<MyCartViewDetailsBody> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0, top: 10.0),
              child: CustomButton(
                onTap: () {
                 if (formKey.currentState!.validate()){
                    formKey.currentState!.save();
                 } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return const ThankYouView();
                      })
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                 }
                },
                text: 'Payment',
              ),
            ),
          ),
        )
      ],
    );
  }
}
