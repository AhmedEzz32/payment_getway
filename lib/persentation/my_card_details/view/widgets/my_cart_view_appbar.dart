import 'package:flutter/material.dart';
import 'package:payment_getway/core/themes/utils/styles.dart';

class MyCartViewAppbar extends StatelessWidget implements PreferredSizeWidget {

  final String text;

  const MyCartViewAppbar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
      elevation: 0,
      centerTitle: true,
      title: Text(
        text,
        textAlign: TextAlign.center,
        style: Styles.style25,
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
