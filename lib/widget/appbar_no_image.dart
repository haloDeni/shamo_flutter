// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class CostumeAppBarIcon extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: primaryTextColor,
          )),
      title: Text('Edit Profile'),
      centerTitle: true,
      backgroundColor: bgColor1,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ))
      ],
    );
  }
}
