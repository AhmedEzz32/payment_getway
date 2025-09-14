import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/features/checkout/data/repos/checkout_repo_implementation.dart';
import 'package:payment_getway/features/checkout/persentation/manger/stripe_payment_cubit.dart';
import 'package:payment_getway/features/checkout/persentation/views/thank_you_view.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/payment_method_bottom_sheet.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {  
    return CustomButton(
      onTap: () async{
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) => BlocProvider(
            create: (context) => StripePaymentCubit(CheckoutRepoImpl()),
            child: BlocConsumer<StripePaymentCubit, StripePaymentState>(
              listener: (context, state) {
                if (state is PaymentFailure) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error)),
                  );
                } else if (state is PaymentSuccess) {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ThankYouView()),
                  );
                }
              },
              builder: (context, state) {
                return PaymentMethodBottomSheet(
                  isLoading: state is PaymentLoading,
                  onTap: () {
                    PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
                      amount: '100',
                      currency: 'USD',
                      customerId: 'cus_T3RBU6jQBldhVS',
                    );
                    context.read<StripePaymentCubit>().makePayment(
                      paymentIntentInputModel: paymentIntentInputModel,
                    );
                  },
                );
              },
            ),
          ),
        );
      },
      text: 'Complete Payment',
    );
  }
}
