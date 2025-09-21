import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment_getway/domain/model/payment_model.dart/payment_intent_input_model.dart';
import 'package:payment_getway/domain/repos/checkout_repo.dart';
part 'stripe_payment_states.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkOutRepo) : super(PaymentInitial());

  final CheckoutRepo checkOutRepo;

  Future<void> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    final data = await checkOutRepo.makePayment(paymentIntentInputModel: paymentIntentInputModel);
    data.fold(
      (l) {
        emit(PaymentFailure(l.errorMsg));
        print(l.errorMsg);
      },
      (r) => emit(PaymentSuccess()),
    );
  }

  @override
  void onChange(Change<StripePaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
