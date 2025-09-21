import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_getway/core/api_keys.dart';
import 'package:payment_getway/domain/model/payment_model.dart/amount_model.dart';
import 'package:payment_getway/domain/model/payment_model.dart/item_list_model.dart';
import 'package:payment_getway/persentation/thank_you_view/view/thank_you_view.dart';

class ExcutePaypalPayment extends StatelessWidget {
  const ExcutePaypalPayment({
    super.key,
    required this.transactionsData,
  });

  final ({AmountModel amount, ItemListModel itemList}) transactionsData;

  @override
  Widget build(BuildContext context) {
    return PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.paypalClientId,
      secretKey: ApiKeys.paypalSecretKey,
      transactions: [
        {
          "amount": transactionsData.amount.toJson(),
          "description": "The payment transaction description.",
          "item_list": transactionsData.itemList.toJson(),
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        debugPrint("onSuccess: $params");
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return const ThankYouView();
          })
        );
      },
      onError: (error) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.toString())),
        );
      },
      onCancel: () {
        debugPrint('cancelled:');
      },
    );
  }
}
