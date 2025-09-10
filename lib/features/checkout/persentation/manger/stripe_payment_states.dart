part of 'stripe_payment_cubit.dart';

@immutable
sealed class StripePaymentState {}

final class PaymentInitial extends StripePaymentState {}

final class PaymentLoading extends StripePaymentState {}

final class PaymentSuccess extends StripePaymentState {}

final class PaymentFailure extends StripePaymentState {
  final String error;

  PaymentFailure(this.error);
}
