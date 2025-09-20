import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/amount_model.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/item_list_model.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/features/checkout/data/repos/checkout_repo_implementation.dart';
import 'package:payment_getway/features/checkout/persentation/manger/stripe_payment_cubit.dart';
import 'package:payment_getway/features/checkout/persentation/views/my_cart_view_details.dart';
import 'package:payment_getway/features/checkout/persentation/views/thank_you_view.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/custom_button.dart';
import 'package:payment_getway/features/checkout/persentation/widgets/excute_paypal_payment.dart';
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
                  onContinue: (index) {
                    Navigator.pop(context);
                    if (index == 0) {
                      stripePayment(context);
                    } else if (index == 1) {
                      paypalPayment(context);
                    }
                    else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyCartViewDetails()),
                      );
                    }
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

  void paypalPayment(BuildContext context) {
    var transactionsData = getTransactionsData();
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => ExcutePaypalPayment(transactionsData: transactionsData),
      ),
    );
  }

  void stripePayment(BuildContext context) {
    PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
      amount: '100',
      currency: 'USD',
      customerId: 'cus_T3RBU6jQBldhVS',
    );
    context.read<StripePaymentCubit>().makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );
  }

  ({AmountModel amount, ItemListModel itemList}) getTransactionsData() {
    var amount = AmountModel(
      total: '180',
      currency: 'USD',
      details: AmountDetails(
        subtotal: '80',
        shipping: '100',
        shippingDiscount: 0,
      )
    );

    List<OrderItemModel> orders = [
      OrderItemModel(
        name: "Apple",
        quantity: 4,
        price: '5',
        currency: "USD"
      ),
      OrderItemModel(
        name: "Pineapple",
        quantity: 5,
        price: '12',
        currency: "USD"
      )
    ];

    var itemList = ItemListModel(orders: orders);
    return (amount : amount, itemList : itemList); 
  }
}
