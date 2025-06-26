import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
