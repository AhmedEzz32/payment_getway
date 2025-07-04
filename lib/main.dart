import 'package:flutter/material.dart';
import 'package:payment_getway/features/checkout/persentation/views/my_card_view.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  DevicePreview(
    builder: (context) {
      return MaterialApp(
        home: const MyCardView(),
      );
    },
  );
}
