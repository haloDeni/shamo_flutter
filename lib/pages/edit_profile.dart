import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/appbar_no_image.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget input(String title, String name) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: name,
                  hintStyle: primaryTextStyle.copyWith(fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtittleColor))),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logoqu.png'))),
              ),
              input('Name', 'Deni Nuryadi'),
              input('Username', '@hello_deniNuryadi'),
              input('Email Address', 'deninuryadi63@gmail.com'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: CostumeAppBarIcon(),
      body: content(),
    );
  }
}
