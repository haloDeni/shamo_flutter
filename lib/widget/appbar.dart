// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class costumeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const costumeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.white,
                width: 54,
                height: 54,
                child: Image.asset(
                  'assets/logoProducts/nike.png',
                  width: 54,
                  height: 54,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike Official',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                ),
              ],
            )
          ],
        ),
        centerTitle: false,
        backgroundColor: bgColor1,
        elevation: 0);
  }
}
