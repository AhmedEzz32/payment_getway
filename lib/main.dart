import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/views/my_card_view.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: const MyCardView(),
    ),
  );
}
