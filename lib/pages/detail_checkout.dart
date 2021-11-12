import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';
import 'package:shamo_apps/widget/cart_widget.dart';
import 'package:shamo_apps/widget/checkout_detail.dart';
import 'package:shamo_apps/widget/header_detail_checkout.dart';

class DetailCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget itemPayment(String text, String price) {
      return Container(
        margin: EdgeInsets.only(bottom: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: subtittleText.copyWith(fontSize: 12),
            ),
            Text(
              price,
              style: primaryTextStyle.copyWith(fontSize: 12),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                CartCheckOutWidget(),
                CartCheckOutWidget(),
              ],
            ),
          ),

          //adres detail

          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/Location_Icon.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/Line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/Location_Icon.png',
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          //payment sumary

          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                itemPayment('Product Quantity', '2 Items'),
                itemPayment('Product Price', '\$575.96'),
                itemPayment('Shipping', 'Free'),
                Divider(
                  thickness: 0.1,
                  color: Colors.white,
                ),
                itemPayment('Total', '\$575.92'),
                SizedBox(
                  height: defaultMargin,
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultMargin),
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          '/detail-Success-checkout', (route) => false);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      'Checkout Now',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppbarDetailCheckout(),
      body: content(),
    );
  }
}
