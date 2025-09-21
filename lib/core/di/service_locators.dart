import 'package:get_it/get_it.dart';

// Core Services
import '../services/stripe_service.dart';

// Existing Checkout
import '../../domain/repos/checkout_repo.dart';
import '../../data/repo_impl/checkout_repo_implementation.dart';
import '../../persentation/manger/stripe_payment_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Core Services
  sl.registerLazySingleton<StripeService>(() => StripeService());

  //! Features - Checkout (existing payment system)
  // Cubits
  sl.registerFactory(() => StripePaymentCubit(sl()));

  // Repository
  sl.registerLazySingleton<CheckoutRepo>(() => CheckoutRepoImpl());
}

// Helper function to register dependencies
Future<void> setupServiceLocator() async {
  await init();
}
