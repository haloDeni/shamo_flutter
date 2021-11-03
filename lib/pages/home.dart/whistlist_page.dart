import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/whistlist_card.dart';
// import 'package:shamo_apps/theme.dart';

class WhislistPage extends StatelessWidget {
  const WhislistPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bgColor1,
      title: Text('Favorite Shoes'),
      centerTitle: true,
      elevation: 0.0,
      automaticallyImplyLeading: false,
    );
  }

  Widget emptyWishlist() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Love_icon.png', width: 74, height: 62),
            SizedBox(
              height: 23,
            ),
            Text(
              ' You don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Let\'s find your favorite shoes', style: subtittleText),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 42,
              width: 152,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text('Explore Store',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium))),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        color: bgColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            WhistlistCard(),
            WhistlistCard(
              imageUrl: 'assets/products/image_23.png',
              nameProduct: 'Booster 2.1',
              priceProduct: '\$99.00',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [header(), content()],
      ),
    );
  }
}
