import 'package:dartz/dartz.dart';
import 'package:payment_getway/core/errors/failures.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
