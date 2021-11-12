import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class AppbarDetailCheckout extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Checkout Details'),
      centerTitle: true,
      backgroundColor: bgColor1,
      elevation: 0,
    );
  }
}
