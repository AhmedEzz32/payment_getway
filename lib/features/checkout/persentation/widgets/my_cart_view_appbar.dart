import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/styles.dart';

class MyCartViewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyCartViewAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_outlined,
        color: Colors.black,
      ),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'My Cart',
        textAlign: TextAlign.center,
        style: Styles.style25,
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
