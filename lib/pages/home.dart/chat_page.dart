import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/chat_tile.dart';
// import 'package:shamo_apps/theme.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    // ignore: unused_element
    Widget emptyChat() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Headset_Icon.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss no message yet?',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: medium, color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'You have never done a transaction',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ))
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: bgColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            ChatTile(),
            ChatTile(
              merchant: 'Adidas Indonesia',
              massage: 'Hai, Your colors is not found for our product',
              unread: false,
              time: 'yesterday',
            ),
            ChatTile(
              merchant: 'Puma Indonesia',
              massage: 'Hai, This Product already',
            )
          ],
        ),
      ));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
