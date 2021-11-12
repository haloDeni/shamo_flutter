import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class SuccessCheckOut extends StatelessWidget {
  const SuccessCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        elevation: 0,
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/checkout.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You made a transaction',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
              ),
              Text(
                'Stay at home while we \n prepare your dream shoes',
                style: secondaryTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 196,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Order Other Shoes',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 196,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/detail-checkout',
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff39374B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'View My Order',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(children: [
        header(),
        content(),
      ]),
    );
  }
}
