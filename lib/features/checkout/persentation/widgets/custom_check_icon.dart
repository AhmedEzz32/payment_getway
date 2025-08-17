import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: const Color(0xffd9d9d9),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: const Color(0xff34a853),
        child: Icon(
          Icons.check,
          size: 40,
        )
      ),
    );
  }
}
