import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_apps/models/user_models.dart';
import 'package:shamo_apps/providers/auth_providers.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/appbar_no_image.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget inputName() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: '${user.name}',
                  hintStyle: primaryTextStyle.copyWith(fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtittleColor))),
            )
          ],
        ),
      );
    }

    Widget inputUsername() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: '${user.username}',
                  hintStyle: primaryTextStyle.copyWith(fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: subtittleColor))),
            )
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: '${user.email}',
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
                    fit: BoxFit.fill,
                    image: NetworkImage('${user.profilePhothoUrl}'),
                  ),
                ),
              ),
              inputName(),
              inputUsername(),
              inputEmail(),
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
