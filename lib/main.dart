import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/views/my_card_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: const MyCardView(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
