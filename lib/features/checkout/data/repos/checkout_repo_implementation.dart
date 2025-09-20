import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getway/core/errors/failures.dart';
import 'package:payment_getway/core/utils/services/stripe_service.dart';
import 'package:payment_getway/features/checkout/data/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/features/checkout/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
    {required PaymentIntentInputModel paymentIntentInputModel}) async {
      try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel
      );
      return const Right(null);
    } on StripeException catch(e){
      return Left(ServerFailure(e.error.message ?? 'Something went wrong'));
    }
    catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
